Sfx_Blink1:
	channel_count 2
	channel 5, Sfx_Blink1_Ch5
	channel 6, Sfx_Blink1_Ch6

Sfx_Blink1_Ch5:
_chan = 1
	pitch_offset -4

Sfx_Blink1_Ch6:
_chan = 2
	duty_cycle 2
	square_note 4, 10, 1, 1978
	sound_ret

Sfx_Jump:
	channel_count 1
	channel 7, Sfx_Jump_Ch7

Sfx_Jump_Ch7:
_chan = 3
	set_music
	staccato 8
	note_type 1, 1, 4
	octave 4
	pitch_slide 1, 8, A#
	note D_, 9
	sound_ret

Sfx_Descend:
	channel_count 1
	channel 6, Sfx_Descend_Ch6

Sfx_Descend_Ch6:
_chan = 2
	set_music
	duty_cycle 2
	note_type 4, 13, 1
	octave 7
	note C#, 1
	note C_, 1
	note C#, 1
	volume_envelope 12, 1
	note C_, 1
	octave 6
	note B_, 1
	octave 7
	note C_, 1
	volume_envelope 11, 1
	octave 6
	note B_, 1
	note A#, 1
	note B_, 1
	volume_envelope 10, 1
	note A#, 1
	note A_, 1
	note A#, 1
	volume_envelope 9, 1
	note A_, 1
	note G#, 1
	note A_, 1
	volume_envelope 8, 1
	note G#, 1
	note G_, 1
	note G#, 1
	volume_envelope 7, 1
	note G_, 1
	note F#, 1
	note G_, 1
	volume_envelope 6, 1
	note F#, 1
	note F_, 1
	note F#, 1
	volume_envelope 5, 1
	note F_, 1
	note E_, 1
	note F_, 1
	volume_envelope 4, 1
	note E_, 1
	note D#, 1
	note E_, 1
	sound_ret

Sfx_GameFreakLogoChaos:
	channel_count 3
	channel 5, Sfx_GameFreakLogoChaos_Ch5
	channel 6, Sfx_GameFreakLogoChaos_Ch6
	channel 7, Sfx_GameFreakLogoChaos_Ch7

Sfx_GameFreakLogoChaos_Ch5:
_chan = 1
	set_music
	duty_cycle 2
	note_type 2, 6, 2
	rest 7
	octave 4
	note A#, 1
	note F_, 1
	note A#, 1
	octave 5
	note D_, 1
	note F_, 1
	note A#, 1
	octave 6
	note D_, 1
	note F_, 16
	sound_ret

Sfx_GameFreakLogoChaos_Ch6:
_chan = 2
	set_music
	duty_cycle 2
	note_type 2, 12, 1
	octave 4
	note A#, 1
	note F_, 1
	note A#, 1
	octave 5
	note D_, 1
	note F_, 1
	note A#, 1
	octave 6
	note D_, 1
	note F_, 7
	volume_envelope 3, 4
	octave 4
	note A#, 1
	note F_, 1
	note A#, 1
	octave 5
	note D_, 1
	note F_, 1
	note A#, 1
	octave 6
	note D_, 1
	note F_, 9
	sound_ret

Sfx_GameFreakLogoChaos_Ch7:
_chan = 3
	set_music
	note_type 2, 1, 5
	octave 5
	note A#, 1
	note F_, 1
	note A#, 1
	octave 6
	note D_, 1
	note F_, 1
	note A#, 1
	note D_, 1
	note F_, 1
	volume_envelope 2, 5
	note F_, 1
	note A#, 1
	octave 6
	note D_, 1
	note F_, 1
	note A#, 1
	note D_, 1
	note F_, 1
	volume_envelope 3, 5
	note F_, 1
	note A#, 1
	octave 6
	note D_, 1
	note F_, 1
	note A#, 1
	note D_, 1
	note F_, 1
	sound_ret

Sfx_Blink2:
	channel_count 2
	channel 5, Sfx_Blink2_Ch5
	channel 6, Sfx_Blink2_Ch6

Sfx_Blink2_Ch5:
_chan = 1
	pitch_offset -4

Sfx_Blink2_Ch6:
_chan = 2
	duty_cycle 2
	square_note 4, 10, 1, 1961
	sound_ret

Sfx_Burnout:
	channel_count 1
	channel 8, Sfx_Burnout_Ch8

Sfx_Burnout_Ch8:
_chan = 4
	noise_note 1, 1, 8, 0
	noise_note 1, 2, 8, 1
	noise_note 1, 3, 8, 3
	noise_note 1, 2, 8, 16
	noise_note 3, 5, 8, 18
	noise_note 3, 7, 8, 19
	noise_note 3, 9, 8, 20
	noise_note 3, 10, 8, 22
	noise_note 3, 11, 8, 36
	noise_note 15, 12, 2, 38
	sound_ret

Sfx_Fall:
	channel_count 1
	channel 5, Sfx_Fall_Ch5

Sfx_Fall_Ch5:
_chan = 1
	duty_cycle 1
	square_note 1, 13, 0, 1984
	pitch_sweep 1, -7
	square_note 5, 13, 1, 1984
	pitch_sweep 0, 8
	sound_ret

Sfx_StopInMidAir:
	channel_count 1
	channel 8, Sfx_StopInMidAir_Ch8

Sfx_StopInMidAir_Ch8:
_chan = 4
	noise_note 1, 15, 8, 39
	noise_note 2, 15, 8, 152
	noise_note 1, 15, 8, 1
	noise_note 1, 15, 8, 20
	noise_note 1, 15, 8, 39
	sound_ret

Sfx_Dash:
	channel_count 1
	channel 8, Sfx_Dash_Ch8

Sfx_Dash_Ch8:
_chan = 4
	noise_note 3, 4, 7, 64
	noise_note 3, 5, 7, 65
	noise_note 3, 7, 7, 66
	noise_note 21, 8, 3, 68
	sound_ret

Sfx_SonicBoom:
	channel_count 1
	channel 8, Sfx_SonicBoom_Ch8

Sfx_SonicBoom_Ch8:
_chan = 4
	noise_note 2, 13, 4, 103
	noise_note 2, 15, 1, 2
	noise_note 4, 13, 7, 111
	noise_note 4, 14, 7, 127
	noise_note 2, 15, 7, 99
	noise_note 23, 15, 7, 112
	noise_note 23, 7, 7, 112
	sound_ret

Sfx_EmailNotification:
	channel_count 1
	channel 6, Sfx_EmailNotification_Ch6

Sfx_EmailNotification_Ch6:
_chan = 2
	set_music
	duty_cycle 2
	vibrato 0, 1, 0
	note_type 4, 1, 1
	envelope_sequence 4
	octave 4
	note G_, 1
	octave 5
	note C_, 1
	note G_, 6
	sound_ret

Sfx_RecieveItem:
	channel_count 1
	channel 5, Sfx_RecieveItem_Ch5

Sfx_RecieveItem_Ch5:
_chan = 1
	pitch_sweep 1, 5
	duty_cycle 2
	square_note 4, 15, 7, 1536
	square_note 4, 5, 7, 1536
	square_note 4, 2, 7, 1536
	square_note 4, 1, 7, 1536
	pitch_sweep 0, 8
	sound_ret

Sfx_CatchItem:
	channel_count 1
	channel 8, Sfx_CatchItem_Ch8

Sfx_CatchItem_Ch8:
_chan = 4
	noise_note 1, 4, -1, 39
	noise_note 1, 15, 1, 34
	noise_note 6, 15, 1, 1
	sound_ret

Sfx_RegisterEmailBoops:
	channel_count 1
	channel 5, Sfx_RegisterEmailBoops_Ch5

Sfx_RegisterEmailBoops_Ch5:
_chan = 1
	set_music
	duty_cycle 2
	vibrato 0, 1, 0
	note_type 4, 1, 1
	envelope_sequence 5
	octave 4
	note C_, 1
	note G_, 1
	note C_, 1
	octave 5
	note C_, 4
	sound_ret

Sfx_UniversityTM:
	channel_count 1
	channel 5, Sfx_UniversityTM_Ch5

Sfx_UniversityTM_Ch5:
_chan = 1
	pitch_sweep 1, 6
	square_note 4, 8, 2, 1792
.loop1
	pitch_sweep 2, 6
	square_note 0, 5, 8, 1982
	sound_loop 3, .loop1
.loop2
	square_note 0, 5, 8, 1987
	sound_loop 3, .loop2
.loop3
	pitch_sweep 1, 6
	square_note 0, 5, 8, 1991
	sound_loop 3, .loop3
.loop4
	square_note 0, 5, 8, 1994
	sound_loop 3, .loop4
.loop5
	square_note 0, 5, 8, 1997
	sound_loop 19, .loop5
	sound_ret

Sfx_AlmaMaterFanfare:
	channel_count 3
	channel 5, Sfx_AlmaMaterFanfare_Ch5
	channel 6, Sfx_AlmaMaterFanfare_Ch6
	channel 7, Sfx_AlmaMaterFanfare_Ch7

Sfx_AlmaMaterFanfare_Ch5:
_chan = 1
	set_music
	sfx_priority_on
	tempo 172
	volume 7
	duty_cycle 3
	pitch_inc_switch
	vibrato 18, 4, 4
	note_type 12, 10, 4
	octave 3
	note C_, 6
	tempo 176
	volume_envelope 9, 2
	note C_, 2
	tempo 180
	volume_envelope 10, 4
	note C_, 4
	tempo 184
	octave 2
	note A#, 4
	tempo 188
	volume_envelope 9, 7
	note A_, 16
	sfx_priority_off
	sound_ret

Sfx_AlmaMaterFanfare_Ch6:
_chan = 2
	set_music
	duty_cycle 3
	vibrato 24, 6, 5
	note_type 12, 13, 6
	octave 2
	note E_, 6
	note F_, 2
	note G_, 4
	note C_, 4
	note F_, 16
	sound_ret

Sfx_AlmaMaterFanfare_Ch7:
_chan = 3
	set_music
	vibrato 21, 3, 3
	note_type 12, 1, 6
	octave 4
	note G_, 4
	vibrato 0, 3, 3
	volume_envelope 2, 6
	note G_, 2
	vibrato 21, 3, 3
	volume_envelope 1, 6
	note A_, 2
	note A#, 4
	note E_, 4
	note F_, 4
	vibrato 0, 3, 3
	volume_envelope 2, 6
	note F_, 2
	volume_envelope 3, 6
	note F_, 2
	rest 8
	sound_ret

Sfx_PlaneLanding:
	channel_count 2
	channel 5, Sfx_PlaneLanding_Ch5
	channel 8, Sfx_PlaneLanding_Ch8

Sfx_PlaneLanding_Ch5:
_chan = 1
	pitch_sweep 9, 3
	duty_cycle_pattern 0, 2, 0, 2
	square_note 2, 2, 8, 700
	square_note 2, 4, 8, 704
	square_note 2, 6, 8, 700
	square_note 2, 8, 8, 704
.loop:
	square_note 2, 10, 8, 700
	square_note 2, 12, 8, 704
	sound_loop 12, .loop
	pitch_sweep 9, -5
	square_note 44, 13, 4, 704
	sound_ret

Sfx_PlaneLanding_Ch8:
_chan = 4
	noise_note 2, 1, 2, 52
	noise_note 2, 3, 2, 52
	noise_note 2, 5, 2, 52
	noise_note 2, 7, 2, 52
.loop:
	noise_note 2, 9, 2, 52
	sound_loop 24, .loop
	noise_note 3, 9, 3, 53 + 8
	noise_note 3, 8, 3, 54 + 8
	noise_note 3, 7, 3, 55 + 8
	noise_note 4, 6, 4, 68 + 8
	noise_note 4, 5, 4, 69 + 8
	noise_note 4, 4, 4, 70 + 8
	noise_note 5, 3, 5, 71 + 8
	noise_note 5, 2, 6, 84 + 8
	noise_note 5, 1, 7, 85 + 8
	sound_ret

Sfx_PlaneTakingOff:
	channel_count 1
	channel 8, Sfx_PlaneTakingOff_Ch8

Sfx_PlaneTakingOff_Ch8:
_chan = 4
	noise_note 5, 15, 7, 87
	noise_note 5, 15, 7, 94
	noise_note 5, 15, 7, 93
	noise_note 5, 15, 7, 92
	noise_note 5, 15, 7, 79
	noise_note 31, 15, 7, 70
	noise_note 31, 7, 7, 70
	noise_note 31, 3, 7, 70
	sound_ret

Sfx_GGG:
	channel_count 4
	channel 5, Sfx_GGG_Ch5
	channel 6, Sfx_GGG_Ch6
	channel 7, Sfx_GGG_Ch7
	channel 8, Sfx_GGG_Ch8

Sfx_GGG_Ch5:
_chan = 1
	set_music
	tempo 172
	volume 7
	note_type 8, 14, 1
	octave 3
	note G#, 2
	note F_, 3
	octave 4
	note C_, 3
	sound_ret

Sfx_GGG_Ch6:
_chan = 2
	set_music
	pitch_offset 2
	note_type 8, 11, 1
	octave 2
	note G#, 2
	note F_, 3
	octave 3
	note C_, 3
	sound_ret

Sfx_GGG_Ch7:
_chan = 3
	set_music
	staccato 7
	note_type 8, 2, 7
	octave 2
	note D#, 2
	note F_, 3
	note F_, 3
	sound_ret

Sfx_GGG_Ch8:
_chan = 4
	set_music
	sfx_toggle_noise 1
	drum_speed 8
	drum_note 12, 1
	drum_note 11, 1
	drum_note 10, 3
	drum_note 10, 3
	sound_ret
