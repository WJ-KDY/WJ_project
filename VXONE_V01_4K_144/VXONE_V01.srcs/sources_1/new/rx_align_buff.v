`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/27/2023 08:26:41 PM
// Design Name: 
// Module Name: rx_align_buff
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module rx_align_buff #(
    parameter DW = 32,
    parameter DP = 16,
    parameter CN = 32,
    parameter MC = 0
)(
    input       [CN-1:0]    vid_i_e,
    input       [CN-1:0]    vid_i_h,
    input       [CN-1:0]    vid_i_v,
    input    [DW*CN-1:0]    vid_i_d,
    output      [CN-1:0]    vid_o_e,
    output      [CN-1:0]    vid_o_h,
    output      [CN-1:0]    vid_o_v,
    output   [DW*CN-1:0]    vid_o_d,
    input wr_clk,
    input rd_clk,
    input rst
    );

reg [31:0] rst_x = 32'hffffffff;
always @(posedge rd_clk)begin
    if(rst) rst_x <= 32'hffffffff;else
    rst_x <= {rst_x[30:0],1'b0};
end
reg [CN*3-1:0] ehv [0:DP-1];
integer j;
always @(posedge rd_clk)begin
    if(rst_x == 0) begin
        ehv[0]<= {{CN{vid_i_e[MC]}},{CN{vid_i_h[MC]}},{CN{vid_i_v[MC]}}};
        for(j=0;j<DP;j=j+1)begin
            ehv[j+1]<=ehv[j];
         end
    end
    else begin 
        ehv[0]<= 0;
        for(j=0;j<DP;j=j+1)begin
            ehv[j+1]<=ehv[j];
        end
    end 
end

wire [CN-1:0] wr_en;
assign wr_en = (rst_x != 0) ? 0 : vid_i_e;

wire [CN-1:0] rd_en;
assign rd_en = (rst_x != 0) ? 0  : ehv[7][CN*3-1:CN*2];
reg  [CN-1:0] oe_en;
wire [DW*CN-1:0] dout;
genvar i;
generate for(i=0;i<CN;i=i+1)begin: buff
    rx_fifo
    rx_fifo (
    .din    (vid_i_d[(i+1)*DW-1:i*DW]),
    .wr_en  (wr_en[i]),
    .dout   (dout[(i+1)*DW-1:i*DW]),
    .rd_en  (rd_en[i]),
    .wr_clk (wr_clk),
    .rd_clk (rd_clk),
    .rst    (rst_x[31]));
end
endgenerate 

assign  vid_o_d = ( vid_o_e[MC]) ? dout :  0;
assign  vid_o_e =   ehv[8][CN*3-1:CN*2];
assign  vid_o_h =   ehv[8][CN*2-1:CN*1];
assign  vid_o_v =   ehv[8][CN*1-1:CN*0];

endmodule
