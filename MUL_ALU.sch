<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_2(31:0)" />
        <signal name="XLXN_4(31:0)" />
        <signal name="XLXN_7(31:0)" />
        <signal name="XLXN_8(31:0)" />
        <signal name="XLXN_11(63:0)" />
        <signal name="XLXN_12(63:0)" />
        <signal name="XLXN_13(63:0)" />
        <signal name="XLXN_14(63:0)" />
        <signal name="XLXN_15(63:0)" />
        <signal name="XLXN_16(63:0)" />
        <signal name="XLXN_19(63:0)" />
        <signal name="XLXN_20(63:0)" />
        <signal name="XLXN_21(63:0)" />
        <signal name="XLXN_22(63:0)" />
        <signal name="XLXN_23" />
        <signal name="XLXN_36(31:0)" />
        <signal name="XLXN_43(63:0)" />
        <signal name="XLXN_9(63:0)" />
        <signal name="XLXN_10(63:0)" />
        <signal name="XLXN_18(63:0)" />
        <signal name="XLXN_24(63:0)" />
        <signal name="XLXN_17(63:0)" />
        <signal name="XLXN_25(63:0)" />
        <signal name="clk" />
        <signal name="VC">
        </signal>
        <signal name="rst" />
        <signal name="MUL_EXE_HiLo(1:0)">
        </signal>
        <signal name="MUL_EXE_we">
        </signal>
        <signal name="MUL_EXE_en_c">
        </signal>
        <signal name="MUL_EXE_add_sub">
        </signal>
        <signal name="MUL_EXE_data(31:0)">
        </signal>
        <signal name="XLXN_38" />
        <signal name="XLXN_39" />
        <signal name="MUL_EWB_res(63:0)" />
        <signal name="XLXN_46(63:0)" />
        <signal name="XLXN_48" />
        <signal name="XLXN_76(63:0)" />
        <signal name="XLXN_80(63:0)" />
        <signal name="MUL_EWB_HiLo(1:0)" />
        <signal name="XLXN_84(1:0)" />
        <signal name="XLXN_85" />
        <signal name="XLXN_86(63:0)" />
        <signal name="XLXN_87(31:0)" />
        <signal name="XLXN_88(31:0)" />
        <signal name="Hi_Lo(63:0)" />
        <signal name="XLXN_93(63:0)" />
        <signal name="Hi_Lo(63:32)" />
        <signal name="Hi_Lo(31:0)" />
        <signal name="MUL_EWB_HiLo(0)" />
        <signal name="XLXN_100(31:0)" />
        <signal name="XLXN_101(31:0)" />
        <signal name="XLXN_102(31:0)" />
        <signal name="XLXN_103(31:0)" />
        <signal name="XLXN_104" />
        <signal name="MUL_ID_EXE_rst" />
        <signal name="MUL_ID_sign" />
        <signal name="MUL_ID_we" />
        <signal name="MUL_ID_en_c" />
        <signal name="MUL_ID_add_sub" />
        <signal name="MUL_ID_A(31:0)" />
        <signal name="MUL_ID_B(31:0)" />
        <signal name="MUL_ID_HiLo(1:0)" />
        <signal name="MUL_ID_data(31:0)" />
        <signal name="MUL_ID_mul" />
        <signal name="MUL_EXE_mul" />
        <signal name="MUL_EWB_mul" />
        <signal name="XLXN_126(31:0)" />
        <signal name="MUL_EWB_res(31:0)" />
        <signal name="MUL_EWB_data_out(31:0)" />
        <signal name="XLXN_130(63:0)" />
        <signal name="XLXN_131(63:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="rst" />
        <port polarity="Input" name="MUL_ID_EXE_rst" />
        <port polarity="Input" name="MUL_ID_sign" />
        <port polarity="Input" name="MUL_ID_we" />
        <port polarity="Input" name="MUL_ID_en_c" />
        <port polarity="Input" name="MUL_ID_add_sub" />
        <port polarity="Input" name="MUL_ID_A(31:0)" />
        <port polarity="Input" name="MUL_ID_B(31:0)" />
        <port polarity="Input" name="MUL_ID_HiLo(1:0)" />
        <port polarity="Input" name="MUL_ID_data(31:0)" />
        <port polarity="Input" name="MUL_ID_mul" />
        <port polarity="Output" name="MUL_EWB_data_out(31:0)" />
        <blockdef name="mul32">
            <timestamp>2017-9-13T11:59:47</timestamp>
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <rect width="64" x="320" y="84" height="24" />
            <line x2="384" y1="96" y2="96" x1="320" />
            <rect width="256" x="64" y="0" height="128" />
            <rect width="64" x="0" y="20" height="24" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="64" x="0" y="84" height="24" />
            <line x2="0" y1="96" y2="96" x1="64" />
        </blockdef>
        <blockdef name="mulu32">
            <timestamp>2017-9-13T11:58:2</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="MUX2T1_64">
            <timestamp>2017-9-13T12:31:21</timestamp>
            <rect width="64" x="160" y="-192" height="144" />
            <line x2="192" y1="-208" y2="-192" x1="192" />
            <line x2="160" y1="-160" y2="-160" x1="144" />
            <line x2="160" y1="-64" y2="-64" x1="144" />
            <line x2="224" y1="-112" y2="-112" x1="240" />
        </blockdef>
        <blockdef name="MUL_EXE_EWB">
            <timestamp>2017-9-13T14:43:7</timestamp>
            <rect width="464" x="64" y="-640" height="692" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="528" y="-236" height="24" />
            <line x2="592" y1="-224" y2="-224" x1="528" />
            <rect width="64" x="528" y="-140" height="24" />
            <line x2="592" y1="-128" y2="-128" x1="528" />
            <rect width="64" x="528" y="-44" height="24" />
            <line x2="592" y1="-32" y2="-32" x1="528" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="592" y1="-416" y2="-416" x1="528" />
            <line x2="592" y1="-320" y2="-320" x1="528" />
            <line x2="592" y1="-608" y2="-608" x1="528" />
            <line x2="592" y1="-512" y2="-512" x1="528" />
            <line x2="68" y1="32" y2="32" x1="0" />
            <line x2="528" y1="32" y2="32" x1="592" />
        </blockdef>
        <blockdef name="mul_adder">
            <timestamp>2017-9-13T13:37:2</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
        </blockdef>
        <blockdef name="Reg_HiLo">
            <timestamp>2017-9-13T13:52:36</timestamp>
            <rect width="256" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="320" y="-364" height="24" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
        </blockdef>
        <blockdef name="MUX2T1_32">
            <timestamp>2017-2-28T7:14:0</timestamp>
            <rect width="40" x="12" y="-100" height="100" />
            <line x2="32" y1="-112" y2="-100" x1="32" />
            <line x2="52" y1="-48" y2="-48" style="linewidth:W;linecolor:rgb(0,0,0)" x1="64" />
            <line x2="0" y1="-80" y2="-80" style="linewidth:W" x1="12" />
            <line x2="0" y1="-16" y2="-16" style="linewidth:W" x1="12" />
        </blockdef>
        <blockdef name="MUL_ID_EXE">
            <timestamp>2017-9-13T14:44:30</timestamp>
            <rect width="448" x="64" y="-704" height="756" />
            <line x2="0" y1="-672" y2="-672" x1="64" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="576" y1="-672" y2="-672" x1="512" />
            <line x2="576" y1="-592" y2="-592" x1="512" />
            <line x2="576" y1="-512" y2="-512" x1="512" />
            <line x2="576" y1="-432" y2="-432" x1="512" />
            <rect width="64" x="512" y="-364" height="24" />
            <line x2="576" y1="-352" y2="-352" x1="512" />
            <rect width="64" x="512" y="-284" height="24" />
            <line x2="576" y1="-272" y2="-272" x1="512" />
            <rect width="64" x="512" y="-204" height="24" />
            <line x2="576" y1="-192" y2="-192" x1="512" />
            <rect width="64" x="512" y="-124" height="24" />
            <line x2="576" y1="-112" y2="-112" x1="512" />
            <line x2="64" y1="32" y2="32" x1="0" />
            <line x2="512" y1="32" y2="32" x1="576" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <block symbolname="mulu32" name="XLXI_2">
            <blockpin signalname="XLXN_101(31:0)" name="A(31:0)" />
            <blockpin signalname="XLXN_103(31:0)" name="B(31:0)" />
            <blockpin signalname="XLXN_9(63:0)" name="A_t(63:0)" />
            <blockpin signalname="XLXN_17(63:0)" name="B_t(63:0)" />
        </block>
        <block symbolname="mul32" name="XLXI_3">
            <blockpin signalname="XLXN_10(63:0)" name="A_t(63:0)" />
            <blockpin signalname="XLXN_18(63:0)" name="B_t(63:0)" />
            <blockpin signalname="XLXN_101(31:0)" name="A(31:0)" />
            <blockpin signalname="XLXN_103(31:0)" name="B(31:0)" />
        </block>
        <block symbolname="MUX2T1_64" name="XLXI_4">
            <blockpin signalname="XLXN_104" name="s" />
            <blockpin signalname="XLXN_9(63:0)" name="I0(63:0)" />
            <blockpin signalname="XLXN_24(63:0)" name="O(63:0)" />
            <blockpin signalname="XLXN_10(63:0)" name="I1(63:0)" />
        </block>
        <block symbolname="MUX2T1_64" name="XLXI_5">
            <blockpin signalname="XLXN_104" name="s" />
            <blockpin signalname="XLXN_17(63:0)" name="I0(63:0)" />
            <blockpin signalname="XLXN_25(63:0)" name="O(63:0)" />
            <blockpin signalname="XLXN_18(63:0)" name="I1(63:0)" />
        </block>
        <block symbolname="MUL_EXE_EWB" name="XLXI_6">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="VC" name="EN" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="XLXN_24(63:0)" name="MUL_EXE_A_t(63:0)" />
            <blockpin signalname="XLXN_25(63:0)" name="MUL_EXE_B_t(63:0)" />
            <blockpin signalname="MUL_EXE_data(31:0)" name="MUL_EXE_data(31:0)" />
            <blockpin signalname="XLXN_131(63:0)" name="MUL_EWB_A_t(63:0)" />
            <blockpin signalname="XLXN_130(63:0)" name="MUL_EWB_B_t(63:0)" />
            <blockpin signalname="XLXN_87(31:0)" name="MUL_EWB_data(31:0)" />
            <blockpin signalname="MUL_EXE_HiLo(1:0)" name="MUL_EXE_HiLo(1:0)" />
            <blockpin signalname="MUL_EXE_we" name="MUL_EXE_we" />
            <blockpin signalname="MUL_EXE_en_c" name="MUL_EXE_en_c" />
            <blockpin signalname="MUL_EXE_add_sub" name="MUL_EXE_add_sub" />
            <blockpin signalname="XLXN_38" name="MUL_EWB_en_c" />
            <blockpin signalname="XLXN_39" name="MUL_EWB_add_sub" />
            <blockpin signalname="MUL_EWB_HiLo(1:0)" name="MUL_EWB_HiLo(1:0)" />
            <blockpin signalname="XLXN_85" name="MUL_EWB_we" />
            <blockpin signalname="MUL_EXE_mul" name="MUL_EXE_mul" />
            <blockpin signalname="MUL_EWB_mul" name="MUL_EWB_mul" />
        </block>
        <block symbolname="mul_adder" name="XLXI_8">
            <blockpin signalname="XLXN_131(63:0)" name="A(63:0)" />
            <blockpin signalname="XLXN_130(63:0)" name="B(63:0)" />
            <blockpin signalname="Hi_Lo(63:0)" name="C_(63:0)" />
            <blockpin signalname="MUL_EWB_res(63:0)" name="res(63:0)" />
            <blockpin signalname="XLXN_38" name="en_c" />
            <blockpin signalname="XLXN_39" name="a_s" />
        </block>
        <block symbolname="Reg_HiLo" name="XLXI_15">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="Hi_Lo(63:0)" name="Hi_Lo(63:0)" />
            <blockpin signalname="XLXN_85" name="we" />
            <blockpin signalname="MUL_EWB_res(63:0)" name="cal_res(63:0)" />
            <blockpin signalname="XLXN_87(31:0)" name="data_in(31:0)" />
            <blockpin signalname="MUL_EWB_HiLo(1:0)" name="HiLo(1:0)" />
        </block>
        <block symbolname="MUX2T1_32" name="XLXI_16">
            <blockpin signalname="MUL_EWB_HiLo(0)" name="s" />
            <blockpin signalname="Hi_Lo(63:32)" name="I0(31:0)" />
            <blockpin signalname="Hi_Lo(31:0)" name="I1(31:0)" />
            <blockpin signalname="XLXN_126(31:0)" name="o(31:0)" />
        </block>
        <block symbolname="MUL_ID_EXE" name="XLXI_17">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="MUL_ID_EXE_rst" name="rst" />
            <blockpin signalname="VC" name="EN" />
            <blockpin signalname="MUL_ID_sign" name="MUL_ID_sign" />
            <blockpin signalname="MUL_ID_we" name="MUL_ID_we" />
            <blockpin signalname="MUL_ID_en_c" name="MUL_ID_en_c" />
            <blockpin signalname="MUL_ID_add_sub" name="MUL_ID_add_sub" />
            <blockpin signalname="MUL_ID_A(31:0)" name="MUL_ID_A(31:0)" />
            <blockpin signalname="MUL_ID_B(31:0)" name="MUL_ID_B(31:0)" />
            <blockpin signalname="MUL_ID_HiLo(1:0)" name="MUL_ID_HiLo(1:0)" />
            <blockpin signalname="MUL_ID_data(31:0)" name="MUL_ID_data(31:0)" />
            <blockpin signalname="XLXN_104" name="MUL_EXE_sign" />
            <blockpin signalname="MUL_EXE_we" name="MUL_EXE_we" />
            <blockpin signalname="MUL_EXE_en_c" name="MUL_EXE_en_c" />
            <blockpin signalname="MUL_EXE_add_sub" name="MUL_EXE_add_sub" />
            <blockpin signalname="XLXN_101(31:0)" name="MUL_EXE_A(31:0)" />
            <blockpin signalname="XLXN_103(31:0)" name="MUL_EXE_B(31:0)" />
            <blockpin signalname="MUL_EXE_HiLo(1:0)" name="MUL_EXE_HiLo(1:0)" />
            <blockpin signalname="MUL_EXE_data(31:0)" name="MUL_EXE_data(31:0)" />
            <blockpin signalname="MUL_ID_mul" name="MUL_ID_mul" />
            <blockpin signalname="MUL_EXE_mul" name="MUL_EXE_mul" />
        </block>
        <block symbolname="vcc" name="XLXI_18">
            <blockpin signalname="VC" name="P" />
        </block>
        <block symbolname="MUX2T1_32" name="XLXI_19">
            <blockpin signalname="MUL_EWB_mul" name="s" />
            <blockpin signalname="XLXN_126(31:0)" name="I0(31:0)" />
            <blockpin signalname="MUL_EWB_res(31:0)" name="I1(31:0)" />
            <blockpin signalname="MUL_EWB_data_out(31:0)" name="o(31:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7040" height="5440">
        <instance x="1920" y="1504" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1920" y="1600" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_9(63:0)">
            <wire x2="2624" y1="1408" y2="1408" x1="2304" />
        </branch>
        <branch name="XLXN_10(63:0)">
            <wire x2="2464" y1="1632" y2="1632" x1="2304" />
            <wire x2="2464" y1="1504" y2="1632" x1="2464" />
            <wire x2="2624" y1="1504" y2="1504" x1="2464" />
        </branch>
        <branch name="XLXN_18(63:0)">
            <wire x2="2544" y1="1696" y2="1696" x1="2304" />
        </branch>
        <instance x="2480" y="1568" name="XLXI_4" orien="R0">
        </instance>
        <branch name="XLXN_24(63:0)">
            <wire x2="2736" y1="1456" y2="1456" x1="2720" />
            <wire x2="2736" y1="1456" y2="1584" x1="2736" />
            <wire x2="3232" y1="1584" y2="1584" x1="2736" />
        </branch>
        <branch name="XLXN_17(63:0)">
            <wire x2="2384" y1="1472" y2="1472" x1="2304" />
            <wire x2="2384" y1="1472" y2="1600" x1="2384" />
            <wire x2="2544" y1="1600" y2="1600" x1="2384" />
        </branch>
        <instance x="2400" y="1760" name="XLXI_5" orien="R0">
        </instance>
        <branch name="XLXN_25(63:0)">
            <wire x2="3232" y1="1648" y2="1648" x1="2640" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3024" y="1136" type="branch" />
            <wire x2="3232" y1="1136" y2="1136" x1="3024" />
        </branch>
        <branch name="VC">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3024" y="1200" type="branch" />
            <wire x2="3232" y1="1200" y2="1200" x1="3024" />
        </branch>
        <branch name="rst">
            <wire x2="3232" y1="1264" y2="1264" x1="3024" />
        </branch>
        <branch name="MUL_EXE_HiLo(1:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3024" y="1328" type="branch" />
            <wire x2="3232" y1="1328" y2="1328" x1="3024" />
        </branch>
        <branch name="MUL_EXE_we">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3024" y="1392" type="branch" />
            <wire x2="3232" y1="1392" y2="1392" x1="3024" />
        </branch>
        <branch name="MUL_EXE_en_c">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3024" y="1456" type="branch" />
            <wire x2="3232" y1="1456" y2="1456" x1="3024" />
        </branch>
        <branch name="MUL_EXE_add_sub">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3024" y="1520" type="branch" />
            <wire x2="3232" y1="1520" y2="1520" x1="3024" />
        </branch>
        <instance x="3232" y="1744" name="XLXI_6" orien="R0">
        </instance>
        <branch name="MUL_EXE_data(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3024" y="1712" type="branch" />
            <wire x2="3232" y1="1712" y2="1712" x1="3024" />
        </branch>
        <branch name="XLXN_38">
            <wire x2="3888" y1="1328" y2="1328" x1="3824" />
            <wire x2="3888" y1="1328" y2="1424" x1="3888" />
            <wire x2="3936" y1="1424" y2="1424" x1="3888" />
        </branch>
        <iomarker fontsize="28" x="3024" y="1264" name="rst" orien="R180" />
        <instance x="3936" y="1712" name="XLXI_8" orien="R0">
        </instance>
        <branch name="XLXN_39">
            <wire x2="3872" y1="1424" y2="1424" x1="3824" />
            <wire x2="3872" y1="1424" y2="1488" x1="3872" />
            <wire x2="3936" y1="1488" y2="1488" x1="3872" />
        </branch>
        <branch name="MUL_EWB_res(63:0)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="4368" y="1344" type="branch" />
            <wire x2="4368" y1="1424" y2="1424" x1="4320" />
            <wire x2="4432" y1="1264" y2="1264" x1="4368" />
            <wire x2="4368" y1="1264" y2="1328" x1="4368" />
            <wire x2="4368" y1="1328" y2="1344" x1="4368" />
            <wire x2="4368" y1="1344" y2="1424" x1="4368" />
        </branch>
        <branch name="MUL_EWB_HiLo(1:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="4032" y="1136" type="branch" />
            <wire x2="4032" y1="1136" y2="1136" x1="3824" />
            <wire x2="4432" y1="1136" y2="1136" x1="4032" />
        </branch>
        <instance x="4432" y="1360" name="XLXI_15" orien="R0">
        </instance>
        <branch name="XLXN_85">
            <wire x2="3888" y1="1232" y2="1232" x1="3824" />
            <wire x2="4432" y1="1200" y2="1200" x1="3888" />
            <wire x2="3888" y1="1200" y2="1232" x1="3888" />
        </branch>
        <branch name="XLXN_87(31:0)">
            <wire x2="3872" y1="1712" y2="1712" x1="3824" />
            <wire x2="3872" y1="1712" y2="1760" x1="3872" />
            <wire x2="4384" y1="1760" y2="1760" x1="3872" />
            <wire x2="4400" y1="1760" y2="1760" x1="4384" />
            <wire x2="4432" y1="1328" y2="1328" x1="4400" />
            <wire x2="4400" y1="1328" y2="1680" x1="4400" />
            <wire x2="4400" y1="1680" y2="1760" x1="4400" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4416" y="1008" type="branch" />
            <wire x2="4432" y1="1008" y2="1008" x1="4416" />
        </branch>
        <branch name="rst">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4416" y="1072" type="branch" />
            <wire x2="4432" y1="1072" y2="1072" x1="4416" />
        </branch>
        <branch name="Hi_Lo(63:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="4496" y="1808" type="branch" />
            <wire x2="3936" y1="1680" y2="1680" x1="3904" />
            <wire x2="3904" y1="1680" y2="1792" x1="3904" />
            <wire x2="3904" y1="1792" y2="1808" x1="3904" />
            <wire x2="4496" y1="1808" y2="1808" x1="3904" />
            <wire x2="4848" y1="1808" y2="1808" x1="4496" />
            <wire x2="4864" y1="1808" y2="1808" x1="4848" />
            <wire x2="4864" y1="1008" y2="1008" x1="4816" />
            <wire x2="4864" y1="1008" y2="1408" x1="4864" />
            <wire x2="4864" y1="1408" y2="1472" x1="4864" />
            <wire x2="4864" y1="1472" y2="1808" x1="4864" />
        </branch>
        <bustap x2="4960" y1="1408" y2="1408" x1="4864" />
        <branch name="Hi_Lo(63:32)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="4976" y="1408" type="branch" />
            <wire x2="4976" y1="1408" y2="1408" x1="4960" />
            <wire x2="5088" y1="1408" y2="1408" x1="4976" />
        </branch>
        <instance x="5088" y="1488" name="XLXI_16" orien="R0">
        </instance>
        <bustap x2="4960" y1="1472" y2="1472" x1="4864" />
        <branch name="Hi_Lo(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="4976" y="1472" type="branch" />
            <wire x2="4976" y1="1472" y2="1472" x1="4960" />
            <wire x2="4992" y1="1472" y2="1472" x1="4976" />
            <wire x2="5088" y1="1472" y2="1472" x1="4992" />
        </branch>
        <branch name="MUL_EWB_HiLo(0)">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="5120" y="1312" type="branch" />
            <wire x2="5120" y1="1312" y2="1344" x1="5120" />
            <wire x2="5120" y1="1344" y2="1376" x1="5120" />
        </branch>
        <instance x="864" y="1808" name="XLXI_17" orien="R0">
        </instance>
        <branch name="XLXN_101(31:0)">
            <wire x2="1680" y1="1456" y2="1456" x1="1440" />
            <wire x2="1680" y1="1456" y2="1632" x1="1680" />
            <wire x2="1920" y1="1632" y2="1632" x1="1680" />
            <wire x2="1680" y1="1408" y2="1456" x1="1680" />
            <wire x2="1920" y1="1408" y2="1408" x1="1680" />
        </branch>
        <branch name="XLXN_103(31:0)">
            <wire x2="1664" y1="1536" y2="1536" x1="1440" />
            <wire x2="1664" y1="1536" y2="1696" x1="1664" />
            <wire x2="1920" y1="1696" y2="1696" x1="1664" />
            <wire x2="1664" y1="1472" y2="1536" x1="1664" />
            <wire x2="1920" y1="1472" y2="1472" x1="1664" />
        </branch>
        <branch name="XLXN_104">
            <wire x2="2584" y1="1136" y2="1136" x1="1440" />
            <wire x2="2592" y1="1136" y2="1136" x1="2584" />
            <wire x2="2672" y1="1136" y2="1136" x1="2592" />
            <wire x2="2672" y1="1136" y2="1360" x1="2672" />
            <wire x2="2592" y1="1136" y2="1552" x1="2592" />
        </branch>
        <branch name="clk">
            <wire x2="864" y1="1136" y2="1136" x1="816" />
        </branch>
        <branch name="MUL_ID_EXE_rst">
            <wire x2="864" y1="1200" y2="1200" x1="816" />
        </branch>
        <branch name="VC">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="816" y="1264" type="branch" />
            <wire x2="864" y1="1264" y2="1264" x1="816" />
        </branch>
        <branch name="MUL_ID_sign">
            <wire x2="864" y1="1328" y2="1328" x1="816" />
        </branch>
        <branch name="MUL_ID_we">
            <wire x2="864" y1="1392" y2="1392" x1="816" />
        </branch>
        <branch name="MUL_ID_en_c">
            <wire x2="864" y1="1456" y2="1456" x1="816" />
        </branch>
        <branch name="MUL_ID_add_sub">
            <wire x2="864" y1="1520" y2="1520" x1="816" />
        </branch>
        <branch name="MUL_ID_A(31:0)">
            <wire x2="864" y1="1584" y2="1584" x1="816" />
        </branch>
        <branch name="MUL_ID_B(31:0)">
            <wire x2="864" y1="1648" y2="1648" x1="816" />
        </branch>
        <branch name="MUL_ID_HiLo(1:0)">
            <wire x2="864" y1="1712" y2="1712" x1="816" />
        </branch>
        <branch name="MUL_ID_data(31:0)">
            <wire x2="864" y1="1776" y2="1776" x1="816" />
        </branch>
        <branch name="MUL_EXE_we">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1472" y="1216" type="branch" />
            <wire x2="1472" y1="1216" y2="1216" x1="1440" />
        </branch>
        <branch name="MUL_EXE_en_c">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1472" y="1296" type="branch" />
            <wire x2="1456" y1="1296" y2="1296" x1="1440" />
            <wire x2="1472" y1="1296" y2="1296" x1="1456" />
        </branch>
        <branch name="MUL_EXE_add_sub">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1472" y="1376" type="branch" />
            <wire x2="1472" y1="1376" y2="1376" x1="1440" />
        </branch>
        <branch name="MUL_EXE_HiLo(1:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1472" y="1616" type="branch" />
            <wire x2="1472" y1="1616" y2="1616" x1="1440" />
        </branch>
        <branch name="MUL_EXE_data(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1472" y="1696" type="branch" />
            <wire x2="1472" y1="1696" y2="1696" x1="1440" />
        </branch>
        <iomarker fontsize="28" x="816" y="1200" name="MUL_ID_EXE_rst" orien="R180" />
        <iomarker fontsize="28" x="816" y="1328" name="MUL_ID_sign" orien="R180" />
        <iomarker fontsize="28" x="816" y="1392" name="MUL_ID_we" orien="R180" />
        <iomarker fontsize="28" x="816" y="1456" name="MUL_ID_en_c" orien="R180" />
        <iomarker fontsize="28" x="816" y="1520" name="MUL_ID_add_sub" orien="R180" />
        <iomarker fontsize="28" x="816" y="1584" name="MUL_ID_A(31:0)" orien="R180" />
        <iomarker fontsize="28" x="816" y="1648" name="MUL_ID_B(31:0)" orien="R180" />
        <iomarker fontsize="28" x="816" y="1712" name="MUL_ID_HiLo(1:0)" orien="R180" />
        <iomarker fontsize="28" x="816" y="1776" name="MUL_ID_data(31:0)" orien="R180" />
        <instance x="2784" y="688" name="XLXI_18" orien="R0" />
        <branch name="VC">
            <attrtext style="alignment:SOFT-VRIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2848" y="720" type="branch" />
            <wire x2="2848" y1="688" y2="720" x1="2848" />
        </branch>
        <iomarker fontsize="28" x="816" y="1136" name="clk" orien="R180" />
        <branch name="MUL_ID_mul">
            <wire x2="864" y1="1840" y2="1840" x1="816" />
        </branch>
        <iomarker fontsize="28" x="816" y="1840" name="MUL_ID_mul" orien="R180" />
        <branch name="MUL_EXE_mul">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1472" y="1840" type="branch" />
            <wire x2="1472" y1="1840" y2="1840" x1="1440" />
        </branch>
        <branch name="MUL_EXE_mul">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3200" y="1776" type="branch" />
            <wire x2="3232" y1="1776" y2="1776" x1="3200" />
        </branch>
        <branch name="MUL_EWB_mul">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3888" y="1840" type="branch" />
            <wire x2="3840" y1="1776" y2="1776" x1="3824" />
            <wire x2="3840" y1="1776" y2="1840" x1="3840" />
            <wire x2="3888" y1="1840" y2="1840" x1="3840" />
        </branch>
        <branch name="XLXN_126(31:0)">
            <wire x2="5296" y1="1440" y2="1440" x1="5152" />
        </branch>
        <instance x="5296" y="1520" name="XLXI_19" orien="R0">
        </instance>
        <branch name="MUL_EWB_res(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="5200" y="1504" type="branch" />
            <wire x2="5296" y1="1504" y2="1504" x1="5200" />
        </branch>
        <branch name="MUL_EWB_mul">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="5328" y="1392" type="branch" />
            <wire x2="5328" y1="1392" y2="1408" x1="5328" />
        </branch>
        <branch name="MUL_EWB_data_out(31:0)">
            <wire x2="5392" y1="1472" y2="1472" x1="5360" />
        </branch>
        <iomarker fontsize="28" x="5392" y="1472" name="MUL_EWB_data_out(31:0)" orien="R0" />
        <branch name="XLXN_130(63:0)">
            <wire x2="3936" y1="1616" y2="1616" x1="3824" />
        </branch>
        <branch name="XLXN_131(63:0)">
            <wire x2="3872" y1="1520" y2="1520" x1="3824" />
            <wire x2="3872" y1="1520" y2="1552" x1="3872" />
            <wire x2="3936" y1="1552" y2="1552" x1="3872" />
        </branch>
    </sheet>
</drawing>