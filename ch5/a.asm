mov ax,0xb800 ;指向文本模式的显示缓冲区
mov es,ax
;以下显示字符串"Label offset:"
mov byte [es:0x00],'L'
mov byte [es:0x01],0x07
mov byte [es:0x02],'a'
mov byte [es:0x03],0x07
mov byte [es:0x04],'b'
mov byte [es:0x05],0x07
mov byte [es:0x06],'e'
mov byte [es:0x07],0x07
mov byte [es:0x08],'l'
mov byte [es:0x09],0x07
mov byte [es:0x0a],' '
mov byte [es:0x0b],0x07
mov byte [es:0x0c],"o"
mov byte [es:0x0d],0x07
mov byte [es:0x0e],'f'
mov byte [es:0x0f],0x07
mov byte [es:0x10],'f'
mov byte [es:0x11],0x07
mov byte [es:0x12],'s'
mov byte [es:0x13],0x07
mov byte [es:0x14],'e'
mov byte [es:0x15],0x07
mov byte [es:0x16],'t'
mov byte [es:0x17],0x07
mov byte [es:0x18],':'
mov byte [es:0x19],0x07
; 161byte

times 349 db 0
db 0x55
db 0xAA