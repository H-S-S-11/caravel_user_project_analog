// SPDX-FileCopyrightText: 2020 Efabless Corporation
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// SPDX-License-Identifier: Apache-2.0

`default_nettype wire

`timescale 1 ns / 1 ps

`include "uprj_analog_netlists.v"
`include "caravan_netlists.v"
`include "spiflash.v"
`include "tbuart.v"

module comparator_tb;
    // Signals declaration
    reg clock;
    reg RSTB;
    reg CSB;
    reg power1, power2;
    reg power3;

    wire HIGH;
    wire LOW;
    wire TRI;
    assign HIGH = 1'b1;
    assign LOW = 1'b0;
    assign TRI = 1'bz;

    wire gpio;
    wire uart_tx;
    wire [37:0] mprj_io;
    wire [3:0] checkbits;
    wire [1:0] status;

    wire biasn;
    reg vp;
    reg vn;
    wire vout;

    // Signals Assignment
    assign uart_tx = mprj_io[6];
    assign mprj_io[3] = (CSB == 1'b1) ? 1'b1 : 1'bz;


    assign mprj_io[34] = biasn;
    assign mprj_io[32] = vp;
    assign mprj_io[33] = vn;
    assign vout = mprj_io[35];

    assign biasn = 1;

    initial begin
        vp <= 0;
        vn <= 0;
        #700;
        vp <= 0;
        vn <= 1;
        #500;
        vp <= 1;
        vn <= 0;
        #500;
        vp <= 1;
        vn <= 1;
        #500;
    end

    // Readback from POR (digital HV through analog pad connection)
    assign status = {mprj_io[25],  mprj_io[10]};

    // Readback from POR (digital LV)
    assign checkbits = {mprj_io[27:26], mprj_io[12:11]};

    always #12.5 clock <= (clock === 1'b0);

    initial begin
        clock = 0;
    end

    initial begin
        $dumpfile("comparator.vcd");
        $dumpvars(0, comparator_tb);

        // Repeat cycles of 100 clock edges as needed to complete testbench
        repeat (2) begin
            repeat (100) @(posedge clock);
        end
        $display("%c[1;31m",27);
        $display ("Monitor: Timeout, Test Project IO Stimulus (RTL) Failed");
        $display("%c[0m",27);
        $finish;
    end

    initial begin
        wait(status == 2'h1);
        $display("Monitor: comparator test started");
	#100;
	if (checkbits != 4'h9) begin
		$display("Monitor: comparator test failed");
		$finish;
	end
        wait(status == 2'h3);
	#100;
	if (checkbits != 4'h5) begin
		$display("Monitor: comparator test failed");
		$finish;
	end
        $display("Monitor: comparator test Passed");
        #1000;
        $finish;
    end

    // Reset Operation
    initial begin
        RSTB <= 1'b0;
        CSB  <= 1'b1;       // Force CSB high
        #2000;
        RSTB <= 1'b1;       // Release reset
    end

    initial begin		// Power-up sequence
        power1 <= 1'b0;
        power2 <= 1'b0;
        power3 <= 1'b0;
        #200;
        power1 <= 1'b1;
        #200;
        power2 <= 1'b1;
	#1500;		// Need time to run the managment SoC setup.
	power3 <= 1'b1;		// Power up the 2nd POR.
    end

    wire flash_csb;
    wire flash_clk;
    wire flash_io0;
    wire flash_io1;

    wire VDD3V3 = power1;
    wire VDD1V8 = power2;
    wire VSS = 1'b0;

    caravan uut (
        .vddio	  (VDD3V3),
        .vssio	  (VSS),
        .vdda	  (VDD3V3),
        .vssa	  (VSS),
        .vccd	  (VDD1V8),
        .vssd	  (VSS),
        .vdda1    (VDD3V3),
        .vdda2    (VDD3V3),
        .vssa1	  (VSS),
        .vssa2	  (VSS),
        .vccd1	  (VDD1V8),
        .vccd2	  (VDD1V8),
        .vssd1	  (VSS),
        .vssd2	  (VSS),
        .clock	  (clock),
        .gpio     (gpio),
        .mprj_io  (mprj_io),
        .flash_csb(flash_csb),
        .flash_clk(flash_clk),
        .flash_io0(flash_io0),
        .flash_io1(flash_io1),
        .resetb	  (RSTB)
    );


    spiflash #(
        .FILENAME("comparator.hex")
    ) spiflash (
        .csb(flash_csb),
        .clk(flash_clk),
        .io0(flash_io0),
        .io1(flash_io1),
        .io2(),         // not used
        .io3()          // not used
    );

    // Testbench UART
    tbuart tbuart (
        .ser_rx(uart_tx)
    );

endmodule
`default_nettype wire
