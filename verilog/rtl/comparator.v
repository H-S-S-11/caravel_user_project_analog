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

`default_nettype none
`timescale 1 ns / 1 ps

module comparator(
`ifdef USE_POWER_PINS
    inout vdd3v3,
    inout vdd1v8,
    inout vss,
`endif
    output vout,
    input vp,
    input vn,
    input biasn
);

    // This is a behavioral model
    // biasn should actually be around 0.5V but we'll say it should be logic 1
    assign vout = (vp & !vn) & biasn;
endmodule
`default_nettype wire
