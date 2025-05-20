script_cmd_start EQU $f0
	const_def script_cmd_start
	const break_exp_cmd		;f0
	const modify_cry_cmd		;f1
	const music_off_cmd		;f2
	const music_on_cmd		;f3
	const wait_sfx_cmd		;f4
	const skip_frames_cmd		;f5
	const fade_cmd			;f6
	const play_music_cmd		;f7
	const play_cry_cmd		;f8
	const play_sfx_cmd		;f9
	const script_extend_cmd		;fa
	const script_call_cmd		;fb
	const new_script_cmd		;fc
	const offset_jump_cmd		;fd
	const script_loop_cmd		;fe
	const break_loop_cmd		;ff
script_end_cmd EQU const_value & $ff

MACRO script_end
	db script_end_cmd
ENDM

MACRO break_exp
	db break_exp_cmd
ENDM

MACRO modify_cry
	db modify_cry_cmd
	dw \1 ; pitch
	dw \2 ; length
	dw \3 ; mon ID
ENDM

MACRO music_off
	db music_off_cmd
ENDM

MACRO music_on
	db music_on_cmd
ENDM

MACRO wait_sfx
	db wait_sfx_cmd
ENDM

MACRO skip_frames
	db skip_frames_cmd
	db \1 ; number of frames
ENDM

MACRO fade
	db fade_cmd
	dw \1 ; music ID
	db \2 ; how long to fade
ENDM

MACRO play_music
	db play_music_cmd
	dw \1 ; ID
ENDM

MACRO play_cry
	db play_cry_cmd
	dw \1 ; ID
ENDM

MACRO play_sfx
	db play_sfx_cmd
	dw \1 ; ID
ENDM

MACRO script_extend
	db script_extend_cmd
ENDM

MACRO script_call
	db script_call_cmd
	dw \1 ; pointer
ENDM

MACRO new_script
	db new_script_cmd
	db \1 ; script ID
ENDM

MACRO offset_jump
	db offset_jump_cmd
	db \1 ; offset
ENDM

MACRO script_loop
	db script_loop_cmd
	db \1 ; number of times to loop
ENDM

MACRO break_loop
	db break_loop_cmd
ENDM

MACRO wait_script
	db \1
ENDM
