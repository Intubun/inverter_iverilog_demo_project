// Copyright 2022 Enno Schnackenberg
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

//
// original creator: Matt Venn
// source: 
// https://github.com/The-OpenROAD-Project/OpenLane/blob/master/designs/inverter/src/inverter.v
//

`timescale 1ns/1ns
`default_nettype none
module inverter (
    input wire  [31:0] in,
    output wire [31:0] out
    );

    assign out = ('hFFFFFFFF-in);

endmodule
