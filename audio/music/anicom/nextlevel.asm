Music_NextLevel:
	channel_count 2
	channel 1, Music_NextLevel_Ch1
	channel 2, Music_NextLevel_Ch2

Music_NextLevel_Ch1:
	db	$da,$00,$c0
	db	$e5,$77
	db	$f1
	db	$db,$01
.mainloop:
; P1-1
	db	$d8,$8,$a7
	db	$d6,$33
	db	$d5,$33
	db	$d6,$33
	db	$d5,$33
; P1-2
	db	$d6,$23
	db	$a3
	db	$23
	db	$a3
; P1-3
	db	$d7,$c3
	db	$d6,$83
	db	$d7,$c3
	db	$d6,$83
; P1-4
	db	$d7,$a3
	db	$d6,$a3
	db	$d7,$a3
	db	$03
; P1-5
	db	$83
	db	$d6,$83
	db	$d7,$83
	db	$d6,$83
; P1-6
	db	$d7,$73
	db	$d6,$a3
	db	$d7,$73
	db	$d6,$a3
; P1-7
	db	$d7,$53
	db	$d6,$83
	db	$d7,$53
	db	$d6,$83
; P1-8
	db	$d7,$a3
	db	$d6,$83
	db	$d7,$a5
	db	$d5,$31
	db	$fc
	dw	.mainloop
Music_NextLevel_Ch2:
	db	$db,$01
.mainloop:
; P2-1
	db	$d8,$8,$a7
	db	$01
	db	$d6,$a3
	db	$d5,$53
	db	$d6,$a5
; P2-2
;		tempo 2
	db	$f8,$a1
;		tempo 4
	db	$f8,$33
	db	$d5,$33
	db	$d6,$33
	db	$d5,$31
; P2-3
	db	$f8,$31
;		tempo 4
	db	$f8,$d6,$33
	db	$d5,$33
	db	$d6,$33
	db	$d5,$31
; P2-4
	db	$f8,$31
;		tempo 4
	db	$f8,$d6,$33
	db	$d5,$33
	db	$d6,$31
	db	$d7,$51
	db	$70
	db	$d8,$2,$57
	db	$d3,$10
	db	$f8,$70
	db	$c0
	db	$d2,$40
; P2-5
	db	$d8,$8,$a7
;		tempo 2
	db	$f8,$01
	db	$d6,$33
	db	$d5,$33
	db	$d6,$35
; P2-6
;		tempo 2
	db	$f8,$31
;		tempo 4
	db	$f8,$33
	db	$d5,$33
	db	$d6,$35
; P2-7
;		tempo 2
	db	$f8,$31
;		tempo 4
	db	$f8,$33
	db	$d5,$33
	db	$d6,$33
	db	$c1
; P2-8
	db	$f8,$c1
;		tempo 4
	db	$f8,$53
	db	$d5,$33
	db	$d8,$4,$a7
	db	$d6,$50
;		tempo 3
	db	$f8,$72
;		tempo 8
	db	$f8,$87
	db	$fc
	dw	.mainloop


