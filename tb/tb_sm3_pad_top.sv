`timescale 1ns / 1ps
`include "./inc/sm3_cfg"
//////////////////////////////////////////////////////////////////////////////////
// Author:        ljgibbs / lf_gibbs@163.com
// Create Date: 2020/07/21 
// Design Name: sm3
// Module Name: tb_sm3_pad_top
// Description:
//      SM3 填充模块 testbench
//          测试 sm3_pad_core 
// Dependencies: 
//      inc/sm3_cfg.v
// Revision:
// Revision 0.01 - File Created
//////////////////////////////////////////////////////////////////////////////////
module tb_sm3_pad_top (                 
);

//reg
reg                     clk;
reg                     rst_n;

reg [`INPT_DW1:0]       msg_inpt_d_i;
reg [`INPT_BYTE_DW1:0]  msg_inpt_vld_byte_i;
reg                     msg_inpt_vld_i;
reg                     msg_inpt_lst_i;

reg                     pad_otpt_ena_i;

wire                    msg_inpt_rdy_o;
wire                    pad_otpt_d_o;
wire                    pad_otpt_lst_o;
wire                    pad_otpt_vld_o;

//uut
sm3_pad_core U_sm3_pad_core(
    .clk                    (clk                    ),
    .rst_n                  (rst_n                  ),

    .msg_inpt_d_i           (msg_inpt_d_i           ),
    .msg_inpt_vld_byte_i    (msg_inpt_vld_byte_i    ),
    .msg_inpt_vld_i         (msg_inpt_vld_i         ),
    .msg_inpt_lst_i         (msg_inpt_lst_i         ),

    .pad_otpt_ena_i         (pad_otpt_ena_i         ),

    .msg_inpt_rdy_o         (msg_inpt_rdy_o         ),

    .pad_otpt_d_o           (pad_otpt_d_o           ),
    .pad_otpt_lst_o         (pad_otpt_lst_o         ),
    .pad_otpt_vld_o         (pad_otpt_vld_o         )
);

initial begin
    clk                     =0;
    rst_n                   =0;
    msg_inpt_d_i            =0;
    msg_inpt_vld_byte_i     =0;
    msg_inpt_vld_i          =0;
    msg_inpt_lst_i          =0;
    pad_otpt_ena_i          =0;

    #100;
    rst_n                   =1;

    @(posedge clk);

end

always #5 clk = ~clk; 



endmodule