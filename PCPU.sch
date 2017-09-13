<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk" />
        <signal name="rst" />
        <signal name="wb_data(31:0)" />
        <signal name="wb_we" />
        <signal name="wb_dreg(4:0)" />
        <signal name="mem_we" />
        <signal name="mem_addr(31:0)" />
        <signal name="mem_data(31:0)" />
        <signal name="mem_wb_data(31:0)" />
        <signal name="XLXN_143" />
        <signal name="exe_regb(31:0)" />
        <signal name="exe_result(31:0)" />
        <signal name="exe_wb_dreg(4:0)" />
        <signal name="exe_wb_we" />
        <signal name="exe_mem_mem_reg" />
        <signal name="XLXN_246" />
        <signal name="exe_imme(15:0)" />
        <signal name="exe_sign" />
        <signal name="exe_srcb" />
        <signal name="exe_aluop(2:0)" />
        <signal name="XLXN_68(31:0)" />
        <signal name="XLXN_221(31:0)" />
        <signal name="exe_rega(31:0)" />
        <signal name="XLXN_222(31:0)" />
        <signal name="N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,exe_imme(15:0)" />
        <signal name="inst_addr(31:0)" />
        <signal name="inst_data(31:0)" />
        <signal name="id_ra" />
        <signal name="id_exe_rega(31:0)" />
        <signal name="id_exe_regb(31:0)" />
        <signal name="XLXN_355(2:0)" />
        <signal name="XLXN_358" />
        <signal name="XLXN_361(4:0)" />
        <signal name="XLXN_362" />
        <signal name="XLXN_363" />
        <signal name="XLXN_365" />
        <signal name="XLXN_366" />
        <signal name="N0" />
        <signal name="VC" />
        <signal name="mem_data_in(31:0)" />
        <signal name="XLXN_381(31:0)" />
        <signal name="exe_lui" />
        <signal name="exe_imme(15:0),N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0" />
        <signal name="XLXN_382" />
        <signal name="id_baddr(31:0)" />
        <signal name="XLXN_408(31:0)" />
        <signal name="XLXN_412(31:0)" />
        <signal name="id_inst(31:0)" />
        <signal name="id_inst(15:0)" />
        <signal name="id_npc(31:0)" />
        <signal name="id_npc(31:28),id_inst(25:0),N0,N0" />
        <signal name="XLXN_415(31:0)" />
        <signal name="exe_jal" />
        <signal name="exe_npc(31:0)" />
        <signal name="XLXN_426" />
        <signal name="XLXN_427(1:0)" />
        <signal name="id_beq" />
        <signal name="id_bne" />
        <signal name="id_j" />
        <signal name="id_jr" />
        <signal name="id_eql" />
        <signal name="XLXN_430(31:0)" />
        <signal name="XLXN_27" />
        <signal name="id_inst(20:16)" />
        <signal name="id_rega_addr(4:0)" />
        <signal name="mem_wb_dreg(4:0)" />
        <signal name="id_inst(25:21)" />
        <signal name="XLXN_538(31:0)" />
        <signal name="XLXN_540(31:0)" />
        <signal name="id_bubble" />
        <signal name="mem_wb_we" />
        <signal name="XLXN_542" />
        <signal name="id_sign_imm(29:0),N0,N0" />
        <signal name="id_sign_imm(31:0)" />
        <signal name="id_stall_" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="rst" />
        <port polarity="Output" name="mem_we" />
        <port polarity="Output" name="mem_addr(31:0)" />
        <port polarity="Output" name="mem_data(31:0)" />
        <port polarity="Output" name="inst_addr(31:0)" />
        <port polarity="Input" name="inst_data(31:0)" />
        <port polarity="Input" name="mem_data_in(31:0)" />
        <blockdef name="alu">
            <timestamp>2017-4-4T15:18:0</timestamp>
            <line x2="108" y1="-216" y2="-136" style="linewidth:W;linecolor:rgb(255,0,0)" x1="32" />
            <line x2="108" y1="-72" y2="-136" style="linewidth:W;linecolor:rgb(255,0,0)" x1="32" />
            <line x2="32" y1="-72" y2="96" style="linewidth:W;linecolor:rgb(255,0,0)" x1="32" />
            <line x2="352" y1="-48" y2="-232" style="linewidth:W;linecolor:rgb(255,0,0)" x1="352" />
            <line x2="32" y1="-232" y2="-384" style="linewidth:W;linecolor:rgb(255,0,0)" x1="352" />
            <line x2="32" y1="-216" y2="-384" style="linewidth:W;linecolor:rgb(255,0,0)" x1="32" />
            <line x2="32" y1="-48" y2="96" style="linewidth:W;linecolor:rgb(255,0,0)" x1="352" />
            <line x2="0" y1="-288" y2="-288" style="linewidth:W" x1="32" />
            <line x2="0" y1="16" y2="16" style="linewidth:W" x1="32" />
            <line x2="208" y1="-384" y2="-300" style="linewidth:W" x1="208" />
            <line x2="384" y1="-208" y2="-208" x1="352" />
            <line x2="384" y1="-144" y2="-144" style="linewidth:W" x1="352" />
            <line x2="384" y1="-80" y2="-80" x1="352" />
        </blockdef>
        <blockdef name="Regs">
            <timestamp>2017-4-4T15:18:0</timestamp>
            <rect style="linewidth:W;linecolor:rgb(255,0,0);fillcolor:rgb(254,180,229);fillstyle:Solid" width="352" x="64" y="-448" height="448" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="240" y1="-496" y2="-448" x1="240" />
            <rect width="64" x="416" y="-396" height="24" />
            <line x2="480" y1="-384" y2="-384" x1="416" />
            <line x2="0" y1="-368" y2="-368" x1="64" />
            <rect width="64" x="0" y="-60" height="24" />
            <line x2="0" y1="-48" y2="-48" x1="64" />
            <rect width="64" x="416" y="-124" height="24" />
            <line x2="480" y1="-112" y2="-112" x1="416" />
            <rect width="64" x="0" y="-332" height="24" />
            <line x2="0" y1="-320" y2="-320" x1="64" />
            <rect width="64" x="0" y="-284" height="24" />
            <line x2="0" y1="-272" y2="-272" x1="64" />
            <rect width="64" x="0" y="-204" height="24" />
            <line x2="0" y1="-192" y2="-192" x1="64" />
        </blockdef>
        <blockdef name="REG32">
            <timestamp>2017-4-4T15:18:0</timestamp>
            <rect style="fillcolor:rgb(0,255,255);fillstyle:Solid" width="88" x="32" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="32" />
            <line x2="0" y1="-160" y2="-160" x1="32" />
            <line x2="0" y1="-96" y2="-96" x1="32" />
            <line x2="0" y1="-32" y2="-32" style="linewidth:W" x1="32" />
            <line x2="120" y1="-128" y2="-128" style="linewidth:W" x1="144" />
        </blockdef>
        <blockdef name="adder4">
            <timestamp>2017-4-11T11:50:51</timestamp>
            <rect width="80" x="64" y="-164" height="164" />
            <line x2="0" y1="-128" y2="-128" x1="64" />
            <line x2="144" y1="-112" y2="-112" x1="192" />
        </blockdef>
        <blockdef name="IF_ID_Reg">
            <timestamp>2017-9-4T15:14:1</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <rect width="64" x="320" y="-76" height="24" />
            <line x2="384" y1="-64" y2="-64" x1="320" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="MEM_WB_REG">
            <timestamp>2017-9-5T0:16:24</timestamp>
            <line x2="-32" y1="224" y2="224" x1="32" />
            <rect width="64" x="-32" y="276" height="24" />
            <line x2="-32" y1="288" y2="288" x1="32" />
            <line x2="432" y1="160" y2="160" x1="368" />
            <rect width="336" x="32" y="-108" height="492" />
            <rect width="64" x="-32" y="164" height="24" />
            <line x2="-32" y1="176" y2="176" x1="32" />
            <rect width="64" x="368" y="212" height="24" />
            <line x2="432" y1="224" y2="224" x1="368" />
            <rect width="64" x="368" y="100" height="24" />
            <line x2="432" y1="112" y2="112" x1="368" />
            <line x2="-32" y1="-80" y2="-80" x1="32" />
            <line x2="-32" y1="-16" y2="-16" x1="32" />
            <line x2="-32" y1="48" y2="48" x1="32" />
        </blockdef>
        <blockdef name="MUX2T1_32">
            <timestamp>2017-2-28T7:14:0</timestamp>
            <rect width="40" x="12" y="-100" height="100" />
            <line x2="32" y1="-112" y2="-100" x1="32" />
            <line x2="52" y1="-48" y2="-48" style="linewidth:W;linecolor:rgb(0,0,0)" x1="64" />
            <line x2="0" y1="-80" y2="-80" style="linewidth:W" x1="12" />
            <line x2="0" y1="-16" y2="-16" style="linewidth:W" x1="12" />
        </blockdef>
        <blockdef name="Ext_32">
            <timestamp>2017-2-28T7:14:0</timestamp>
            <circle style="linewidth:W;linecolor:rgb(255,0,0);linestyle:Dash" r="69" cx="185" cy="-33" />
            <line x2="124" y1="0" y2="0" style="linewidth:W" x1="96" />
            <line x2="272" y1="-64" y2="-64" style="linewidth:W" x1="248" />
            <rect style="linecolor:rgb(255,255,255)" width="128" x="120" y="-80" height="88" />
        </blockdef>
        <blockdef name="EXE_MEM_REG">
            <timestamp>2017-9-5T2:11:41</timestamp>
            <line x2="528" y1="160" y2="160" x1="464" />
            <line x2="528" y1="224" y2="224" x1="464" />
            <rect width="64" x="464" y="276" height="24" />
            <line x2="528" y1="288" y2="288" x1="464" />
            <rect width="400" x="64" y="-332" height="652" />
            <line x2="464" y1="-48" y2="-48" x1="532" />
            <line x2="464" y1="-96" y2="-96" x1="528" />
            <line x2="464" y1="-144" y2="-144" x1="528" />
            <line x2="0" y1="160" y2="160" x1="64" />
            <line x2="0" y1="224" y2="224" x1="64" />
            <rect width="64" x="0" y="276" height="24" />
            <line x2="0" y1="288" y2="288" x1="64" />
            <line x2="0" y1="-304" y2="-304" x1="64" />
            <line x2="0" y1="-240" y2="-240" x1="64" />
            <line x2="0" y1="-176" y2="-176" x1="64" />
            <rect width="64" x="0" y="-28" height="24" />
            <line x2="0" y1="-16" y2="-16" x1="64" />
            <rect width="64" x="0" y="36" height="24" />
            <line x2="0" y1="48" y2="48" x1="64" />
            <line x2="0" y1="112" y2="112" x1="64" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="ID_EXE_REG">
            <timestamp>2017-9-5T6:33:23</timestamp>
            <rect width="64" x="368" y="1044" height="24" />
            <line x2="432" y1="1056" y2="1056" x1="368" />
            <line x2="432" y1="1008" y2="1008" x1="368" />
            <line x2="432" y1="960" y2="960" x1="368" />
            <rect width="64" x="-160" y="1044" height="24" />
            <line x2="-160" y1="1056" y2="1056" x1="-96" />
            <line x2="-160" y1="1008" y2="1008" x1="-96" />
            <line x2="-160" y1="960" y2="960" x1="-96" />
            <rect width="464" x="-96" y="224" height="860" />
            <line x2="-160" y1="912" y2="912" x1="-96" />
            <line x2="432" y1="912" y2="912" x1="368" />
            <rect width="64" x="368" y="852" height="24" />
            <line x2="432" y1="864" y2="864" x1="368" />
            <rect width="64" x="368" y="660" height="24" />
            <line x2="432" y1="672" y2="672" x1="368" />
            <rect width="64" x="368" y="612" height="24" />
            <line x2="432" y1="624" y2="624" x1="368" />
            <line x2="432" y1="720" y2="720" x1="368" />
            <line x2="432" y1="768" y2="768" x1="368" />
            <rect width="64" x="368" y="804" height="24" />
            <line x2="432" y1="816" y2="816" x1="368" />
            <rect width="64" x="-160" y="852" height="24" />
            <line x2="-160" y1="864" y2="864" x1="-96" />
            <rect width="64" x="-160" y="804" height="24" />
            <line x2="-160" y1="816" y2="816" x1="-96" />
            <line x2="-160" y1="768" y2="768" x1="-96" />
            <line x2="-160" y1="720" y2="720" x1="-96" />
            <rect width="64" x="-160" y="596" height="24" />
            <line x2="-160" y1="608" y2="608" x1="-96" />
            <rect width="64" x="-160" y="660" height="24" />
            <line x2="-160" y1="672" y2="672" x1="-96" />
            <line x2="-96" y1="560" y2="560" x1="-160" />
            <line x2="368" y1="576" y2="576" x1="432" />
            <line x2="368" y1="480" y2="480" x1="432" />
            <line x2="368" y1="528" y2="528" x1="432" />
            <line x2="-160" y1="272" y2="272" x1="-96" />
            <line x2="-160" y1="336" y2="336" x1="-96" />
            <line x2="-160" y1="400" y2="400" x1="-96" />
            <line x2="-92" y1="464" y2="464" x1="-160" />
            <line x2="-92" y1="512" y2="512" x1="-160" />
        </blockdef>
        <blockdef name="MUX2T1_5">
            <timestamp>2017-2-28T7:14:0</timestamp>
            <line x2="16" y1="-80" y2="-72" x1="16" />
            <line x2="4" y1="-48" y2="-48" style="linewidth:W" x1="0" />
            <line x2="4" y1="-16" y2="-16" style="linewidth:W" x1="0" />
            <line x2="28" y1="-32" y2="-32" style="linewidth:W" x1="32" />
            <rect width="24" x="4" y="-72" height="72" />
        </blockdef>
        <blockdef name="control">
            <timestamp>2017-9-5T6:55:32</timestamp>
            <rect width="304" x="64" y="-512" height="512" />
            <rect width="64" x="0" y="-492" height="24" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="368" y="-44" height="24" />
            <line x2="432" y1="-32" y2="-32" x1="368" />
            <line x2="432" y1="-80" y2="-80" x1="368" />
            <line x2="432" y1="-304" y2="-304" x1="368" />
            <line x2="432" y1="-256" y2="-256" x1="368" />
            <rect width="64" x="368" y="-364" height="24" />
            <line x2="432" y1="-352" y2="-352" x1="368" />
            <line x2="432" y1="-144" y2="-144" x1="368" />
            <line x2="432" y1="-192" y2="-192" x1="368" />
            <line x2="368" y1="-400" y2="-400" x1="432" />
            <line x2="368" y1="-432" y2="-432" x1="432" />
            <line x2="432" y1="-464" y2="-464" x1="368" />
            <line x2="64" y1="-144" y2="-144" x1="0" />
            <line x2="68" y1="-112" y2="-112" x1="0" />
            <line x2="68" y1="-80" y2="-80" x1="0" />
            <line x2="68" y1="-48" y2="-48" x1="0" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="add_32">
            <timestamp>2017-2-28T7:14:0</timestamp>
            <line x2="16" y1="-48" y2="-48" style="linewidth:W" x1="32" />
            <line x2="16" y1="-16" y2="-16" style="linewidth:W" x1="32" />
            <line x2="96" y1="4" y2="-16" x1="32" />
            <line x2="32" y1="-24" y2="4" x1="32" />
            <line x2="44" y1="-24" y2="-32" x1="32" />
            <line x2="44" y1="-40" y2="-32" x1="32" />
            <line x2="32" y1="-40" y2="-68" x1="32" />
            <line x2="96" y1="-68" y2="-48" x1="32" />
            <line x2="96" y1="-48" y2="-16" x1="96" />
            <line x2="112" y1="-32" y2="-32" style="linewidth:W" x1="96" />
        </blockdef>
        <blockdef name="MUX4T1_32">
            <timestamp>2017-2-28T7:14:0</timestamp>
            <line x2="0" y1="-80" y2="-80" style="linewidth:W" x1="12" />
            <line x2="0" y1="-48" y2="-48" style="linewidth:W" x1="12" />
            <line x2="0" y1="-16" y2="-16" style="linewidth:W" x1="12" />
            <rect width="40" x="12" y="-136" height="128" />
            <line x2="0" y1="-112" y2="-112" style="linewidth:W" x1="12" />
            <line x2="32" y1="-136" y2="-144" style="linewidth:W" x1="32" />
            <line x2="52" y1="-96" y2="-96" style="linewidth:W;linecolor:rgb(0,0,0)" x1="64" />
        </blockdef>
        <blockdef name="jump_control">
            <timestamp>2017-9-5T7:0:36</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
        </blockdef>
        <blockdef name="branch_judge">
            <timestamp>2017-9-5T7:5:54</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="stall_control">
            <timestamp>2017-9-5T9:34:18</timestamp>
            <rect width="320" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="448" y1="-224" y2="-224" x1="384" />
            <line x2="448" y1="-80" y2="-80" x1="384" />
        </blockdef>
        <blockdef name="forward_reg">
            <timestamp>2017-9-8T3:56:28</timestamp>
            <rect width="384" x="64" y="-576" height="520" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-492" height="24" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-556" height="24" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-176" y2="-176" x1="64" />
            <line x2="0" y1="-128" y2="-128" x1="64" />
            <line x2="0" y1="-80" y2="-80" x1="64" />
            <rect width="64" x="448" y="-556" height="24" />
            <line x2="512" y1="-544" y2="-544" x1="448" />
        </blockdef>
        <blockdef name="IF_stall">
            <timestamp>2017-9-9T14:24:12</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="MEM_WB_REG" name="XLXI_18">
            <blockpin signalname="wb_we" name="wb_we" />
            <blockpin signalname="mem_wb_we" name="mem_wb_we" />
            <blockpin signalname="mem_wb_dreg(4:0)" name="mem_wb_dreg(4:0)" />
            <blockpin signalname="mem_wb_data(31:0)" name="mem_wb_data(31:0)" />
            <blockpin signalname="wb_dreg(4:0)" name="wb_dreg(4:0)" />
            <blockpin signalname="wb_data(31:0)" name="wb_data(31:0)" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="VC" name="EN" />
        </block>
        <block symbolname="EXE_MEM_REG" name="XLXI_19">
            <blockpin signalname="XLXN_143" name="mem_mem_reg" />
            <blockpin signalname="mem_wb_we" name="mem_wb_we" />
            <blockpin signalname="mem_wb_dreg(4:0)" name="mem_wb_dreg(4:0)" />
            <blockpin signalname="mem_we" name="mem_we" />
            <blockpin signalname="mem_addr(31:0)" name="mem_addr(31:0)" />
            <blockpin signalname="mem_data(31:0)" name="mem_data(31:0)" />
            <blockpin signalname="exe_mem_mem_reg" name="exe_mem_mem_reg" />
            <blockpin signalname="exe_wb_we" name="exe_wb_we" />
            <blockpin signalname="exe_wb_dreg(4:0)" name="exe_wb_dreg(4:0)" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="VC" name="EN" />
            <blockpin signalname="exe_result(31:0)" name="exe_mem_addr(31:0)" />
            <blockpin signalname="exe_regb(31:0)" name="exe_mem_data(31:0)" />
            <blockpin signalname="XLXN_246" name="exe_mem_we" />
        </block>
        <block symbolname="MUX2T1_32" name="XLXI_20">
            <blockpin signalname="XLXN_143" name="s" />
            <blockpin signalname="mem_data_in(31:0)" name="I0(31:0)" />
            <blockpin signalname="mem_addr(31:0)" name="I1(31:0)" />
            <blockpin signalname="mem_wb_data(31:0)" name="o(31:0)" />
        </block>
        <block symbolname="alu" name="XLXI_1">
            <blockpin signalname="exe_aluop(2:0)" name="ALU_Ctr(2:0)" />
            <blockpin signalname="XLXN_381(31:0)" name="res(31:0)" />
            <blockpin name="zero" />
            <blockpin name="overflow" />
            <blockpin signalname="exe_rega(31:0)" name="A(31:0)" />
            <blockpin signalname="XLXN_68(31:0)" name="B(31:0)" />
        </block>
        <block symbolname="MUX2T1_32" name="XLXI_13">
            <blockpin signalname="exe_srcb" name="s" />
            <blockpin signalname="exe_regb(31:0)" name="I0(31:0)" />
            <blockpin signalname="XLXN_221(31:0)" name="I1(31:0)" />
            <blockpin signalname="XLXN_68(31:0)" name="o(31:0)" />
        </block>
        <block symbolname="MUX2T1_32" name="XLXI_42">
            <blockpin signalname="exe_sign" name="s" />
            <blockpin signalname="N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,exe_imme(15:0)" name="I0(31:0)" />
            <blockpin signalname="XLXN_222(31:0)" name="I1(31:0)" />
            <blockpin signalname="XLXN_221(31:0)" name="o(31:0)" />
        </block>
        <block symbolname="Ext_32" name="XLXI_43">
            <blockpin signalname="exe_imme(15:0)" name="imm_16(15:0)" />
            <blockpin signalname="XLXN_222(31:0)" name="Imm_32(31:0)" />
        </block>
        <block symbolname="REG32" name="XLXI_3">
            <blockpin signalname="XLXN_408(31:0)" name="D(31:0)" />
            <blockpin signalname="XLXN_542" name="CE" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="inst_addr(31:0)" name="Q(31:0)" />
        </block>
        <block symbolname="adder4" name="XLXI_4">
            <blockpin signalname="inst_addr(31:0)" name="pc(31:0)" />
            <blockpin signalname="XLXN_412(31:0)" name="nextPc(31:0)" />
        </block>
        <block symbolname="control" name="XLXI_72">
            <blockpin signalname="id_inst(31:0)" name="inst(31:0)" />
            <blockpin signalname="XLXN_361(4:0)" name="id_wb_dreg(4:0)" />
            <blockpin signalname="XLXN_366" name="id_wb_we" />
            <blockpin signalname="XLXN_362" name="id_exe_srcb" />
            <blockpin signalname="XLXN_363" name="id_exe_sign" />
            <blockpin signalname="XLXN_355(2:0)" name="id_exe_aluop(2:0)" />
            <blockpin signalname="XLXN_365" name="id_mem_mem_reg" />
            <blockpin signalname="XLXN_358" name="id_mem_we" />
            <blockpin signalname="XLXN_382" name="id_exe_lui" />
            <blockpin signalname="XLXN_426" name="id_exe_jal" />
            <blockpin signalname="id_ra" name="id_ra" />
            <blockpin signalname="id_beq" name="id_beq" />
            <blockpin signalname="id_bne" name="id_bne" />
            <blockpin signalname="id_j" name="id_j" />
            <blockpin signalname="id_jr" name="id_jr" />
        </block>
        <block symbolname="gnd" name="XLXI_44">
            <blockpin signalname="N0" name="G" />
        </block>
        <block symbolname="vcc" name="XLXI_73">
            <blockpin signalname="VC" name="P" />
        </block>
        <block symbolname="MUX2T1_32" name="XLXI_74">
            <blockpin signalname="exe_lui" name="s" />
            <blockpin signalname="XLXN_381(31:0)" name="I0(31:0)" />
            <blockpin signalname="exe_imme(15:0),N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0" name="I1(31:0)" />
            <blockpin signalname="XLXN_415(31:0)" name="o(31:0)" />
        </block>
        <block symbolname="MUX4T1_32" name="XLXI_85">
            <blockpin signalname="XLXN_427(1:0)" name="s(1:0)" />
            <blockpin signalname="XLXN_412(31:0)" name="I0(31:0)" />
            <blockpin signalname="id_baddr(31:0)" name="I1(31:0)" />
            <blockpin signalname="id_npc(31:28),id_inst(25:0),N0,N0" name="I2(31:0)" />
            <blockpin signalname="id_exe_rega(31:0)" name="I3(31:0)" />
            <blockpin signalname="XLXN_408(31:0)" name="o(31:0)" />
        </block>
        <block symbolname="MUX2T1_32" name="XLXI_86">
            <blockpin signalname="exe_jal" name="s" />
            <blockpin signalname="XLXN_415(31:0)" name="I0(31:0)" />
            <blockpin signalname="XLXN_430(31:0)" name="I1(31:0)" />
            <blockpin signalname="exe_result(31:0)" name="o(31:0)" />
        </block>
        <block symbolname="ID_EXE_REG" name="XLXI_45">
            <blockpin signalname="XLXN_363" name="id_exe_sign" />
            <blockpin signalname="XLXN_362" name="id_exe_srcb" />
            <blockpin signalname="XLXN_358" name="id_mem_we" />
            <blockpin signalname="XLXN_365" name="id_mem_mem_reg" />
            <blockpin signalname="XLXN_366" name="id_wb_we" />
            <blockpin signalname="XLXN_355(2:0)" name="id_exe_aluop(2:0)" />
            <blockpin signalname="id_exe_rega(31:0)" name="id_exe_rega(31:0)" />
            <blockpin signalname="id_exe_regb(31:0)" name="id_exe_regb(31:0)" />
            <blockpin signalname="id_inst(15:0)" name="id_exe_imme(15:0)" />
            <blockpin signalname="XLXN_361(4:0)" name="id_wb_dreg(4:0)" />
            <blockpin signalname="exe_sign" name="exe_sign" />
            <blockpin signalname="exe_srcb" name="exe_srcb" />
            <blockpin signalname="XLXN_246" name="exe_mem_we" />
            <blockpin signalname="exe_mem_mem_reg" name="exe_mem_mem_reg" />
            <blockpin signalname="exe_wb_we" name="exe_wb_we" />
            <blockpin signalname="exe_aluop(2:0)" name="exe_aluop(2:0)" />
            <blockpin signalname="exe_rega(31:0)" name="exe_rega(31:0)" />
            <blockpin signalname="exe_regb(31:0)" name="exe_regb(31:0)" />
            <blockpin signalname="exe_imme(15:0)" name="exe_imme(15:0)" />
            <blockpin signalname="exe_wb_dreg(4:0)" name="exe_wb_dreg(4:0)" />
            <blockpin signalname="exe_lui" name="exe_lui" />
            <blockpin signalname="XLXN_382" name="id_exe_lui" />
            <blockpin signalname="exe_npc(31:0)" name="exe_npc(31:0)" />
            <blockpin signalname="exe_jal" name="exe_jal" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="id_bubble" name="rst" />
            <blockpin signalname="VC" name="EN" />
            <blockpin signalname="XLXN_426" name="id_exe_jal" />
            <blockpin signalname="id_npc(31:0)" name="id_exe_npc(31:0)" />
        </block>
        <block symbolname="jump_control" name="XLXI_87">
            <blockpin signalname="id_beq" name="beq" />
            <blockpin signalname="id_bne" name="bne" />
            <blockpin signalname="id_j" name="j" />
            <blockpin signalname="id_jr" name="jr" />
            <blockpin signalname="id_eql" name="equal" />
            <blockpin signalname="XLXN_427(1:0)" name="s(1:0)" />
        </block>
        <block symbolname="adder4" name="XLXI_89">
            <blockpin signalname="exe_npc(31:0)" name="pc(31:0)" />
            <blockpin signalname="XLXN_430(31:0)" name="nextPc(31:0)" />
        </block>
        <block symbolname="Regs" name="XLXI_2">
            <blockpin signalname="XLXN_27" name="clk" />
            <blockpin signalname="wb_we" name="L_S" />
            <blockpin signalname="XLXN_538(31:0)" name="rdata_A(31:0)" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="wb_data(31:0)" name="Wt_data(31:0)" />
            <blockpin signalname="XLXN_540(31:0)" name="rdata_B(31:0)" />
            <blockpin signalname="id_rega_addr(4:0)" name="R_addr_A(4:0)" />
            <blockpin signalname="id_inst(20:16)" name="R_addr_B(4:0)" />
            <blockpin signalname="wb_dreg(4:0)" name="Wt_addr(4:0)" />
        </block>
        <block symbolname="inv" name="XLXI_7">
            <blockpin signalname="clk" name="I" />
            <blockpin signalname="XLXN_27" name="O" />
        </block>
        <block symbolname="MUX2T1_5" name="XLXI_71">
            <blockpin signalname="id_inst(20:16)" name="I1(4:0)" />
            <blockpin signalname="id_inst(25:21)" name="I0(4:0)" />
            <blockpin signalname="id_rega_addr(4:0)" name="o(4:0)" />
            <blockpin signalname="id_ra" name="s" />
        </block>
        <block symbolname="IF_ID_Reg" name="XLXI_5">
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="XLXN_542" name="EN" />
            <blockpin signalname="id_inst(31:0)" name="inst_out(31:0)" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_412(31:0)" name="npc(31:0)" />
            <blockpin signalname="inst_data(31:0)" name="inst(31:0)" />
            <blockpin signalname="id_npc(31:0)" name="npc_out(31:0)" />
        </block>
        <block symbolname="forward_reg" name="XLXI_113">
            <blockpin signalname="exe_wb_dreg(4:0)" name="exe_wb_dreg(4:0)" />
            <blockpin signalname="exe_result(31:0)" name="exe_out(31:0)" />
            <blockpin signalname="mem_wb_dreg(4:0)" name="mem_wb_dreg(4:0)" />
            <blockpin signalname="mem_wb_data(31:0)" name="mem_out(31:0)" />
            <blockpin signalname="XLXN_538(31:0)" name="id_out(31:0)" />
            <blockpin signalname="id_rega_addr(4:0)" name="id_reg(4:0)" />
            <blockpin signalname="exe_wb_we" name="exe_wb_we" />
            <blockpin signalname="mem_wb_we" name="mem_wb_we" />
            <blockpin signalname="exe_mem_mem_reg" name="exe_mem_mem_reg" />
            <blockpin signalname="id_exe_rega(31:0)" name="id_exe_reg(31:0)" />
        </block>
        <block symbolname="forward_reg" name="XLXI_114">
            <blockpin signalname="exe_wb_dreg(4:0)" name="exe_wb_dreg(4:0)" />
            <blockpin signalname="exe_result(31:0)" name="exe_out(31:0)" />
            <blockpin signalname="mem_wb_dreg(4:0)" name="mem_wb_dreg(4:0)" />
            <blockpin signalname="mem_wb_data(31:0)" name="mem_out(31:0)" />
            <blockpin signalname="XLXN_540(31:0)" name="id_out(31:0)" />
            <blockpin signalname="id_inst(20:16)" name="id_reg(4:0)" />
            <blockpin signalname="exe_wb_we" name="exe_wb_we" />
            <blockpin signalname="mem_wb_we" name="mem_wb_we" />
            <blockpin signalname="exe_mem_mem_reg" name="exe_mem_mem_reg" />
            <blockpin signalname="id_exe_regb(31:0)" name="id_exe_reg(31:0)" />
        </block>
        <block symbolname="IF_stall" name="XLXI_115">
            <blockpin name="id_stall_" />
            <blockpin signalname="XLXN_542" name="EN" />
        </block>
        <block symbolname="add_32" name="XLXI_75">
            <blockpin signalname="id_sign_imm(29:0),N0,N0" name="b(31:0)" />
            <blockpin signalname="id_npc(31:0)" name="a(31:0)" />
            <blockpin signalname="id_baddr(31:0)" name="c(31:0)" />
        </block>
        <block symbolname="Ext_32" name="XLXI_76">
            <blockpin signalname="id_inst(15:0)" name="imm_16(15:0)" />
            <blockpin signalname="id_sign_imm(31:0)" name="Imm_32(31:0)" />
        </block>
        <block symbolname="branch_judge" name="XLXI_88">
            <blockpin signalname="id_exe_rega(31:0)" name="rega(31:0)" />
            <blockpin signalname="id_exe_regb(31:0)" name="regb(31:0)" />
            <blockpin signalname="id_eql" name="equl" />
        </block>
        <block symbolname="stall_control" name="XLXI_109">
            <blockpin signalname="exe_mem_mem_reg" name="exe_mem_mem_reg" />
            <blockpin signalname="exe_wb_we" name="exe_wb_we" />
            <blockpin signalname="id_rega_addr(4:0)" name="id_rega(4:0)" />
            <blockpin signalname="id_inst(20:16)" name="id_regb(4:0)" />
            <blockpin signalname="exe_wb_dreg(4:0)" name="exe_wb_dreg(4:0)" />
            <blockpin signalname="id_stall_" name="_stall_en" />
            <blockpin signalname="id_bubble" name="bubble" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7040" height="5440">
        <attr value="Inch" name="LengthUnitName" />
        <attr value="10" name="GridsPerUnit" />
        <instance x="6288" y="2688" name="XLXI_18" orien="R0">
        </instance>
        <instance x="5104" y="2688" name="XLXI_19" orien="R0">
        </instance>
        <iomarker fontsize="28" x="5648" y="2544" name="mem_we" orien="R0" />
        <iomarker fontsize="28" x="5648" y="2592" name="mem_addr(31:0)" orien="R0" />
        <iomarker fontsize="28" x="5648" y="2640" name="mem_data(31:0)" orien="R0" />
        <instance x="5856" y="3136" name="XLXI_20" orien="R0">
        </instance>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="6240" y="2608" type="branch" />
            <wire x2="6256" y1="2608" y2="2608" x1="6240" />
        </branch>
        <branch name="rst">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="6240" y="2672" type="branch" />
            <wire x2="6256" y1="2672" y2="2672" x1="6240" />
        </branch>
        <branch name="wb_dreg(4:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="6736" y="2912" type="branch" />
            <wire x2="6736" y1="2912" y2="2912" x1="6720" />
        </branch>
        <branch name="wb_we">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="6736" y="2848" type="branch" />
            <wire x2="6736" y1="2848" y2="2848" x1="6720" />
        </branch>
        <branch name="wb_data(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="6736" y="2800" type="branch" />
            <wire x2="6736" y1="2800" y2="2800" x1="6720" />
        </branch>
        <branch name="mem_wb_dreg(4:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="5936" y="2976" type="branch" />
            <wire x2="5936" y1="2976" y2="2976" x1="5632" />
            <wire x2="6256" y1="2976" y2="2976" x1="5936" />
        </branch>
        <branch name="mem_wb_we">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="5968" y="2912" type="branch" />
            <wire x2="5968" y1="2912" y2="2912" x1="5632" />
            <wire x2="6256" y1="2912" y2="2912" x1="5968" />
        </branch>
        <branch name="mem_we">
            <wire x2="5648" y1="2544" y2="2544" x1="5632" />
        </branch>
        <branch name="mem_addr(31:0)">
            <wire x2="5648" y1="2592" y2="2592" x1="5632" />
        </branch>
        <branch name="mem_data(31:0)">
            <wire x2="5648" y1="2640" y2="2640" x1="5632" />
        </branch>
        <branch name="mem_wb_data(31:0)">
            <attrtext style="alignment:SOFT-TCENTER;fontsize:28;fontname:Arial" attrname="Name" x="6080" y="3088" type="branch" />
            <wire x2="6080" y1="3088" y2="3088" x1="5920" />
            <wire x2="6080" y1="2864" y2="3088" x1="6080" />
            <wire x2="6256" y1="2864" y2="2864" x1="6080" />
        </branch>
        <branch name="XLXN_143">
            <wire x2="5888" y1="2848" y2="2848" x1="5632" />
            <wire x2="5888" y1="2848" y2="3024" x1="5888" />
        </branch>
        <branch name="mem_addr(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="5824" y="3120" type="branch" />
            <wire x2="5856" y1="3120" y2="3120" x1="5824" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="5088" y="2384" type="branch" />
            <wire x2="5104" y1="2384" y2="2384" x1="5088" />
        </branch>
        <branch name="rst">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="5088" y="2448" type="branch" />
            <wire x2="5104" y1="2448" y2="2448" x1="5088" />
        </branch>
        <branch name="exe_result(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="5088" y="2672" type="branch" />
            <wire x2="5104" y1="2672" y2="2672" x1="5088" />
        </branch>
        <branch name="exe_wb_dreg(4:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="4720" y="2976" type="branch" />
            <wire x2="4720" y1="2976" y2="2976" x1="4432" />
            <wire x2="5104" y1="2976" y2="2976" x1="4720" />
        </branch>
        <branch name="exe_wb_we">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="4672" y="2928" type="branch" />
            <wire x2="4672" y1="2928" y2="2928" x1="4432" />
            <wire x2="4768" y1="2928" y2="2928" x1="4672" />
            <wire x2="4768" y1="2912" y2="2928" x1="4768" />
            <wire x2="5104" y1="2912" y2="2912" x1="4768" />
        </branch>
        <branch name="exe_mem_mem_reg">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="4704" y="2880" type="branch" />
            <wire x2="4704" y1="2880" y2="2880" x1="4432" />
            <wire x2="4768" y1="2880" y2="2880" x1="4704" />
            <wire x2="4768" y1="2848" y2="2880" x1="4768" />
            <wire x2="5104" y1="2848" y2="2848" x1="4768" />
        </branch>
        <branch name="XLXN_246">
            <wire x2="4768" y1="2832" y2="2832" x1="4432" />
            <wire x2="4768" y1="2800" y2="2832" x1="4768" />
            <wire x2="5104" y1="2800" y2="2800" x1="4768" />
        </branch>
        <branch name="exe_imme(15:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="4448" y="2784" type="branch" />
            <wire x2="4448" y1="2784" y2="2784" x1="4432" />
        </branch>
        <branch name="exe_regb(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="4448" y="2736" type="branch" />
            <wire x2="4448" y1="2736" y2="2736" x1="4432" />
        </branch>
        <branch name="exe_sign">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="4448" y="2688" type="branch" />
            <wire x2="4448" y1="2688" y2="2688" x1="4432" />
        </branch>
        <branch name="exe_srcb">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="4448" y="2640" type="branch" />
            <wire x2="4448" y1="2640" y2="2640" x1="4432" />
        </branch>
        <branch name="exe_rega(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="4448" y="2592" type="branch" />
            <wire x2="4448" y1="2592" y2="2592" x1="4432" />
        </branch>
        <branch name="exe_aluop(2:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="4448" y="2544" type="branch" />
            <wire x2="4448" y1="2544" y2="2544" x1="4432" />
        </branch>
        <branch name="exe_regb(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="5088" y="2736" type="branch" />
            <wire x2="5104" y1="2736" y2="2736" x1="5088" />
        </branch>
        <instance x="4912" y="1568" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_68(31:0)">
            <wire x2="4896" y1="1648" y2="1648" x1="4880" />
            <wire x2="4912" y1="1584" y2="1584" x1="4896" />
            <wire x2="4896" y1="1584" y2="1648" x1="4896" />
        </branch>
        <instance x="4816" y="1696" name="XLXI_13" orien="R0">
        </instance>
        <branch name="exe_aluop(2:0)">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="5120" y="1168" type="branch" />
            <wire x2="5120" y1="1168" y2="1184" x1="5120" />
        </branch>
        <branch name="XLXN_221(31:0)">
            <wire x2="4800" y1="1872" y2="1872" x1="4752" />
            <wire x2="4816" y1="1680" y2="1680" x1="4800" />
            <wire x2="4800" y1="1680" y2="1872" x1="4800" />
        </branch>
        <branch name="exe_regb(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4800" y="1616" type="branch" />
            <wire x2="4816" y1="1616" y2="1616" x1="4800" />
        </branch>
        <branch name="exe_rega(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4880" y="1280" type="branch" />
            <wire x2="4912" y1="1280" y2="1280" x1="4880" />
        </branch>
        <instance x="4688" y="1920" name="XLXI_42" orien="R0">
        </instance>
        <branch name="XLXN_222(31:0)">
            <wire x2="4688" y1="1904" y2="1904" x1="4624" />
        </branch>
        <instance x="4352" y="1968" name="XLXI_43" orien="R0">
        </instance>
        <branch name="N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,exe_imme(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4656" y="1840" type="branch" />
            <wire x2="4688" y1="1840" y2="1840" x1="4656" />
        </branch>
        <branch name="exe_sign">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="4720" y="1776" type="branch" />
            <wire x2="4720" y1="1776" y2="1808" x1="4720" />
        </branch>
        <branch name="exe_imme(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4432" y="1968" type="branch" />
            <wire x2="4448" y1="1968" y2="1968" x1="4432" />
        </branch>
        <branch name="exe_srcb">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="4848" y="1568" type="branch" />
            <wire x2="4848" y1="1568" y2="1584" x1="4848" />
        </branch>
        <instance x="1536" y="2928" name="XLXI_3" orien="R0">
        </instance>
        <branch name="inst_addr(31:0)">
            <wire x2="1760" y1="2800" y2="2800" x1="1680" />
            <wire x2="1792" y1="2800" y2="2800" x1="1760" />
            <wire x2="1808" y1="2608" y2="2608" x1="1760" />
            <wire x2="1760" y1="2608" y2="2800" x1="1760" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1520" y="2704" type="branch" />
            <wire x2="1536" y1="2704" y2="2704" x1="1520" />
        </branch>
        <branch name="rst">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1520" y="2768" type="branch" />
            <wire x2="1536" y1="2768" y2="2768" x1="1520" />
        </branch>
        <branch name="inst_data(31:0)">
            <wire x2="2192" y1="2864" y2="2864" x1="2016" />
        </branch>
        <instance x="1808" y="2736" name="XLXI_4" orien="R0">
        </instance>
        <iomarker fontsize="28" x="1792" y="2800" name="inst_addr(31:0)" orien="R0" />
        <iomarker fontsize="28" x="2016" y="2864" name="inst_data(31:0)" orien="R180" />
        <branch name="id_exe_rega(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3824" y="2592" type="branch" />
            <wire x2="3840" y1="2592" y2="2592" x1="3824" />
        </branch>
        <branch name="id_exe_regb(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3824" y="2736" type="branch" />
            <wire x2="3840" y1="2736" y2="2736" x1="3824" />
        </branch>
        <instance x="2928" y="2976" name="XLXI_72" orien="R0">
        </instance>
        <branch name="id_inst(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2896" y="2496" type="branch" />
            <wire x2="2928" y1="2496" y2="2496" x1="2896" />
        </branch>
        <branch name="XLXN_355(2:0)">
            <wire x2="3552" y1="2624" y2="2624" x1="3360" />
            <wire x2="3552" y1="2528" y2="2624" x1="3552" />
            <wire x2="3840" y1="2528" y2="2528" x1="3552" />
        </branch>
        <branch name="XLXN_358">
            <wire x2="3600" y1="2784" y2="2784" x1="3360" />
            <wire x2="3600" y1="2784" y2="2832" x1="3600" />
            <wire x2="3840" y1="2832" y2="2832" x1="3600" />
        </branch>
        <branch name="XLXN_361(4:0)">
            <wire x2="3584" y1="2944" y2="2944" x1="3360" />
            <wire x2="3584" y1="2944" y2="2976" x1="3584" />
            <wire x2="3840" y1="2976" y2="2976" x1="3584" />
        </branch>
        <branch name="XLXN_362">
            <wire x2="3376" y1="2672" y2="2672" x1="3360" />
            <wire x2="3840" y1="2640" y2="2640" x1="3376" />
            <wire x2="3376" y1="2640" y2="2672" x1="3376" />
        </branch>
        <branch name="XLXN_363">
            <wire x2="3376" y1="2720" y2="2720" x1="3360" />
            <wire x2="3840" y1="2688" y2="2688" x1="3376" />
            <wire x2="3376" y1="2688" y2="2720" x1="3376" />
        </branch>
        <branch name="id_inst(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3824" y="2784" type="branch" />
            <wire x2="3840" y1="2784" y2="2784" x1="3824" />
        </branch>
        <branch name="XLXN_365">
            <wire x2="3584" y1="2832" y2="2832" x1="3360" />
            <wire x2="3584" y1="2832" y2="2880" x1="3584" />
            <wire x2="3840" y1="2880" y2="2880" x1="3584" />
        </branch>
        <branch name="XLXN_366">
            <wire x2="3600" y1="2896" y2="2896" x1="3360" />
            <wire x2="3600" y1="2896" y2="2928" x1="3600" />
            <wire x2="3840" y1="2928" y2="2928" x1="3600" />
        </branch>
        <branch name="rst">
            <wire x2="608" y1="2080" y2="2080" x1="544" />
        </branch>
        <branch name="clk">
            <wire x2="608" y1="2032" y2="2032" x1="544" />
        </branch>
        <instance x="496" y="2384" name="XLXI_44" orien="R0" />
        <branch name="N0">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="560" y="2240" type="branch" />
            <wire x2="560" y1="2240" y2="2256" x1="560" />
        </branch>
        <iomarker fontsize="28" x="544" y="2080" name="rst" orien="R180" />
        <iomarker fontsize="28" x="544" y="2032" name="clk" orien="R180" />
        <branch name="VC">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="5088" y="2512" type="branch" />
            <wire x2="5104" y1="2512" y2="2512" x1="5088" />
        </branch>
        <branch name="VC">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="6224" y="2736" type="branch" />
            <wire x2="6256" y1="2736" y2="2736" x1="6224" />
        </branch>
        <instance x="752" y="2272" name="XLXI_73" orien="R0" />
        <branch name="VC">
            <attrtext style="alignment:SOFT-VRIGHT;fontsize:28;fontname:Arial" attrname="Name" x="816" y="2304" type="branch" />
            <wire x2="816" y1="2272" y2="2304" x1="816" />
        </branch>
        <branch name="mem_data_in(31:0)">
            <wire x2="5856" y1="3056" y2="3056" x1="5824" />
        </branch>
        <iomarker fontsize="28" x="5824" y="3056" name="mem_data_in(31:0)" orien="R180" />
        <branch name="XLXN_381(31:0)">
            <wire x2="5456" y1="1424" y2="1424" x1="5296" />
        </branch>
        <instance x="5456" y="1504" name="XLXI_74" orien="R0">
        </instance>
        <branch name="exe_lui">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="5488" y="1360" type="branch" />
            <wire x2="5488" y1="1360" y2="1392" x1="5488" />
        </branch>
        <branch name="exe_imme(15:0),N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0">
            <attrtext style="alignment:SOFT-TCENTER;fontsize:28;fontname:Arial" attrname="Name" x="5424" y="1872" type="branch" />
            <wire x2="5456" y1="1488" y2="1488" x1="5424" />
            <wire x2="5424" y1="1488" y2="1872" x1="5424" />
            <wire x2="5472" y1="1872" y2="1872" x1="5424" />
        </branch>
        <branch name="exe_lui">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="4448" y="2496" type="branch" />
            <wire x2="4448" y1="2496" y2="2496" x1="4432" />
        </branch>
        <branch name="XLXN_382">
            <wire x2="3536" y1="2576" y2="2576" x1="3360" />
            <wire x2="3536" y1="2480" y2="2576" x1="3536" />
            <wire x2="3840" y1="2480" y2="2480" x1="3536" />
        </branch>
        <branch name="XLXN_408(31:0)">
            <wire x2="1536" y1="2896" y2="2896" x1="1424" />
        </branch>
        <instance x="1360" y="2992" name="XLXI_85" orien="R0">
        </instance>
        <branch name="id_baddr(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="2912" type="branch" />
            <wire x2="1360" y1="2912" y2="2912" x1="1344" />
        </branch>
        <branch name="id_npc(31:28),id_inst(25:0),N0,N0">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="2944" type="branch" />
            <wire x2="1360" y1="2944" y2="2944" x1="1344" />
        </branch>
        <branch name="id_exe_rega(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="2976" type="branch" />
            <wire x2="1360" y1="2976" y2="2976" x1="1344" />
        </branch>
        <branch name="XLXN_415(31:0)">
            <wire x2="5600" y1="1456" y2="1456" x1="5520" />
        </branch>
        <instance x="5600" y="1536" name="XLXI_86" orien="R0">
        </instance>
        <branch name="exe_jal">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="5632" y="1408" type="branch" />
            <wire x2="5632" y1="1408" y2="1424" x1="5632" />
        </branch>
        <branch name="exe_result(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="5680" y="1488" type="branch" />
            <wire x2="5680" y1="1488" y2="1488" x1="5664" />
        </branch>
        <instance x="4000" y="1920" name="XLXI_45" orien="R0">
        </instance>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3824" y="2192" type="branch" />
            <wire x2="3840" y1="2192" y2="2192" x1="3824" />
        </branch>
        <branch name="id_bubble">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3824" y="2256" type="branch" />
            <wire x2="3840" y1="2256" y2="2256" x1="3824" />
        </branch>
        <branch name="exe_npc(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="4448" y="2448" type="branch" />
            <wire x2="4448" y1="2448" y2="2448" x1="4432" />
        </branch>
        <branch name="exe_jal">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="4448" y="2400" type="branch" />
            <wire x2="4448" y1="2400" y2="2400" x1="4432" />
        </branch>
        <branch name="id_npc(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3808" y="2432" type="branch" />
            <wire x2="3840" y1="2432" y2="2432" x1="3808" />
        </branch>
        <branch name="id_ra">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3376" y="2512" type="branch" />
            <wire x2="3376" y1="2512" y2="2512" x1="3360" />
        </branch>
        <branch name="XLXN_426">
            <wire x2="3520" y1="2544" y2="2544" x1="3360" />
            <wire x2="3520" y1="2384" y2="2544" x1="3520" />
            <wire x2="3840" y1="2384" y2="2384" x1="3520" />
        </branch>
        <instance x="832" y="2864" name="XLXI_87" orien="R0">
        </instance>
        <branch name="XLXN_427(1:0)">
            <wire x2="1392" y1="2576" y2="2576" x1="1216" />
            <wire x2="1392" y1="2576" y2="2848" x1="1392" />
        </branch>
        <branch name="id_beq">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="816" y="2576" type="branch" />
            <wire x2="832" y1="2576" y2="2576" x1="816" />
        </branch>
        <branch name="id_bne">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="816" y="2640" type="branch" />
            <wire x2="832" y1="2640" y2="2640" x1="816" />
        </branch>
        <branch name="id_j">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="816" y="2704" type="branch" />
            <wire x2="832" y1="2704" y2="2704" x1="816" />
        </branch>
        <branch name="id_jr">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="816" y="2768" type="branch" />
            <wire x2="832" y1="2768" y2="2768" x1="816" />
        </branch>
        <branch name="id_eql">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="816" y="2832" type="branch" />
            <wire x2="832" y1="2832" y2="2832" x1="816" />
        </branch>
        <branch name="id_beq">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2912" y="2832" type="branch" />
            <wire x2="2928" y1="2832" y2="2832" x1="2912" />
        </branch>
        <branch name="id_bne">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2912" y="2864" type="branch" />
            <wire x2="2928" y1="2864" y2="2864" x1="2912" />
        </branch>
        <branch name="id_j">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2912" y="2896" type="branch" />
            <wire x2="2928" y1="2896" y2="2896" x1="2912" />
        </branch>
        <branch name="id_jr">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2912" y="2928" type="branch" />
            <wire x2="2928" y1="2928" y2="2928" x1="2912" />
        </branch>
        <instance x="5152" y="1840" name="XLXI_89" orien="R0">
        </instance>
        <branch name="exe_npc(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="5120" y="1712" type="branch" />
            <wire x2="5152" y1="1712" y2="1712" x1="5120" />
        </branch>
        <branch name="XLXN_430(31:0)">
            <wire x2="5472" y1="1728" y2="1728" x1="5344" />
            <wire x2="5472" y1="1520" y2="1728" x1="5472" />
            <wire x2="5600" y1="1520" y2="1520" x1="5472" />
        </branch>
        <instance x="2656" y="1664" name="XLXI_2" orien="R0">
        </instance>
        <branch name="rst">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2640" y="1296" type="branch" />
            <wire x2="2656" y1="1296" y2="1296" x1="2640" />
        </branch>
        <branch name="wb_dreg(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2640" y="1472" type="branch" />
            <wire x2="2656" y1="1472" y2="1472" x1="2640" />
        </branch>
        <branch name="XLXN_27">
            <wire x2="2656" y1="1248" y2="1248" x1="2624" />
        </branch>
        <instance x="2400" y="1280" name="XLXI_7" orien="R0" />
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2368" y="1248" type="branch" />
            <wire x2="2400" y1="1248" y2="1248" x1="2368" />
        </branch>
        <branch name="wb_we">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="2896" y="1152" type="branch" />
            <wire x2="2896" y1="1152" y2="1168" x1="2896" />
        </branch>
        <branch name="wb_data(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2640" y="1616" type="branch" />
            <wire x2="2656" y1="1616" y2="1616" x1="2640" />
        </branch>
        <branch name="id_inst(20:16)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2560" y="1392" type="branch" />
            <wire x2="2592" y1="1392" y2="1392" x1="2560" />
            <wire x2="2656" y1="1392" y2="1392" x1="2592" />
            <wire x2="2592" y1="1392" y2="1920" x1="2592" />
            <wire x2="2976" y1="1920" y2="1920" x1="2592" />
        </branch>
        <instance x="2144" y="1376" name="XLXI_71" orien="R0">
        </instance>
        <branch name="id_ra">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="2160" y="1280" type="branch" />
            <wire x2="2160" y1="1280" y2="1296" x1="2160" />
        </branch>
        <branch name="id_inst(25:21)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2112" y="1328" type="branch" />
            <wire x2="2144" y1="1328" y2="1328" x1="2112" />
        </branch>
        <branch name="id_inst(20:16)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2112" y="1360" type="branch" />
            <wire x2="2144" y1="1360" y2="1360" x1="2112" />
        </branch>
        <branch name="id_rega_addr(4:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2336" y="1344" type="branch" />
            <wire x2="1728" y1="1824" y2="1936" x1="1728" />
            <wire x2="1792" y1="1936" y2="1936" x1="1728" />
            <wire x2="2256" y1="1824" y2="1824" x1="1728" />
            <wire x2="2256" y1="1344" y2="1344" x1="2176" />
            <wire x2="2256" y1="1344" y2="1824" x1="2256" />
            <wire x2="2336" y1="1344" y2="1344" x1="2256" />
            <wire x2="2656" y1="1344" y2="1344" x1="2336" />
        </branch>
        <branch name="id_exe_regb(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3504" y="1920" type="branch" />
            <wire x2="3504" y1="1920" y2="1920" x1="3488" />
        </branch>
        <branch name="mem_wb_data(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2960" y="2240" type="branch" />
            <wire x2="2976" y1="2240" y2="2240" x1="2960" />
        </branch>
        <branch name="mem_wb_dreg(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2960" y="2176" type="branch" />
            <wire x2="2976" y1="2176" y2="2176" x1="2960" />
        </branch>
        <branch name="exe_result(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2960" y="2112" type="branch" />
            <wire x2="2976" y1="2112" y2="2112" x1="2960" />
        </branch>
        <branch name="exe_wb_dreg(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2960" y="2048" type="branch" />
            <wire x2="2976" y1="2048" y2="2048" x1="2960" />
        </branch>
        <branch name="id_exe_rega(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2320" y="1936" type="branch" />
            <wire x2="2320" y1="1936" y2="1936" x1="2304" />
        </branch>
        <branch name="mem_wb_data(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1776" y="2256" type="branch" />
            <wire x2="1792" y1="2256" y2="2256" x1="1776" />
        </branch>
        <branch name="mem_wb_dreg(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1776" y="2192" type="branch" />
            <wire x2="1792" y1="2192" y2="2192" x1="1776" />
        </branch>
        <branch name="exe_result(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1776" y="2128" type="branch" />
            <wire x2="1792" y1="2128" y2="2128" x1="1776" />
        </branch>
        <branch name="exe_wb_dreg(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1776" y="2064" type="branch" />
            <wire x2="1792" y1="2064" y2="2064" x1="1776" />
        </branch>
        <branch name="XLXN_538(31:0)">
            <wire x2="3264" y1="1760" y2="1760" x1="1584" />
            <wire x2="1584" y1="1760" y2="2000" x1="1584" />
            <wire x2="1792" y1="2000" y2="2000" x1="1584" />
            <wire x2="3264" y1="1280" y2="1280" x1="3136" />
            <wire x2="3264" y1="1280" y2="1760" x1="3264" />
        </branch>
        <branch name="XLXN_540(31:0)">
            <wire x2="3184" y1="1712" y2="1712" x1="2816" />
            <wire x2="2816" y1="1712" y2="1984" x1="2816" />
            <wire x2="2976" y1="1984" y2="1984" x1="2816" />
            <wire x2="3184" y1="1552" y2="1552" x1="3136" />
            <wire x2="3184" y1="1552" y2="1712" x1="3184" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2176" y="2608" type="branch" />
            <wire x2="2192" y1="2608" y2="2608" x1="2176" />
        </branch>
        <branch name="rst">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2176" y="2672" type="branch" />
            <wire x2="2192" y1="2672" y2="2672" x1="2176" />
        </branch>
        <instance x="2192" y="2896" name="XLXI_5" orien="R0">
        </instance>
        <branch name="id_inst(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2592" y="2608" type="branch" />
            <wire x2="2592" y1="2608" y2="2608" x1="2576" />
        </branch>
        <branch name="id_npc(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2592" y="2832" type="branch" />
            <wire x2="2592" y1="2832" y2="2832" x1="2576" />
        </branch>
        <branch name="XLXN_412(31:0)">
            <wire x2="2032" y1="2528" y2="2528" x1="1264" />
            <wire x2="2032" y1="2528" y2="2624" x1="2032" />
            <wire x2="2032" y1="2624" y2="2800" x1="2032" />
            <wire x2="2192" y1="2800" y2="2800" x1="2032" />
            <wire x2="1264" y1="2528" y2="2880" x1="1264" />
            <wire x2="1360" y1="2880" y2="2880" x1="1264" />
            <wire x2="2032" y1="2624" y2="2624" x1="2000" />
        </branch>
        <branch name="exe_wb_we">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1776" y="2304" type="branch" />
            <wire x2="1792" y1="2304" y2="2304" x1="1776" />
        </branch>
        <branch name="mem_wb_we">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1776" y="2352" type="branch" />
            <wire x2="1792" y1="2352" y2="2352" x1="1776" />
        </branch>
        <branch name="exe_wb_we">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2960" y="2288" type="branch" />
            <wire x2="2976" y1="2288" y2="2288" x1="2960" />
        </branch>
        <branch name="mem_wb_we">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2960" y="2336" type="branch" />
            <wire x2="2976" y1="2336" y2="2336" x1="2960" />
        </branch>
        <branch name="exe_mem_mem_reg">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1776" y="2400" type="branch" />
            <wire x2="1792" y1="2400" y2="2400" x1="1776" />
        </branch>
        <branch name="exe_mem_mem_reg">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2960" y="2384" type="branch" />
            <wire x2="2976" y1="2384" y2="2384" x1="2960" />
        </branch>
        <instance x="1792" y="2480" name="XLXI_113" orien="R0">
        </instance>
        <instance x="2976" y="2464" name="XLXI_114" orien="R0">
        </instance>
        <branch name="XLXN_542">
            <wire x2="1520" y1="3120" y2="3120" x1="1424" />
            <wire x2="2160" y1="3120" y2="3120" x1="1520" />
            <wire x2="1536" y1="2832" y2="2832" x1="1520" />
            <wire x2="1520" y1="2832" y2="3120" x1="1520" />
            <wire x2="2192" y1="2736" y2="2736" x1="2160" />
            <wire x2="2160" y1="2736" y2="3120" x1="2160" />
        </branch>
        <instance x="1040" y="3152" name="XLXI_115" orien="R0">
        </instance>
        <instance x="3456" y="3440" name="XLXI_75" orien="R0">
        </instance>
        <branch name="id_baddr(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3584" y="3408" type="branch" />
            <wire x2="3584" y1="3408" y2="3408" x1="3568" />
        </branch>
        <branch name="id_npc(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3456" y="3392" type="branch" />
            <wire x2="3472" y1="3392" y2="3392" x1="3456" />
        </branch>
        <branch name="id_sign_imm(29:0),N0,N0">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3408" y="3456" type="branch" />
            <wire x2="3424" y1="3456" y2="3456" x1="3408" />
            <wire x2="3424" y1="3424" y2="3456" x1="3424" />
            <wire x2="3472" y1="3424" y2="3424" x1="3424" />
        </branch>
        <branch name="id_sign_imm(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3072" y="3520" type="branch" />
            <wire x2="3072" y1="3520" y2="3520" x1="3056" />
        </branch>
        <branch name="id_inst(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2864" y="3584" type="branch" />
            <wire x2="2880" y1="3584" y2="3584" x1="2864" />
        </branch>
        <instance x="2784" y="3584" name="XLXI_76" orien="R0">
        </instance>
        <instance x="3216" y="3904" name="XLXI_88" orien="R0">
        </instance>
        <branch name="id_eql">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3616" y="3808" type="branch" />
            <wire x2="3616" y1="3808" y2="3808" x1="3600" />
        </branch>
        <branch name="id_exe_rega(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3200" y="3808" type="branch" />
            <wire x2="3216" y1="3808" y2="3808" x1="3200" />
        </branch>
        <branch name="id_exe_regb(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3200" y="3872" type="branch" />
            <wire x2="3216" y1="3872" y2="3872" x1="3200" />
        </branch>
        <instance x="3056" y="4352" name="XLXI_109" orien="R0">
        </instance>
        <branch name="exe_mem_mem_reg">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3040" y="4064" type="branch" />
            <wire x2="3056" y1="4064" y2="4064" x1="3040" />
        </branch>
        <branch name="exe_wb_we">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3040" y="4128" type="branch" />
            <wire x2="3056" y1="4128" y2="4128" x1="3040" />
        </branch>
        <branch name="id_rega_addr(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3040" y="4192" type="branch" />
            <wire x2="3056" y1="4192" y2="4192" x1="3040" />
        </branch>
        <branch name="id_inst(20:16)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3040" y="4256" type="branch" />
            <wire x2="3056" y1="4256" y2="4256" x1="3040" />
        </branch>
        <branch name="exe_wb_dreg(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3040" y="4320" type="branch" />
            <wire x2="3056" y1="4320" y2="4320" x1="3040" />
        </branch>
        <branch name="id_stall_">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3520" y="4128" type="branch" />
            <wire x2="3520" y1="4128" y2="4128" x1="3504" />
        </branch>
        <branch name="id_bubble">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3520" y="4272" type="branch" />
            <wire x2="3520" y1="4272" y2="4272" x1="3504" />
        </branch>
        <branch name="VC">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3824" y="2320" type="branch" />
            <wire x2="3840" y1="2320" y2="2320" x1="3824" />
        </branch>
    </sheet>
</drawing>