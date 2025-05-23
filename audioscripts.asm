MACRO slow_cry
	modify_cry SLOW_PITCH, SLOW_SPEED, \1
ENDM

MACRO growl_cry
	modify_cry 0, GROWL_SPEED, \1
ENDM

MACRO roar_cry
	modify_cry 0, ROAR_SPEED, \1
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
	ld [hl], a
	ld hl, wAudioScript_Pointer
	ld a, [wAudioScript_Stack]
	ld [hli], a
	ld c, a
	ld a, [wAudioScript_Stack + 1]
	ld [hl], a
	or c
	jr z, .not_ret
	xor a
	ld [wAudioScript_Stack], a
	ld [wAudioScript_Stack + 1], a
	ld c, a
	jp UpdateAudioScript.Loop
.not_ret
	ld [wAudioScript_Cue], a
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
	dw AudioScript_BreakExp
	dw AudioScript_ModifyCry
	dw AudioScript_MusicOff
	dw AudioScript_MusicOn
	dw AudioScript_WaitSFX
	dw AudioScript_SkipFrames
	dw AudioScript_Fade
	dw AudioScript_PlayMusic
	dw AudioScript_PlayCry
	dw AudioScript_PlaySfx
	dw AudioScript_ExtendScript
	dw AudioScript_CallScript
	dw AudioScript_NewScript
	dw AudioScript_OffsetJump
	dw AudioScript_Loop
	dw AudioScript_Break

AudioScript_None:
	ret

AudioScript_BreakExp:
	jp TerminateExpBarSound

AudioScript_ModifyCry:
	ld de, wCryModifier
	call GetAudioScriptByte
	ld [de], a
	inc de
	call GetAudioScriptByte
	ld [de], a
	inc de
	call GetAudioScriptByte
	ld [de], a
	inc de
	call GetAudioScriptByte
	ld [de], a
	call AudioScript_GetSoundID
	dec de
	jp PlayModifiedCry

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

AudioScript_CallScript:
	call GetAudioScriptByte
	ld e, a
	call GetAudioScriptByte
	ld d, a
	call AudioScript_ExtendScript
	push de
	ld hl, wAudioScript_Pointer
	ld de, wAudioScript_Stack
	ld a, [hli]
	add 2
	ld [de], a
	inc de
	ld a, [hl]
	adc 0
	ld [de], a
	pop de
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
	dw AnicomTest_SFX
	dw AudioScript_IntoRoute49
	dw AudioScript_PhillipsHouseCutscene
	dw AudioScript_OutOfPhillipsHouse
	dw AudioScript_Route49LedybaCatch
	dw AudioScript_IntoCottageTown
	dw AudioScript_EnterHome
	dw AudioScript_ExitHome
	dw AudioScript_JamesFight
	dw AudioScript_EquineTrioReleased
	dw AudioScript_AssemblePokemon

AudioScript_IntoRoute49:
	fade MUSIC_ROUTE_1, 8
	script_end

AudioScript_PhillipsHouseCutscene:
	play_sfx SFX_ENTER_DOOR
	wait_script 10
	music_off
	wait_script 3
	music_on
	fade MUSIC_HOUSE_ENROUTE, 8
	wait_script 2
	play_sfx SFX_EMOTE
	wait_script 15
	wait_script 2
	wait_script 20 ; Ah! TEMPO!
	wait_script 20 ; Welcome!
	; a
	script_call AudioScript_ReadText
	play_cry EEVEE
	wait_sfx
	wait_script 2
	wait_script 16
	wait_script 16
	wait_script 2
	wait_script 20 ; I have an old item
	wait_script 20 ; for PROF.LARCH to
	; a
	script_call AudioScript_ReadText
	wait_script 20 ; look over.
	; a
	script_call AudioScript_ReadText
	wait_script 20 ; PHIL gave TEMPO
	wait_script 20 ; an OLD AMBER!
	play_sfx SFX_KEY_ITEM
	wait_sfx
	; a
	script_call AudioScript_ReadText
	wait_script 20 ; There's a few other
	wait_script 20 ; items that've been
	; a
	script_call AudioScript_ReadText
	wait_script 20 ; resurfaced, but
	; a
	script_call AudioScript_ReadText
	wait_script 20 ; this sample should
	wait_script 20 ; plenty do.
	; a
	script_call AudioScript_ReadText
	wait_script 20 ; PROF.LARCH should
	wait_script 20 ; know where to re-
	; a
	script_call AudioScript_ReadText
	wait_script 20 ; vive this fossil.
	; a
	script_call AudioScript_ReadText
	wait_script 20 ; Thanks for your
	wait_script 20 ; company, TEMPO.
	; a
	script_call AudioScript_ReadText
	wait_script 20 ; In return, let's
	wait_script 20 ; rest your POKeMON!
	; a
	script_call AudioScript_ReadText
	wait_script 4
	wait_script 4
	play_music MUSIC_NON_PC_HEAL
	wait_script 159
	wait_script 4
	wait_script 4
	play_music MUSIC_HOUSE_ENROUTE
	wait_script 20 ; You'd best be
	wait_script 20 ; going TEMPO.
	script_call AudioScript_ReadText
	wait_script 20 ; Break a leg!
	wait_script 15
	play_sfx SFX_SHOCK_EMOTE
	wait_script 15
	wait_script 16
	wait_script 16
	wait_script 16
	play_cry EEVEE
	wait_sfx
	wait_script 20 ; EEVEE gave you a
	wait_script 20 ; POKeDEX!
	play_sfx SFX_DEX_FANFARE_80_109
	wait_sfx
	play_cry EEVEE
	wait_script 16
	wait_script 16
	wait_script 16
	script_end

AudioScript_OutOfPhillipsHouse:
	play_sfx SFX_EXIT_BUILDING
	wait_script 10
	music_off
	wait_script 3
	music_on
	fade MUSIC_ROUTE_1, 8
	script_end

AudioScript_Route49LedybaCatch:
	play_music MUSIC_KANTO_WILD_BATTLE
	wait_script 122
	wait_script 122
	play_cry RATTATA
	wait_sfx
	wait_script 20 ; Wild RATTATA
	wait_script 20 ; appeared!
	; a
	script_call AudioScript_ReadText

	wait_script 12
	wait_script 20 ; GO! SQUIRTLE!
	script_call BattleAnim_SendOutMon_Normal
	play_cry SQUIRTLE
	wait_sfx

	wait_script 2
	; a
	script_call AudioScript_ReadText
	; down
	wait_script 15
	; a (tackle)
	script_call AudioScript_ReadText

	wait_script 20 ; SQUIRTLE
	wait_script 20 ; used TACKLE!
	; a
	wait_script 15
	script_call BattleAnim_Tackle
	wait_sfx
	play_sfx SFX_DAMAGE
	script_call BattleAnim_EnemyDamage
	wait_script 40

	wait_script 20 ; Enemy RATTATA
	wait_script 20 ; used TACKLE!
	; a
	wait_script 15
	script_call BattleAnim_Tackle
	wait_sfx
	play_sfx SFX_DAMAGE
	script_call BattleAnim_PlayerDamage
	wait_script 10
	; a (tackle)
	script_call AudioScript_ReadText

	wait_script 20 ; SQUIRTLE
	wait_script 20 ; used TACKLE!
	; a
	wait_script 15
	script_call BattleAnim_Tackle
	wait_sfx
	play_sfx SFX_DAMAGE
	script_call BattleAnim_EnemyDamage
	wait_script 40

	wait_script 20 ; Enemy RATTATA
	wait_script 20 ; used TACKLE!
	; a
	wait_script 15
	script_call BattleAnim_Tackle
	wait_sfx
	play_sfx SFX_DAMAGE
	script_call BattleAnim_PlayerDamage
	wait_script 10
	; down
	wait_script 15
	; a (pack)
	script_call AudioScript_ReadText
	wait_script 2
	; right
	wait_script 15
	play_sfx SFX_SWITCH_POCKETS
	wait_sfx
	; a (select)
	script_call AudioScript_ReadText
	; a (use)
	script_call AudioScript_ReadText
	wait_script 2

	wait_script 20 ; TEMPO used the
	wait_script 20 ; POKe BALL!
	script_call BattleAnim_ThrowPokeBall
	script_call BattleAnim_ThrowPokeBall_Shake3
	wait_script 20 ; Gotcha! RATTATA
	wait_script 20 ; was caught!
	wait_script 15
	play_music MUSIC_NONE
	play_sfx SFX_GET_EGG_FROM_DAY_CARE_MAN
	wait_sfx

	play_music MUSIC_HR_CATCH_VICTORY
	wait_script 20 ; RATTATA's data was
	wait_script 20 ; newly recorded in
	script_call AudioScript_ReadText
	wait_script 20 ; the POKeDEX.
	wait_script 15
	play_sfx SFX_SLOT_MACHINE_START
	wait_sfx
	wait_script 40
	play_cry RATTATA
	wait_sfx
	wait_script 15
	wait_script 15
	wait_script 2
	wait_script 20 ; Give a nickname to
	wait_script 20 ; the RATTATA?
	; b - no
	script_call AudioScript_ReadText
	wait_script 2
	fade MUSIC_ROUTE_1, 4
	script_end

AudioScript_IntoCottageTown:
	fade MUSIC_PALLET_TOWN, 8
	script_end

AudioScript_EnterHome:
	play_sfx SFX_ENTER_DOOR
	offset_jump 8

AudioScript_ExitHome:
	play_sfx SFX_EXIT_BUILDING
	wait_script 10
	music_off
	wait_script 3
	music_on
	wait_script 3
	script_end

AudioScript_JamesFight:
	play_music MUSIC_KANTO_GYM_BATTLE
	wait_script 122
	wait_script 122
	play_sfx SFX_SHINE
	wait_sfx
	wait_script 20 ; LEADER JAMES
	wait_script 20 ; started a battle!
	; a
	script_call AudioScript_ReadText
	wait_script 16
	wait_script 20 ; LEADER JAMES
	wait_script 20 ; sent out
	; a
	script_call AudioScript_ReadText
	wait_script 20 ; DROWZEE!
	script_call BattleAnim_SendOutMon_Normal
	play_cry DROWZEE
	wait_sfx
	; a
	script_call AudioScript_ReadText

	wait_script 12
	wait_script 20 ; GO! SQUIRTLE!
	script_call BattleAnim_SendOutMon_Normal
	play_cry SQUIRTLE
	wait_sfx
	wait_script 2
	; a (fight)
	script_call AudioScript_ReadText
	; down
	wait_script 15
	; a (select)
	script_call AudioScript_ReadText

	wait_script 20 ; SQUIRTLE
	wait_script 20 ; used BITE!
	wait_script 15
	script_call BattleAnim_Bite
	wait_sfx
	play_sfx SFX_SUPER_EFFECTIVE
	script_call BattleAnim_EnemyDamage
	wait_sfx
	wait_script 76

	wait_script 20 ; It's highly
	wait_script 20 ; effective!
	; a
	script_call AudioScript_ReadText

	wait_script 20 ; Enemy DROWZEE
	wait_script 20 ; used HYPNOSIS!
	; a
	script_call AudioScript_ReadText
	wait_script 15

	wait_script 20 ; Enemy DROWZEE's
	wait_script 20 ; attack missed
	wait_script 2
	; a (fight)
	script_call AudioScript_ReadText
	; a (fight)
	script_call AudioScript_ReadText

	wait_script 20 ; SQUIRTLE
	wait_script 20 ; used BITE!
	wait_script 15
	script_call BattleAnim_Bite
	wait_sfx
	play_sfx SFX_SUPER_EFFECTIVE
	script_call BattleAnim_EnemyDamage
	wait_sfx
	wait_script 20

	wait_script 20 ; It's highly
	wait_script 20 ; effective!
	; a
	script_call AudioScript_ReadText

	play_sfx SFX_KINESIS
	wait_sfx
	play_sfx SFX_FAINT
	wait_sfx
	wait_script 20 ; Enemy DROWZEE
	wait_script 20 ; fainted!
	; a
	script_call AudioScript_ReadText

	wait_script 20 ; SQUIRTLE gained
	wait_script 20 ; 174 EXP. points!
	play_sfx SFX_EXP_BAR
	wait_script 16
	wait_script 19
	break_exp
	wait_script 20 ; LEADER JAMES
	wait_script 20 ; will use
	; a
	script_call AudioScript_ReadText
	wait_script 20 ; SWEOTE.
	; a
	script_call AudioScript_ReadText
	wait_script 20 ; Switch POKeMON?
	; b
	script_call AudioScript_ReadText
	wait_script 20 ; LEADER JAMES
	wait_script 20 ; sent out
	; a
	script_call AudioScript_ReadText
	wait_script 20 ; SWEOTE!
	script_call BattleAnim_SendOutMon_Normal
	play_cry SWEOTE
	wait_sfx
	wait_script 2
	; a (fight)
	script_call AudioScript_ReadText
	; a (select)
	script_call AudioScript_ReadText

	wait_script 20 ; SQUIRTLE
	wait_script 20 ; used BITE!
	wait_script 15
	script_call BattleAnim_Bite
	wait_sfx
	play_sfx SFX_SUPER_EFFECTIVE
	script_call BattleAnim_EnemyDamage
	wait_sfx
	wait_script 82

	wait_script 20 ; It's highly
	wait_script 20 ; effective!
	; a
	script_call AudioScript_ReadText

	wait_script 20 ; Enemy SWEOTE
	wait_script 20 ; used THUNDERSHOCK!
	wait_script 15
	script_call BattleAnim_Thundershock
	wait_sfx
	play_sfx SFX_SUPER_EFFECTIVE
	script_call BattleAnim_EnemyDamage
	wait_sfx
	; HP bar is 48 pixels long
	; proportional HP is half wait time
	wait_script 84
	wait_script 20 ; A critical hit!
	; a
	script_call AudioScript_ReadText

	wait_script 20 ; It's highly
	wait_script 20 ; effective!
	; a
	script_call AudioScript_ReadText
	script_call BattleAnim_Confused
	wait_script 20 ; SQUIRTLE became
	wait_script 20 ; confused!
	; a
	script_call AudioScript_ReadText
	script_call BattleAnim_Par
	wait_script 20 ; SQUIRTLE was
	wait_script 20 ; paralyzed! it
	; a
	script_call AudioScript_ReadText
	wait_script 20 ; might not attack!
	; a
	script_call AudioScript_ReadText
	script_end

AudioScript_EquineTrioReleased:
	play_music MUSIC_NONE
	wait_script 56
	play_cry GOBELDORL
	wait_script 112
	play_cry CENTIR
	wait_script 112
	play_cry DRISCORINA
	script_loop 3
	wait_sfx
	play_sfx SFX_WARP_FROM
	break_loop
	wait_sfx
	wait_script 40
	play_music MUSIC_GOLEM_PALACE
	script_end

AudioScript_AssemblePokemon:
	script_call AudioScript_ReadText
	wait_script 20 ; A tool box!  You can
	wait_script 20 ; make your very own
	script_call AudioScript_ReadText
	wait_script 20 ; POKeMON!
	script_call AudioScript_ReadText

	wait_script 20 ; Want to assemble a
	wait_script 20 ; POKeMON?
	wait_script 2 ; yes/no
	; yes
	script_call AudioScript_ReadText
	wait_script 20 ; Assembling...
	wait_script 160

	wait_script 20 ; Congrats!  You've
	wait_script 20 ; made a new friend!
	wait_script 15
	play_cry KURSTRAW
	wait_sfx

	wait_script 20 ; It's a KURSTRAW!
	play_sfx SFX_LEVEL_UP
	wait_sfx
	script_call AudioScript_ReadText
	script_end

AudioScript_ReadText:
	wait_script 15
	play_sfx SFX_READ_TEXT
	wait_sfx
	script_end

BattleAnim_0:
BattleAnim_MirrorMove:
	script_end

BattleAnim_SweetScent2:
	wait_script 2
	wait_script 64
	wait_script 128
	script_end

BattleAnim_ThrowAndMiss:
	play_sfx SFX_THROW_BALL
	wait_script 52
	play_sfx SFX_BALL_POOF
	wait_script 16
	script_end

BattleAnim_ThrowPokeBall:
	; any other ball
	play_sfx SFX_THROW_BALL
	wait_script 36
	wait_script 16
	play_sfx SFX_BALL_POOF
	wait_script 16
	wait_script 8
	wait_script 16
	play_sfx SFX_BALL_CLOSE
	wait_script 32
	play_sfx SFX_BALL_BOUNCE
	wait_script 32
	wait_script 32
	wait_script 32
	wait_script 8
	wait_script 48
	script_end

BattleAnim_ThrowPokeBall_TheTrainerBlockedTheBall:
	play_sfx SFX_THROW_BALL
	wait_script 20
	wait_script 32
	script_end

BattleAnim_ThrowPokeBall_MasterBall:
	play_sfx SFX_THROW_BALL
	wait_script 36
	wait_script 16
	play_sfx SFX_BALL_POOF
	wait_script 24
	play_sfx SFX_MASTER_BALL
	wait_script 64
	wait_script 8
	wait_script 16
	play_sfx SFX_BALL_CLOSE
	wait_script 32
	play_sfx SFX_BALL_BOUNCE
	wait_script 32
	wait_script 32
	wait_script 32
	wait_script 8
	wait_script 48

BattleAnim_ThrowPokeBall_Shake3:
	play_sfx SFX_BALL_SHAKE
	wait_script 48

BattleAnim_ThrowPokeBall_Shake2:
	play_sfx SFX_BALL_SHAKE
	wait_script 48

BattleAnim_ThrowPokeBall_Shake1:
	play_sfx SFX_BALL_SHAKE
	wait_script 48
	script_end

BattleAnim_ThrowPokeBall_BreakFree:
	play_sfx SFX_BALL_POOF
	wait_script 2
	wait_script 32
	script_end

BattleAnim_SendOutMon:
	wait_script 6
	play_sfx SFX_BALL_POOF
	wait_script 128
	wait_script 4
	wait_script 1
	wait_script 5
	wait_script 1
	script_end

BattleAnim_SendOutMon_Unknown:
	wait_script 6
	wait_script 1
	wait_script 4
	play_sfx SFX_BALL_POOF
	wait_script 96
	wait_script 1
	wait_script 5
	wait_script 1
	script_end

BattleAnim_SendOutMon_Shiny:
	play_sfx SFX_MOONLIGHT
	wait_script 4
	wait_script 4
	wait_script 4
	wait_script 4
	wait_script 4
	wait_script 4
	wait_script 4
	wait_script 32
	script_end

BattleAnim_SendOutMon_Normal:
	play_sfx SFX_BALL_POOF
	wait_script 4
	wait_script 32
	script_end

BattleAnim_ReturnMon:
	play_sfx SFX_BALL_POOF
	wait_script 32
	script_end

BattleAnim_Confused:
	play_sfx SFX_KINESIS
	wait_script 96
	script_end

BattleAnim_Slp:
	play_sfx SFX_TAIL_WHIP
	script_loop 3
	wait_script 40
	break_loop
	wait_script 32
	script_end

BattleAnim_Brn:
	script_loop 3
	play_sfx SFX_BURN
	wait_script 4
	break_loop
	wait_script 6
	script_end

BattleAnim_Psn:
	play_sfx SFX_POISON
	wait_script 8
	play_sfx SFX_POISON
	wait_script 8
	script_end

BattleAnim_Sap:
	play_sfx SFX_WATER_GUN
	wait_script 6
	play_sfx SFX_WATER_GUN
	wait_script 6
	play_sfx SFX_WATER_GUN
	wait_script 16
	script_end

BattleAnim_Frz:
	play_sfx SFX_SHINE
	wait_script 16
	play_sfx SFX_SHINE
	wait_script 16
	script_end

BattleAnim_Par:
	play_sfx SFX_THUNDERSHOCK
	wait_script 128
	script_end

BattleAnim_InLove:
	play_sfx SFX_IN_LOVE
	wait_script 32
	play_sfx SFX_IN_LOVE
	wait_script 32
	script_end

BattleAnim_InSandstorm:
	wait_script 8
	wait_script 8
	script_loop 6
	play_sfx SFX_MENU
	wait_script 8
	break_loop
	wait_script 8
	script_end

BattleAnim_InNightmare:
	play_sfx SFX_BUBBLEBEAM
	wait_script 40
	script_end

BattleAnim_InWhirlpool:
	play_sfx SFX_SURF
	script_loop 6
	wait_script 6
	break_loop
	wait_script 1
	script_end

BattleAnim_HitConfusion:
	play_sfx SFX_POUND
	wait_script 16
	script_end

BattleAnim_Miss:
	script_end

BattleAnim_EnemyDamage:
	script_loop 3
	wait_script 5
	wait_script 5
	break_loop
	script_end

BattleAnim_EnemyStatDown:
	wait_script 6
	wait_script 40
	wait_script 1
	wait_script 4
	wait_script 1
	wait_script 1
	script_end

BattleAnim_PlayerStatDown:
	wait_script 6
	wait_script 40
	wait_script 1
	wait_script 4
	wait_script 1
	wait_script 1
	script_end

BattleAnim_PlayerDamage:
	wait_script 40
	script_end

BattleAnim_Wobble:
	wait_script 40
	script_end

BattleAnim_Shake:
	wait_script 40
	script_end

BattleAnim_Pound:
	play_sfx SFX_POUND
	wait_script 6
	wait_script 16
	script_end

BattleAnim_KarateChop:
	play_sfx SFX_KARATE_CHOP
	wait_script 6
	wait_script 6
	play_sfx SFX_KARATE_CHOP
	wait_script 6
	wait_script 6
	play_sfx SFX_KARATE_CHOP
	wait_script 6
	wait_script 16
	script_end

BattleAnim_Doubleslap:
	play_sfx SFX_DOUBLESLAP
	wait_script 6
	wait_script 8
	script_end

BattleAnim_CometPunch:
	play_sfx SFX_COMET_PUNCH
	wait_script 6
	wait_script 8
	script_end

BattleAnim_MegaPunch:
	wait_script 48
	script_loop 3
	play_sfx SFX_MEGA_PUNCH
	wait_script 6
	wait_script 6
	break_loop
	script_end

BattleAnim_Stomp:
	play_sfx SFX_STOMP
	wait_script 6
	wait_script 6
	play_sfx SFX_STOMP
	wait_script 6
	wait_script 6
	play_sfx SFX_STOMP
	wait_script 6
	wait_script 16
	script_end

BattleAnim_DoubleKick:
	play_sfx SFX_DOUBLE_KICK
	wait_script 6
	wait_script 8
	script_end

BattleAnim_JumpKick:
	play_sfx SFX_JUMP_KICK
	wait_script 24
	play_sfx SFX_DOUBLE_KICK
	wait_script 16
	script_end

BattleAnim_alternate:
	wait_script 8
	play_sfx SFX_DOUBLE_KICK
	wait_script 16
	script_end

BattleAnim_HiJumpKick:
	wait_script 32
	play_sfx SFX_JUMP_KICK
	wait_script 16
	play_sfx SFX_DOUBLE_KICK
	wait_script 16
	script_end

BattleAnim_RowdyHit:
	wait_script 16
	play_sfx SFX_DOUBLE_KICK
	wait_script 16
	script_end

BattleAnim_RollingKick:
	play_sfx SFX_DOUBLE_KICK
	wait_script 12
	wait_script 16
	script_end

BattleAnim_MegaKick:
	wait_script 67
	script_loop 3
	play_sfx SFX_MEGA_KICK
	wait_script 6
	wait_script 6
	break_loop
	script_end

BattleAnim_HyperFang:
	play_sfx SFX_BITE
	wait_script 6
	wait_script 16
	script_end

BattleAnim_SuperFang:
	wait_script 48
	script_loop 3
	play_sfx SFX_BITE
	wait_script 6
	wait_script 6
	break_loop
	script_end

BattleAnim_Ember:
	play_sfx SFX_EMBER
	wait_script 4
	play_sfx SFX_EMBER
	wait_script 4
	play_sfx SFX_EMBER
	wait_script 16
	play_sfx SFX_EMBER
	wait_script 32
	script_end

BattleAnim_FirePunch:
	play_sfx SFX_EMBER
	script_loop 4
	wait_script 4
	break_loop
	wait_script 16
	script_end

BattleAnim_FireSpin:
	script_loop 2
	play_sfx SFX_EMBER
	wait_script 2
	play_sfx SFX_EMBER
	wait_script 2
	play_sfx SFX_EMBER
	wait_script 2
	play_sfx SFX_EMBER
	wait_script 2
	break_loop
	wait_script 96
	script_end

BattleAnim_DragonRage:
	script_loop 16
	play_sfx SFX_EMBER
	wait_script 3
	break_loop
	wait_script 64
	script_end

BattleAnim_Flamethrower:
	play_sfx SFX_EMBER
	wait_script 2
	wait_script 2
	wait_script 2
	wait_script 2
	wait_script 2
	wait_script 2
	wait_script 2
	wait_script 16
	script_loop 6
	play_sfx SFX_EMBER
	wait_script 16
	break_loop
	wait_script 16
	script_end

BattleAnim_FireBlast:
	script_loop 10
	play_sfx SFX_EMBER
	wait_script 6
	break_loop
	script_loop 10
	play_sfx SFX_EMBER
	wait_script 8
	break_loop
	wait_script 2
	script_loop 2
	play_sfx SFX_EMBER
	wait_script 16
	break_loop
	wait_script 32
	script_end

BattleAnim_IcePunch:
	play_sfx SFX_SHINE
	wait_script 6
	play_sfx SFX_SHINE
	wait_script 6
	play_sfx SFX_SHINE
	wait_script 6
	play_sfx SFX_SHINE
	wait_script 6
	play_sfx SFX_SHINE
	wait_script 6
	play_sfx SFX_SHINE
	wait_script 32
	script_end

BattleAnim_IceBeam:
	script_loop 5
	play_sfx SFX_SHINE
	wait_script 4
	break_loop
	script_loop 15
	play_sfx SFX_SHINE
	wait_script 4
	break_loop
	wait_script 48
	play_sfx SFX_SHINE
	wait_script 8
	play_sfx SFX_SHINE
	wait_script 8
	script_end

BattleAnim_Blizzard:
	script_loop 3
	play_sfx SFX_SHINE
	wait_script 2
	play_sfx SFX_SHINE
	wait_script 2
	play_sfx SFX_SHINE
	wait_script 2
	break_loop
	wait_script 32
	wait_script 128
	play_sfx SFX_SHINE
	wait_script 8
	play_sfx SFX_SHINE
	wait_script 24
	script_end

BattleAnim_Bubble:
	play_sfx SFX_WATER_GUN
	wait_script 6
	play_sfx SFX_WATER_GUN
	wait_script 6
	play_sfx SFX_WATER_GUN
	wait_script 128
	wait_script 32
	script_end

BattleAnim_Bubblebeam:
	script_loop 3
	play_sfx SFX_BUBBLEBEAM
	wait_script 6
	play_sfx SFX_BUBBLEBEAM
	wait_script 6
	play_sfx SFX_BUBBLEBEAM
	wait_script 8
	break_loop
	wait_script 64
	wait_script 1
	wait_script 4
	wait_script 19
	wait_script 1
	wait_script 4
	wait_script 1
	wait_script 8
	script_end

BattleAnim_WaterGun:
	wait_script 4
	play_sfx SFX_WATER_GUN
	wait_script 8
	wait_script 8
	wait_script 24
	wait_script 8
	wait_script 8
	wait_script 32
	wait_script 1
	wait_script 4
	wait_script 1
	wait_script 16
	script_end

BattleAnim_HydroPump:
	wait_script 4
	play_sfx SFX_HYDRO_PUMP
	wait_script 8
	play_sfx SFX_HYDRO_PUMP
	wait_script 8
	play_sfx SFX_HYDRO_PUMP
	wait_script 8
	play_sfx SFX_HYDRO_PUMP
	wait_script 8
	play_sfx SFX_HYDRO_PUMP
	wait_script 8
	play_sfx SFX_HYDRO_PUMP
	wait_script 8
	play_sfx SFX_HYDRO_PUMP
	wait_script 32
	wait_script 1
	wait_script 4
	wait_script 1
	wait_script 16
	script_end

BattleAnim_Surf:
	script_loop 4
	play_sfx SFX_SURF
	wait_script 32
	break_loop
	wait_script 56
	script_end

BattleAnim_VineWhip:
	play_sfx SFX_VINE_WHIP
	wait_script 4
	play_sfx SFX_VINE_WHIP
	wait_script 4
	wait_script 4
	script_end

BattleAnim_LeechSeed:
	play_sfx SFX_VINE_WHIP
	wait_script 8
	play_sfx SFX_VINE_WHIP
	wait_script 8
	play_sfx SFX_VINE_WHIP
	wait_script 32
	play_sfx SFX_CHARGE
	wait_script 128
	script_end

BattleAnim_RazorLeaf:
	play_sfx SFX_VINE_WHIP
	wait_script 6
	wait_script 80
	play_sfx SFX_VINE_WHIP
	wait_script 2
	play_sfx SFX_VINE_WHIP
	wait_script 2
	play_sfx SFX_VINE_WHIP
	wait_script 2
	play_sfx SFX_VINE_WHIP
	wait_script 2
	play_sfx SFX_VINE_WHIP
	wait_script 2
	play_sfx SFX_VINE_WHIP
	wait_script 2
	play_sfx SFX_VINE_WHIP
	wait_script 2
	play_sfx SFX_VINE_WHIP
	wait_script 2
	play_sfx SFX_VINE_WHIP
	wait_script 2
	play_sfx SFX_VINE_WHIP
	wait_script 64
	script_end

BattleAnim_Solarbeam:
	; charge turn
	play_sfx SFX_CHARGE
	wait_script 104
	wait_script 64
	script_end

BattleAnim_Solarbeam_FireSolarBeam:
	play_sfx SFX_HYPER_BEAM
	wait_script 4
	play_sfx SFX_HYPER_BEAM
	wait_script 4
	play_sfx SFX_HYPER_BEAM
	wait_script 4
	play_sfx SFX_HYPER_BEAM
	wait_script 48
	script_end

BattleAnim_Thunderpunch:
	play_sfx SFX_THUNDER
	wait_script 64
	script_end

BattleAnim_Thundershock:
	wait_script 16
	play_sfx SFX_THUNDERSHOCK
	wait_script 96
	script_end

BattleAnim_Thunderbolt:
	wait_script 16
	play_sfx SFX_THUNDERSHOCK
	wait_script 64
	wait_script 64
	script_end

BattleAnim_ThunderWave:
	play_sfx SFX_THUNDERSHOCK
	wait_script 20
	wait_script 96
	script_end

BattleAnim_Thunder:
	play_sfx SFX_THUNDER
	wait_script 16
	play_sfx SFX_THUNDER
	wait_script 16
	play_sfx SFX_THUNDER
	wait_script 48
	script_end

BattleAnim_RazorWind:
	script_loop 3
	play_sfx SFX_RAZOR_WIND
	wait_script 4
	play_sfx SFX_RAZOR_WIND
	wait_script 4
	play_sfx SFX_RAZOR_WIND
	wait_script 4
	play_sfx SFX_RAZOR_WIND
	wait_script 4
	play_sfx SFX_RAZOR_WIND
	wait_script 4
	break_loop
	wait_script 24
	script_end

BattleAnim_Sonicboom_JP:
	script_loop 2
	play_sfx SFX_RAZOR_WIND
	wait_script 8
	play_sfx SFX_RAZOR_WIND
	wait_script 8
	play_sfx SFX_RAZOR_WIND
	wait_script 8
	break_loop
	wait_script 32
	wait_script 16
	script_end

BattleAnim_Gust:
BattleAnim_Sonicboom:
	script_loop 9
	play_sfx SFX_RAZOR_WIND
	wait_script 6
	break_loop
	wait_script 8
	wait_script 16
	script_end

BattleAnim_Selfdestruct1:
	play_sfx SFX_EGG_BOMB
	wait_script 5
	play_sfx SFX_EGG_BOMB
	wait_script 5
	play_sfx SFX_EGG_BOMB
	wait_script 5
	play_sfx SFX_EGG_BOMB
	wait_script 5
	play_sfx SFX_EGG_BOMB
	wait_script 16
	script_end

BattleAnim_Selfdestruct2:
	script_loop 2
	play_sfx SFX_EGG_BOMB
	wait_script 5
	play_sfx SFX_EGG_BOMB
	wait_script 5
	play_sfx SFX_EGG_BOMB
	wait_script 5
	play_sfx SFX_EGG_BOMB
	wait_script 5
	play_sfx SFX_EGG_BOMB
	wait_script 5
	break_loop
	wait_script 16
	script_end

BattleAnim_Explosion:
	play_sfx SFX_EGG_BOMB
	wait_script 5
	play_sfx SFX_EGG_BOMB
	wait_script 5
	play_sfx SFX_EGG_BOMB
	wait_script 5
	play_sfx SFX_EGG_BOMB
	wait_script 5
	play_sfx SFX_EGG_BOMB
	wait_script 16
	script_end

BattleAnim_Explosion2:
	script_loop 2
	play_sfx SFX_EGG_BOMB
	wait_script 5
	play_sfx SFX_EGG_BOMB
	wait_script 5
	play_sfx SFX_EGG_BOMB
	wait_script 5
	play_sfx SFX_EGG_BOMB
	wait_script 5
	play_sfx SFX_EGG_BOMB
	wait_script 5
	break_loop
	wait_script 16
	script_end

BattleAnim_Acid:
	script_loop 8
	play_sfx SFX_BUBBLEBEAM
	wait_script 5
	break_loop
	wait_script 64
	script_end

BattleAnim_RockThrow:
	play_sfx SFX_STRENGTH
	wait_script 2
	play_sfx SFX_STRENGTH
	wait_script 2
	play_sfx SFX_STRENGTH
	wait_script 2
	play_sfx SFX_STRENGTH
	wait_script 2
	play_sfx SFX_STRENGTH
	wait_script 96
	script_end

BattleAnim_RockSlide:
	script_loop 4
	play_sfx SFX_STRENGTH
	wait_script 4
	play_sfx SFX_STRENGTH
	wait_script 4
	play_sfx SFX_STRENGTH
	wait_script 4
	play_sfx SFX_STRENGTH
	wait_script 4
	play_sfx SFX_STRENGTH
	wait_script 16
	break_loop
	wait_script 96
	script_end

BattleAnim_Sing:
	play_sfx SFX_RBY_SING
	script_loop 4
	wait_script 8
	wait_script 8
	wait_script 8
	wait_script 8
	wait_script 8
	break_loop
	wait_script 64
	script_end

BattleAnim_Poisonpowder:
BattleAnim_SleepPowder:
BattleAnim_Spore:
BattleAnim_StunSpore:
BattleAnim_BaseSpore:
	script_loop 2
	play_sfx SFX_POWDER
	wait_script 4
	play_sfx SFX_POWDER
	wait_script 4
	play_sfx SFX_POWDER
	wait_script 4
	play_sfx SFX_POWDER
	wait_script 4
	play_sfx SFX_POWDER
	wait_script 4
	break_loop
	wait_script 96
	script_end

BattleAnim_HyperBeam:
	play_sfx SFX_HYPER_BEAM
	wait_script 4
	play_sfx SFX_HYPER_BEAM
	wait_script 4
	play_sfx SFX_HYPER_BEAM
	wait_script 4
	play_sfx SFX_HYPER_BEAM
	wait_script 48
	script_end

BattleAnim_AuroraBeam:
	wait_script 64
	play_sfx SFX_HYPER_BEAM
	wait_script 4
	play_sfx SFX_HYPER_BEAM
	wait_script 4
	play_sfx SFX_HYPER_BEAM
	wait_script 4
	play_sfx SFX_HYPER_BEAM
	wait_script 48
	wait_script 64
	script_end

BattleAnim_Vicegrip:
	play_sfx SFX_VICEGRIP
	wait_script 32
	script_end

BattleAnim_Scratch:
	play_sfx SFX_SCRATCH
	wait_script 32
	script_end

BattleAnim_FurySwipes:
	play_sfx SFX_SCRATCH
	play_sfx SFX_SCRATCH
	wait_script 32
	script_end

BattleAnim_Cut:
	play_sfx SFX_CUT
	wait_script 32
	script_end

BattleAnim_Slash:
	play_sfx SFX_CUT
	wait_script 32
	script_end

BattleAnim_Clamp:
	wait_script 16
	play_sfx SFX_BITE
	wait_script 32
	play_sfx SFX_BITE
	wait_script 16
	script_end

BattleAnim_Bite:
	wait_script 8
	play_sfx SFX_BITE
	wait_script 16
	play_sfx SFX_BITE
	wait_script 8
	script_end

BattleAnim_Teleport:
	wait_script 6
	wait_script 32
	wait_script 3
	wait_script 1
	wait_script 5
	wait_script 1
	play_sfx SFX_WARP_TO
	wait_script 64
	script_end

BattleAnim_Fly:
	play_sfx SFX_WING_ATTACK
	wait_script 32
BattleAnim_Fly_miss:
	wait_script 32
	script_end

BattleAnim_Fly_turn1:
	play_sfx SFX_WARP_TO
	wait_script 64
	script_end

BattleAnim_DoubleTeam:
	wait_script 6
	play_sfx SFX_PSYBEAM
	wait_script 96
	wait_script 24
	wait_script 1
	wait_script 5
	wait_script 1
	script_end

BattleAnim_Recover:
	wait_script 6
	play_sfx SFX_RECOVER
	wait_script 4
	play_sfx SFX_RECOVER
	wait_script 60
	wait_script 1
	wait_script 5
	wait_script 1
	script_end

BattleAnim_Absorb:
	script_loop 5
	play_sfx SFX_WATER_GUN
	wait_script 6
	play_sfx SFX_WATER_GUN
	wait_script 6
	play_sfx SFX_WATER_GUN
	wait_script 6
	break_loop
	wait_script 32
	script_end

BattleAnim_MegaDrain:
	wait_script 6
	script_loop 7
	play_sfx SFX_WATER_GUN
	wait_script 6
	play_sfx SFX_WATER_GUN
	wait_script 6
	play_sfx SFX_WATER_GUN
	wait_script 6
	break_loop
	wait_script 32
	wait_script 1
	wait_script 5
	wait_script 1
	script_end

BattleAnim_EggBomb:
	play_sfx SFX_SWITCH_POKEMON
	wait_script 128
	play_sfx SFX_EGG_ROLL
	wait_script 48
	play_sfx SFX_EGG_ROLL
	wait_script 24
	play_sfx SFX_EGG_ROLL
	wait_script 24
	play_sfx SFX_EGG_BOMB
	wait_script 8
	play_sfx SFX_EGG_BOMB
	wait_script 8
	play_sfx SFX_EGG_BOMB
	wait_script 24
	script_end

BattleAnim_Softboiled:
	wait_script 6
	play_sfx SFX_SWITCH_POKEMON
	wait_script 128
	wait_script 16
	play_sfx SFX_METRONOME
	script_loop 8
	wait_script 8
	break_loop
	wait_script 128
	wait_script 1
	wait_script 5
	wait_script 1
	script_end

BattleAnim_FocusEnergy:
	wait_script 6
	script_loop 3
	play_sfx SFX_SWORDS_DANCE
	wait_script 2
	wait_script 2
	wait_script 2
	wait_script 2
	wait_script 2
	wait_script 2
	wait_script 2
	break_loop
	wait_script 8
	wait_script 1
	wait_script 5
	wait_script 1
	script_end

BattleAnim_Bide:
	wait_script 6
	play_sfx SFX_ESCAPE_ROPE
	wait_script 72
	wait_script 1
	wait_script 5
	wait_script 1
	script_end

BattleAnim_Bind:
	play_sfx SFX_BIND
	wait_script 8
	wait_script 8
	wait_script 64
	play_sfx SFX_BIND
	wait_script 96
	script_end

BattleAnim_Wrap:
	play_sfx SFX_BIND
	wait_script 8
	wait_script 8
	wait_script 64
	play_sfx SFX_BIND
	wait_script 96
	script_end

BattleAnim_Confusion:
	wait_script 4
	play_sfx SFX_PSYCHIC
	wait_script 128
	wait_script 1
	wait_script 4
	wait_script 1
	script_end

BattleAnim_Constrict:
	play_sfx SFX_BIND
	wait_script 8
	wait_script 8
	wait_script 8
	wait_script 64
	script_end

BattleAnim_Earthquake:
	script_loop 4
	play_sfx SFX_EMBER
	wait_script 24
	break_loop
	script_end

BattleAnim_Fissure:
	script_loop 4
	play_sfx SFX_EMBER
	wait_script 24
	break_loop
	script_end

BattleAnim_Growl:
;	modify_cry $0000, $00c0, 
	script_loop 3
	wait_script 16
	break_loop
	wait_script 9
	wait_script 8
	wait_script 64
	wait_script 1
	wait_script 5
	wait_script 8
	script_end

BattleAnim_Roar1:
;	modify_cry $0000, $0040, 
	script_loop 3
	wait_script 16
	break_loop
	wait_script 16
	script_end

BattleAnim_Roar2:
;	modify_cry $0000, $0040, 
	script_loop 3
	wait_script 16
	break_loop
	wait_script 16
	wait_script 64
	script_end

BattleAnim_Supersonic:
	script_loop 10
	play_sfx SFX_SUPERSONIC
	wait_script 4
	break_loop
	wait_script 64
	script_end

BattleAnim_Screech:
	play_sfx SFX_SCREECH
	script_loop 2
	wait_script 2
	break_loop
	wait_script 64
	script_end

BattleAnim_ConfuseRay:
	script_loop 8
	play_sfx SFX_WHIRLWIND
	wait_script 16
	break_loop
	wait_script 32
	script_end

BattleAnim_Leer:
	play_sfx SFX_LEER
	wait_script 16
	script_end

BattleAnim_Reflect:
	play_sfx SFX_SHINE
	wait_script 24
	play_sfx SFX_SHINE
	wait_script 64
	script_end

BattleAnim_LightScreen:
	play_sfx SFX_FLASH
	wait_script 4
	wait_script 4
	wait_script 4
	wait_script 4
	wait_script 4
	wait_script 4
	wait_script 4
	wait_script 4
	wait_script 64
	script_end

BattleAnim_Amnesia:
	play_sfx SFX_AMNESIA
	wait_script 16
	play_sfx SFX_AMNESIA
	wait_script 16
	play_sfx SFX_AMNESIA
	wait_script 64
	script_end

BattleAnim_DizzyPunch:
	play_sfx SFX_MEGA_PUNCH
	wait_script 16
	play_sfx SFX_KINESIS
	wait_script 96
	script_end

BattleAnim_Rest:
	play_sfx SFX_TAIL_WHIP
	script_loop 3
	wait_script 40
	break_loop
	wait_script 32
	script_end

BattleAnim_AcidArmor:
	wait_script 6
	play_sfx SFX_MEGA_PUNCH
	wait_script 64
	wait_script 1
	wait_script 5
	wait_script 1
	script_end

BattleAnim_Splash:
	play_sfx SFX_VICEGRIP
	wait_script 6
	wait_script 96
	wait_script 1
	wait_script 5
	wait_script 1
	script_end

BattleAnim_Dig:
	wait_script 6
	script_loop 6
	play_sfx SFX_RAZOR_WIND
	wait_script 16
	break_loop
	wait_script 32
	wait_script 8
	wait_script 1
	wait_script 5
	wait_script 1
	script_end

BattleAnim_Dig_hit:
	play_sfx SFX_MEGA_PUNCH
	wait_script 32
BattleAnim_Dig_fail:
	wait_script 32
	script_end

BattleAnim_SandAttack:
	script_loop 8
	play_sfx SFX_MENU
	wait_script 4
	break_loop
	wait_script 32
	script_end

BattleAnim_StringShot:
	play_sfx SFX_MENU
	wait_script 4
	play_sfx SFX_MENU
	wait_script 4
	play_sfx SFX_MENU
	wait_script 4
	play_sfx SFX_MENU
	wait_script 4
	play_sfx SFX_MENU
	wait_script 4
	play_sfx SFX_MENU
	wait_script 64
	script_end

BattleAnim_Headbutt:
	wait_script 32
	wait_script 6
	wait_script 4
	play_sfx SFX_HEADBUTT
	wait_script 8
	wait_script 1
	wait_script 5
	wait_script 1
	script_end

BattleAnim_Tackle:
	wait_script 6
	wait_script 4
	play_sfx SFX_TACKLE
	wait_script 8
	wait_script 1
	wait_script 5
	wait_script 1
	script_end

BattleAnim_BodySlam:
	wait_script 6
	wait_script 32
	wait_script 4
	wait_script 3
	play_sfx SFX_TACKLE
	wait_script 6
	play_sfx SFX_TACKLE
	wait_script 3
	wait_script 1
	wait_script 5
	wait_script 1
	script_end

BattleAnim_TakeDown:
	wait_script 6
	wait_script 3
	play_sfx SFX_TACKLE
	wait_script 6
	play_sfx SFX_TACKLE
	wait_script 3
	wait_script 1
	wait_script 5
	wait_script 1
	script_end

BattleAnim_DoubleEdge:
	wait_script 6
	wait_script 3
	play_sfx SFX_TACKLE
	wait_script 6
	play_sfx SFX_TACKLE
	wait_script 3
	wait_script 1
	wait_script 5
	wait_script 1
	script_end

BattleAnim_Submission:
	wait_script 6
	play_sfx SFX_SUBMISSION
	wait_script 32
	wait_script 32
	wait_script 32
	wait_script 32
	wait_script 1
	wait_script 4
	wait_script 1
	script_end

BattleAnim_Whirlwind1:
	script_loop 9
	play_sfx SFX_RAZOR_WIND
	wait_script 6
	break_loop
	play_sfx SFX_WHIRLWIND
	wait_script 128
	script_end

BattleAnim_Whirlwind2:
	script_loop 9
	play_sfx SFX_RAZOR_WIND
	wait_script 6
	break_loop
	play_sfx SFX_WHIRLWIND
	wait_script 128
	wait_script 64
	script_end

BattleAnim_Hypnosis:
	script_loop 3
	play_sfx SFX_SUPERSONIC
	wait_script 8
	break_loop
	wait_script 56
	script_end

BattleAnim_Haze:
	play_sfx SFX_SURF
	script_loop 5
	wait_script 12
	break_loop
	wait_script 96
	script_end

BattleAnim_Mist:
	play_sfx SFX_SURF
	script_loop 10
	wait_script 8
	break_loop
	wait_script 96
	script_end

BattleAnim_Smog:
	play_sfx SFX_BUBBLEBEAM
	script_loop 10
	wait_script 8
	break_loop
	wait_script 96
	script_end

BattleAnim_PoisonGas:
	play_sfx SFX_BUBBLEBEAM
	script_loop 10
	wait_script 8
	break_loop
	wait_script 128
	script_end

BattleAnim_HornAttack:
	wait_script 16
	play_sfx SFX_HORN_ATTACK
	wait_script 16
	script_end

BattleAnim_FuryAttack:
	wait_script 8
	play_sfx SFX_HORN_ATTACK
	wait_script 8
	wait_script 8
	play_sfx SFX_HORN_ATTACK
	wait_script 8
	wait_script 8
	play_sfx SFX_HORN_ATTACK
	wait_script 8
	script_end

BattleAnim_HornDrill:
	wait_script 8
	script_loop 3
	play_sfx SFX_HORN_ATTACK
	wait_script 8
	play_sfx SFX_HORN_ATTACK
	wait_script 8
	play_sfx SFX_HORN_ATTACK
	wait_script 8
	play_sfx SFX_HORN_ATTACK
	wait_script 8
	break_loop
	script_end

BattleAnim_PoisonSting:
	wait_script 16
	play_sfx SFX_POISON_STING
	wait_script 16
	script_end

BattleAnim_Twineedle:
	play_sfx SFX_POISON_STING
	wait_script 16
	play_sfx SFX_POISON_STING
	wait_script 16
	script_end

BattleAnim_PinMissile:
	script_loop 3
	wait_script 8
	play_sfx SFX_POISON_STING
	wait_script 8
	play_sfx SFX_POISON_STING
	wait_script 8
	play_sfx SFX_POISON_STING
	break_loop
	wait_script 16
	script_end

BattleAnim_SpikeCannon:
	script_loop 3
	wait_script 8
	play_sfx SFX_POISON_STING
	wait_script 8
	play_sfx SFX_POISON_STING
	wait_script 8
	play_sfx SFX_POISON_STING
	break_loop
	wait_script 16
	script_end

BattleAnim_Transform:
	wait_script 6
	play_sfx SFX_PSYBEAM
	wait_script 48
	wait_script 48
	wait_script 1
	wait_script 5
	wait_script 1
	script_end

BattleAnim_PetalDance:
	play_sfx SFX_MENU
	script_loop 8
	wait_script 11
	break_loop
	wait_script 128
	wait_script 64
	play_sfx SFX_COMET_PUNCH
	wait_script 16
	script_end

BattleAnim_Barrage:
	play_sfx SFX_THROW_BALL
	wait_script 36
	play_sfx SFX_EGG_BOMB
	wait_script 16
	script_end

BattleAnim_PayDay:
	play_sfx SFX_POUND
	wait_script 16
	play_sfx SFX_PAY_DAY
	wait_script 64
	script_end

BattleAnim_Mimic:
	play_sfx SFX_MIMIC_D9
	wait_script 8
	play_sfx SFX_MIMIC_D8
	wait_script 8
	play_sfx SFX_MIMIC_D7
	wait_script 8
	play_sfx SFX_MIMIC_D6
	wait_script 8
	play_sfx SFX_MIMIC_D5
	wait_script 8
	play_sfx SFX_MIMIC_D4
	wait_script 8
	play_sfx SFX_MIMIC_D3
	wait_script 128
	script_end

BattleAnim_LovelyKiss:
	wait_script 32
	play_sfx SFX_LICK
	wait_script 40
	script_end

BattleAnim_Bonemerang:
	play_sfx SFX_HYDRO_PUMP
	wait_script 24
	play_sfx SFX_MOVE_PUZZLE_PIECE
	wait_script 24
	script_end

BattleAnim_Swift:
	play_sfx SFX_METRONOME
	wait_script 4
	wait_script 4
	wait_script 64
	script_end

BattleAnim_Crabhammer:
	wait_script 48
	script_loop 3
	play_sfx SFX_MEGA_PUNCH
	wait_script 12
	break_loop
	script_end

BattleAnim_SkullBash:
	wait_script 32
	wait_script 6
	wait_script 4
	script_loop 3
	play_sfx SFX_HEADBUTT
	wait_script 8
	break_loop
	wait_script 1
	wait_script 5
	wait_script 1
	script_end

BattleAnim_Kinesis:
	wait_script 32
	script_loop 3
	play_sfx SFX_KINESIS
	wait_script 32
	break_loop
	wait_script 32
	play_sfx SFX_KINESIS_2
	wait_script 32
	script_end

BattleAnim_Peck:
	play_sfx SFX_PECK
	wait_script 8
	play_sfx SFX_PECK
	wait_script 16
	script_end

BattleAnim_DrillPeck:
	script_loop 5
	play_sfx SFX_PECK
	wait_script 4
	play_sfx SFX_PECK
	wait_script 4
	play_sfx SFX_PECK
	wait_script 4
	play_sfx SFX_PECK
	wait_script 4
	break_loop
	wait_script 16
	script_end

BattleAnim_Guillotine:
	play_sfx SFX_VICEGRIP
	wait_script 32
	script_end

BattleAnim_Flash:
BattleAnim_FunnyStuff:
	play_sfx SFX_FLASH
	wait_script 4
	wait_script 4
	wait_script 4
	wait_script 4
	wait_script 4
	wait_script 4
	wait_script 4
	wait_script 4
	wait_script 32
	script_end

BattleAnim_Substitute:
	play_sfx SFX_SURF
	wait_script 48
	wait_script 32
	script_end

BattleAnim_Minimize:
	play_sfx SFX_SURF
	wait_script 6
	wait_script 48
	wait_script 48
	wait_script 1
	wait_script 5
	wait_script 1
	script_end

BattleAnim_SkyAttack:
	wait_script 32
	play_sfx SFX_HYPER_BEAM
	wait_script 64
	wait_script 21
	play_sfx SFX_HYPER_BEAM
	wait_script 64
	wait_script 32
	wait_script 16
	script_end

BattleAnim_NightShade:
	wait_script 32
	wait_script 4
	play_sfx SFX_PSYCHIC
	wait_script 96
	wait_script 1
	wait_script 4
	wait_script 1
	script_end

BattleAnim_Lick:
	play_sfx SFX_LICK
	wait_script 64
	script_end

BattleAnim_TriAttack:
	play_sfx SFX_EMBER
	script_loop 4
	wait_script 4
	break_loop
	wait_script 16
	play_sfx SFX_SHINE
	wait_script 6
	play_sfx SFX_SHINE
	wait_script 6
	play_sfx SFX_SHINE
	wait_script 6
	play_sfx SFX_SHINE
	wait_script 6
	play_sfx SFX_SHINE
	wait_script 6
	play_sfx SFX_SHINE
	wait_script 16
	play_sfx SFX_THUNDER
	wait_script 16
	script_end

BattleAnim_Withdraw:
	wait_script 6
	wait_script 48
	play_sfx SFX_SHINE
	wait_script 64
	wait_script 1
	wait_script 1
	wait_script 5
	wait_script 1
	script_end

BattleAnim_Psybeam:
	script_loop 10
	play_sfx SFX_PSYBEAM
	wait_script 4
	break_loop
	wait_script 48
	script_end

BattleAnim_DreamEater:
	play_sfx SFX_WATER_GUN
	wait_script 128
	wait_script 48
	script_end

BattleAnim_LeechLife:
	play_sfx SFX_WATER_GUN
	wait_script 128
	wait_script 48
	script_end

BattleAnim_Harden:
	wait_script 6
	play_sfx SFX_SHINE
	wait_script 8
	wait_script 32
	wait_script 64
	wait_script 1
	wait_script 5
	wait_script 1
	script_end

BattleAnim_Psywave:
	script_loop 3
	play_sfx SFX_PSYCHIC
	wait_script 8
	play_sfx SFX_PSYCHIC
	wait_script 8
	play_sfx SFX_PSYCHIC
	wait_script 8
	break_loop
	wait_script 32
	wait_script 4
	script_end

BattleAnim_Glare:
	play_sfx SFX_LEER
	wait_script 16
	script_end

BattleAnim_Thrash:
	play_sfx SFX_POUND
	wait_script 6
	play_sfx SFX_MOVE_PUZZLE_PIECE
	wait_script 6
	play_sfx SFX_DOUBLE_KICK
	wait_script 16
	script_end

BattleAnim_Growth:
	play_sfx SFX_SWORDS_DANCE
	wait_script 64
	script_end

BattleAnim_Conversion2:
	play_sfx SFX_SHARPEN
	wait_script 128
	wait_script 48
	script_end

BattleAnim_Smokescreen:
	play_sfx SFX_THROW_BALL
	wait_script 24
	play_sfx SFX_BALL_POOF
	wait_script 8
	script_loop 5
	play_sfx SFX_SMOKESCREEN
	wait_script 8
	break_loop
	wait_script 128
	script_end

BattleAnim_Strength:
	play_sfx SFX_STRENGTH
	wait_script 128
	wait_script 20
	play_sfx SFX_MEGA_PUNCH
	wait_script 16
	script_end

BattleAnim_SwordsDance:
	play_sfx SFX_SWORDS_DANCE
	wait_script 56
	script_end

BattleAnim_QuickAttack:
	play_sfx SFX_MENU
	wait_script 12
	play_sfx SFX_COMET_PUNCH
	wait_script 8
	wait_script 16
	script_end

BattleAnim_Meditate:
	wait_script 6
	play_sfx SFX_PSYBEAM
	wait_script 48
	wait_script 48
	wait_script 1
	wait_script 5
	wait_script 1
	script_end

BattleAnim_Sharpen:
	wait_script 6
	play_sfx SFX_SHARPEN
	wait_script 96
	wait_script 1
	wait_script 5
	wait_script 1
	script_end

BattleAnim_DefenseCurl:
	wait_script 6
	play_sfx SFX_SHARPEN
	wait_script 96
	wait_script 1
	wait_script 5
	wait_script 1
	script_end

BattleAnim_SeismicToss:
	play_sfx SFX_STRENGTH
	wait_script 128
	wait_script 20
	play_sfx SFX_MEGA_PUNCH
	wait_script 16
	script_end

BattleAnim_Rage:
	wait_script 6
	play_sfx SFX_RAGE
	wait_script 72
	wait_script 1
	wait_script 5
	wait_script 1
	play_sfx SFX_MOVE_PUZZLE_PIECE
	wait_script 6
	play_sfx SFX_COMET_PUNCH
	wait_script 6
	play_sfx SFX_MEGA_PUNCH
	wait_script 16
	script_end

BattleAnim_Agility:
	wait_script 6
	wait_script 4
	script_loop 18
	play_sfx SFX_RAZOR_WIND
	wait_script 4
	break_loop
	wait_script 1
	wait_script 5
	wait_script 1
	script_end

BattleAnim_BoneClub:
	wait_script 32
	play_sfx SFX_BONE_CLUB
	wait_script 16
	script_end

BattleAnim_Barrier:
	wait_script 8
	play_sfx SFX_SHINE
	wait_script 32
	play_sfx SFX_SHINE
	wait_script 32
	script_end

BattleAnim_Waterfall:
	wait_script 6
	wait_script 16
	wait_script 1
	wait_script 5
	wait_script 1
	play_sfx SFX_LICK
	wait_script 3
	play_sfx SFX_LICK
	wait_script 3
	play_sfx SFX_LICK
	wait_script 3
	play_sfx SFX_LICK
	wait_script 3
	play_sfx SFX_LICK
	wait_script 8
	script_end

BattleAnim_PsychicM:
	script_loop 8
	play_sfx SFX_PSYCHIC
	wait_script 8
	break_loop
	wait_script 96
	wait_script 4
	script_end

BattleAnim_Sludge:
	script_loop 5
	play_sfx SFX_TOXIC
	wait_script 8
	play_sfx SFX_TOXIC
	wait_script 8
	play_sfx SFX_TOXIC
	wait_script 8
	break_loop
	wait_script 56
	script_end

BattleAnim_Toxic:
	script_loop 8
	play_sfx SFX_BUBBLEBEAM
	wait_script 5
	break_loop
	wait_script 32
	script_loop 5
	play_sfx SFX_TOXIC
	wait_script 8
	play_sfx SFX_TOXIC
	wait_script 8
	play_sfx SFX_TOXIC
	wait_script 8
	break_loop
	wait_script 64
	script_end

BattleAnim_Metronome:
	play_sfx SFX_METRONOME
	script_loop 5
	wait_script 8
	break_loop
	wait_script 48
	script_end

BattleAnim_Counter:
	script_loop 3
	play_sfx SFX_POUND
	wait_script 6
	play_sfx SFX_COMET_PUNCH
	wait_script 6
	play_sfx SFX_MEGA_KICK
	wait_script 6
	break_loop
	wait_script 16
	script_end

BattleAnim_LowKick:
	play_sfx SFX_DOUBLE_KICK
	wait_script 6
	play_sfx SFX_DOUBLE_KICK
	wait_script 6
	play_sfx SFX_DOUBLE_KICK
	wait_script 16
	script_end

BattleAnim_WingAttack:
	play_sfx SFX_WING_ATTACK
	wait_script 6
	play_sfx SFX_WING_ATTACK
	wait_script 6
	play_sfx SFX_WING_ATTACK
	wait_script 16
	script_end

BattleAnim_Slam:
	play_sfx SFX_WING_ATTACK
	wait_script 16
	script_end

BattleAnim_Disable:
	wait_script 16
	play_sfx SFX_BIND
	wait_script 96
	script_end

BattleAnim_TailWhip:
	wait_script 6
	play_sfx SFX_TAIL_WHIP
	wait_script 32
	wait_script 1
	wait_script 5
	wait_script 1
	script_end

BattleAnim_Struggle:
	play_sfx SFX_POUND
	wait_script 16
	script_end

BattleAnim_Sketch:
	wait_script 6
	play_sfx SFX_SKETCH
	wait_script 80
	wait_script 1
	wait_script 5
	wait_script 1
	wait_script 1
	script_end

BattleAnim_TripleKick:
	play_sfx SFX_MEGA_KICK
	wait_script 6
	wait_script 8
	script_end

BattleAnim_TripleKick_alternate:
	play_sfx SFX_DOUBLE_KICK
	wait_script 6
	wait_script 8
	script_end

BattleAnim_Thief:
	wait_script 6
	wait_script 16
	play_sfx SFX_THIEF
	wait_script 16
	wait_script 1
	wait_script 5
	wait_script 1
	wait_script 1
	play_sfx SFX_THIEF_2
	wait_script 64
	script_end

BattleAnim_SpiderWeb:
	play_sfx SFX_SPIDER_WEB
	wait_script 4
	wait_script 4
	wait_script 64
	script_end

BattleAnim_MindReader:
	play_sfx SFX_MIND_READER
	script_loop 2
	wait_script 16
	break_loop
	wait_script 32
	script_end

BattleAnim_Nightmare:
	play_sfx SFX_NIGHTMARE
	wait_script 96
	script_end

BattleAnim_FlameWheel:
	script_loop 8
	play_sfx SFX_EMBER
	wait_script 6
	break_loop
	wait_script 96
	wait_script 6
	wait_script 4
	play_sfx SFX_EMBER
	wait_script 8
	wait_script 4
	wait_script 8
	script_end

BattleAnim_Snore:
	wait_script 32
	play_sfx SFX_SNORE
	script_loop 2
	wait_script 16
	break_loop
	wait_script 8
	script_end

BattleAnim_Curse:
	play_sfx SFX_CURSE
	wait_script 32
	wait_script 12
	play_sfx SFX_POISON_STING
	wait_script 16
	script_end

BattleAnim_Curse_NotGhost:
	wait_script 6
	play_sfx SFX_SHARPEN
	wait_script 64
	wait_script 1
	script_loop 3
	play_sfx SFX_SWORDS_DANCE
	wait_script 2
	wait_script 2
	wait_script 2
	wait_script 2
	wait_script 2
	wait_script 2
	wait_script 2
	break_loop
	wait_script 8
	wait_script 1
	wait_script 5
	wait_script 1
	script_end

BattleAnim_Flail:
	wait_script 6
	play_sfx SFX_FLAIL
	wait_script 8
	wait_script 8
	wait_script 8
	play_sfx SFX_FLAIL
	wait_script 8
	wait_script 1
	wait_script 5
	wait_script 1
	script_end

BattleAnim_Conversion:
	play_sfx SFX_SHARPEN
	wait_script 128
	script_end

BattleAnim_Aeroblast:
	play_sfx SFX_AEROBLAST
	wait_script 32
	play_sfx SFX_HYPER_BEAM
	wait_script 2
	play_sfx SFX_HYPER_BEAM
	wait_script 2
	play_sfx SFX_HYPER_BEAM
	wait_script 48
	script_end

BattleAnim_CottonSpore:
	play_sfx SFX_POWDER
	script_loop 5
	wait_script 8
	break_loop
	wait_script 96
	script_end

BattleAnim_Reversal:
	play_sfx SFX_MEGA_PUNCH
	wait_script 2
	play_sfx SFX_SHINE
	wait_script 2
	play_sfx SFX_MEGA_PUNCH
	wait_script 2
	play_sfx SFX_SHINE
	wait_script 2
	play_sfx SFX_MEGA_PUNCH
	wait_script 2
	play_sfx SFX_SHINE
	wait_script 24
	script_end

BattleAnim_Spite:
	play_sfx SFX_SPITE
	wait_script 96
	script_end

BattleAnim_PowderSnow:
	script_loop 2
	play_sfx SFX_SHINE
	wait_script 2
	play_sfx SFX_SHINE
	wait_script 2
	play_sfx SFX_SHINE
	wait_script 2
	break_loop
	wait_script 40
	play_sfx SFX_SHINE
	wait_script 6
	play_sfx SFX_SHINE
	wait_script 6
	play_sfx SFX_SHINE
	wait_script 6
	play_sfx SFX_SHINE
	wait_script 6
	play_sfx SFX_SHINE
	wait_script 6
	play_sfx SFX_SHINE
	wait_script 32
	script_end

BattleAnim_Protect:
	play_sfx SFX_PROTECT
	wait_script 96
	script_end

BattleAnim_MachPunch:
	play_sfx SFX_MENU
	wait_script 12
	play_sfx SFX_MEGA_PUNCH
	wait_script 6
	wait_script 8
	wait_script 16
	script_end

BattleAnim_ScaryFace:
	play_sfx SFX_LEER
	wait_script 64
	script_end

BattleAnim_FaintAttack:
	play_sfx SFX_CURSE
	wait_script 6
	wait_script 96
	play_sfx SFX_COMET_PUNCH
	wait_script 8
	play_sfx SFX_COMET_PUNCH
	wait_script 8
	play_sfx SFX_COMET_PUNCH
	wait_script 32
	wait_script 1
	wait_script 5
	wait_script 1
	wait_script 4
	script_end

BattleAnim_SweetKiss:
	play_sfx SFX_SWEET_KISS
	wait_script 32
	play_sfx SFX_SWEET_KISS_2
	wait_script 40
	script_end

BattleAnim_BellyDrum:
	play_sfx SFX_BELLY_DRUM
	wait_script 24
	play_sfx SFX_BELLY_DRUM
	wait_script 24
	play_sfx SFX_BELLY_DRUM
	wait_script 12
	play_sfx SFX_BELLY_DRUM
	wait_script 12
	play_sfx SFX_BELLY_DRUM
	wait_script 24
	play_sfx SFX_BELLY_DRUM
	wait_script 12
	play_sfx SFX_BELLY_DRUM
	wait_script 12
	play_sfx SFX_BELLY_DRUM
	wait_script 12
	play_sfx SFX_BELLY_DRUM
	wait_script 12
	script_end

BattleAnim_SludgeBomb:
	play_sfx SFX_SLUDGE_BOMB
	wait_script 36
	script_loop 5
	play_sfx SFX_TOXIC
	wait_script 8
	play_sfx SFX_TOXIC
	wait_script 8
	play_sfx SFX_TOXIC
	wait_script 8
	break_loop
	wait_script 64
	script_end

BattleAnim_MudSlap:
	script_loop 8
	play_sfx SFX_MENU
	wait_script 4
	break_loop
	wait_script 32
	script_end

BattleAnim_Octazooka1:
	play_sfx SFX_SLUDGE_BOMB
	wait_script 16
	wait_script 8
	script_end

BattleAnim_Octazooka2:
	play_sfx SFX_SLUDGE_BOMB
	wait_script 16
	wait_script 8
	script_loop 5
	wait_script 8
	break_loop
	wait_script 128
	script_end

BattleAnim_Spikes:
	play_sfx SFX_SPIKES_E1
	wait_script 8
	play_sfx SFX_SPIKES_E1
	wait_script 8
	play_sfx SFX_SPIKES_E2
	wait_script 64
	script_end

BattleAnim_ZapCannon:
	play_sfx SFX_ZAP_CANNON
	wait_script 40
	play_sfx SFX_THUNDERSHOCK
	wait_script 16
	wait_script 128
	script_end

BattleAnim_Foresight:
	wait_script 6
	play_sfx SFX_FORESIGHT
	wait_script 24
	wait_script 64
	wait_script 1
	wait_script 4
	wait_script 1
	wait_script 8
	script_end

BattleAnim_DestinyBond:
	play_sfx SFX_WHIRLWIND
	wait_script 128
	script_end

BattleAnim_DestinyBond_fainted:
	play_sfx SFX_KINESIS
	wait_script 32
	script_end

BattleAnim_PerishSong:
	play_sfx SFX_PERISH_SONG
	wait_script 112
	script_end

BattleAnim_IcyWind:
	play_sfx SFX_PSYCHIC
	script_loop 2
	wait_script 8
	wait_script 8
	wait_script 8
	wait_script 8
	break_loop
	wait_script 16
	wait_script 6
	wait_script 64
	wait_script 4
	wait_script 1
	script_end

BattleAnim_Detect:
	play_sfx SFX_FORESIGHT
	wait_script 24
	script_end

BattleAnim_BoneRush:
	play_sfx SFX_BONE_CLUB
	wait_script 16
	play_sfx SFX_COMET_PUNCH
	wait_script 16
	play_sfx SFX_COMET_PUNCH
	wait_script 16
	script_end

BattleAnim_LockOn:
	script_loop 2
	play_sfx SFX_LOCK_ON
	wait_script 16
	break_loop
	wait_script 32
	script_end

BattleAnim_Outrage:
	wait_script 6
	play_sfx SFX_OUTRAGE
	wait_script 72
	wait_script 1
	wait_script 5
	wait_script 1
	play_sfx SFX_MOVE_PUZZLE_PIECE
	wait_script 6
	play_sfx SFX_COMET_PUNCH
	wait_script 6
	play_sfx SFX_MEGA_PUNCH
	wait_script 16
	script_end

BattleAnim_Sandstorm:
	wait_script 8
	wait_script 8
	script_loop 16
	play_sfx SFX_MENU
	wait_script 8
	break_loop
	wait_script 8
	script_end

BattleAnim_GigaDrain:
	wait_script 6
	play_sfx SFX_GIGA_DRAIN
	wait_script 48
	wait_script 128
	wait_script 1
	wait_script 5
	wait_script 1
	wait_script 1
	script_loop 2
	play_sfx SFX_METRONOME
	wait_script 5
	wait_script 5
	wait_script 5
	wait_script 5
	wait_script 5
	break_loop
	wait_script 32
	script_end

BattleAnim_Endure:
	wait_script 6
	script_loop 5
	play_sfx SFX_SWORDS_DANCE
	wait_script 2
	wait_script 2
	wait_script 2
	wait_script 2
	wait_script 2
	wait_script 2
	wait_script 2
	break_loop
	wait_script 8
	wait_script 1
	wait_script 5
	wait_script 1
	script_end

BattleAnim_Charm:
	wait_script 6
	play_sfx SFX_ATTRACT
	wait_script 32
	wait_script 1
	wait_script 5
	wait_script 1
	wait_script 4
	script_end

BattleAnim_Rollout:
	play_sfx SFX_SPARK
	wait_script 6
	wait_script 4
	play_sfx SFX_MEGA_PUNCH
	wait_script 8
	wait_script 1
	wait_script 5
	wait_script 1
	script_end

BattleAnim_FalseSwipe:
	play_sfx SFX_CUT
	wait_script 4
	wait_script 32
	script_end

BattleAnim_Swagger:
	script_loop 2
	play_sfx SFX_MENU
	wait_script 32
	break_loop
	wait_script 32
	play_sfx SFX_KINESIS_2
	wait_script 40
	script_end

BattleAnim_MilkDrink:
	wait_script 6
	wait_script 16
	play_sfx SFX_MILK_DRINK
	script_loop 8
	wait_script 8
	break_loop
	wait_script 128
	wait_script 1
	wait_script 5
	wait_script 1
	script_end

BattleAnim_Spark:
	play_sfx SFX_ZAP_CANNON
	wait_script 24
	wait_script 1
	wait_script 6
	play_sfx SFX_SPARK
	wait_script 16
	wait_script 4
	wait_script 1
	play_sfx SFX_THUNDERSHOCK
	wait_script 32
	script_end

BattleAnim_FuryCutter2:
	play_sfx SFX_CUT
	wait_script 16

BattleAnim_FuryCutter1:
	play_sfx SFX_CUT
	wait_script 16
	script_end

BattleAnim_SteelWing:
	play_sfx SFX_RAGE
	wait_script 6
	play_sfx SFX_SHINE
	wait_script 8
	wait_script 32
	wait_script 64
	wait_script 1
	wait_script 5
	wait_script 1
	play_sfx SFX_WING_ATTACK
	wait_script 6
	play_sfx SFX_WING_ATTACK
	wait_script 6
	play_sfx SFX_WING_ATTACK
	wait_script 16
	script_end

BattleAnim_MeanLook:
	play_sfx SFX_MEAN_LOOK
	wait_script 5
	wait_script 5
	wait_script 5
	wait_script 5
	wait_script 128
	script_end

BattleAnim_Attract:
	script_loop 5
	play_sfx SFX_ATTRACT
	wait_script 8
	break_loop
	wait_script 128
	wait_script 64
	script_end

BattleAnim_SleepTalk:
	script_loop 2
	play_sfx SFX_STRENGTH
	wait_script 40
	break_loop
	wait_script 32
	script_end

BattleAnim_HealBell:
	wait_script 32
	script_loop 4
	play_sfx SFX_HEAL_BELL
	wait_script 8
	play_sfx SFX_HEAL_BELL
	wait_script 8
	play_sfx SFX_HEAL_BELL
	wait_script 8
	play_sfx SFX_HEAL_BELL
	wait_script 8
	play_sfx SFX_HEAL_BELL
	wait_script 8
	break_loop
	wait_script 64
	script_end

BattleAnim_Return:
	wait_script 6
	play_sfx SFX_RETURN
	wait_script 64
	wait_script 32
	wait_script 4
	play_sfx SFX_COMET_PUNCH
	wait_script 8
	wait_script 1
	wait_script 5
	wait_script 1
	script_end

BattleAnim_Present1:
	play_sfx SFX_PRESENT
	wait_script 56
	play_sfx SFX_SHOCK_EMOTE
	wait_script 48
	wait_script 1
	play_sfx SFX_EGG_BOMB
	wait_script 5
	play_sfx SFX_EGG_BOMB
	wait_script 5
	play_sfx SFX_EGG_BOMB
	wait_script 5
	play_sfx SFX_EGG_BOMB
	wait_script 5
	play_sfx SFX_EGG_BOMB
	wait_script 16
	script_end

BattleAnim_Present2:
	play_sfx SFX_PRESENT
	wait_script 56
	play_sfx SFX_SHOCK_EMOTE
	wait_script 48
	wait_script 1
	script_loop 2
	play_sfx SFX_EGG_BOMB
	wait_script 5
	play_sfx SFX_EGG_BOMB
	wait_script 5
	play_sfx SFX_EGG_BOMB
	wait_script 5
	play_sfx SFX_EGG_BOMB
	wait_script 5
	play_sfx SFX_EGG_BOMB
	wait_script 16
	break_loop
	script_end

BattleAnim_Present3:
	play_sfx SFX_PRESENT
	wait_script 56
	play_sfx SFX_SHOCK_EMOTE
	wait_script 48
	wait_script 1
	script_loop 3
	play_sfx SFX_EGG_BOMB
	wait_script 5
	play_sfx SFX_EGG_BOMB
	wait_script 5
	play_sfx SFX_EGG_BOMB
	wait_script 5
	play_sfx SFX_EGG_BOMB
	wait_script 5
	play_sfx SFX_EGG_BOMB
	wait_script 16
	break_loop
	script_end

BattleAnim_PresentHeal:
	play_sfx SFX_PRESENT
	wait_script 56
	play_sfx SFX_SHOCK_EMOTE
	wait_script 48
	play_sfx SFX_GAME_FREAK_PRESENTS
	script_loop 8
	wait_script 8
	break_loop
	wait_script 128
	script_end

BattleAnim_Frustration:
	play_sfx SFX_KINESIS_2
	wait_script 40
	wait_script 6
	wait_script 8
	play_sfx SFX_COMET_PUNCH
	wait_script 8
	play_sfx SFX_COMET_PUNCH
	wait_script 8
	play_sfx SFX_COMET_PUNCH
	wait_script 8
	wait_script 1
	wait_script 1
	wait_script 5
	wait_script 1
	script_end

BattleAnim_Safeguard:
	play_sfx SFX_PROTECT
	wait_script 96
	script_end

BattleAnim_PainSplit:
	wait_script 6
	wait_script 4
	play_sfx SFX_TACKLE
	wait_script 8
	wait_script 1
	wait_script 5
	wait_script 1
	wait_script 1
	script_end

BattleAnim_SacredFire:
	script_loop 8
	play_sfx SFX_EMBER
	wait_script 8
	break_loop
	wait_script 96
	wait_script 6
	wait_script 4
	play_sfx SFX_EMBER
	wait_script 8
	wait_script 4
	wait_script 8
	script_end

BattleAnim_Magnitude4:
	play_sfx SFX_STRENGTH
	wait_script 2
	wait_script 2
	wait_script 2
	wait_script 2
	wait_script 2
	wait_script 96
	script_end

BattleAnim_Magnitude5:
	script_loop 2
	play_sfx SFX_STRENGTH
	wait_script 2
	wait_script 2
	wait_script 2
	wait_script 2
	wait_script 2
	break_loop
	wait_script 96
	script_end

BattleAnim_Magnitude6:
	script_loop 3
	play_sfx SFX_STRENGTH
	wait_script 2
	wait_script 2
	wait_script 2
	wait_script 2
	wait_script 2
	break_loop
	wait_script 96
	script_end

BattleAnim_Magnitude7:
	script_loop 4
	play_sfx SFX_STRENGTH
	wait_script 2
	wait_script 2
	wait_script 2
	wait_script 2
	wait_script 2
	break_loop
	wait_script 96
	script_end

BattleAnim_Magnitude8:
	script_loop 5
	play_sfx SFX_STRENGTH
	wait_script 2
	wait_script 2
	wait_script 2
	wait_script 2
	wait_script 2
	break_loop
	wait_script 96
	script_end

BattleAnim_Magnitude9:
	script_loop 6
	play_sfx SFX_STRENGTH
	wait_script 2
	wait_script 2
	wait_script 2
	wait_script 2
	wait_script 2
	break_loop
	wait_script 96
	script_end

BattleAnim_Magnitude10:
	script_loop 7
	play_sfx SFX_STRENGTH
	wait_script 2
	wait_script 2
	wait_script 2
	wait_script 2
	wait_script 2
	break_loop
	wait_script 96
	script_end

BattleAnim_Dynamicpunch:
	play_sfx SFX_COMET_PUNCH
	wait_script 16
	play_sfx SFX_EGG_BOMB
	wait_script 5
	play_sfx SFX_EGG_BOMB
	wait_script 5
	play_sfx SFX_EGG_BOMB
	wait_script 5
	play_sfx SFX_EGG_BOMB
	wait_script 5
	play_sfx SFX_EGG_BOMB
	wait_script 16
	script_end

BattleAnim_Megahorn:
	wait_script 48
	play_sfx SFX_HORN_ATTACK
	wait_script 16
	wait_script 16
	script_end

BattleAnim_Dragonbreath:
	play_sfx SFX_EMBER
	script_loop 10
	wait_script 4
	break_loop
	wait_script 64
	script_end

BattleAnim_BatonPass:
	play_sfx SFX_BATON_PASS
	wait_script 32
	wait_script 64
	script_end

BattleAnim_Encore:
	play_sfx SFX_ENCORE
	wait_script 16
	wait_script 32
	wait_script 16
	script_end

BattleAnim_Pursuit:
	play_sfx SFX_COMET_PUNCH
	wait_script 16
	script_end

BattleAnim_Pursuit_pursued:
	wait_script 4
	wait_script 6
	wait_script 64
	play_sfx SFX_BALL_POOF
	wait_script 64
	wait_script 16
	play_sfx SFX_MEGA_PUNCH
	wait_script 16
	wait_script 1
	wait_script 4
	wait_script 1
	wait_script 1
	script_end

BattleAnim_RapidSpin:
	script_loop 5
	play_sfx SFX_MENU
	wait_script 2
	break_loop
	wait_script 24
	wait_script 6
	wait_script 4
	play_sfx SFX_MEGA_KICK
	wait_script 8
	wait_script 4
	wait_script 1
	script_end

BattleAnim_SweetScent:
	play_sfx SFX_SWEET_SCENT
	wait_script 2
	wait_script 96
	play_sfx SFX_SWEET_SCENT_2
	wait_script 128
	script_end

BattleAnim_IronTail:
	play_sfx SFX_RAGE
	wait_script 6
	play_sfx SFX_SHINE
	wait_script 8
	wait_script 32
	wait_script 64
	wait_script 4
	wait_script 16
	play_sfx SFX_MEGA_KICK
	wait_script 16
	wait_script 1
	wait_script 5
	wait_script 1
	script_end

BattleAnim_MetalClaw:
	play_sfx SFX_RAGE
	wait_script 6
	play_sfx SFX_SHINE
	wait_script 8
	wait_script 32
	wait_script 64
	wait_script 1
	wait_script 5
	wait_script 1
	play_sfx SFX_SCRATCH
	wait_script 32
	script_end

BattleAnim_VitalThrow:
	wait_script 6
	wait_script 16
	play_sfx SFX_MENU
	wait_script 8
	play_sfx SFX_MENU
	wait_script 8
	play_sfx SFX_MENU
	wait_script 8
	wait_script 16
	wait_script 1
	wait_script 5
	wait_script 1
	play_sfx SFX_MEGA_PUNCH
	wait_script 16
	script_end

BattleAnim_MorningSun1:
	play_sfx SFX_MORNING_SUN
	script_loop 5
	wait_script 6
	break_loop
	wait_script 32
	play_sfx SFX_METRONOME
	wait_script 5
	wait_script 5
	wait_script 21
	script_end

BattleAnim_MorningSun2:
	play_sfx SFX_MORNING_SUN
	script_loop 5
	wait_script 6
	break_loop
	wait_script 32
	play_sfx SFX_METRONOME
	script_loop 2
	wait_script 5
	wait_script 5
	wait_script 5
	wait_script 5
	wait_script 5
	break_loop
	wait_script 16
	script_end

BattleAnim_Synthesis1:
	wait_script 6
	play_sfx SFX_OUTRAGE
	wait_script 72
	wait_script 1
	wait_script 5
	wait_script 1
	play_sfx SFX_METRONOME
	wait_script 5
	wait_script 5
	wait_script 21
	script_end


BattleAnim_Synthesis2:
	wait_script 6
	play_sfx SFX_OUTRAGE
	wait_script 72
	wait_script 1
	wait_script 5
	wait_script 1
	play_sfx SFX_METRONOME
	script_loop 2
	wait_script 5
	wait_script 5
	wait_script 5
	wait_script 5
	wait_script 5
	break_loop
	wait_script 16
	script_end

BattleAnim_Crunch:
BattleAnim_BitterBite:
	wait_script 8
	play_sfx SFX_BITE
	wait_script 16
	play_sfx SFX_BITE
	wait_script 8
	script_end

BattleAnim_Moonlight1:
	wait_script 1
	play_sfx SFX_MOONLIGHT
	wait_script 63
	play_sfx SFX_METRONOME
	wait_script 5
	wait_script 5
	wait_script 21
	script_end

BattleAnim_Moonlight2:
	wait_script 1
	play_sfx SFX_MOONLIGHT
	wait_script 63
	play_sfx SFX_METRONOME
	script_loop 2
	wait_script 5
	wait_script 5
	wait_script 5
	wait_script 5
	wait_script 5
	break_loop
	wait_script 16
	script_end

BattleAnim_HiddenPower:
	wait_script 6
	script_loop 12
	play_sfx SFX_SWORDS_DANCE
	wait_script 8
	break_loop
	wait_script 1
	wait_script 5
	wait_script 1
	wait_script 1
	wait_script 16
	wait_script 32
	script_end

BattleAnim_CrossChop:
	play_sfx SFX_CUT
	wait_script 8
	wait_script 92
	play_sfx SFX_VICEGRIP
	wait_script 16
	script_end

BattleAnim_Twister:
	script_loop 9
	play_sfx SFX_RAZOR_WIND
	wait_script 6
	break_loop
	script_loop 8
	play_sfx SFX_RAZOR_WIND
	wait_script 8
	break_loop
	wait_script 64
	script_loop 4
	play_sfx SFX_RAZOR_WIND
	wait_script 8
	break_loop
	script_loop 4
	play_sfx SFX_RAZOR_WIND
	wait_script 8
	break_loop
	wait_script 32
	script_end

BattleAnim_RainDance:
	play_sfx SFX_RAIN_DANCE
	wait_script 8
	wait_script 8
	wait_script 128
	script_end

BattleAnim_SunnyDay:
	play_sfx SFX_MORNING_SUN
	wait_script 8
	wait_script 8
	wait_script 128
	script_end

BattleAnim_MirrorCoat:
	script_loop 3
	play_sfx SFX_SHINE
	wait_script 8
	wait_script 8
	wait_script 8
	wait_script 8
	break_loop
	wait_script 32
	script_end

BattleAnim_PsychUp:
	wait_script 6
	play_sfx SFX_PSYBEAM
	wait_script 64
	wait_script 1
	wait_script 5
	wait_script 1
	wait_script 16
	script_end

BattleAnim_Extremespeed:
	play_sfx SFX_MENU
	wait_script 12
	play_sfx SFX_CUT
	wait_script 32
	wait_script 16
	script_end

BattleAnim_Ancientpower:
	play_sfx SFX_SPARK
	wait_script 8
	play_sfx SFX_SPARK
	wait_script 8
	play_sfx SFX_SPARK
	wait_script 8
	play_sfx SFX_SPARK
	wait_script 8
	play_sfx SFX_SPARK
	wait_script 8
	play_sfx SFX_SPARK
	wait_script 8
	play_sfx SFX_SPARK
	wait_script 8
	play_sfx SFX_SPARK
	wait_script 6
	script_end

BattleAnim_ShadowBall:
	play_sfx SFX_SLUDGE_BOMB
	wait_script 32
	wait_script 24
	script_end

BattleAnim_FutureSight:
	wait_script 4
	script_loop 4
	play_sfx SFX_THROW_BALL
	wait_script 16
	break_loop
	script_end

BattleAnim_RockSmash:
	play_sfx SFX_SPARK
	play_sfx SFX_SPARK
	play_sfx SFX_SPARK
	play_sfx SFX_SPARK
	wait_script 6
	play_sfx SFX_SPARK
	play_sfx SFX_SPARK
	wait_script 32
	script_end

BattleAnim_Whirlpool:
	play_sfx SFX_SURF
	wait_script 16
	script_loop 9
	wait_script 6
	break_loop
	wait_script 64
	wait_script 1
	script_end

BattleAnim_BeatUp:
	play_sfx SFX_BALL_POOF
	wait_script 16
	play_sfx SFX_BALL_POOF
	wait_script 16
BattleAnim_BeatUp_current_mon:
	wait_script 6
	wait_script 4
	play_sfx SFX_BEAT_UP
	wait_script 8
	wait_script 1
	wait_script 5
	wait_script 1
	script_end

BattleAnim_TargetObj_1Row:
	wait_script 6
	script_end

BattleAnim_TargetObj_2Row:
	wait_script 6
	script_end

BattleAnim_ShowMon_0:
	wait_script 1
	wait_script 5
	wait_script 1
	script_end

BattleAnim_UserObj_1Row:
	wait_script 6
	script_end

BattleAnim_UserObj_2Row:
	wait_script 4
	script_end

BattleAnim_ShowMon_1:
	wait_script 1
	wait_script 4
	wait_script 1
	script_end

AnicomTest_SFX:
	play_music MUSIC_VIRIDIAN_CITY
	wait_script 58
	script_loop 255
	play_sfx $f7
	wait_script 60
	break_loop
	script_end
