# Change name of instruction set
s/mipsebIR/nanoebIR/
s/mipselIR/nanoselIR/
# Change register names from %n -> rn and $sp -> sp
s/$%0/r%0/g
s/$%1/r%1/g
s/$%c/r%c/g
s/$%d/r%d/g
s/$sp/sp/g
# Change label syntax from L.n -> Ln
s/L.%/L%/g
# Change # of registers
s/for (i = 0; i < 32; i++)/for (i = 0; i < 16; i++)/
s/ireg\[29\]/ireg\[14\]/
s/ireg\[25\]/ireg\[13\]/
s/|= 1<<25;/|= 1<<13;/
s/cpload \$25/cpload r13/
s/frame sp,%d,$31/frame sp,#%d,r15/
s/|= ((unsigned)1)<<31;/|= ((unsigned)1)<<15;/
s/j \$31/j r15/
s/INTTMP 0x0100ff00/INTTMP 0x000000F0/
s/INTVAR 0x40ff0000/INTVAR 0x00000F00/
# Change int from 4 -> 2 bytes
# 1012s/4, 4, 0,/2, 2, 0,/
# 1067s/4, 4, 0,/2, 2, 0,/
