Music_Aquatown:
	db	$80
	dw	Music_Aquatown_Ch1
	db	$01
	dw	Music_Aquatown_Ch2
	db	$02
	dw	Music_Aquatown_Ch3
Music_Aquatown_Ch1:
	db	$da,$00,$d8
	db	$e5,$77
	db	$e2,$30
	db	$db,$02
	db	$e1,$6,$44
; P1-1
	db	$d8,$6,$68
	db	$d5,$70
	db	$89
	db	$e1,$b,$44
	db	$d8,$3,$68
	db	$a0
	db	$b0
	db	$e2,$3a
	db	$d8,$6,$68
	db	$cb
; P1-2
	db	$e2,$35
	db	$e1,$6,$44
	db	$d4,$20
	db	$3a
	db	$e2,$3a
	db	$e1,$b,$44
	db	$2b
.mainloop:
; P1-3
	db	$e1,$b,$44
	db	$d8,$6,$68
	db	$03
	db	$fe
	dw	.sub3
; P1-4
	db	$fe
	dw	.sub4_5
; P1-6
	db	$07
	db	$32
	db	$04
	db	$32
	db	$04
	db	$76
	db	$00
	db	$66
	db	$00
	db	$54
	db	$dc,$a1
	db	$d3,$a0
	db	$c0
	db	$d2,$20
; P1-7
	db	$37
	db	$fe
	dw	.sub3
; P1-8
	db	$fe
	dw	.sub4_5
; P1-10
	db	$07
	db	$dc,$a1
	db	$73
	db	$83
	db	$93
	db	$a3
	db	$d3,$37
	db	$dc,$68
	db	$d4,$26
	db	$00
	db	$14
	db	$db,$00
	db	$e1,$b,$44
	db	$dc,$78
	db	$d5,$30
	db	$70
	db	$a0
; P1-11
	db	$d8,$c,$78
	db	$c5
	db	$b5
; P1-12
	db	$e2,$76
	db	$ab
; P1-13
	db	$e2,$b3
	db	$d4,$3b
; P1-14
;		tempo 6
	db	$f8,$35
	db	$e2,$3a
	db	$f8,$d5,$a5
; P1-15
	db	$e1,$8,$44
	db	$85
	db	$e2,$76
	db	$75
; P1-16
	db	$f8,$75
	db	$e2,$3a
	db	$f8,$45
; P1-17
	db	$e1,$b,$44
	db	$d4,$35
	db	$e1,$8,$44
	db	$25
; P1-18
	db	$e1,$b,$44
	db	$33
	db	$db,$02
	db	$e1,$8,$44
	db	$d8,$3,$78
	db	$d6,$72
	db	$04
	db	$7f
	db	$07
	db	$fc
	dw	.mainloop
.sub3:
	db	$d8,$3,$68
	db	$d5,$a2
	db	$04
	db	$a2
	db	$0c
	db	$b2
	db	$04
	db	$b2
	db	$04
	db	$ff
.sub4_5:
; P1-4
	db	$07
	db	$c2
	db	$04
	db	$c2
	db	$0c
	db	$c2
	db	$04
	db	$c2
	db	$04
; P1-5
	db	$07
	db	$d4,$32
	db	$04
	db	$32
	db	$0c
	db	$22
	db	$04
	db	$22
	db	$04
	db	$ff
Music_Aquatown_Ch2:
	db	$e2,$ff
	db	$db,$01
	db	$e1,$6,$44
; P2-1
	db	$d8,$6,$a8
	db	$d5,$b0
	db	$ca
	db	$e1,$0,$00
	db	$83
	db	$a3
	db	$83
; P2-2
	db	$e1,$6,$44
	db	$60
	db	$7a
	db	$e2,$3a
	db	$e1,$b,$44
	db	$5b
.mainloop:
; P2-3
	db	$fe
	dw	.melo3
	db	$b1
; P2-4
	db	$c7
	db	$e1,$0,$00
	db	$83
	db	$e1,$b,$44
	db	$e2,$1b
	db	$57
	db	$d8,$8,$a8
	db	$50
	db	$70
	db	$80
; P2-5
	db	$e2,$3a
	db	$d8,$6,$a8
	db	$ad
	db	$81
	db	$51
	db	$21
	db	$d6,$a1
	db	$81
; P2-6
	db	$d8,$3,$a8
	db	$77
	db	$ae
	db	$00
	db	$e2,$35
	db	$db,$02
	db	$e1,$6,$44
	db	$d8,$6,$78
	db	$d5,$90
	db	$aa
; P2-7
	db	$fe
	dw	.melo3
	db	$71
; P2-8
	db	$d8,$3,$a8
	db	$8f
	db	$e1,$0,$00
	db	$57
	db	$d6,$c6
	db	$08
	db	$c7
; P2-9
	db	$d5,$b1
	db	$c5
	db	$a7
	db	$d6,$a7
	db	$d5,$26
	db	$04
	db	$d6,$a3
	db	$d5,$23
	db	$53
; P2-10
	db	$e1,$b,$44
	db	$d8,$6,$a8
	db	$3b
	db	$db,$02
	db	$e2,$35
	db	$e1,$0,$00
	db	$90
	db	$a4
	db	$83
	db	$70
	db	$00
; P2-11
	db	$e1,$6,$44
	db	$70
	db	$8a
	db	$e1,$b,$44
	db	$d8,$3,$a8
	db	$3e
	db	$00
	db	$e1,$0,$00
	db	$71
	db	$84
	db	$00
; P2-12
	db	$73
	db	$dc,$a1
	db	$d3,$33
	db	$23
	db	$33
	db	$73
	db	$a3
	db	$d2,$37
	db	$dc,$a8
	db	$d5,$37
	db	$73
	db	$fe
	dw	.melo12
; P2-13
	db	$db,$02
	db	$e1,$6,$44
	db	$d8,$6,$a8
	db	$70
	db	$8a
	db	$d8,$3,$a8
	db	$91
	db	$ac
	db	$00
	db	$e1,$0,$00
	db	$86
	db	$00
; P2-14
	db	$e2,$3a
	db	$e1,$b,$44
	db	$d8,$6,$a8
	db	$7b
	db	$e2,$ff
	db	$e1,$0,$00
	db	$db,$01
	db	$90
	db	$a2
	db	$83
	db	$73
; P2-15
	db	$e1,$8,$44
	db	$5b
	db	$37
	db	$e1,$0,$00
	db	$73
; P2-16
	db	$e2,$30
	db	$90
	db	$a2
	db	$33
	db	$23
	db	$e1,$8,$44
	db	$d6,$c9
	db	$fe
	dw	.melo12
; P2-17
	db	$db,$01
	db	$e1,$6,$44
	db	$dc,$a8
	db	$b1
	db	$cd
	db	$e1,$0,$00
	db	$a7
	db	$87
	db	$77
	db	$57
; P2-18
	db	$37
	db	$db,$02
	db	$e1,$8,$44
	db	$dc,$78
	db	$32
	db	$04
	db	$32
	db	$04
	db	$3f
	db	$07
	db	$fc
	dw	.mainloop
.melo3:
	db	$e2,$3a
	db	$db,$01
	db	$e1,$b,$44
	db	$d8,$6,$a8
	db	$3d
	db	$21
	db	$31
	db	$71
	db	$a1
	db	$ff
.melo12:
	db	$d8,$3,$78
	db	$00
	db	$db,$00
	db	$e1,$0,$00
	db	$d5,$50
	db	$80
	db	$c0
	db	$ff
Music_Aquatown_Ch3:
	db	$e2,$35
; P3-1
	db	$d8,$6,$5b
	db	$d5,$5a
	db	$d8,$3,$5b
	db	$d4,$30
	db	$40
	db	$5e
	db	$00
	db	$d5,$56
	db	$00
; P3-2
	db	$e2,$ff
	db	$90
	db	$a0
	db	$d8,$6,$5b
;		tempo 9
	db	$f8,$a8
	db	$d8,$3,$3d
;		tempo 1
	db	$f8,$d6,$a0
	db	$02
	db	$a6
	db	$00
	db	$c6
	db	$00
	db	$d5,$26
	db	$00
.mainloop:
; P3-3
	db	$fe
	dw	.bass3_5
; P3-6
	db	$fe
	dw	.bass6
	db	$d6,$a6
	db	$00
	db	$c6
	db	$00
	db	$d5,$26
	db	$00
; P3-7
	db	$fe
	dw	.bass3_5
; P3-10
	db	$fe
	dw	.bass6
	db	$d5,$36
	db	$00
	db	$d6,$a6
	db	$00
	db	$96
	db	$00
; P3-11
	db	$87
	db	$fe
	dw	.bass11
	db	$dc,$3d
	db	$d6,$87
	db	$fe
	dw	.bass11
; P3-12
	db	$dc,$3d
	db	$d5,$37
	db	$fe
	dw	.bass11
	db	$dc,$3d
	db	$d6,$a7
	db	$fe
	dw	.bass11
; P3-13
	db	$dc,$3d
	db	$d6,$87
	db	$dc,$3b
	db	$d5,$c2
	db	$00
	db	$dc,$3d
	db	$83
	db	$dc,$3b
	db	$c2
	db	$00
	db	$dc,$3d
	db	$d6,$80
	db	$02
	db	$87
	db	$dc,$3b
	db	$d5,$b2
	db	$04
	db	$b2
	db	$00
	db	$dc,$3d
	db	$d6,$83
; P3-14
	db	$d5,$37
	db	$fe
	dw	.bass14
	db	$dc,$3d
	db	$61
	db	$74
	db	$00
	db	$56
	db	$00
	db	$36
	db	$00
; P3-15
	db	$27
	db	$dc,$3b
	db	$b2
	db	$04
	db	$b2
	db	$04
	db	$dc,$3d
	db	$d6,$c7
	db	$fe
	dw	.bass14
; P3-16
	db	$dc,$3d
	db	$d6,$a7
	db	$fe
	dw	.bass14
	db	$dc,$3d
	db	$d6,$c7
	db	$dc,$3b
	db	$d5,$72
	db	$04
	db	$72
	db	$04
; P3-17
	db	$dc,$3d
	db	$d6,$57
	db	$dc,$3b
	db	$d5,$82
	db	$04
	db	$c2
	db	$04
	db	$dc,$3d
	db	$d6,$a6
	db	$00
	db	$d5,$56
	db	$00
	db	$a6
	db	$00
; P3-18
	db	$37
	db	$dc,$3b
	db	$72
	db	$00
	db	$dc,$3d
	db	$d6,$31
	db	$01
	db	$32
	db	$04
	db	$3f
	db	$a3
	db	$d5,$23
	db	$fc
	dw	.mainloop
.bass3_5:
; P3-3
	db	$dc,$3d
	db	$37
	db	$dc,$5b
	db	$d4,$72
	db	$04
	db	$72
	db	$04
	db	$dc,$3d
	db	$d6,$a7
	db	$dc,$5b
	db	$d4,$72
	db	$04
	db	$72
	db	$04
; P3-4
	db	$dc,$3d
	db	$d5,$41
	db	$55
	db	$dc,$5b
	db	$d4,$82
	db	$04
	db	$82
	db	$04
	db	$dc,$3d
	db	$d6,$c7
	db	$dc,$5b
	db	$d4,$82
	db	$04
	db	$82
	db	$04
; P3-5
	db	$dc,$3d
	db	$d6,$a7
	db	$dc,$5b
	db	$d4,$82
	db	$00
	db	$dc,$3d
	db	$d5,$a3
	db	$dc,$5b
	db	$d4,$82
	db	$00
	db	$dc,$3d
	db	$d6,$a0
	db	$02
	db	$a7
	db	$dc,$5b
	db	$d4,$82
	db	$00
	db	$dc,$3d
	db	$d6,$c3
	db	$dc,$5b
	db	$d4,$82
	db	$00
	db	$dc,$3d
	db	$d5,$20
	db	$02
	db	$ff
.bass6:
	db	$37
	db	$dc,$5b
	db	$d4,$72
	db	$04
	db	$72
	db	$04
	db	$dc,$3d
	db	$ff
.bass11:
	db	$dc,$3b
	db	$d4,$32
	db	$04
	db	$32
	db	$04
	db	$ff
.bass14:
	db	$dc,$3b
	db	$d5,$a2
	db	$04
	db	$a2
	db	$04
	db	$ff


