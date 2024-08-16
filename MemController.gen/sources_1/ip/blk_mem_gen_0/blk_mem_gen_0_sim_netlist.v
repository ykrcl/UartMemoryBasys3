// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
// Date        : Thu Aug 15 09:45:53 2024
// Host        : ykpc running 64-bit unknown
// Command     : write_verilog -force -mode funcsim
//               /home/ykrcl/Projects/fpga/MemController/MemController.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [7:0]addra;
  wire clka;
  wire [15:0]dina;
  wire [15:0]douta;
  wire ena;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [15:0]NLW_U0_doutb_UNCONNECTED;
  wire [7:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "8" *) 
  (* C_ADDRB_WIDTH = "8" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.87285 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "256" *) 
  (* C_READ_DEPTH_B = "256" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "256" *) 
  (* C_WRITE_DEPTH_B = "256" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_8 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[15:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[7:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[7:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
RSqbsRZSIb+QlYJMfFv1T7uHQ7PiCEXQkl687MHGm2LgPB15GIYcPmqKUSXgtkLsIFes91PTAyyB
9H9cyY4ZUxedcRg/9ZOB5pm3zPqAbcvGPmg1ivMhr/MlS19t5lYKM2tQo+0Yd+arJXlVZu2BMnvn
+I3G9t9tJuWUIWKjI+I=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VRSQ05ZaB6bIhFIQ823mTvlJaG9+5iW5C3+KxGjq0sq9ziCshKOLpOGPDMmOWDqA4uBaxC5IKISr
w8+A8mqbYjXo5m1g8sGjNaETS0HKJsK+l5Y++tN4IEUs+DwxgrPR/+LWtChuOzVkfC7BG3LVUEMj
zM3GAyGcXGJ3sdBItZAfsevyiy7kr4Fw+nk2hWytGteu1NZk3VzPE7KQHLkOlHBPXf6P0j8LpKcr
2oNDgQ/WaEmg6OOvFeJuaWDaee8Sn6wKP/caMyoGdSeczsPtRrJeoSRlbNHlxhCv7zg+Cn2AgwrR
PTqGsMrkhv9U0sq+waS0CmwChsk4WB7RspGYUg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
tNziOjCznlvIl4dadmB9r23Duf+HQHWOuHmupEU3PJxrazHVtZdNKspG9sRXhF9mjbpnSiKYCdFK
Jr9W/dxUid36faFIPKQazVTuOiE0hkzVQAGpYxXjT/ITB/9EFBvgvP5L3EAhHv32x6MA1vkFSI7x
HrZ09YNFEF6T7DPTZE4=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QCYfxgkUHlX1cre1q9aS3sVDIOX36YBK4ZwJXAVUwA6f1OQ77XibjpWJHt5FK9F0PcYp/j21pqzO
BRdkDcFLVAjxER4J5t5iMVhoeMk+3fpiKfYrm4WFl1ygsJsfFJP0jqO1OkjC8iFBtm3n6b7CTl1o
cjBbcBp8UgW6E8rf5inXA0dRqybnyxKJSnMFYLinvpVU6QEc4OKO7mi/i/s9p/efiP+CdQf0yDRU
Fw7o7x0D7tjBv943g5L+4wGZ2JYU+ISqn4Ajxy/bWTTJDe6T/15evhngS61MC8Xjamzc4YLZBP8o
ShfSLoeZeO+Hk5n3xzJRghM0DQ6Sj7NqXFY68w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Uy8FDDy3dZQGAnMQV0HBesEs+/oZdaq35Kj1PGhy9J/+EBZm0nhhQgYtku8tWABW2jKAC1GtNTvo
uReQyr1hteMxTbD5OIuqv86eb1hXZVENlZ7ichG8auUjkeHAkaSYNbHOuDLIhSqHEL67XbcZ9zPG
1JOY3+VONSww0KYPcQbGSo/2DaC5C0Y+mZODRfJ4+b0WXjce6UaJetilBc3VtqqmodIM2d3HDawF
R0xVJfHj86rXmUkY+SNUw60zsV6raCY6G3k/rXpei1d6zn8tCThkKG5fwiWY8zA7kRdTFIlVKP9h
fb6kfzRBRT/BgVQ8d4RgEcEVV8m3u/Mf4KIlTw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Pk1GeRlkUK9lt6DVXYVdtOABlzDEWQDcBsP/p+Wo5HaglDLG5b8gk08xTP3IcJ1RKcfuARPMGO2s
/VqFbnVADV90T1rhjIuWMcBnzYQK/ALUvwv11Uju9Gn0fvPIz52l3QBnpjHI1nlsFB7WeqkzVfHZ
tg9gO9bPHjHLjVd9BzH6McrEWY5RkZ0UBy0Fmh/SownJX1b0YGE7LdwKydEMEpyvb28bwTOwfEv/
4RtsfYtEvTjo6e1ZBm66D9IQmKUu32wzTfn5bFZHdyjZg6+HcTzvHMtQX2+AggXfP6FsO2/83qkb
0bfj226fnLhr32dJxtsaJS5OR63GYtzDJ05ITA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LCfWqKmUoUSVOTKNAl5p8n1hfz7SMU2kDOUMBjsDncgSFqiu2zUy1I6GSDrVnF/2umJG5/mWcpvi
rQaFJOlrJ8DNctSuavdlopRAwTMsVi6dAlNGrAawSiDIxtI3tN3MDVdMiH5H+pJMqMt59yXneyCf
2RRSRz2sUQK/aj0lXlqKjVJzVbk8HaBQ8akBJF4iWSMK4foIzJ6iO1EupYovuW6uEiO7jQRWezlW
pbbDenOHHWbfinuX5cbkjpTKHGsEKct65q+ZXJp60m3sconSK3Y2eLQxusuJ1FHDJ4GGKO8mEzCv
3cfGdXX3pVL81OfGO/JD1aMs9H98CO5ssbHqlw==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
A4S1e3DHcTeWzaDVuWDRb3Yf1BjiEsR1RtAeL0BJ7J/oPWMNj96MeGsUiHtZoiYqteTZxqax2cyZ
PV0cMLoBK4Ya8CyM+BTnkFA2ablsGt5Es4TgG/nFS9VEhmeKxu8boAsqW5697aiqOATJf/LucQh5
GOnPXHAuPrDj0A/fu8N2QduqGyysWUSc1KsoJ0/0noJYvLJ2yOhFi4uIUYQfG5LOuOrca5P43pqA
iwUKW/RrFXal2acJdFeXIKffZpKanSV97urdzKyBvf9EPV/M8g9uPFJJ1z6aS+FbknhVPs0pt6eD
+J/qib4gVp/HGnRo4YlxauUMv6Yv9wxiaObY6ttDfYf5p3uzWZMlf3i7YOzZwcd4aS/6+vkD28LG
L9piBIpLx2dvQy74RdvCVdvaP1LC6RMju9RfuXJhuX4ZAmDxRi0zQyRda838ikzwYeOCSKLIvRPb
nuJ8Zx2ot8EFqSeGaaRFaEMU6Zf5SptCUuVMHvSkinBewcwrLB5uiJTJ

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gj+uMxV+tK4Di7pgSOE82FOBeWmUB1A7OKFOSMUW3qrmQ4/YhryfHMlWPxfAq8avQL7tnBTnRFEg
czbErdIcNzYjrM7Qq00QC/mTqmeQX4/apbqGvN+rwK4RR5oj22wfTib/UQNEQX6fbpi6PtmAeUR9
eShsfq+YWcf7z2Zw4Q+o4+E6m4/3CzU68vglNpzNsJ8S9/8XpdIrvAA/WRAX6OEOC4wlNIKDZsq/
+zMbFgSzN1rP844I/CDmxYM0NIzBWWhYBkPfJyQyigmUoXb84lDip0/Dmnq4EHvu7D/tZNnDl5st
JpftRfEpT6S8e/5MBeKUuhbfg6etHo/oFZvPKQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
aWTy3xv6SqKsldtLS2gY4KrTS8U+KtFNRHS314f6EYZy1MHE9t7oICJ8eNB8up8A+odoE23N3fJb
1alhaadeRWU2GjlIiK1LjZ5PQw+jb1u1GWtRiY+TcTlD75XUlqwykVBrCDfm565DmgZjZle9T3/t
WEfLo+m/8GfBe8trVnoftsk/XI00BMFXRzw8doPGDhNECS1NUrLebryb9iO5Hf4A/40dtslTARsR
nicN0KoIIyiQ+QzliqyXU/8VjS45inON8R0Kv9Qx46EXUp7bds5uQ7QycRhpLG0IPnMIweudU67w
eQmpHJzvZKBCZks/R0OafZx44H6Jib2+QazBCw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UGdPiChIPj1lSozqzCQx17Bi+8FWSuMUMzXUkDLH5zcP1t8tZLzh4CU4WAR8lmJxn8gH763fLp5c
RYU6zA0yxHzl2ksc5YRU1XEfQQT9ha8fQnz+18wVKcsa5UIOfMbGDwnS9yfX59ntG8CB0uF8bJKE
y1CS6U/1Stfs1w2mF94iDxI2n2GJlb1UPtWpmxMBI88hY0GktTPXP2Y7JKl8zRl/Lq0wIF8pHwXk
B4nOgKm6hfzPj0xZ6E/TuER/JE3fy8RSm24IlL/CUgpReEslEOYjQ4EKKZRG9/fxg26utQWW9p+G
fWVU53qrFGzBhKQ96Paj1ROkv6hDHyUb6n7uSw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20528)
`pragma protect data_block
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
7AE5BLbzpsg=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
