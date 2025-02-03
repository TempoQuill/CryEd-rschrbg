MACRO hall_of_famer
	wait_script 241
	play_cry \1
	wait_sfx
ENDM

MACRO evolution_script
	play_music MUSIC_NONE
	play_sfx SFX_POKEBALLS_PLACED_ON_TABLE
	wait_sfx
	wait_script 20
	play_cry \1
	wait_sfx
	play_music MUSIC_EVOLUTION
	wait_script 241
	wait_script 241
	play_sfx SFX_EVOLVED
	wait_sfx
	wait_script 40
	play_sfx SFX_READ_TEXT
	wait_script 20
	play_cry \2
	wait_sfx
	wait_script 20
	play_music MUSIC_NONE
	play_sfx SFX_CAUGHT_MON
	wait_sfx
	script_end
ENDM

MACRO stone_evo_script
	play_sfx SFX_READ_TEXT
	wait_sfx
	play_sfx SFX_FULL_HEAL
	wait_sfx
	wait_script 40
	evolution_script            \1, \2
ENDM

MACRO trade_evo_script
	play_music MUSIC_EVOLUTION
	wait_script 24
	play_cry \1
	wait_sfx
	wait_script 80
	play_sfx SFX_BALL_POOF
	wait_script 40
	play_sfx SFX_GOT_SAFARI_BALLS
	wait_sfx
	script_loop 20
	wait_script 4
	play_sfx SFX_POKEBALLS_PLACED_ON_TABLE
	break_loop
	wait_sfx
	wait_script 40
	play_sfx SFX_GIVE_TRADEMON
	wait_sfx
	wait_script 240
	wait_script 240
	wait_script 60
	play_sfx SFX_GET_TRADEMON
	wait_sfx
	wait_script 80
	wait_script 60
	play_sfx SFX_SWITCH_POKEMON
	wait_script 40
	play_sfx SFX_SWITCH_POKEMON
	wait_script 80
	play_sfx SFX_BALL_POOF
	wait_script 80
	play_cry \2
	wait_sfx
	wait_script 40
	play_music MUSIC_NONE
	play_sfx SFX_DEX_FANFARE_80_109
	wait_sfx
	wait_script 40
	evolution_script            \2, \3
ENDM

UpdateAudioScript:
	ld a, [wAudioScript_Cue]
	and a
	ret z
	ld hl, wAudioScript_Pointer
	ld a, [hli]
	or [hl]
	jr nz, .Update
	call LoadCuePointers
.Update:
	; wait to cut out
	ld a, [wMusicFade]
	and a
	ret nz
	; no cut out
	ld hl, wAudioScript_Delay
	dec [hl]
	ret nz
.Loop:
	; bc = offset
	ld hl, wAudioScript_Offset
	ld c, [hl]
	ld b, 0
	call GetAudioScriptByte
	and a
	jp z, EndAudioScript
	cp script_cmd_start
	jr c, .Delay
	call LoadAudioScriptCommand
	ld a, c
	ld [wAudioScript_Offset], a
	jr .Loop
.Delay:
	ld [wAudioScript_Delay], a
	ld a, c
	ld [wAudioScript_Offset], a
	ret

LoadCuePointers:
	ld hl, wAudioScript_Offset
	xor a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	inc a
	ld [wAudioScript_Delay], a
	ld a, [hl]
	dec a
	ld e, a
	ld d, 0
	ld hl, CuePointers
	add hl, de
	add hl, de
	ld de, wAudioScript_Pointer
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hl]
	ld [de], a
	ret

EndAudioScript:
	xor a
	ld hl, wAudioScript_Pointer
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	ret

LoadAudioScriptCommand:
	ld hl, wAudioScript_Offset
	inc [hl]
	sub script_cmd_start
	ld e, a
	ld d, 0
	ld hl, AudioScriptCommandPointers
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl

AudioScriptCommandPointers:
	dw AudioScript_MusicOff
	dw AudioScript_MusicOn
	dw AudioScript_WaitSFX
	dw AudioScript_SkipFrames
	dw AudioScript_Fade
	dw AudioScript_PlayMusic
	dw AudioScript_PlayCry
	dw AudioScript_PlaySfx
	dw AudioScript_ExtendScript
	dw AudioScript_RestartScript
	dw AudioScript_NewScript
	dw AudioScript_OffsetJump
	dw AudioScript_Loop
	dw AudioScript_Break

AudioScript_None:
	ret

AudioScript_MusicOff:
	xor a
	ld [wMusicPlaying], a
	ret

AudioScript_MusicOn:
	ld a, 1
	ld [wMusicPlaying], a
	ret

AudioScript_WaitSFX:
	call CheckSFX
	ret nc
	ld hl, wAudioScript_Offset
	dec [hl]
	ld hl, wAudioScript_Delay
	inc [hl]
	pop hl ; returning means running the same script byte
	ret

AudioScript_SkipFrames:
	call GetAudioScriptByte
	jp SkipMusic

AudioScript_ExtendScript:
	ld hl, wAudioScript_Pointer
	ld a, [wAudioScript_Offset]
	add [hl]
	ld [hli], a
	ld a, 0
	ld bc, 0
	ld [wAudioScript_Offset], a
	adc [hl]
	ld [hl], a
	ret

AudioScript_RestartScript:
	call GetAudioScriptByte
	ld e, a
	call GetAudioScriptByte
	ld d, a
	ld hl, wAudioScript_Pointer
	ld a, e
	ld [hli], a
	ld a, d
	ld [hl], a
	xor a
	ld c, a
	ret

AudioScript_OffsetJump:
	call GetAudioScriptByte
	ld c, a
	ret

AudioScript_NewScript:
	call GetAudioScriptByte
	ld [wAudioScript_Cue], a
	; initialize area
	ld hl, wAudioScript_WorkArea
	ld de, wAudioScript_WorkAreaEnd - wAudioScript_WorkArea
	xor a
.Loop:
	ld [hli], a
	dec e
	jr nz, .Loop
	pop de ; returning would glitch out the audio script engine
	jp UpdateAudioScript

AudioScript_Fade:
	call GetAudioScriptByte
	ld [wMusicFadeID], a
	call GetAudioScriptByte
	ld [wMusicFadeID + 1], a
	call GetAudioScriptByte
	ld [wMusicFade], a
	; wait for cut
	ret

AudioScript_PlayMusic:
	ld de, MUSIC_NONE
	call PlayMusic
	call AudioScript_GetSoundID
	jp PlayMusic

AudioScript_PlayCry:
	call AudioScript_GetSoundID
	dec de
	jp PlayCry

AudioScript_PlaySfx:
	call AudioScript_GetSoundID
	jp PlaySFX

AudioScript_Loop:
	call GetAudioScriptByte
	ld [wAudioScript_LoopCounter], a
	ld a, c
	ld [wAudioScript_LoopOffset], a
	ret

AudioScript_Break:
	ld hl, wAudioScript_LoopCounter
	dec [hl]
	ret z
	ld a, [wAudioScript_LoopOffset]
	ld c, a
	ret

AudioScript_GetSoundID:
	call GetAudioScriptByte
	ld e, a
	call GetAudioScriptByte
	ld d, a
	ret

GetAudioScriptByte:
	ld hl, wAudioScript_Pointer
	ld a, [hli]
	ld h, [hl]
	ld l, a
	add hl, bc
	ld a, [hl]
	inc bc
	ret

CuePointers:
	dw wAudioScript_ScriptArea
	dw AudioScript_CatchTutorial
	dw AudioScript_EggCrack
	dw AudioScript_WinNewLevel
	dw AudioScript_ChaosIntro
	dw AudioScript_HallOfFame
	dw AudioScript_BigYoshi
	dw AudioScript_Yoshi
	dw AudioScript_Evo1
	dw AudioScript_Evo2
	dw AudioScript_Evo3
	dw AudioScript_Evo4
	dw AudioScript_Evo5
	dw AudioScript_Evo6
	dw AudioScript_Evo7
	dw AudioScript_Evo8
	dw AudioScript_Evo9
	dw AudioScript_Evo10
	dw AudioScript_Evo11
	dw AudioScript_Evo12
	dw AudioScript_Evo13
	dw AudioScript_Evo14
	dw AudioScript_Evo15
	dw AudioScript_Evo16
	dw AudioScript_Evo17
	dw AudioScript_Evo18
	dw AudioScript_Evo19
	dw AudioScript_Evo20
	dw AudioScript_Evo21
	dw AudioScript_Evo22
	dw AudioScript_Evo23
	dw AudioScript_Evo24
	dw AudioScript_Evo25
	dw AudioScript_Evo26
	dw AudioScript_Evo27
	dw AudioScript_Evo28
	dw AudioScript_Evo29
	dw AudioScript_Evo30
	dw AudioScript_Evo31
	dw AudioScript_Evo32
	dw AudioScript_Evo33
	dw AudioScript_Evo34
	dw AudioScript_Evo35
	dw AudioScript_Evo36
	dw AudioScript_Evo37
	dw AudioScript_Evo38
	dw AudioScript_Evo39
	dw AudioScript_Evo40
	dw AudioScript_Evo41
	dw AudioScript_Evo42
	dw AudioScript_Evo43
	dw AudioScript_Evo44
	dw AudioScript_Evo45
	dw AudioScript_Evo46
	dw AudioScript_Evo47
	dw AudioScript_Evo48
	dw AudioScript_Evo49
	dw AudioScript_Evo50
	dw AudioScript_Evo51
	dw AudioScript_Evo52
	dw AudioScript_Evo53
	dw AudioScript_Evo54
	dw AudioScript_Evo55
	dw AudioScript_Evo56
	dw AudioScript_Evo57
	dw AudioScript_Evo58
	dw AudioScript_Evo59
	dw AudioScript_Evo60
	dw AudioScript_Evo61
	dw AudioScript_Evo62
	dw AudioScript_Evo63
	dw AudioScript_Evo64
	dw AudioScript_Evo65
	dw AudioScript_Evo66
	dw AudioScript_Evo67
	dw AudioScript_Evo68
	dw AudioScript_Evo69
	dw AudioScript_Evo70
	dw AudioScript_Evo71
	dw AudioScript_Evo72
	dw AudioScript_Evo73
	dw AudioScript_Evo74
	dw AudioScript_Evo75
	dw AudioScript_Evo76
	dw AudioScript_Evo77
	dw AudioScript_Evo78
	dw AudioScript_Evo79
	dw AudioScript_Evo80

AudioScript_CatchTutorial:
	play_music MUSIC_WILD_BATTLE
	wait_script 241
	play_cry CROVEN
	wait_sfx
	wait_script 40 ; Wild CROVEN appeared!
	wait_script 15
	; down/right - cursor to PACK
	wait_script 15
	; a - into PACK menu
	play_sfx SFX_READ_TEXT
	wait_sfx
	wait_script 15
	; right - to BALLs
	play_sfx SFX_SWITCH_POCKETS
	wait_sfx
	wait_script 15
	; a - select POKE BALL
	play_sfx SFX_READ_TEXT
	wait_sfx
	wait_script 15
	; a - use POKE BALL
	play_sfx SFX_READ_TEXT
	wait_sfx
	wait_script 40 ; Dude used POKe BALL!
	play_sfx SFX_THROW_BALL
	wait_sfx
	wait_script 40
	play_sfx SFX_BALL_POOF
	wait_sfx
	wait_script 40
	play_sfx SFX_BALL_CLOSE
	wait_sfx
	wait_script 20
	play_sfx SFX_BALL_BOUNCE
	wait_sfx
	wait_script 20

	script_loop 3
	play_sfx SFX_BALL_SHAKE
	wait_sfx
	wait_script 40
	break_loop

	wait_script 40 ; Gotcha! CROVEN was caught!
	play_music MUSIC_NONE
	play_sfx SFX_GET_EGG_FROM_DAY_CARE_MAN
	wait_sfx
	play_music MUSIC_CAPTURE
	wait_script 40
	; a
	play_sfx SFX_READ_TEXT
	wait_sfx
	wait_script 15
	fade MUSIC_ROUTE_49, 4
	script_end

AudioScript_EggCrack:
	script_loop 3
	play_sfx SFX_EGG_CRACK
	wait_sfx
	break_loop
	script_end

AudioScript_Yoshi:
	play_sfx SFX_MIMIC_D3
	wait_script 8

	wait_script 16
	play_sfx SFX_RECOVER
	wait_script 48
	play_sfx SFX_YOSHI
	script_end

AudioScript_BigYoshi:
	play_sfx SFX_MIMIC_D3
	wait_script 8

	play_sfx SFX_MIMIC_D4
	wait_script 8
	play_sfx SFX_MIMIC_D5
	wait_script 8

	play_sfx SFX_MIMIC_D6
	wait_script 8
	play_sfx SFX_MIMIC_D7
	wait_script 8

	play_sfx SFX_MIMIC_D8
	wait_script 8
	play_sfx SFX_MIMIC_D9
	wait_script 8

	script_loop 6
	play_sfx SFX_EXP_BAR_FULL
	wait_script 8
	break_loop

	wait_script 16
	play_sfx SFX_RECOVER
	wait_script 48
	play_sfx SFX_BIG_YOSHI
	script_end

AudioScript_WinNewLevel:
	play_music MUSIC_WILD_VICTORY
	wait_script 40
	play_sfx SFX_EXP_BAR
	wait_sfx
	play_sfx SFX_EXP_BAR_FULL
	wait_sfx
	wait_script 40
	play_sfx SFX_DEX_FANFARE_50_79
	wait_sfx
	fade MUSIC_ROUTE_53, 4
	script_end
AudioScript_ChaosIntro:
	play_sfx SFX_BLINK_E8
	wait_script 40
	play_sfx SFX_BLINK_EC
	wait_script 40
	play_sfx SFX_JUMP
	wait_script 60
	play_sfx SFX_DESCEND
	wait_sfx
	wait_script 20
	play_sfx SFX_GAME_FREAK_LOGO_CHAOS
	wait_sfx

	wait_script 120
	play_sfx SFX_BURNOUT
	wait_script 160
	play_sfx SFX_SWEET_KISS
	wait_script 80
	play_sfx SFX_FALL
	wait_sfx
	wait_script 40
	play_sfx SFX_JUMP
	wait_sfx
	wait_script 20
	play_sfx SFX_STOP_IN_MIDAIR
	wait_script 120
	play_sfx SFX_DASH
	wait_sfx

	play_music MUSIC_CHAOS_INTRO__SRB_THEME
	wait_script 241
	wait_script 241
	wait_script 241
	wait_script 241
	wait_script 83
	play_sfx SFX_SONIC_BOOM
	wait_sfx
	wait_script 10
	play_sfx SFX_RBY_WHOOSH
	wait_sfx
	play_music MUSIC_TITLE
	script_end

AudioScript_HallOfFame:
	play_music MUSIC_HALL_OF_FAME
	hall_of_famer ANTLOG
	hall_of_famer TODBRUSH
	hall_of_famer KICLOUD
	hall_of_famer APPUCK
	hall_of_famer ILLUSIRO
	hall_of_famer SANDSCOUR
	wait_script 241
	wait_script 64
	play_music MUSIC_NONE
	play_sfx SFX_DEX_FANFARE_230_PLUS
	wait_sfx
	wait_script 48
	wait_script 241
	play_music MUSIC_CREDITS
	script_end

AudioScript_Evo1:	evolution_script            RATICATE, RAVERMIN
AudioScript_Evo2:	evolution_script            FEAROW, TEAROW
AudioScript_Evo3:	evolution_script            ARBOK, NOHTYP
AudioScript_Evo4:	evolution_script            SANDSLASH, SANDSCOUR
AudioScript_Evo5:	evolution_script            VENOMOTH, VENOKNIGHT
AudioScript_Evo6:	evolution_script            DUGTRIO, DUGQUINTET
AudioScript_Evo7:	trade_evo_script TOUFENSE,  GOLDUCK, EMPEDUCK
AudioScript_Evo8:	trade_evo_script RAKUKI,    PRIMEAPE, ALPHAPE
AudioScript_Evo9:	stone_evo_script            WEEPINBELL, BELMITT
AudioScript_Evo10:	stone_evo_script            TENTACRUEL, TENTACRIME
AudioScript_Evo11:	stone_evo_script            FARFETCH_D, MADAME
AudioScript_Evo12:	stone_evo_script            DEWGONG, LIODEW
AudioScript_Evo13:	stone_evo_script            SHELLDER, TURBANN
AudioScript_Evo14:	stone_evo_script            HYPNO, ALREM
AudioScript_Evo15:	evolution_script            KINGLER, PINCHLER
AudioScript_Evo16:	evolution_script            MAROWAK, POUCHENT
AudioScript_Evo17:	evolution_script            WEEZING, CHOAKING
AudioScript_Evo18:	stone_evo_script            STARMIE, STARELLO
AudioScript_Evo19:	stone_evo_script            JYNX, MURPHELT
AudioScript_Evo20:	trade_evo_script APPUCK,    PINSIR, PLUX
AudioScript_Evo21:	stone_evo_script            MAGIKARP, MOUNDIVER
AudioScript_Evo22:	evolution_script            DITTO, LYKWYSE
AudioScript_Evo23:	evolution_script            EEVEE, WHISPEON
AudioScript_Evo24:	evolution_script            EEVEE, ASSEMBLEON
AudioScript_Evo25:	stone_evo_script            PORYGON, PORYSPHIA
AudioScript_Evo26:	stone_evo_script            OMASTAR, OMANOVA
AudioScript_Evo27:	trade_evo_script KICLOUD,   KABUTOPS, KABOULDER
AudioScript_Evo28:	evolution_script            SNORLAX, RECLINAX
AudioScript_Evo29:	stone_evo_script            DRAGONAIR, DRAGONISCE
AudioScript_Evo30:	evolution_script            FURRET, COATRET
AudioScript_Evo31:	evolution_script            NOCTOWL, NOCTGLIDE
AudioScript_Evo32:	evolution_script            LEDIAN, LEDIURY
AudioScript_Evo33:	evolution_script            ARIADOS, TIERACNID
AudioScript_Evo34:	trade_evo_script TIARANT,   SUNFLORA, SUNTHESIA
AudioScript_Evo35:	stone_evo_script            QUAGSIRE, QUAGAMI
AudioScript_Evo36:	stone_evo_script            QWILFISH, NUMPUFF
AudioScript_Evo37:	evolution_script            SHUCKLE, SHUVEL
AudioScript_Evo38:	evolution_script            HOUNDOOM, HOUNDREAD
AudioScript_Evo39:	evolution_script            ORKID, SYNTIQUE
AudioScript_Evo40:	evolution_script            SYNTIQUE, PHOTORDEN
AudioScript_Evo41:	evolution_script            FLAMBEAR, VOLBEAR
AudioScript_Evo42:	evolution_script            VOLBEAR, DYNABEAR
AudioScript_Evo43:	evolution_script            CRUZ, AQUACENT
AudioScript_Evo44:	evolution_script            AQUACENT, AQUARIA
AudioScript_Evo45:	evolution_script            CROVEN, ASTROVEN
AudioScript_Evo46:	evolution_script            SNOBURI, SNOBUSTER
AudioScript_Evo47:	stone_evo_script            SNOBUSTER, ARBUGS
AudioScript_Evo48:	stone_evo_script            SNOBUSTER, WILLOFUDD
AudioScript_Evo49:	stone_evo_script            TRIFOX, VULPIX
AudioScript_Evo50:	evolution_script            BURGELA, TANGELA
AudioScript_Evo51:	evolution_script            MIGHTALEX, KANGASKHAN
AudioScript_Evo52:	evolution_script            QUAILTER, STAFFBIRD
AudioScript_Evo53:	evolution_script            ORSCHUL, GOLDEEN
AudioScript_Evo54:	evolution_script            MOLAMBINO, ANGORE
AudioScript_Evo55:	stone_evo_script            ANGORE, GROTESS
AudioScript_Evo56:	evolution_script            PARABUD, PARAS
AudioScript_Evo57:	evolution_script            METABEAK, SKARMORY
AudioScript_Evo58:	evolution_script            METABEAK, CRANEST
AudioScript_Evo59:	evolution_script            DODAERIE, DODUO
AudioScript_Evo60:	evolution_script            SIAMAIS, GIRAFARIG
AudioScript_Evo61:	evolution_script            COINTEN, MEOWTH
AudioScript_Evo62:	evolution_script            GATOLL, BELLBOYANT
AudioScript_Evo63:	stone_evo_script            UNILIGHT, ALIDUSK
AudioScript_Evo64:	evolution_script            FOLICORN, PONYTA
AudioScript_Evo65:	evolution_script            SMUJJ, GRIMER
AudioScript_Evo66:	stone_evo_script            TIRUFF, GROWLITHE
AudioScript_Evo67:	evolution_script            MILCALF, MILTANK
AudioScript_Evo68:	evolution_script            DELFLAP, DELIBIRD
AudioScript_Evo69:	stone_evo_script            KOTORA, RAITORA
AudioScript_Evo70:	evolution_script            KURSTRAW, PANGSHI
AudioScript_Evo71:	trade_evo_script SAILWING,  MOSCARF, FLIDER
AudioScript_Evo72:	evolution_script            WOLFMAN, WARWOLF
AudioScript_Evo73:	evolution_script            FOSSLIX, ONIX
AudioScript_Evo74:	evolution_script            WINDKITT, TODBRUSH
AudioScript_Evo75:	evolution_script            GRIFLET, CIRRIFFON
AudioScript_Evo76:	evolution_script            CIRRIFFON, COSMOREAS
AudioScript_Evo77:	evolution_script            LAROON, CADITIN
AudioScript_Evo78:	trade_evo_script SILVEALTH, CADITIN, CHRYSALTY
AudioScript_Evo79:	evolution_script            ARLURRY, MAGENZA
AudioScript_Evo80:	evolution_script            MAGENZA, ILLUSIRO
