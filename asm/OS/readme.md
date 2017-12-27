## VGA TEXT
* Virtual Address : 0xB000 2000-0xB000 3fff
* Physical Address: 0x1000 2000-0x1000 3fff
* Read and Write

31---30|29----24|23--22|21----16|15----0|
:-----:|:------:|:----:|:------:|:-----:|
0      |Font RGB|0     |Back RGB| ZCode |

## VGA GRAPH
* Virtual Address : 0xB001 0000-0xB001 ffff
* Physical Address: 0x1001 0000-0x1001 ffff
* Read and Write

31---28|27----16|15--12|11----0|
:-----:|:------:|:----:|:-----:|
0      | RGB    |0     |    RGB|



## VGA REG
* Virtual Address : 0xB000 0000
* Physical Address: 0x1000 0000
* Read and Write

31---------------------16|15----2|1--0
:-----------------------:|:-----:|:--:
VGA-GRAPH Address Select |   0   |Mode

Mode| Description
:--:|:-----------
0  0| 640x480 Graph Mode
0  1| 40x30 Text Mode
1  1| Mix Mode

## VGA-CURSOR REG
* Virtual Address : 0xB000 0004
* Physical Address: 0x1000 0004
* Read and Write

31---26|25-24|23-22|21--------16|15---11|10---0|
:-----:|:---:|:---:|:----------:|:-----:|:----:|
   0   |Mode |  0  |CURSOR_COLOR|   0   |Place |

Mode| Description
:--:|:------------
0  0| No Cursor
0  1| Underscore
1  0| Vertical Bar
1  1| Block

## SWITCHES
* Virtual Address : 0xB000 0008
* Physical Address: 0x1000 0008
* Read Only
31--------16|15--------0|
:----------:|:---------:|
0           | SW[15:0]  |

## LEDS
* Virtual Address : 0xB000 000C
* Physical Address: 0x1000 000C
* Write Only
31--------16|15--------0|
:----------:|:---------:|
0           | LED[15:0] |

## SEGMENTS
* Virtual Address : 0xB000 0010
* Physical Address: 0x1000 0010
* Read and Write

31---28|27---24|23---20|19---16|15---12|11---8|7---4|3---0|
:-----:|:-----:|:-----:|:-----:|:-----:|:----:|:---:|:---:|
SEG7   |SEG6   |SEG5   |SEG4   |SEG3   |SEG2  |SEG1 |SEG0 |

## KEYBOARD
* Virtual Address : 0xB000 0014
* Physical Address: 0x1000 0014
* Read Only

31--------9|8    |7------0|
:---------:|:---:|:------:|
0          |Ready|Scan Code|

## DMA-CTRL
* Virtual Address : 0xB000 0018
* Physical Address: 0x1000 0018
* Read and Write

31--------16|15--6|6    |5    |4  |3-----0|
:----------:|:---:|:---:|:---:|:-:|:-----:|
LSA         |0    |Ready|Start|R/W|Blk Sel|

*LSA(Logical Sector Address) is the logical address of the sector on disk to be read from or write into

*Ready signals the CPU of ready for the next operation

*BlkSel select the 16 pyhsical pages which DMA can use. The physical pages' address starts from 0x1002 0000 to 0x1002 f0000, with a pagesize of 4K

## BUTTONS
* Virtual Address : 0xB000 001C
* Physical Address: 0x1000 001C
* Read Only

31-------25|24-------0|
:---------:|:--------:|
0          | BTN[24:0]|


# FLOW of BIOS

1. Initialize registers
2. Initialize TLB
3. Initialize cache(pending)
3. Initialize VGA and timer
4. Write the 32-entry-interrupt table starting at physical address 0x00000280，virtual address 0x80000280
5. Load the OS from disk, put to physical address 0x00000380, virtual address 0x80000380, and jump to execute OS program

# FUNCTION of BIOS
Device Name |            Function                 | INT_NUM
------------|-------------------------------------|----------
 7-Segment  | Display 32bits' data on 8 segments | 0x00
  Switches  | Read the states of 16 switches | 0x01
  Buttons   | Read the states of 25 buttons |0x02
  LEDs      | Using 8 bits to control the LEDs |0x03
 VGA-REG    | Select display mode |0x04
VGA-CURSOR  | Select cursor mode, location, color |0x05
VGA-CURSOR  | Get cursor settings |0x06
 VGA-TEXT   | Scroll the screen by one line |0x07
VGA-TEXT    | Display the character with specified location, color |0x08
VGA-TEXT    | Display the character at cursor |0x09
VGA-TEXT    | Display strings (end with 0) at specified locatoin |0x0a
VGA-GRAPH   | Display one pixel at with specified location, color |0x0b

*Many modern operating systems (such as Linux and newer versions of Windows) bypass the built-in BIOS interrupt communication system altogether, preferring to use their own software to control the attached hardware directly.



