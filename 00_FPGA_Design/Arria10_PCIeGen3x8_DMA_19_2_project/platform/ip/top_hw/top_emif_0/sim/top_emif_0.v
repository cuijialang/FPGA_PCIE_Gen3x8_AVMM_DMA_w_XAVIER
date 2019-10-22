// top_emif_0.v

// Generated using ACDS version 19.2 57

`timescale 1 ps / 1 ps
module top_emif_0 (
		input  wire         global_reset_n,      //   global_reset_n.reset_n,           Asynchronous reset causes the memory interface to be reset and recalibrated. The global reset signal applies to all memory interfaces placed within an I/O column.
		input  wire         pll_ref_clk,         //      pll_ref_clk.clk,               PLL reference clock input
		input  wire         oct_rzqin,           //              oct.oct_rzqin,         Calibrated On-Chip Termination (OCT) RZQ input pin
		output wire [0:0]   mem_ck,              //              mem.mem_ck,            CK clock
		output wire [0:0]   mem_ck_n,            //                 .mem_ck_n,          CK clock (negative leg)
		output wire [16:0]  mem_a,               //                 .mem_a,             Address
		output wire [0:0]   mem_act_n,           //                 .mem_act_n,         Activation command
		output wire [1:0]   mem_ba,              //                 .mem_ba,            Bank address
		output wire [0:0]   mem_bg,              //                 .mem_bg,            Bank group
		output wire [0:0]   mem_cke,             //                 .mem_cke,           Clock enable
		output wire [0:0]   mem_cs_n,            //                 .mem_cs_n,          Chip select
		output wire [0:0]   mem_odt,             //                 .mem_odt,           On-die termination
		output wire [0:0]   mem_reset_n,         //                 .mem_reset_n,       Asynchronous reset
		inout  wire [7:0]   mem_dqs,             //                 .mem_dqs,           Data strobe
		inout  wire [7:0]   mem_dqs_n,           //                 .mem_dqs_n,         Data strobe (negative leg)
		inout  wire [63:0]  mem_dq,              //                 .mem_dq,            Read/write data
		inout  wire [7:0]   mem_dbi_n,           //                 .mem_dbi_n,         Acts as either the data bus inversion pin, or the data mask pin, depending on configuration.
		output wire         local_cal_success,   //           status.local_cal_success, When high, indicates that PHY calibration was successful
		output wire         local_cal_fail,      //                 .local_cal_fail,    When high, indicates that PHY calibration failed
		output wire         emif_usr_reset_n,    // emif_usr_reset_n.reset_n,           Reset for the user clock domain. Asynchronous assertion and synchronous deassertion
		output wire         emif_usr_clk,        //     emif_usr_clk.clk,               User clock domain
		output wire         amm_ready_0,         //       ctrl_amm_0.waitrequest_n,     Wait-request is asserted when controller is busy
		input  wire         amm_read_0,          //                 .read,              Read request signal
		input  wire         amm_write_0,         //                 .write,             Write request signal
		input  wire [21:0]  amm_address_0,       //                 .address,           Address for the read/write request
		output wire [511:0] amm_readdata_0,      //                 .readdata,          Read data
		input  wire [511:0] amm_writedata_0,     //                 .writedata,         Write data
		input  wire [6:0]   amm_burstcount_0,    //                 .burstcount,        Number of transfers in each read/write burst
		input  wire [63:0]  amm_byteenable_0,    //                 .byteenable,        Byte-enable for write data
		output wire         amm_readdatavalid_0  //                 .readdatavalid,     Indicates whether read data is valid
	);

	top_emif_0_altera_emif_1910_d3ribzq emif_0 (
		.global_reset_n      (global_reset_n),      //   input,    width = 1,   global_reset_n.reset_n
		.pll_ref_clk         (pll_ref_clk),         //   input,    width = 1,      pll_ref_clk.clk
		.oct_rzqin           (oct_rzqin),           //   input,    width = 1,              oct.oct_rzqin
		.mem_ck              (mem_ck),              //  output,    width = 1,              mem.mem_ck
		.mem_ck_n            (mem_ck_n),            //  output,    width = 1,                 .mem_ck_n
		.mem_a               (mem_a),               //  output,   width = 17,                 .mem_a
		.mem_act_n           (mem_act_n),           //  output,    width = 1,                 .mem_act_n
		.mem_ba              (mem_ba),              //  output,    width = 2,                 .mem_ba
		.mem_bg              (mem_bg),              //  output,    width = 1,                 .mem_bg
		.mem_cke             (mem_cke),             //  output,    width = 1,                 .mem_cke
		.mem_cs_n            (mem_cs_n),            //  output,    width = 1,                 .mem_cs_n
		.mem_odt             (mem_odt),             //  output,    width = 1,                 .mem_odt
		.mem_reset_n         (mem_reset_n),         //  output,    width = 1,                 .mem_reset_n
		.mem_dqs             (mem_dqs),             //   inout,    width = 8,                 .mem_dqs
		.mem_dqs_n           (mem_dqs_n),           //   inout,    width = 8,                 .mem_dqs_n
		.mem_dq              (mem_dq),              //   inout,   width = 64,                 .mem_dq
		.mem_dbi_n           (mem_dbi_n),           //   inout,    width = 8,                 .mem_dbi_n
		.local_cal_success   (local_cal_success),   //  output,    width = 1,           status.local_cal_success
		.local_cal_fail      (local_cal_fail),      //  output,    width = 1,                 .local_cal_fail
		.emif_usr_reset_n    (emif_usr_reset_n),    //  output,    width = 1, emif_usr_reset_n.reset_n
		.emif_usr_clk        (emif_usr_clk),        //  output,    width = 1,     emif_usr_clk.clk
		.amm_ready_0         (amm_ready_0),         //  output,    width = 1,       ctrl_amm_0.waitrequest_n
		.amm_read_0          (amm_read_0),          //   input,    width = 1,                 .read
		.amm_write_0         (amm_write_0),         //   input,    width = 1,                 .write
		.amm_address_0       (amm_address_0),       //   input,   width = 22,                 .address
		.amm_readdata_0      (amm_readdata_0),      //  output,  width = 512,                 .readdata
		.amm_writedata_0     (amm_writedata_0),     //   input,  width = 512,                 .writedata
		.amm_burstcount_0    (amm_burstcount_0),    //   input,    width = 7,                 .burstcount
		.amm_byteenable_0    (amm_byteenable_0),    //   input,   width = 64,                 .byteenable
		.amm_readdatavalid_0 (amm_readdatavalid_0)  //  output,    width = 1,                 .readdatavalid
	);

endmodule