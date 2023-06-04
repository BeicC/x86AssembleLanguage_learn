# ch3
* 用nasm将`.asm`文件编译为`.bin`二进制文件？
`nasm exam.asm -o exam.bin`
> -o写不写其实无所谓
如果不写，生成文件的文件名为a
写上，生成的文件名为exam.bin
# ch4
* 在将bin文件写入vhd时，LBA怎么填？
主引导扇区的LBA号是0
# ch5
## bochs
* s:step,执行单条指令
* n：next,执行单条指令
> s与n的区别？
通过s命令，尽管显存里面的值已经被修改，但是不能马上在屏幕上显示出来
但是通过n命令，就可以做到
* b：break,`b 0x7c00`,在0x7c00出打上断点
* c：continue，让程序一直执行，遇到断点在停下来
* r：register，查看寄存器里面的值
* sreg:segment register,查看段寄存器里面的值
* xp
```bash
<bochs:10> xp /2 0xb8000 # 从物理地址0xb8000开始，显示2个双字
[bochs]:
0x00000000000b8000 <bogus+       0>:    0x0761074c      0x0b680b63
# 8086是低端字节序，所以从0xb8000开始的两个双字依次为
# 4c,07,61,07...

xp /512xb 0x7c00 # 从物理地址0x7c00处显示512个字节，以16进制显示(x)，一个一个字节显示(b)
```
* q:quit,停止调试