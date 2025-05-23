Music_Home:
	channel_count 4
	channel 1, Music_Home_Ch1
	channel 2, Music_Home_Ch2
	channel 3, Music_Home_Ch3
	channel 4, Music_Home_Ch4

Music_Home_Ch1:
	db	$da,$01,$00
	db	$e5,$77
	db	$db,$00
	db	$f1
; P1-1
	db	$d8,$6,$78
	db	$d5,$8f
; P1-2
	db	$f8,$8f
; P1-3
	db	$8f
; P1-4
	db	$8f
; P1-5
	db	$f8,$8f
; P1-6
	db	$f8,$8f
; P1-7
	db	$8f
; P1-8
	db	$8f
; P1-9
	db	$f7
	db	$d8,$3,$a4
;		tempo 1
	db	$f8,$d6,$10
	db	$fe
	dw	.sub9
.mainloop:
; P1-10
.loop10
	db	$60
	db	$02
	db	$60
	db	$02
	db	$d5,$13
	db	$d6,$60
	db	$02
	db	$fd,2
	dw	.loop10
; P1-11
	db	$fe
	dw	.sub11
; P1-12
.loop12:
	db	$80
	db	$02
	db	$80
	db	$02
	db	$d5,$33
	db	$d6,$80
	db	$02
	db	$fd,2
	dw	.loop12
; P1-13
	db	$fe
	dw	.sub11
	db	$fc
	dw	.mainloop
.sub11:
	db	$10
.sub9:
	db	$02
	db	$10
	db	$02
	db	$83
	db	$10
	db	$02
	db	$10
	db	$02
	db	$10
	db	$02
	db	$83
	db	$10
	db	$02
	db	$ff
Music_Home_Ch2:
	db	$db,$00
; P2-1
	db	$d8,$6,$88
	db	$d5,$5f
; P2-2
	db	$fe
	dw	.melo2_4
; P2-5
	db	$f8,$5f
; P2-6
	db	$fe
	dw	.melo2_4
; P2-9
	db	$d8,$3,$a8
	db	$f8,$70
	db	$8a
	db	$6b
	db	$57
.mainloop:
; P2-10
	db	$6b
	db	$8b
	db	$a7
; P2-11
	db	$83
	db	$13
	db	$f7
	db	$dc,$a4
	db	$d6,$13
	db	$0b
	db	$13
	db	$03
; P2-12
	db	$07
	db	$83
	db	$0b
	db	$83
	db	$03
; P2-13
	db	$f5
	db	$dc,$a8
	db	$d5,$87
	db	$13
	db	$c0
	db	$d4,$1a
	db	$d5,$c3
	db	$a3
; P2-14
;		tempo 8
	db	$f8,$a7
	db	$f7
	db	$dc,$a4
;		tempo 4
	db	$f8,$d6,$63
	db	$f5
	db	$dc,$a8
	db	$d5,$13
	db	$a3
	db	$83
	db	$63
	db	$83
; P2-15
;		tempo 8
	db	$f8,$87
;		tempo 4
	db	$f8,$13
	db	$57
	db	$33
	db	$13
	db	$33
; P2-16
;		tempo 16
	db	$f8,$3f
;		tempo 8
	db	$f8,$07
	db	$f7
	db	$dc,$a4
	db	$d6,$83
	db	$03
; P2-17
	db	$f5
	db	$dc,$a8
	db	$d5,$70
	db	$8a
	db	$6b
	db	$57
	db	$fc
	dw	.mainloop
.melo2_4:
; P2-2
	db	$69
	db	$51
	db	$31
	db	$51
; P2-3
;		tempo 10
	db	$f8,$59
;		tempo 2
	db	$f8,$31
	db	$11
	db	$31
; P2-4
;		tempo 16
	db	$f8,$3f
	db	$ff
Music_Home_Ch3:
.mainloop:
	db	$e2,$ff
; P3-1
	db	$d8,$6,$3c
	db	$fe
	dw	.bass1
; P3-2
	db	$fe
	dw	.bass2
; P3-3
	db	$e2,$ff
	db	$fe
	dw	.bass1
; P3-4
	db	$83
	db	$01
	db	$80
	db	$00
	db	$e2,$17
	db	$d6,$83
	db	$83
; P3-5
	db	$e2,$ff
	db	$fe
	dw	.bass1
; P3-6
	db	$fe
	dw	.bass2
; P3-7
	db	$e2,$ff
	db	$fe
	dw	.bass1
; P3-8
	db	$83
	db	$01
	db	$80
	db	$00
	db	$e2,$0b
	db	$d6,$81
	db	$81
	db	$a1
	db	$c1
; P3-9
	db	$fc
	dw	.mainloop
.bass1:
	db	$d5,$13
	db	$01
	db	$10
	db	$00
	db	$13
	db	$01
	db	$10
	db	$00
	db	$ff
.bass2:
	db	$63
	db	$01
	db	$10
	db	$00
	db	$e2,$17
	db	$63
	db	$e2,$0b
	db	$51
	db	$31
	db	$ff
Music_Home_Ch4:
	db	$e3,$00a
.mainloop:
; P4-1
	db	$d8,$6
	db	$fe
	dw	.dr1
	db	$71
; P4-2
	db	$fe
	dw	.dr1
	db	$11
; P4-3
	db	$fe
	dw	.dr1
	db	$71
; P4-4
	db	$11
	db	$71
	db	$81
	db	$71
	db	$81
	db	$11
	db	$11
	db	$81
; P4-5
	db	$fc
	dw	.mainloop
.dr1:
	db	$11
	db	$71
	db	$81
	db	$71
	db	$11
	db	$11
	db	$81
	db	$ff
