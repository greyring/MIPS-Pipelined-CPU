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
ACC     	EQU 2;//���ٳ���s
SECOND_1 	EQU 0x17d7840;//25M
SECOND_1_2 	EQU 0xbebc20;//12.5M
SECOND_ACC 	EQU 0x5f5e10;//6.25M
SECOND_BOOM 	EQU 0x2faf08;//3.125M

BaseAddre: 0;
la $sp, STACK;
lui $t0, VRAM;
//�Ƚ�����ˢ��
addi $s0, $t0, 300;
INI_LOOP0:
sw $zero, 0($t0);
addi $t0, $t0, 1;
bne $t0, $s0, INI_LOOP0;

//���±߽�,t0Ϊ���Ƶ�ַ
lui $t0, VRAM;
addi $t1, $t0, 20;
addi $t2, $zero, 0xf00;//��ɫ
INI_LOOP1:
sw $t2 ,0($t0);
sw $t2, 280($t0);//���һ�е�  14*20
addi $t0, $t0, 1;
bne $t0, $t1, INI_LOOP1;
//��ʱt0 yΪ1�� xΪ0

//���ұ߽�
addi $t1, $t0, 260;//��13��,13*20
INI_LOOP2:
sw $t2, 0($t0);
sw $t2, 19($t0);
addi $t0, $t0, 20;
bne $t0, $t1, INI_LOOP2;

//��ʼ��
li $t0, SEG;
li $t1, 0xAA5555AA;
sw $t1, 0($t0);
la $s0, SNAKE1; 
la $s1, SNAKE2; 
la $s2, FRUIT; 
la $s3, BOOM;

//��ʼ��FRUIT��BOOM����Ϊ�ڴ��ַ����һ��37��,ȫ��Ϊ0
addi $t1, $s2, 148;//����Ǹ��ڴ�ĺ�һ��37*4
INI_LOOP3:
sw $zero, -4($t1);
addi $t1, $t1, -4;
bne $t1, $s2, INI_LOOP3;

//��ʼ����1
la $t1, LAST_DIR_1;
sw $zero, -8($s0);//���ٴ���Ϊ0
addi $t0, $zero, 2;//��������
sw $t0, -4($s0);
sw $t0, 0($t1);
sw $t0, 0($s0);//��2��
addi $t0, $zero, 0x0101;//β��1,1
sw $t0, 4($s0);
addi $t0, $zero, 0x0102;//ͷ��1,2
sw $t0, 8($s0);
//��ʼ����2
la $t1, LAST_DIR_2;
sw $zero, -8($s1);
addi $t0, $zero, 8;//��������
sw $t0, -4($s1);
sw $t0, 0($t1);
addi $t0, $zero, 2;//��2��
sw $t0, 0($s1);
addi $t0, $zero, 0x0d12;//β��13,18
sw $t0, 4($s1);
addi $t0, $zero, 0x0d11;//ͷ��13,17
sw $t0, 8($s1);

//������
li $a0, 0x0f0;//��ɫ
la $a1, SNAKE1;//��ַ
jal PAINT_SNAKE;
li $a0, 0x00f;//��ɫ
la $a1, SNAKE2;//��ַ
jal PAINT_SNAKE;

//�ȴ��û�������
WAIT_LOOP:
li $t0, KEYS;
lw $s6, 0($t0);
andi $s6, $s6, 0x3ff;
beq $s6, $zero, WAIT_LOOP;

//���ü�ʱ
li $a0, SECOND_1;
jal SET_COUNTER_0;
li $a0, SECOND_1_2;
jal SET_COUNTER_1;
jal SET_COUNTER_2;

Start://*********************************
//s0 snake1  s1 snake2 s2 fruit  s3 boom s4ˢ�±�� s5�Ĵ������ s6������� s7next_head
add $s4, $zero, $zero;//s4Ϊˢ�±��
li $t0, GPIO;
lw $t0, 0($t0);
srl $s5, $t0, 29;//s5�����������ʱ�������
li $t0, KEYS;
lw $s6, 0($t0);//s6����ż������
//���¼���
addi $t3, $zero,0x5;//ws
addi $t4, $zero, 0xa;//ad
andi $t1, $s6, 0xf;
beq $t1, $zero, SKIP_KEY_P1;
la $t2, LAST_DIR_1;
lw $t2, 0($t2);//ԭ����
or $t2, $t2, $t1;//���
beq $t2, $t3, SKIP_KEY_P1;
beq $t2, $t4, SKIP_KEY_P1;
sw $t1, -4($s0);//���÷���
SKIP_KEY_P1:
//���¼���
srl $t1, $s6, 5; 
andi $t1, $t1, 0xf;
beq $t1, $zero, SKIP_KEY_P2;
la $t2, LAST_DIR_2;
lw $t2, 0($t2);//ԭ����
or $t2, $t2, $t1;//���
beq $t2, $t3, SKIP_KEY_P2;
beq $t2, $t4, SKIP_KEY_P2;
sw $t1, -4($s1);//���÷���
SKIP_KEY_P2:


andi $t1, $s5, 2;//ȡ��counter1
beq $t1, $zero, SKIP_P1;///////////////////////////////////////////
//��player1���и���************************
ori $s4, $s4, 1;//����ˢ��

//���ø����ߺ���
add $a0, $zero, $s0;
jal UPDATE_SNAKE;
add $s7, $zero, $v0;
//�ж�ײ��ǽ
add $a0, $zero, $s7;
jal JUDGE_0;
bne $v0, $zero, GAME_OVER_1;//��ǰ��ײǽ
//�ж�ײ���Լ�������һ����
add $a0, $zero, $s7;
add $a1, $zero, $s0;//��ǰ��
jal JUDGE_1;
addi $v0, $v0, -1;//�ж�v0�Ƿ�Ϊ1
bne $v0, $zero, GAME_OVER_1;//�뵱ǰ���з�1���غ�,��

lw $t0, 0($s0);
add $t0, $t0, $t0;
add $t0, $t0, $t0;
add $t0, $t0, $s0;
lw $t0, 0($t0);//��1��ͷ

lw $t1, 0($s1);
add $t1, $t1, $t1;
add $t1, $t1, $t1;
add $t1, $t1, $s1;
lw $t1, 0($t1);//��2��ͷ
beq $t0, $t1, GAME_OVER_0;//ƽ��

add $a0, $zero, $s7;
add $a1, $zero, $s1;
jal JUDGE_1;
bne $v0, $zero, GAME_OVER_1;//������һ�����з�0���غϣ���

//��ը��ȫ��Ϳ��
add $a0, $zero, $zero;
add $a1, $zero, $zero;
add $a2, $zero, $s3;
addi $a3, $zero, 31;
jal PAINT_FB;

addi $a0, $zero, 1;//����type1��ը��
jal UPDATE_BOOM;

//����ը��
andi $t0, $s6, 0x10;//�жϼ����Ƿ����
beq $t0, $zero, SKIP_PLACEBOOM_1;
add $a0, $zero, $s0;
addi $a1, $zero, 1;
jal PLACE_BOOM;
ori $s4, $s4, 1;
SKIP_PLACEBOOM_1:


//�ѹ���Ϳ��
add $a0, $zero, $zero;
add $a1, $zero, $zero;
add $a2, $zero, $s2;
addi $a3, $zero, 4;
jal PAINT_FB;

jal EXAM_BOOM;

//���÷���
la $t1, LAST_DIR_1;
lw $t0, -4($s0);
sw $t0, 0($t1);

//�������õ���ʱ
lw $t0, -8($s0);
li $a0, SECOND_1_2;
beq $t0, $zero, SET_COUNTER1;
li $a0, SECOND_ACC;
SET_COUNTER1:
jal SET_COUNTER_1;

SKIP_P1:
andi $t1, $s5, 1;//ȡ��counter2
beq $t1, $zero, SKIP_P2;
//��player2���и���********************************
//
ori $s4, $s4, 1;//����ˢ��
//���ø����ߺ���
add $a0, $zero, $s1;
jal UPDATE_SNAKE;
add $s7, $zero, $v0;
//�ж�ײ��ǽ
add $a0, $zero, $s7;
jal JUDGE_0;
bne $v0, $zero, GAME_OVER_2;//��ǰ��ײǽ
//�ж�ײ���Լ�������һ����
add $a0, $zero, $s7;
add $a1, $zero, $s1;//��ǰ��
jal JUDGE_1;
addi $v0, $v0, -1;//�ж��Ƿ�Ϊ1
bne $v0, $zero, GAME_OVER_2;//�뵱ǰ���з�1���غ�,��

lw $t0, 0($s0);
add $t0, $t0, $t0;
add $t0, $t0, $t0;
add $t0, $t0, $s0;
lw $t0, 0($t0);//��1��ͷ

lw $t1, 0($s1);
add $t1, $t1, $t1;
add $t1, $t1, $t1;
add $t1, $t1, $s1;
lw $t1, 0($t1);//��2��ͷ
beq $t0, $t1, GAME_OVER_0;//ƽ��

add $a0, $zero, $s7;
add $a1, $zero, $s0;
jal JUDGE_1;
bne $v0, $zero, GAME_OVER_2;//������һ�����з�0���غϣ���

//��ը��ȫ��Ϳ��
add $a0, $zero, $zero;
add $a1, $zero, $zero;
add $a2, $zero, $s3;
addi $a3, $zero, 31;
jal PAINT_FB;

addi $a0, $zero, 2;//����type2��ը��
jal UPDATE_BOOM;
//����ը��
andi $t0, $s6, 0x200;//�жϼ����Ƿ����
beq $t0, $zero, SKIP_PLACEBOOM_2;
add $a0, $zero, $s1;
addi $a1, $zero, 2;
jal PLACE_BOOM;
ori $s4, $s4, 1;
SKIP_PLACEBOOM_2:

//�ѹ���Ϳ��
add $a0, $zero, $zero;
add $a1, $zero, $zero;
add $a2, $zero, $s2;
addi $a3, $zero, 4;
jal PAINT_FB;

jal EXAM_BOOM;

//�������õ���ʱ
lw $t0, -8($s1);
li $a0, SECOND_1_2;
beq $t0, $zero, SET_COUNTER2;
li $a0, SECOND_ACC;
SET_COUNTER2:
jal SET_COUNTER_2;

//���÷���
la $t1, LAST_DIR_2;
lw $t0, -4($s1);
sw $t0, 0($t1);

SKIP_P2:
andi $t1, $s5, 4;//ȡ��counter0
beq $t1, $zero, SKIP_FRUIT;
//��fruit��������**************************
ori $s4, $s4, 1;//����ˢ��

jal PLACE_FRUIT;
//���¼��ٱ��
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

//�������õ���ʱ
li $a0, SECOND_1;
jal SET_COUNTER_0;

SKIP_FRUIT:
//�ж�ˢ��*************************************
beq $s4, $zero, Start;//û��ˢ��

add $a0, $zero, $s0;
jal BOOM_SNAKE;//�ж���û��ը����
bne $v0, $zero, GAME_OVER_1;//��ը��ը������

add $a0, $zero, $s1;
jal BOOM_SNAKE;
bne $v0, $zero, GAME_OVER_2;//��ը��ը������

//����1
addi $a0, $zero, 0x0f0;
add $a1, $zero, $s0;
jal PAINT_SNAKE;
//����2
addi $a0, $zero, 0x00f;
add $a1, $zero, $s1;
jal PAINT_SNAKE;
//������
addi $a0, $zero, 0x00f;
addi $a1, $zero, 0x0f0;
add $a2, $zero, $s2;
addi $a3, $zero, 4;
jal PAINT_FB;
//��ը��
addi $a0, $zero, 0xf00;
addi $a1, $zero, 0xf00;
add $a2, $zero, $s3;
addi $a3, $zero, 31;
jal PAINT_FB;

j Start;

GAME_OVER_0://ƽ��
li $t0, SEG;
sw $zero, 0($t0);
j GAME_OVER;

GAME_OVER_1://1��
li $t0, SEG;
addi $t1, $zero, 2;
sw $t1, 0($t0);
j GAME_OVER;

GAME_OVER_2://2��
li $t0, SEG;
addi $t1, $zero, 1;
sw $t1, 0($t0);
j GAME_OVER;

GAME_OVER:
//����1
addi $a0, $zero, 0x0f0;
add $a1, $zero, $s0;
jal PAINT_SNAKE;
//����2
addi $a0, $zero, 0x00f;
add $a1, $zero, $s1;
jal PAINT_SNAKE;
//������
addi $a0, $zero, 0x00f;
addi $a1, $zero, 0x0f0;
add $a2, $zero, $s2;
addi $a3, $zero, 4;
jal PAINT_FB;
//��ը��
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
beq $t1, $zero, PLACE_FRUIT_FINISH;//�Ѿ���4����
addi $t1, $t1, 5;
sw $t1, 0($t0);//fruit������1

li $t0, RANDOM;
lw $t1,0($t0);//y
andi $t1, $t1, 0xf;//t1��0��12֮��
addi $t2, $zero, 12;
PLACE_FRUIT_LOOPY:
sub $t3, $t1, $t2;//��ȥt2
srl $t3, $t3, 31;
bne $t3, $zero, PLACE_FRUIT_LOOPY_FINISH;//��������
sub $t1, $t1, $t2;
j PLACE_FRUIT_LOOPY;
PLACE_FRUIT_LOOPY_FINISH:
addi $t1, $t1, 1;//t1:y

lw $t2,0($t0);//x
andi $t2,$t2, 0x1f;
addi $t3, $zero, 17;
PLACE_FRUIT_LOOPX:
sub $t4, $t2, $t3;//��ȥt3
srl $t4, $t4, 31;
bne $t4, $zero, PLACE_FRUIT_LOOPX_FINISH;//��������
sub $t2, $t2, $t3;
j PLACE_FRUIT_LOOPX;
PLACE_FRUIT_LOOPX_FINISH:
addi $t2, $t2, 1;//t2:[1,18]

lw $t0, 0($t0);//type
andi $t0, $t0, 0x1;
addi $t0, $t0, 1;//1 �� 2 1:1

add $t0, $t0, $t0;
add $t0, $t0, $t0;
add $t0, $t0, $t0;
add $t0, $t0, $t0;
add $t0, $t0, $t0;
add $t0, $t0, $t0;
add $t0, $t0, $t0;
add $t0, $t0, $t0;//����8λ
add $t1, $t1, $t0;//��type��y�������
add $t1, $t1,$t1;
add $t1, $t1,$t1;
add $t1, $t1,$t1;
add $t1, $t1,$t1;
add $t1, $t1,$t1;
add $t1, $t1,$t1;
add $t1, $t1,$t1;
add $t1, $t1,$t1;
add $t1, $t1,$t2;//����8λ��x�������

add $s0, $zero, $t1;//�ѵ�浽s0��
andi $a0, $s0, 0xffff;
li $a1, SNAKE1;
jal JUDGE_1;
bne $v0, $zero, PLACE_FRUIT_FINISH;//����1��ͻ����

andi $a0, $s0, 0xffff;
li $a1, SNAKE2;
jal JUDGE_1;
bne $v0, $zero, PLACE_FRUIT_FINISH;//����2��ͻ����

//��ը����ͻ
andi $a0, $s0, 0xffff;
li $t0, BOOM;
addi $t1, $t0, 128;//BOOM���һ���ĺ�һ��
PLACE_FRUIT_BLOOP:
addi $t1, $t1, -4;
beq $t1, $t0, PLACE_FRUIT_BLOOP_FINISH;
lw $t2, 0($t1);
andi $t2, $t2, 0xffff;//y, x
beq $a0, $t2, PLACE_FRUIT_FINISH;//�����ͻ�˽���
j PLACE_FRUIT_BLOOP;
PLACE_FRUIT_BLOOP_FINISH:

//����ӳ�ͻ
li $t0, FRUIT;
addi $t1, $t0, 20;//�������һ���ĺ�һ��
PLACE_FRUIT_FLOOP:
addi $t1, $t1, -4;
beq $t1, $t0, PLACE_FRUIT_FLOOP_FINISH;
lw $t2, 0($t1);
andi $t2, $t2, 0xffff;//y, x
beq $a0, $t2, PLACE_FRUIT_FINISH;//�����ͻ�˽���
j PLACE_FRUIT_FLOOP;
PLACE_FRUIT_FLOOP_FINISH:

//���ù���
addi $t1, $t0, 20;
PLACE_FRUIT_PLACE:
addi $t1, $t1, -4;
beq $t1, $t0, PLACE_FRUIT_FINISH;//���ǳ��������������ֱ���˳�
lw $t2, 0($t1);
bne $t2, $zero, PLACE_FRUIT_PLACE;//��һ���յ�
sw $s0, 0($t1);

PLACE_FRUIT_FINISH:
addi $sp, $sp, -8;
lw $ra, 0($sp);
lw $s0, 4($sp);
jr $ra;
/////////////////////////////////
PLACE_BOOM:
//a0:�ߵĵ�ַ
//a1:�ߵ�����
lw $t0, 0($a0);
addi $t1, $t0, -5;//���ߵĳ��ȳ���4���ܷ�ը��
srl $t1, $t1, 31;
bne $t1, $zero, PLACE_BOOM_FINISH;//�������4�򲻷�ը��
addi $t1, $t0, -1;
sw $t1, 0($a0);//�����߳�
li $t2, BOOM;
lw $t3, 0($t2);
addi $t4, $t3, -31;//��໭������31��ը��
beq $t4, $zero, PLACE_BOOM_FINISH;//����������Ѿ���31���˾Ͳ���ը��
addi $t3, $t3, 1;
sw $t3, 0($t2);//ը����Ŀ��1

add $t0, $t0, $t0;
add $t0, $t0, $t0;
add $t0, $t0, $a0;//��ͷ��ַ
lw $t1, 0($t0);//�����ͷ
lw $t0, -4($a0);//��÷���
addi $t3, $t2, 128;//����ը���ĺ����Ǹ�
PLACE_BOOM_LOOP:
addi $t3, $t3, -4;
beq $t3, $t2, PLACE_BOOM_FINISH;//�ڲ�����������ը��
lw $t4,0($t3);
bne $t4, $zero, PLACE_BOOM_LOOP;//�ж��Ƿ����ը��
add $t0, $t0, $t0;
add $t0, $t0, $t0;//����������λ
add $t0, $t0, $a1;//����type
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
add $t0, $t0, $t0;//����16λ
add $t0, $t0, $t1;//����y,x
sw $t0, 0($t3);//���ȥ
PLACE_BOOM_FINISH:
jr $ra;

/////////////////////////////////
BOOM_SNAKE:
//a0:�ߵĵ�ַ
//v0:ը����1 û��ը�� 0
sw $ra, 0($sp);
sw $s0, 4($sp);
sw $s1, 8($sp);
addi $sp, $sp, 12;

add $v0, $zero, $zero;
add $a1, $zero, $a0;//Ϊ�����ж���׼��
li $s0, BOOM;
addi $s1, $s0, 128;//����ը���ĺ����Ǹ�
BOOM_SNAKE_LOOP:
addi $s1, $s1, -4;
beq $s1, $s0, BOOM_SNAKE_FINISH;
lw $a0, 0($s1);
beq $a0, $zero, BOOM_SNAKE_LOOP;//�ж��Ƿ�������ӷ���ը��
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
addi $s1, $s0, 128;//����BOOM�ĺ����Ǹ�
EXAM_BOOM_LOOP:
addi $s1, $s1, -4;
beq $s1, $s0, EXAM_BOOM_FINISH;
lw $s3, 0($s1);
beq $s3, $zero, EXAM_BOOM_LOOP;//������Ч
//���ײǽ
andi $a0, $s3, 0xffff;//y,x
jal JUDGE_0;
bne $v0, $zero, EXAM_BOOM_CLEAR;
//������
andi $a0, $s3, 0xffff;//y,x
jal EAT_FRUIT; //�������ײ
bne $v0, $zero, EXAM_BOOM_CLEAR;//���

andi $s3, $s3, 0xffff;//y,x
//���������BOOM
add $t0, $zero, $s1;
EXAM_BOOM_LOOP_OTHER:
addi $t0, $t0, -4;
beq $t0, $s0, EXAM_BOOM_LOOP;
lw $t1, 0($t0);
beq $t1, $zero, EXAM_BOOM_LOOP_OTHER;//�ж���Ч
andi $t1, $t1, 0xffff;
bne $t1, $s3, EXAM_BOOM_LOOP_OTHER;//�ж��Ƿ���ײ
//������ײ������
sw $zero, 0($s1);
sw $zero, 0($t0);
lw $t4, 0($s0);//��Ŀ
addi $t4, $t4, -2;
sw $t4, 0($s0);//��Ŀ-2
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
sw $zero, 0($s1);//������ը��
lw $t4, 0($s0);//��Ŀ
addi $t4, $t4, -1;
sw $t4, 0($s0);//��Ŀ-1
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
addi $s2, $s1, 128;//����ը���ĺ����Ǹ�
UPDATE_BOOM_LOOP:
addi $s2, $s2, -4;
beq $s2, $s1, UPDATE_BOOM_LOOP_FINISH;
lw $t1, 0($s2);
beq $t1, $zero, UPDATE_BOOM_LOOP;//�ж���Ч
srl $t2, $t1, 16;
andi $t2, $t2, 3;//�ж�type
bne $t2, $s0, UPDATE_BOOM_LOOP;//���ǵ�ǰtype���ø���
andi $a0, $t1, 0xffff;//����
srl $a1, $t1, 18;//����
jal NEXT_BLOCK;
lw $t1, 0($s2);
andi $t2, $t1, 0xffff;
sub $t1, $t1, $t2;//���y,x
or $t1, $t1, $v0;//�µ�����
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
//a0:��ǰ���� y,x
//v0:0 û��ײ��ǽ,1 ײ����ǽ
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
//a0:��ǰ����,ֻ��y,x
//a1:��ǰ�ߵĵ�ַ
//v0:��ͬ�ķ�����
add $v0, $zero, $zero;
lw $t1, 0($a1);
add $t1, $t1, $t1;
add $t1, $t1, $t1;
add $t1, $a1, $t1;
addi $t1, $t1, 4;//��ͷ��һ��
add $t0, $zero, $a0;
JUDGE_1_LOOP:
addi $t1, $t1, -4;
beq $t1, $a1, JUDGE_1_LOOP_FINISH;
lw $t2, 0($t1);
bne $t2,$t0, JUDGE_1_LOOP;//������غϣ�������һ��
//�غ���
addi $v0, $v0, 1;
j JUDGE_1_LOOP;
JUDGE_1_LOOP_FINISH:
jr $ra;

/////////////////////////////////
UPDATE_SNAKE:
//a0:�ߵĵ�ַ
//v0:�ߵ�ͷ
sw $ra, 0($sp);
sw $s0, 4($sp);
sw $s2, 8($sp);
addi $sp, $sp, 12;

add $s0, $zero, $a0;
//����Ϳ��
add $a0, $zero, $zero;
add $a1, $s0, $zero;
jal PAINT_SNAKE;

//��ȡͷ����һ��λ��
lw $t0, 0($s0);
add $t0, $t0, $t0;
add $t0, $t0, $t0;
add $t0, $s0, $t0;//ͷ�ĵ�ַ
lw $a0, 0($t0);
lw $a1, -4($s0);//����
jal NEXT_BLOCK;

//�жϳԹ���
add $s2, $zero, $v0;//�½ڵ���s2
add $a0, $zero, $v0;
jal EAT_FRUIT; 
beq $v0, $zero, US_SKIP_EAT_FRUIT;
addi $t0, $zero, 1;
beq $v0, $t0, US_EAT_NORMAL;
//���˼��ٹ�
li $t0, ACC;
sw $t0, -8($s0);//���ü��ٴ���
US_EAT_NORMAL:
//���½ڵ�ŵ�ͷ��,�½ڵ���s2
lw $t0, 0($s0);//�����Ŀ
addi $t1, $zero, 31;
beq $t0, $t1, US_SKIP_EAT_FRUIT;//�ﵽ31����󳤶�,��������
addi $t0, $t0, 1;
sw $t0, 0($s0);//���ȼ�1
add $t0, $t0, $t0;
add $t0, $t0, $t0;
add $t0, $s0, $t0;//�½ڵ��λ��
sw $s2, 0($t0);//�����½ڵ�
//���˹��ӾͲ����ƶ�����
j US_EAT_FRUIT_FINISH;
US_SKIP_EAT_FRUIT:
//�ƶ�����
lw $t0, 0($s0);//��ȡ���峤��
add $t0, $t0, $t0;
add $t0, $t0, $t0;
add $t0, $s0, $t0;//ͷ���ڵ�ַ
addi $t1, $s0, 4;//��һ������λ��
US_MOVE:
beq $t1, $t0, US_MOVE_FINISH;
addi $t2, $t1, 4;
lw $t2, 0($t2);
sw $t2, 0($t1);
addi $t1, $t1, 4;
j US_MOVE;
US_MOVE_FINISH:
sw $s2, 0($t0);//����ͷ
US_EAT_FRUIT_FINISH:
add $v0, $zero, $s2;//����ͷ

addi $sp, $sp, -12;
lw $ra, 0($sp);
lw $s0, 4($sp);
lw $s2, 8($sp);
jr $ra;

////////////////////////////////
PAINT_SNAKE:
//a0:��ɫ
//a1:��ַ
sw $ra, 0($sp);
sw $s1, 4($sp);
sw $s2, 8($sp);
addi $sp, $sp, 12;

lw $s2, 0($a1);
andi $s2, $s2, 0xff;//�õ���С
add $s2, $s2, $s2;
add $s2, $s2, $s2;
add $s2, $s2, $a1;//���ĵ�ַ
add $s1, $zero, $a1;//�ʼ�ĵ�ַ
PAINT_SNAKE_LOOP:
beq $s1, $s2, PAINT_SNAKE_LOOP_FINISH;
addi $s1, $s1, 4;
lw $a1, 0($s1);//ȡ��y��x
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
//a0:��ɫ1
//a1:��ɫ2
//a2:��ַ
//a3:��Ŀ
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
addi $s2, $s2, 4;//���ĵ�ַ�ĺ���һ��
PAINT_FB_LOOP:
addi $s2, $s2, -4;
beq $s2, $s3, PAINT_FB_LOOP_FINISH;
lw $a1, 0($s2);//ȡ��y��x
beq $a1, $zero, PAINT_FB_LOOP;//�ж��Ƿ���Ч
lui $t0, 1;
and $t0, $a1, $t0;//�ж����
beq $t0, $zero, PAINT_FB_2;
add $a0, $zero, $s0;//ʹ����ɫ1
j PAINT_FB_PAINT;
PAINT_FB_2:
add $a0, $zero, $s1;//ʹ����ɫ2
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
//a0:��ǰ��
//a1:����
//v0:��һ����
srl $t2, $a0, 8;
andi $t2, $t2, 0xff;//ͷ��y
andi $t1, $a0, 0xff;//ͷ��x

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

//��y��x��ϳ��µ�����
NEXT_HEAD_FH:
add $v0, $t2, $t2;
add $v0, $v0, $v0;
add $v0, $v0, $v0;
add $v0, $v0, $v0;
add $v0, $v0, $v0;
add $v0, $v0, $v0;
add $v0, $v0, $v0;
add $v0, $v0, $v0;//����8λ
or $v0, $v0, $t1;
jr $ra;
/////////////////////////////////////////
EAT_FRUIT://�ж��Ƿ�������غϲ�������Ӧ�Ĺ���
//a0:����y,x��8λ
//v0:û�гԵ� 0�� �������� 1�� ���ٹ� 2
add $v0, $zero, $zero;
li $t3, FRUIT;
addi $t0, $zero,20;
add $t0, $t0, $t3;//������ٺ���Ĺ���
EAT_FRUIT_LOOP:
addi $t0, $t0, -4;
beq $t0, $t3, EAT_FRUIT_FINISH;
lw $t1,0($t0);//��ù���
beq $t1, $zero, EAT_FRUIT_LOOP;//������Ч
andi $t2, $t1, 0xffff;//���y��x
bne $t2, $a0, EAT_FRUIT_LOOP;//���λ�ò���ͬ������
//�Ե��˹���
srl $v0, $t1, 16;//���ӵ�type;
sw $zero, 0($t0);//�������
lw $t0, 0($t3);//��ù�����Ŀ
addi $t0, $t0, -1;
sw $t0, 0($t3);//������Ŀ��һ
EAT_FRUIT_FINISH:
jr $ra;
/////////////////////////////////////
PAINT_BLOCK:
//a0:��ɫ
//a1:y(15::8)��x(7:0)
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
//a0:��ʱ����
li $t0, GPIO;
li $t1, COUNTER;
lw $t2, 0($t0);
add $t2, $t2, $t2;
add $t2, $t2, $t2;
sw $t2, 0($t0);//ѡ��ͨ��0
sw $a0, 0($t1);//�ͼ�ʱ����
jr $ra;

SET_COUNTER_1:
//a0:��ʱ����
li $t0, GPIO;
li $t1, COUNTER;
lw $t2, 0($t0);
add $t2, $t2, $t2;
add $t2, $t2, $t2;
addi $t2, $t2, 1;
sw $t2, 0($t0);//ѡ��ͨ��1
sw $a0, 0($t1);//�ͼ�ʱ����
jr $ra;

SET_COUNTER_2:
//a0:��ʱ����
li $t0, GPIO;
li $t1, COUNTER;
lw $t2, 0($t0);
add $t2, $t2, $t2;
add $t2, $t2, $t2;
addi $t2, $t2, 2;
sw $t2, 0($t0);//ѡ��ͨ��2
sw $a0, 0($t1);//�ͼ�ʱ����
jr $ra;

//////////////////////////////////////

STACK:RESD:32;//stack
LAST_DIR_1:RESD:1;//��һ�θ���ʱ�ķ���
SNAKE1_ACC:RESD:1;//ʣ����ٴ���
SNAKE1_DIR:RESD:1;//����1�� 2�� 4�� 8��
SNAKE1: RESD: 32;//��һ��Ϊ��Ŀ ֮��Ϊy,x����ʽ ����Ǹ���ͷ

LAST_DIR_2:RESD:1;//��һ�θ���ʱ�ķ���
SNAKE2_ACC:RESD:1;//ʣ����ٴ���
SNAKE2_DIR:RESD:1;//����1�� 2�� 4�� 8��
SNAKE2: RESD: 32;//��һ��Ϊ��Ŀ ֮��Ϊy,x����ʽ ����Ǹ���ͷ

FRUIT: RESD:5;//��һ������Ŀ ֮��Ϊtype(2),y(8),x(8)����ʽ type 1����  2����
BOOM:  RESD:32;//��һ������Ŀ ֮��Ϊdir(4),type(2),y(8),x(8)����ʽ type 1��1 2��2
