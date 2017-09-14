RANDOM		EQU 0xb0000000;
//{24'b0,random[7:0]}
ROM		EQU 0xc0000000;
VRAM		EQU 0xd0000000;
SEG 		EQU 0xe0000000;
GPIO 		EQU 0xf0000000;
//{counter0_out,counter1_out,counter2_out,led_out[12:0],SW[15:0]}
KEYS		EQU 0xf0000001;
//{15'b0,counter0_out,counter1_out,counter2_out,BTN[3:0],keys[9:0]}
COUNTER 	EQU 0xf0000004;
HEIGHT		EQU 15;
WIDTH		EQU 20;
ACC     	EQU 2;//加速常数s
SECOND_1 	EQU 0x17d7840;//25M
SECOND_1_2 	EQU 0xbebc20;//12.5M
SECOND_ACC 	EQU 0x5f5e10;//6.25M
SECOND_BOOM 	EQU 0x2faf08;//3.125M

BaseAddre: 0;
la $sp, STACK;
lui $t0, VRAM;
//先将背景刷黑
addi $s0, $t0, 300;
INI_LOOP0:
sw $zero, 0($t0);
addi $t0, $t0, 1;
bne $t0, $s0, INI_LOOP0;

//上下边界,t0为绘制地址
lui $t0, VRAM;
addi $t1, $t0, 20;
addi $t2, $zero, 0xf00;//颜色
INI_LOOP1:
sw $t2 ,0($t0);
sw $t2, 280($t0);//最后一行的  14*20
addi $t0, $t0, 1;
bne $t0, $t1, INI_LOOP1;
//此时t0 y为1， x为0

//左右边界
addi $t1, $t0, 260;//画13行,13*20
INI_LOOP2:
sw $t2, 0($t0);
sw $t2, 19($t0);
addi $t0, $t0, 20;
bne $t0, $t1, INI_LOOP2;

//初始化
li $t0, SEG;
li $t1, 0xAA5555AA;
sw $t1, 0($t0);
la $s0, SNAKE1; 
la $s1, SNAKE2; 
la $s2, FRUIT; 
la $s3, BOOM;

//初始化FRUIT与BOOM，因为内存地址相连一共37个,全部为0
addi $t1, $s2, 148;//最后那个内存的后一个37*4
INI_LOOP3:
sw $zero, -4($t1);
addi $t1, $t1, -4;
bne $t1, $s2, INI_LOOP3;

//初始化蛇1
la $t1, LAST_DIR_1;
sw $zero, -8($s0);//加速次数为0
addi $t0, $zero, 2;//方向向右
sw $t0, -4($s0);
sw $t0, 0($t1);
sw $t0, 0($s0);//共2格
addi $t0, $zero, 0x0101;//尾在1,1
sw $t0, 4($s0);
addi $t0, $zero, 0x0102;//头在1,2
sw $t0, 8($s0);
//初始化蛇2
la $t1, LAST_DIR_2;
sw $zero, -8($s1);
addi $t0, $zero, 8;//方向向左
sw $t0, -4($s1);
sw $t0, 0($t1);
addi $t0, $zero, 2;//有2格
sw $t0, 0($s1);
addi $t0, $zero, 0x0d12;//尾在13,18
sw $t0, 4($s1);
addi $t0, $zero, 0x0d11;//头在13,17
sw $t0, 8($s1);

//绘制蛇
li $a0, 0x0f0;//颜色
la $a1, SNAKE1;//地址
jal PAINT_SNAKE;
li $a0, 0x00f;//颜色
la $a1, SNAKE2;//地址
jal PAINT_SNAKE;

//等待用户键按下
WAIT_LOOP:
li $t0, KEYS;
lw $s6, 0($t0);
andi $s6, $s6, 0x3ff;
beq $s6, $zero, WAIT_LOOP;

//设置计时
li $a0, SECOND_1;
jal SET_COUNTER_0;
li $a0, SECOND_1_2;
jal SET_COUNTER_1;
jal SET_COUNTER_2;

Start://*********************************
//s0 snake1  s1 snake2 s2 fruit  s3 boom s4刷新标记 s5寄存器输出 s6键盘输出 s7next_head
add $s4, $zero, $zero;//s4为刷新标记
li $t0, GPIO;
lw $t0, 0($t0);
srl $s5, $t0, 29;//s5存放着三个计时器的输出
li $t0, KEYS;
lw $s6, 0($t0);//s6存放着键盘输出
//更新键盘
addi $t3, $zero,0x5;//ws
addi $t4, $zero, 0xa;//ad
andi $t1, $s6, 0xf;
beq $t1, $zero, SKIP_KEY_P1;
la $t2, LAST_DIR_1;
lw $t2, 0($t2);//原方向
or $t2, $t2, $t1;//结合
beq $t2, $t3, SKIP_KEY_P1;
beq $t2, $t4, SKIP_KEY_P1;
sw $t1, -4($s0);//设置方向
SKIP_KEY_P1:
//更新键盘
srl $t1, $s6, 5; 
andi $t1, $t1, 0xf;
beq $t1, $zero, SKIP_KEY_P2;
la $t2, LAST_DIR_2;
lw $t2, 0($t2);//原方向
or $t2, $t2, $t1;//结合
beq $t2, $t3, SKIP_KEY_P2;
beq $t2, $t4, SKIP_KEY_P2;
sw $t1, -4($s1);//设置方向
SKIP_KEY_P2:


andi $t1, $s5, 2;//取出counter1
beq $t1, $zero, SKIP_P1;///////////////////////////////////////////
//对player1进行更新************************
ori $s4, $s4, 1;//设置刷新

//调用更新蛇函数
add $a0, $zero, $s0;
jal UPDATE_SNAKE;
add $s7, $zero, $v0;
//判断撞到墙
add $a0, $zero, $s7;
jal JUDGE_0;
bne $v0, $zero, GAME_OVER_1;//当前蛇撞墙
//判定撞到自己或另外一条蛇
add $a0, $zero, $s7;
add $a1, $zero, $s0;//当前蛇
jal JUDGE_1;
addi $v0, $v0, -1;//判断v0是否为1
bne $v0, $zero, GAME_OVER_1;//与当前蛇有非1个重合,输

lw $t0, 0($s0);
add $t0, $t0, $t0;
add $t0, $t0, $t0;
add $t0, $t0, $s0;
lw $t0, 0($t0);//蛇1的头

lw $t1, 0($s1);
add $t1, $t1, $t1;
add $t1, $t1, $t1;
add $t1, $t1, $s1;
lw $t1, 0($t1);//蛇2的头
beq $t0, $t1, GAME_OVER_0;//平局

add $a0, $zero, $s7;
add $a1, $zero, $s1;
jal JUDGE_1;
bne $v0, $zero, GAME_OVER_1;//与另外一条蛇有非0个重合，输

//把炸弹全部涂黑
add $a0, $zero, $zero;
add $a1, $zero, $zero;
add $a2, $zero, $s3;
addi $a3, $zero, 31;
jal PAINT_FB;

addi $a0, $zero, 1;//更新type1的炸弹
jal UPDATE_BOOM;

//放置炸弹
andi $t0, $s6, 0x10;//判断键盘是否放置
beq $t0, $zero, SKIP_PLACEBOOM_1;
add $a0, $zero, $s0;
addi $a1, $zero, 1;
jal PLACE_BOOM;
ori $s4, $s4, 1;
SKIP_PLACEBOOM_1:


//把果子涂黑
add $a0, $zero, $zero;
add $a1, $zero, $zero;
add $a2, $zero, $s2;
addi $a3, $zero, 4;
jal PAINT_FB;

jal EXAM_BOOM;

//设置方向
la $t1, LAST_DIR_1;
lw $t0, -4($s0);
sw $t0, 0($t1);

//重新设置倒计时
lw $t0, -8($s0);
li $a0, SECOND_1_2;
beq $t0, $zero, SET_COUNTER1;
li $a0, SECOND_ACC;
SET_COUNTER1:
jal SET_COUNTER_1;

SKIP_P1:
andi $t1, $s5, 1;//取出counter2
beq $t1, $zero, SKIP_P2;
//对player2进行更新********************************
//
ori $s4, $s4, 1;//设置刷新
//调用更新蛇函数
add $a0, $zero, $s1;
jal UPDATE_SNAKE;
add $s7, $zero, $v0;
//判断撞到墙
add $a0, $zero, $s7;
jal JUDGE_0;
bne $v0, $zero, GAME_OVER_2;//当前蛇撞墙
//判定撞到自己或另外一条蛇
add $a0, $zero, $s7;
add $a1, $zero, $s1;//当前蛇
jal JUDGE_1;
addi $v0, $v0, -1;//判断是否为1
bne $v0, $zero, GAME_OVER_2;//与当前蛇有非1个重合,输

lw $t0, 0($s0);
add $t0, $t0, $t0;
add $t0, $t0, $t0;
add $t0, $t0, $s0;
lw $t0, 0($t0);//蛇1的头

lw $t1, 0($s1);
add $t1, $t1, $t1;
add $t1, $t1, $t1;
add $t1, $t1, $s1;
lw $t1, 0($t1);//蛇2的头
beq $t0, $t1, GAME_OVER_0;//平局

add $a0, $zero, $s7;
add $a1, $zero, $s0;
jal JUDGE_1;
bne $v0, $zero, GAME_OVER_2;//与另外一条蛇有非0个重合，输

//把炸弹全部涂黑
add $a0, $zero, $zero;
add $a1, $zero, $zero;
add $a2, $zero, $s3;
addi $a3, $zero, 31;
jal PAINT_FB;

addi $a0, $zero, 2;//更新type2的炸弹
jal UPDATE_BOOM;
//放置炸弹
andi $t0, $s6, 0x200;//判断键盘是否放置
beq $t0, $zero, SKIP_PLACEBOOM_2;
add $a0, $zero, $s1;
addi $a1, $zero, 2;
jal PLACE_BOOM;
ori $s4, $s4, 1;
SKIP_PLACEBOOM_2:

//把果子涂黑
add $a0, $zero, $zero;
add $a1, $zero, $zero;
add $a2, $zero, $s2;
addi $a3, $zero, 4;
jal PAINT_FB;

jal EXAM_BOOM;

//重新设置倒计时
lw $t0, -8($s1);
li $a0, SECOND_1_2;
beq $t0, $zero, SET_COUNTER2;
li $a0, SECOND_ACC;
SET_COUNTER2:
jal SET_COUNTER_2;

//设置方向
la $t1, LAST_DIR_2;
lw $t0, -4($s1);
sw $t0, 0($t1);

SKIP_P2:
andi $t1, $s5, 4;//取出counter0
beq $t1, $zero, SKIP_FRUIT;
//对fruit进行生成**************************
ori $s4, $s4, 1;//设置刷新

jal PLACE_FRUIT;
//更新加速标记
lw $t0, -8($s0);
beq $t0, $zero, SKIP_UPDATE_ACC1;
addi $t0, $t0, -1;
sw $t0, -8($s0);
SKIP_UPDATE_ACC1:
lw $t0, -8($s1);
beq $t0, $zero, SKIP_UPDATE_ACC2;
addi $t0, $t0, -1;
sw $t0, -8($s1);
SKIP_UPDATE_ACC2:

//重新设置倒计时
li $a0, SECOND_1;
jal SET_COUNTER_0;

SKIP_FRUIT:
//判断刷新*************************************
beq $s4, $zero, Start;//没有刷新

add $a0, $zero, $s0;
jal BOOM_SNAKE;//判断有没有炸死蛇
bne $v0, $zero, GAME_OVER_1;//被炸弹炸死，输

add $a0, $zero, $s1;
jal BOOM_SNAKE;
bne $v0, $zero, GAME_OVER_2;//被炸弹炸死，输

//画蛇1
addi $a0, $zero, 0x0f0;
add $a1, $zero, $s0;
jal PAINT_SNAKE;
//画蛇2
addi $a0, $zero, 0x00f;
add $a1, $zero, $s1;
jal PAINT_SNAKE;
//画果子
addi $a0, $zero, 0x00f;
addi $a1, $zero, 0x0f0;
add $a2, $zero, $s2;
addi $a3, $zero, 4;
jal PAINT_FB;
//画炸弹
addi $a0, $zero, 0xf00;
addi $a1, $zero, 0xf00;
add $a2, $zero, $s3;
addi $a3, $zero, 31;
jal PAINT_FB;

j Start;

GAME_OVER_0://平局
li $t0, SEG;
sw $zero, 0($t0);
j GAME_OVER;

GAME_OVER_1://1输
li $t0, SEG;
addi $t1, $zero, 2;
sw $t1, 0($t0);
j GAME_OVER;

GAME_OVER_2://2输
li $t0, SEG;
addi $t1, $zero, 1;
sw $t1, 0($t0);
j GAME_OVER;

GAME_OVER:
//画蛇1
addi $a0, $zero, 0x0f0;
add $a1, $zero, $s0;
jal PAINT_SNAKE;
//画蛇2
addi $a0, $zero, 0x00f;
add $a1, $zero, $s1;
jal PAINT_SNAKE;
//画果子
addi $a0, $zero, 0x00f;
addi $a1, $zero, 0x0f0;
add $a2, $zero, $s2;
addi $a3, $zero, 4;
jal PAINT_FB;
//画炸弹
addi $a0, $zero, 0xf00;
addi $a1, $zero, 0xf00;
add $a2, $zero, $s3;
addi $a3, $zero, 31;
jal PAINT_FB;
END:
j END;














/////////////////////////////////
PLACE_FRUIT:
sw $ra, 0($sp);
sw $s0, 4($sp);
addi $sp, $sp, 8;

li $t0, FRUIT;
lw $t1, 0($t0);
addi $t1, $t1, -4;
beq $t1, $zero, PLACE_FRUIT_FINISH;//已经有4个了
addi $t1, $t1, 5;
sw $t1, 0($t0);//fruit个数加1

li $t0, RANDOM;
lw $t1,0($t0);//y
andi $t1, $t1, 0xf;//t1在0到12之间
addi $t2, $zero, 12;
PLACE_FRUIT_LOOPY:
sub $t3, $t1, $t2;//减去t2
srl $t3, $t3, 31;
bne $t3, $zero, PLACE_FRUIT_LOOPY_FINISH;//减不动了
sub $t1, $t1, $t2;
j PLACE_FRUIT_LOOPY;
PLACE_FRUIT_LOOPY_FINISH:
addi $t1, $t1, 1;//t1:y

lw $t2,0($t0);//x
andi $t2,$t2, 0x1f;
addi $t3, $zero, 17;
PLACE_FRUIT_LOOPX:
sub $t4, $t2, $t3;//减去t3
srl $t4, $t4, 31;
bne $t4, $zero, PLACE_FRUIT_LOOPX_FINISH;//减不动了
sub $t2, $t2, $t3;
j PLACE_FRUIT_LOOPX;
PLACE_FRUIT_LOOPX_FINISH:
addi $t2, $t2, 1;//t2:[1,18]

lw $t0, 0($t0);//type
andi $t0, $t0, 0x1;
addi $t0, $t0, 1;//1 和 2 1:1

add $t0, $t0, $t0;
add $t0, $t0, $t0;
add $t0, $t0, $t0;
add $t0, $t0, $t0;
add $t0, $t0, $t0;
add $t0, $t0, $t0;
add $t0, $t0, $t0;
add $t0, $t0, $t0;//左移8位
add $t1, $t1, $t0;//把type与y组合起来
add $t1, $t1,$t1;
add $t1, $t1,$t1;
add $t1, $t1,$t1;
add $t1, $t1,$t1;
add $t1, $t1,$t1;
add $t1, $t1,$t1;
add $t1, $t1,$t1;
add $t1, $t1,$t1;
add $t1, $t1,$t2;//左移8位与x组合起来

add $s0, $zero, $t1;//把点存到s0中
andi $a0, $s0, 0xffff;
li $a1, SNAKE1;
jal JUDGE_1;
bne $v0, $zero, PLACE_FRUIT_FINISH;//与蛇1冲突结束

andi $a0, $s0, 0xffff;
li $a1, SNAKE2;
jal JUDGE_1;
bne $v0, $zero, PLACE_FRUIT_FINISH;//与蛇2冲突结束

//与炸弹冲突
andi $a0, $s0, 0xffff;
li $t0, BOOM;
addi $t1, $t0, 128;//BOOM最后一个的后一个
PLACE_FRUIT_BLOOP:
addi $t1, $t1, -4;
beq $t1, $t0, PLACE_FRUIT_BLOOP_FINISH;
lw $t2, 0($t1);
andi $t2, $t2, 0xffff;//y, x
beq $a0, $t2, PLACE_FRUIT_FINISH;//如果冲突了结束
j PLACE_FRUIT_BLOOP;
PLACE_FRUIT_BLOOP_FINISH:

//与果子冲突
li $t0, FRUIT;
addi $t1, $t0, 20;//果子最后一个的后一个
PLACE_FRUIT_FLOOP:
addi $t1, $t1, -4;
beq $t1, $t0, PLACE_FRUIT_FLOOP_FINISH;
lw $t2, 0($t1);
andi $t2, $t2, 0xffff;//y, x
beq $a0, $t2, PLACE_FRUIT_FINISH;//如果冲突了结束
j PLACE_FRUIT_FLOOP;
PLACE_FRUIT_FLOOP_FINISH:

//放置果子
addi $t1, $t0, 20;
PLACE_FRUIT_PLACE:
addi $t1, $t1, -4;
beq $t1, $t0, PLACE_FRUIT_FINISH;//这是出错情况，不放置直接退出
lw $t2, 0($t1);
bne $t2, $zero, PLACE_FRUIT_PLACE;//找一个空的
sw $s0, 0($t1);

PLACE_FRUIT_FINISH:
addi $sp, $sp, -8;
lw $ra, 0($sp);
lw $s0, 4($sp);
jr $ra;
/////////////////////////////////
PLACE_BOOM:
//a0:蛇的地址
//a1:蛇的类型
lw $t0, 0($a0);
addi $t1, $t0, -5;//当蛇的长度超过4才能放炸弹
srl $t1, $t1, 31;
bne $t1, $zero, PLACE_BOOM_FINISH;//如果不足4则不放炸弹
addi $t1, $t0, -1;
sw $t1, 0($a0);//更新蛇长
li $t2, BOOM;
lw $t3, 0($t2);
addi $t4, $t3, -31;//最多画面上有31个炸弹
beq $t4, $zero, PLACE_BOOM_FINISH;//如果画面上已经有31个了就不放炸弹
addi $t3, $t3, 1;
sw $t3, 0($t2);//炸弹数目加1

add $t0, $t0, $t0;
add $t0, $t0, $t0;
add $t0, $t0, $a0;//蛇头地址
lw $t1, 0($t0);//获得蛇头
lw $t0, -4($a0);//获得方向
addi $t3, $t2, 128;//最后的炸弹的后面那个
PLACE_BOOM_LOOP:
addi $t3, $t3, -4;
beq $t3, $t2, PLACE_BOOM_FINISH;//内部出错，不放置炸弹
lw $t4,0($t3);
bne $t4, $zero, PLACE_BOOM_LOOP;//判断是否放了炸弹
add $t0, $t0, $t0;
add $t0, $t0, $t0;//方向左移两位
add $t0, $t0, $a1;//加入type
add $t0, $t0, $t0;
add $t0, $t0, $t0;
add $t0, $t0, $t0;
add $t0, $t0, $t0;
add $t0, $t0, $t0;
add $t0, $t0, $t0;
add $t0, $t0, $t0;
add $t0, $t0, $t0;
add $t0, $t0, $t0;
add $t0, $t0, $t0;
add $t0, $t0, $t0;
add $t0, $t0, $t0;
add $t0, $t0, $t0;
add $t0, $t0, $t0;
add $t0, $t0, $t0;
add $t0, $t0, $t0;//左移16位
add $t0, $t0, $t1;//加上y,x
sw $t0, 0($t3);//存进去
PLACE_BOOM_FINISH:
jr $ra;

/////////////////////////////////
BOOM_SNAKE:
//a0:蛇的地址
//v0:炸到了1 没有炸到 0
sw $ra, 0($sp);
sw $s0, 4($sp);
sw $s1, 8($sp);
addi $sp, $sp, 12;

add $v0, $zero, $zero;
add $a1, $zero, $a0;//为与蛇判断做准备
li $s0, BOOM;
addi $s1, $s0, 128;//最后的炸弹的后面那个
BOOM_SNAKE_LOOP:
addi $s1, $s1, -4;
beq $s1, $s0, BOOM_SNAKE_FINISH;
lw $a0, 0($s1);
beq $a0, $zero, BOOM_SNAKE_LOOP;//判断是否这个格子放了炸弹
andi $a0, $a0, 0xffff;//y,x
jal JUDGE_1;
bne $v0, $zero, BOOM_SNAKE_FINISH;
j BOOM_SNAKE_LOOP;

BOOM_SNAKE_FINISH:
addi $sp, $sp, -12;
lw $ra, 0($sp);
lw $s0, 4($sp);
lw $s1, 8($sp);
jr $ra;

/////////////////////////////////
EXAM_BOOM:
sw $ra,0($sp);
sw $s0, 4($sp);
sw $s1, 8($sp);
sw $s2, 12($sp);
sw $s3, 16($sp);
addi $sp, $sp, 20;

li $s0, BOOM;
addi $s1, $s0, 128;//最后的BOOM的后面那个
EXAM_BOOM_LOOP:
addi $s1, $s1, -4;
beq $s1, $s0, EXAM_BOOM_FINISH;
lw $s3, 0($s1);
beq $s3, $zero, EXAM_BOOM_LOOP;//检验有效
//检测撞墙
andi $a0, $s3, 0xffff;//y,x
jal JUDGE_0;
bne $v0, $zero, EXAM_BOOM_CLEAR;
//检测果子
andi $a0, $s3, 0xffff;//y,x
jal EAT_FRUIT; //与果子相撞
bne $v0, $zero, EXAM_BOOM_CLEAR;//清除

andi $s3, $s3, 0xffff;//y,x
//检测与其他BOOM
add $t0, $zero, $s1;
EXAM_BOOM_LOOP_OTHER:
addi $t0, $t0, -4;
beq $t0, $s0, EXAM_BOOM_LOOP;
lw $t1, 0($t0);
beq $t1, $zero, EXAM_BOOM_LOOP_OTHER;//判断有效
andi $t1, $t1, 0xffff;
bne $t1, $s3, EXAM_BOOM_LOOP_OTHER;//判断是否相撞
//消除相撞的两个
sw $zero, 0($s1);
sw $zero, 0($t0);
lw $t4, 0($s0);//数目
addi $t4, $t4, -2;
sw $t4, 0($s0);//数目-2
j EXAM_BOOM_LOOP;

EXAM_BOOM_FINISH:
addi $sp, $sp, -20;
lw $ra, 0($sp);
lw $s0, 4($sp);
lw $s1, 8($sp);
lw $s2, 12($sp);
lw $s3, 16($sp);
jr $ra;

EXAM_BOOM_CLEAR:
sw $zero, 0($s1);//清除这个炸弹
lw $t4, 0($s0);//数目
addi $t4, $t4, -1;
sw $t4, 0($s0);//数目-1
j EXAM_BOOM_LOOP;
/////////////////////////////////
UPDATE_BOOM:
//a0: snake1 1 snake2 2
sw $ra, 0($sp);
sw $s0, 4($sp);
sw $s1, 8($sp);
sw $s2, 12($sp);
addi $sp, $sp, 16;

add $s0, $zero, $a0;
li $s1, BOOM;
addi $s2, $s1, 128;//最后的炸弹的后面那个
UPDATE_BOOM_LOOP:
addi $s2, $s2, -4;
beq $s2, $s1, UPDATE_BOOM_LOOP_FINISH;
lw $t1, 0($s2);
beq $t1, $zero, UPDATE_BOOM_LOOP;//判断有效
srl $t2, $t1, 16;
andi $t2, $t2, 3;//判断type
bne $t2, $s0, UPDATE_BOOM_LOOP;//不是当前type不用更新
andi $a0, $t1, 0xffff;//坐标
srl $a1, $t1, 18;//方向
jal NEXT_BLOCK;
lw $t1, 0($s2);
andi $t2, $t1, 0xffff;
sub $t1, $t1, $t2;//清除y,x
or $t1, $t1, $v0;//新的坐标
sw $t1, 0($s2);
j UPDATE_BOOM_LOOP;
UPDATE_BOOM_LOOP_FINISH:

addi $sp, $sp, -16;
lw $ra, 0($sp);
lw $s0, 4($sp);
lw $s1, 8($sp);
lw $s2, 12($sp);
jr $ra;
/////////////////////////////////
JUDGE_0:
//a0:当前方块 y,x
//v0:0 没有撞到墙,1 撞到了墙
srl $t0, $a0, 8;//y
andi $t1, $a0, 0xff;//x
beq $t0, $zero, JUDGE_0_1;
beq $t1, $zero, JUDGE_0_1;
addi $t2, $zero, 14;
beq $t0, $t2, JUDGE_0_1;
addi $t2, $zero, 19;
beq $t1, $t2, JUDGE_0_1;
add $v0, $zero, $zero;
jr $ra;
JUDGE_0_1:
addi $v0, $zero, 1;
jr $ra;
/////////////////////////////////
JUDGE_1:
//a0:当前方块,只有y,x
//a1:当前蛇的地址
//v0:相同的方块数
add $v0, $zero, $zero;
lw $t1, 0($a1);
add $t1, $t1, $t1;
add $t1, $t1, $t1;
add $t1, $a1, $t1;
addi $t1, $t1, 4;//蛇头后一个
add $t0, $zero, $a0;
JUDGE_1_LOOP:
addi $t1, $t1, -4;
beq $t1, $a1, JUDGE_1_LOOP_FINISH;
lw $t2, 0($t1);
bne $t2,$t0, JUDGE_1_LOOP;//如果不重合，检验下一个
//重合了
addi $v0, $v0, 1;
j JUDGE_1_LOOP;
JUDGE_1_LOOP_FINISH:
jr $ra;

/////////////////////////////////
UPDATE_SNAKE:
//a0:蛇的地址
//v0:蛇的头
sw $ra, 0($sp);
sw $s0, 4($sp);
sw $s2, 8($sp);
addi $sp, $sp, 12;

add $s0, $zero, $a0;
//把蛇涂黑
add $a0, $zero, $zero;
add $a1, $s0, $zero;
jal PAINT_SNAKE;

//获取头的下一个位置
lw $t0, 0($s0);
add $t0, $t0, $t0;
add $t0, $t0, $t0;
add $t0, $s0, $t0;//头的地址
lw $a0, 0($t0);
lw $a1, -4($s0);//方向
jal NEXT_BLOCK;

//判断吃果子
add $s2, $zero, $v0;//新节点在s2
add $a0, $zero, $v0;
jal EAT_FRUIT; 
beq $v0, $zero, US_SKIP_EAT_FRUIT;
addi $t0, $zero, 1;
beq $v0, $t0, US_EAT_NORMAL;
//吃了加速果
li $t0, ACC;
sw $t0, -8($s0);//设置加速次数
US_EAT_NORMAL:
//将新节点放到头上,新节点是s2
lw $t0, 0($s0);//获得数目
addi $t1, $zero, 31;
beq $t0, $t1, US_SKIP_EAT_FRUIT;//达到31的最大长度,不再增加
addi $t0, $t0, 1;
sw $t0, 0($s0);//长度加1
add $t0, $t0, $t0;
add $t0, $t0, $t0;
add $t0, $s0, $t0;//新节点的位置
sw $s2, 0($t0);//放入新节点
//吃了果子就不再移动身体
j US_EAT_FRUIT_FINISH;
US_SKIP_EAT_FRUIT:
//移动身体
lw $t0, 0($s0);//获取身体长度
add $t0, $t0, $t0;
add $t0, $t0, $t0;
add $t0, $s0, $t0;//头所在地址
addi $t1, $s0, 4;//第一个身体位置
US_MOVE:
beq $t1, $t0, US_MOVE_FINISH;
addi $t2, $t1, 4;
lw $t2, 0($t2);
sw $t2, 0($t1);
addi $t1, $t1, 4;
j US_MOVE;
US_MOVE_FINISH:
sw $s2, 0($t0);//更新头
US_EAT_FRUIT_FINISH:
add $v0, $zero, $s2;//返回头

addi $sp, $sp, -12;
lw $ra, 0($sp);
lw $s0, 4($sp);
lw $s2, 8($sp);
jr $ra;

////////////////////////////////
PAINT_SNAKE:
//a0:颜色
//a1:地址
sw $ra, 0($sp);
sw $s1, 4($sp);
sw $s2, 8($sp);
addi $sp, $sp, 12;

lw $s2, 0($a1);
andi $s2, $s2, 0xff;//得到大小
add $s2, $s2, $s2;
add $s2, $s2, $s2;
add $s2, $s2, $a1;//最后的地址
add $s1, $zero, $a1;//最开始的地址
PAINT_SNAKE_LOOP:
beq $s1, $s2, PAINT_SNAKE_LOOP_FINISH;
addi $s1, $s1, 4;
lw $a1, 0($s1);//取出y，x
jal PAINT_BLOCK;
j PAINT_SNAKE_LOOP;
PAINT_SNAKE_LOOP_FINISH:
addi $sp, $sp, -12;
lw $ra, 0($sp);
lw $s1, 4($sp);
lw $s2, 8($sp);
jr $ra;

/////////////////////////////////////
PAINT_FB:
//a0:颜色1
//a1:颜色2
//a2:地址
//a3:数目
sw $ra, 0($sp);
sw $s1, 4($sp);
sw $s2, 8($sp);
sw $s0, 12($sp);
sw $s3, 16($sp);
addi $sp, $sp, 20;

add $s0, $zero, $a0;
add $s1, $zero, $a1;
add $s3, $zero, $a2;
add $s2, $zero, $a3;

add $s2, $s2, $s2;
add $s2, $s2, $s2;
add $s2, $s2, $a2;
addi $s2, $s2, 4;//最后的地址的后面一个
PAINT_FB_LOOP:
addi $s2, $s2, -4;
beq $s2, $s3, PAINT_FB_LOOP_FINISH;
lw $a1, 0($s2);//取出y，x
beq $a1, $zero, PAINT_FB_LOOP;//判断是否有效
lui $t0, 1;
and $t0, $a1, $t0;//判断类别
beq $t0, $zero, PAINT_FB_2;
add $a0, $zero, $s0;//使用颜色1
j PAINT_FB_PAINT;
PAINT_FB_2:
add $a0, $zero, $s1;//使用颜色2
PAINT_FB_PAINT:
andi $a1, $a1, 0xffff;
jal PAINT_BLOCK;
j PAINT_FB_LOOP;

PAINT_FB_LOOP_FINISH:
addi $sp, $sp, -20;
lw $ra, 0($sp);
lw $s1, 4($sp);
lw $s2, 8($sp);
lw $s0, 12($sp);
lw $s3, 16($sp);
jr $ra;
////////////////////////////////////////
NEXT_BLOCK:
//a0:当前块
//a1:方向
//v0:下一个块
srl $t2, $a0, 8;
andi $t2, $t2, 0xff;//头的y
andi $t1, $a0, 0xff;//头的x

add $t0, $zero, $a1;
andi $t3, $t0, 1;//W
beq $t3, $zero, NEXT_HEAD_SKIP_W;
addi $t2, $t2, -1;//y-1
j NEXT_HEAD_FH;//finish_head
NEXT_HEAD_SKIP_W:
andi $t3, $t0, 2;//D
beq $t3, $zero, NEXT_HEAD_SKIP_D;
addi $t1, $t1, 1;//x+1;
j NEXT_HEAD_FH;
NEXT_HEAD_SKIP_D:
andi $t3, $t0, 4;//S
beq $t3, $zero, NEXT_HEAD_SKIP_S;
addi $t2, $t2, 1;//y+1;
j NEXT_HEAD_FH;
NEXT_HEAD_SKIP_S:
addi $t1, $t1, -1;//x-1;

//将y和x组合成新的坐标
NEXT_HEAD_FH:
add $v0, $t2, $t2;
add $v0, $v0, $v0;
add $v0, $v0, $v0;
add $v0, $v0, $v0;
add $v0, $v0, $v0;
add $v0, $v0, $v0;
add $v0, $v0, $v0;
add $v0, $v0, $v0;//左移8位
or $v0, $v0, $t1;
jr $ra;
/////////////////////////////////////////
EAT_FRUIT://判断是否与果子重合并消除相应的果子
//a0:方块y,x各8位
//v0:没有吃到 0， 正常果子 1， 加速果 2
add $v0, $zero, $zero;
li $t3, FRUIT;
addi $t0, $zero,20;
add $t0, $t0, $t3;//最后面再后面的果子
EAT_FRUIT_LOOP:
addi $t0, $t0, -4;
beq $t0, $t3, EAT_FRUIT_FINISH;
lw $t1,0($t0);//获得果子
beq $t1, $zero, EAT_FRUIT_LOOP;//检验有效
andi $t2, $t1, 0xffff;//获得y，x
bne $t2, $a0, EAT_FRUIT_LOOP;//如果位置不相同，跳过
//吃到了果子
srl $v0, $t1, 16;//果子的type;
sw $zero, 0($t0);//清除果子
lw $t0, 0($t3);//获得果子数目
addi $t0, $t0, -1;
sw $t0, 0($t3);//果子数目减一
EAT_FRUIT_FINISH:
jr $ra;
/////////////////////////////////////
PAINT_BLOCK:
//a0:颜色
//a1:y(15::8)，x(7:0)
li $t0, VRAM;
srl $t1, $a1, 8;//y
andi $t2, $a1, 0xff;//x
add $t0, $t0, $t2;
PAINT_BLOCK_LOOPY:
beq $t1, $zero, PAINT_BLOCK_LOOPY_FINISH;
addi $t0, $t0, WIDTH;
addi $t1, $t1, -1;
j PAINT_BLOCK_LOOPY;
PAINT_BLOCK_LOOPY_FINISH:
sw $a0, 0($t0);
jr $ra;

///////////////////////////////////////
SET_COUNTER_0:
//a0:计时常数
li $t0, GPIO;
li $t1, COUNTER;
lw $t2, 0($t0);
add $t2, $t2, $t2;
add $t2, $t2, $t2;
sw $t2, 0($t0);//选择通道0
sw $a0, 0($t1);//送计时常数
jr $ra;

SET_COUNTER_1:
//a0:计时常数
li $t0, GPIO;
li $t1, COUNTER;
lw $t2, 0($t0);
add $t2, $t2, $t2;
add $t2, $t2, $t2;
addi $t2, $t2, 1;
sw $t2, 0($t0);//选择通道1
sw $a0, 0($t1);//送计时常数
jr $ra;

SET_COUNTER_2:
//a0:计时常数
li $t0, GPIO;
li $t1, COUNTER;
lw $t2, 0($t0);
add $t2, $t2, $t2;
add $t2, $t2, $t2;
addi $t2, $t2, 2;
sw $t2, 0($t0);//选择通道2
sw $a0, 0($t1);//送计时常数
jr $ra;

//////////////////////////////////////

STACK:RESD:32;//stack
LAST_DIR_1:RESD:1;//上一次更新时的方向
SNAKE1_ACC:RESD:1;//剩余加速次数
SNAKE1_DIR:RESD:1;//方向1上 2右 4下 8左
SNAKE1: RESD: 32;//第一个为数目 之后为y,x的形式 最后那个是头

LAST_DIR_2:RESD:1;//上一次更新时的方向
SNAKE2_ACC:RESD:1;//剩余加速次数
SNAKE2_DIR:RESD:1;//方向1上 2右 4下 8左
SNAKE2: RESD: 32;//第一个为数目 之后为y,x的形式 最后那个是头

FRUIT: RESD:5;//第一个是数目 之后为type(2),y(8),x(8)的形式 type 1正常  2加速
BOOM:  RESD:32;//第一个是数目 之后为dir(4),type(2),y(8),x(8)的形式 type 1蛇1 2蛇2
