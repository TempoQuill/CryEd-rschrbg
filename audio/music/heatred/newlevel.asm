HRM_NewLevel:
	channel_count 3
	channel 5, HRM_NewLevel_Ch5
	channel 6, HRM_NewLevel_Ch6
	channel 7, HRM_NewLevel_Ch7

HRM_NewLevel_Ch5:
_chan = 1
	set_music
	tempo 256
	volume 7
	duty_cycle 2
	vibrato 6, 3, 2
	note_type 6, 10, 4
	octave 4
	note C_, 3
	vibrato 0, 0, 0
	volume_envelope 10, 1
	note C_, 1
	note C_, 1
	note C_, 1
	note D_, 2
	note D_, 2
	note D_, 2
	vibrato 6, 3, 2
	volume_envelope 10, 4
	note C_, 6
	sound_ret

HRM_NewLevel_Ch6:
_chan = 2
	set_music
	duty_cycle 2
	vibrato 15, 6, 4
	note_type 6, 12, 3
	octave 2
	note F_, 3
	volume_envelope 12, 1
	note F_, 1
	note F_, 1
	note F_, 1
	octave 1
	note A#, 2
	note A#, 2
	note A#, 2
	volume_envelope 12, 3
	octave 2
	note F_, 6
	sound_ret

HRM_NewLevel_Ch7:
_chan = 3
	set_music
	vibrato 9, 1, 3
	note_type 3, 1, 12
	octave 5
	note A_, 4
	rest 2
	note A_, 1
	rest 1
	note A_, 1
	rest 1
	note A_, 1
	rest 1
	note A#, 2
	rest 2
	note A#, 2
	rest 2
	note A#, 2
	rest 2
	note A_, 8
	volume_envelope 2, 12
	note A_, 2
	volume_envelope 3, 12
	note A_, 2
	sound_ret
