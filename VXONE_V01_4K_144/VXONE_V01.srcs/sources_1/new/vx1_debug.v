`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2023 03:33:42 AM
// Design Name: 
// Module Name: vx1_debug
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


module vx1_debug #(
    parameter DW = 32,
    parameter CN = 32,
    parameter FRAME_RATE = 144,
    parameter VIDEO_TIMING = "4K")(
    input   vio_gt_loopback,    vio_tx_tpg_en,  [4:0]vio_rx_ch_sel,
    input   [CN-1:0] vx1_rx_de,vx1_rx_hs,vx1_rx_vs,[CN*DW-1:0]vx1_rx_data,
    output  [CN-1:0] vx1_tx_de,vx1_tx_hs,vx1_tx_vs,[CN*DW-1:0]vx1_tx_data,
    output  reg [15:0] htotal,hact,vtotal,vact,frate,
    output  SYNC_LOCK,
    input   vx1_pclk);

localparam CH_NUM = CN;

wire [DW*CH_NUM-1:0]   vx1_rx_data_rvs;
genvar j;
generate
    for (j=0 ;j< CH_NUM ;j=j+1 ) begin
        assign vx1_rx_data_rvs[(j+1)*DW-1:j*DW] =   vx1_rx_data[(CH_NUM-j)*DW-1:(CH_NUM-j-1)*DW];
    end
endgenerate
reg  [   CH_NUM-1:0]   vid_rx_de,   vid_rx_hs,  vid_rx_vs;
reg  [DW*CH_NUM-1:0]   vid_rx_data;
always @ (posedge vx1_pclk)begin
    vid_rx_de    <= vx1_rx_de;  vid_rx_hs    <= vx1_rx_hs;  vid_rx_vs    <= vx1_rx_vs; 
    vid_rx_data  <= (vio_gt_loopback == 0) ? vx1_rx_data : vx1_rx_data_rvs; 
end
assign tx_tpg_en = vio_gt_loopback | vio_tx_tpg_en;

wire  [   CH_NUM-1:0]   vid_tpg_de, vid_tpg_hs, vid_tpg_vs;
wire  [DW*CH_NUM-1:0]   vid_tpg_data;

generate
if (VIDEO_TIMING == "4K")begin : VID_4K
vid_tpg #(.CN(16),.HN(2),.VN(2))vid_tpg(vid_tpg_de, vid_tpg_hs, vid_tpg_vs, vid_tpg_data,   vx1_pclk,   tx_tpg_en);
end else begin : VID_8K
vid_tpg #(.CN(32),.HN(4),.VN(4))vid_tpg(vid_tpg_de, vid_tpg_hs, vid_tpg_vs, vid_tpg_data,   vx1_pclk,   tx_tpg_en);
end
endgenerate 

assign vx1_tx_de    = tx_tpg_en ? vid_tpg_de     : vid_rx_de    ;
assign vx1_tx_hs    = tx_tpg_en ? vid_tpg_hs     : vid_rx_hs    ;
assign vx1_tx_vs    = tx_tpg_en ? vid_tpg_vs     : vid_rx_vs    ;
assign vx1_tx_data  = tx_tpg_en ? vid_tpg_data   : vid_rx_data;

localparam VDW = 10;
localparam HN     = VIDEO_TIMING == "4K" ? 2 : 4;
localparam VN     = VIDEO_TIMING == "4K" ? 2 : 4;
localparam HTOTAL = VIDEO_TIMING == "4K" ? 2200*HN/(CH_NUM/2) : 2200*HN/(CH_NUM);
localparam HACT   = VIDEO_TIMING == "4K" ? 1920*HN/(CH_NUM/2) : 1920*HN/(CH_NUM);
localparam VTOTAL = 1125*VN;
localparam VACT   = 1080*VN;

wire [ DW-1:0]  vid_rx_ch   [CH_NUM-1:0];
wire [VDW-1:0]  vid_rx_r    [CH_NUM-1:0];
wire [VDW-1:0]  vid_rx_g    [CH_NUM-1:0];
wire [VDW-1:0]  vid_rx_b    [CH_NUM-1:0];

generate
    for (j=0 ;j< CH_NUM ;j=j+1 ) begin
        assign vid_rx_ch[j]     =  vid_rx_data[(j+1)*DW-1:j*DW];
        assign vid_rx_r [j]     = {vid_rx_ch[j][(VDW-2)*1-1:(VDW-2)*0],vid_rx_ch[j][DW-2],vid_rx_ch[j][DW-1]};
        assign vid_rx_g [j]     = {vid_rx_ch[j][(VDW-2)*2-1:(VDW-2)*1],vid_rx_ch[j][DW-4],vid_rx_ch[j][DW-3]};
        assign vid_rx_b [j]     = {vid_rx_ch[j][(VDW-2)*3-1:(VDW-2)*2],vid_rx_ch[j][DW-6],vid_rx_ch[j][DW-5]};
    end
endgenerate

reg     [ DW-1:0]   vid_rx_cd;
reg     [VDW-1:0]   vid_rx_rd,  vid_rx_gd,  vid_rx_bd;

always @ (posedge vx1_pclk)begin
    vid_rx_cd <= vid_rx_ch[vio_rx_ch_sel];
    vid_rx_rd <= vid_rx_r [vio_rx_ch_sel];
    vid_rx_gd <= vid_rx_g [vio_rx_ch_sel];
    vid_rx_bd <= vid_rx_b [vio_rx_ch_sel];
end

reg [1:0] de_s, hs_s, vs_s;
reg [15:0] line_num,hs_cnt,hp_cnt,dstr,dend,pixel_num, fcnt;
reg         htotal_ok,vtotal_ok,hact_ok,vact_ok;
reg [31:0] sec_cnt;
always @ (posedge vx1_pclk)begin
    de_s <= {de_s[0],vid_rx_de[0]};
    hs_s <= {hs_s[0],vid_rx_hs[0]};
    vs_s <= {vs_s[0],vid_rx_vs[0]};
    if (FRAME_RATE == 144)
    sec_cnt <= (sec_cnt < 89100000-1) ? sec_cnt + 1:0;
    else
    sec_cnt <= (sec_cnt < 74250000-1) ? sec_cnt + 1:0;

    if(vs_s == 1)   line_num <= 0;else
    if(de_s == 1)   line_num <= line_num + 1;else
                    line_num <= line_num;

    if(hs_s == 1)   hp_cnt <= 1;else
                    hp_cnt <= hp_cnt + 1;

    if(de_s[0]==1)  pixel_num <= pixel_num+1;else
                    pixel_num <= 0; 
                    
    if(vs_s == 1)   hs_cnt <= 0;else
    if(hs_s == 1)   hs_cnt <= hs_cnt + 1;else
                    hs_cnt <= hs_cnt;
                   
    if(hs_s == 1)   htotal  <= hp_cnt;
    if(de_s == 1)   dstr    <= hp_cnt;
    if(de_s == 2)   hact    <= hp_cnt-dstr;
    if(vs_s == 1)   vtotal  <= hs_cnt;
    if(vs_s == 1)   vact    <= line_num;

    if(sec_cnt  == 0)    fcnt    <= 0;else
    if(vs_s     == 1)    fcnt    <= fcnt + 1;
    if(sec_cnt  == 0)    frate   <= fcnt;

    htotal_ok <= (htotal == HTOTAL)  ? 1 : 0;
    hact_ok   <= (hact   == HACT)    ? 1 : 0;                 
    vtotal_ok <= (vtotal == VTOTAL)  ? 1 : 0;
    vact_ok   <= (vact   == VACT)    ? 1 : 0;

end
assign SYNC_LOCK = htotal_ok & hact_ok & vtotal_ok & vact_ok;

vx1_vid_ila vx1_vid_ila (
	.clk       (vx1_pclk),
	.probe0    (vid_rx_vs),
	.probe1    (vid_rx_hs),
	.probe2    (vid_rx_de),
	.probe3    (vid_rx_data),
	.probe4    (line_num),
	.probe5    (pixel_num),
    .probe6    (vid_rx_cd),
	.probe7    (vid_rx_rd),
    .probe8    (vid_rx_gd),
	.probe9    (vid_rx_bd));

endmodule
