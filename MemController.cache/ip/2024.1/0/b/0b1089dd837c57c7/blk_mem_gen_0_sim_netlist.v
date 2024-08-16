// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
// Date        : Thu Aug 15 09:45:53 2024
// Host        : ykpc running 64-bit unknown
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_8 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20544)
`pragma protect data_block
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
IwMf7xf33Jqej0FCk0LNK1jb4Q0KOIvf
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
