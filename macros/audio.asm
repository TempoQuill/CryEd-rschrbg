MACRO channel_count
	assert 0 < (\1) && (\1) <= NUM_MUSIC_CHANS, \
		"channel_count must be 1-{d:NUM_MUSIC_CHANS}"
	DEF _num_channels = \1 - 1
ENDM

MACRO channel
	assert 0 < (\1) && (\1) <= NUM_CHANNELS, \
		"channel id must be 1-{d:NUM_CHANNELS}"
	dn (_num_channels << 2), \1 - 1 ; channel id
	IF _NARG > 1
		dw \2 ; address
	endc
	DEF _num_channels = 0
ENDM

MACRO note
	dn (\1), (\2) - 1 ; pitch, length
ENDM

MACRO env_note
	if \2 < 0
		dn \1, %1000 | (\2 * -1) ; volume envelope
	else
		dn \1, \2 ; volume envelope
	endc
ENDM

MACRO wav_note
	db \1 ; wavetable constant
ENDM

MACRO drum_note
	note \1, \2 ; drum instrument, length
ENDM

MACRO rest
	note 0, \1 ; length
ENDM

MACRO square_note
	db \1 ; length
	if \3 < 0
		dn \2, %1000 | (\3 * -1) ; volume envelope
	else
		if _chan == 3
			db ((\2 & %111) << 5) | \3
		else
			dn \2, \3 ; volume envelope
		endc
	endc
	dw \4 ; frequency
ENDM

MACRO noise_note
	db \1 ; length
	if \3 < 0
		dn \2, %1000 | (\3 * -1) ; volume envelope
	else
		dn \2, \3 ; volume envelope
	endc
	db \4 ; frequency
ENDM

MACRO wav_sfx_note
	db \1 ; length
	db \2 << 5 | \3
	dw \4 ; frequency
ENDM

; MusicCommands indexes (see audio/engine.asm)
	const_def $d0
	DEF FIRST_MUSIC_CMD EQU const_value

	const octave_cmd ; $d0
MACRO octave
	assert 1 <= (\1) && (\1) <= 8, "octave must be 1-8"
	db octave_cmd + 8 - (\1) ; octave
ENDM

	const_skip 7 ; all octave values

	const note_type_cmd ; $d8
MACRO note_type
	db note_type_cmd
	db \1 ; note length
	if _NARG >= 2
		if \3 < 0
			dn \2, %1000 | (\3 * -1) ; volume envelope
		else
			if _chan > 2
				db ((\2 & %111) << 5) | \3
			else
				dn \2, \3 ; volume envelope
			endc
		endc
	endc
ENDM

; only valid on the noise channel
MACRO drum_speed
	note_type \1 ; note length
ENDM

	const transpose_cmd ; $d9
MACRO transpose
	db transpose_cmd
	dn \1, \2 ; num octaves, num pitches
ENDM

	const tempo_cmd ; $da
MACRO tempo
	db tempo_cmd
	bigdw \1 ; tempo
ENDM

	const duty_cycle_cmd ; $db
MACRO duty_cycle
	db duty_cycle_cmd
	db \1 ; duty cycle
ENDM

	const volume_envelope_cmd ; $dc
MACRO volume_envelope
	db volume_envelope_cmd
	if \2 < 0
		dn \1, %1000 | (\2 * -1) ; volume envelope
	else
		if _chan > 2
			db ((\1 & %111) << 5) | \2
		else
			dn \1, \2 ; volume envelope
		endc
	endc
ENDM

	const pitch_sweep_cmd ; $dd
MACRO pitch_sweep
	db pitch_sweep_cmd
	if \2 < 0
		dn \1, %1000 | (\2 * -1) ; pitch sweep
	else
		dn \1, \2 ; pitch sweep
	endc
ENDM

	const duty_cycle_pattern_cmd ; $de
MACRO duty_cycle_pattern
	db duty_cycle_pattern_cmd
	db (\1 << 6) | (\2 << 4) | (\3 << 2) | (\4 << 0) ; duty cycle pattern
ENDM

	const toggle_music_cmd ; $df
MACRO toggle_music
;toggle_sfx
	db toggle_music_cmd
ENDM

; now works on channels 1-3
	const pitch_slide_cmd ; $e0
MACRO pitch_slide
	db pitch_slide_cmd
	db \1 - 1 ; duration
	dn 8 - \2, \3 % 12 ; octave, pitch
ENDM

	const vibrato_cmd ; $e1
MACRO vibrato
	db vibrato_cmd
	db \1 ; delay
	if _NARG > 2
		dn \2, \3 ; extent, rate
	else
		db \2 ; LEGACY: Support for 1-arg extent
	endc
ENDM

; stubbed in G/S(SW1999)
; restored in Ray/Shade
	const staccato_cmd ; $e2
MACRO staccato
	db staccato_cmd
	if \1 < 0
		db $100 - (\1 * -1)
	else
		db \1 ; sound length
	endc
ENDM

	const toggle_noise_cmd ; $e3
MACRO toggle_noise
	db toggle_noise_cmd
	if _NARG > 0
		db \1 ; drum kit
	endc
ENDM

; generation 1 stereo panning
	const old_panning_cmd ; $e4
MACRO old_panning
	db old_panning_cmd
	dn \1, \2
ENDM

	const volume_cmd ; $e5
MACRO volume
	db volume_cmd
	if _NARG > 1
		dn \1, \2 ; LEGACY: support for indie volumes
	else
		if \1 < 8
			dn \1, \1
		else
			db \1 ; LEGACY: Support for 1-arg volume
		endc
	endc
ENDM

	const pitch_offset_cmd ; $e6
MACRO pitch_offset
	db pitch_offset_cmd
	bigdw \1 ; pitch offset
ENDM

; stubbed in G/S(SW1999)
; restored/bugfixed in Ray/Shade
	const relative_pitch_cmd ; $e7
MACRO relative_pitch
	db relative_pitch_cmd
	db \1 ; pitch
ENDM

; stubbed in G/S(SW1999)
; restored/bugfixed in Ray/Shade
; used for SFX in Chaos/HRBG and music in HRBG
	const envelope_sequence_cmd ; $e8
MACRO envelope_sequence
	db envelope_sequence_cmd
	db \1 ; group
ENDM

	const tempo_relative_cmd ; $e9
MACRO tempo_relative
	db tempo_relative_cmd
	IF \1 < 0
		db 255 - ((\1 * -1) - 1)
	ELSE
		db \1 ; tempo adjustment
	ENDC
ENDM

	const restart_channel_cmd ; $ea
MACRO restart_channel
	db restart_channel_cmd
	dw \1 ; address
ENDM

	const new_song_cmd ; $eb
MACRO new_song
	db new_song_cmd
	dw \1 ; id
ENDM

	const sfx_priority_on_cmd ; $ec
MACRO sfx_priority_on
	db sfx_priority_on_cmd
ENDM

	const sfx_priority_off_cmd ; $ed
MACRO sfx_priority_off
	db sfx_priority_off_cmd
ENDM

; Global Audio RAM-dependent jump
; requires writes to designated memory to work
	const sound_jump_ram_cmd ; $ee
MACRO sound_jump_ram
	db sound_jump_ram_cmd
	dw \1 ; address
ENDM

; $ef --> ARGs < 2 --> 15(ARG)
; $e4 --> ARG > 1 --> bin(ARG)
	const stereo_panning_cmd ; $ef
MACRO stereo_panning
	if \1 | \2 > TRUE
		db old_panning_cmd ; $e4
		dn \1, \2
	else
		db stereo_panning_cmd ; $ef
		dn %1111 * (1 && \1), %1111 * (1 && \2) ; left enable, right enable
	endc
ENDM

	const sfx_toggle_noise_cmd ; $f0
MACRO sfx_toggle_noise
	db sfx_toggle_noise_cmd
	if _NARG > 0
		db \1 ; drum kit
	endc
ENDM

; from PokeRed/Yoshi
; used in Ray.Shade onward
	const pitch_inc_switch_cmd ; $f1
MACRO pitch_inc_switch
	db pitch_inc_switch_cmd
ENDM

; unused sprite posing command
; used in Yoshi
	const frame_swap_cmd ; $f2
MACRO frame_swap
	db frame_swap_cmd
ENDM

; From PokeRed
; used for new SFX in Ray/Shade onward
	const set_music_cmd ; $f3
MACRO set_music
	db set_music_cmd
ENDM

; used in HRBG, from Anicom
; Equivalent to 12-string sample
	const octave_pluck_on_cmd ; $f4
MACRO octave_pluck_on
	db octave_pluck_on_cmd
ENDM

; used in HRBG, from Anicom
; resets $f4, $f7
	const plucks_off_cmd ; $f5
MACRO plucks_off
	db plucks_off_cmd
ENDM

; used in HRBG, from Anicom
; Equivalent to piano sample
	const duty_sequence_cmd ; $f6
MACRO duty_sequence
	db duty_sequence_cmd
	db \1 ; id
ENDM

; used in HRBG, from Anicom
; Equivalent to overdrive sample
	const fifths_pluck_on_cmd ; $f7
MACRO fifths_pluck_on
	db fifths_pluck_on_cmd
ENDM

; used in HRBG, from Anicom
; tie/slur, skips initialization of:
; vibrato, staccato, duty/env sequences, plucks
	const toggle_tie_slur_cmd ; $f8
MACRO toggle_tie_slur
	db toggle_tie_slur_cmd
ENDM

; Sets a flag in Global Audio RAM
; scripts are free to use the flag for dynamic results
	const set_sound_event_cmd ; $f9
MACRO set_sound_event
	db set_sound_event_cmd
ENDM

	const set_condition_cmd ; $fa
MACRO set_condition
	db set_condition_cmd
	db \1 ; condition
ENDM

	const sound_jump_if_cmd ; $fb
MACRO sound_jump_if
	db sound_jump_if_cmd
	db \1 ; condition
	dw \2 ; address
ENDM

	const sound_jump_cmd ; $fc
MACRO sound_jump
	db sound_jump_cmd
	dw \1 ; address
ENDM

	const sound_loop_cmd ; $fd
MACRO sound_loop
	db sound_loop_cmd
	db \1 ; count
	dw \2 ; address
ENDM

	const sound_call_cmd ; $fe
MACRO sound_call
	db sound_call_cmd
	dw \1 ; address
ENDM

	const sound_ret_cmd ; $ff
MACRO sound_ret
	db sound_ret_cmd
ENDM

env_loop_cmd = sound_call_cmd
MACRO env_loop
	db env_loop_cmd
ENDM

env_ret_cmd = sound_ret_cmd
MACRO env_ret
	db env_ret_cmd
ENDM
