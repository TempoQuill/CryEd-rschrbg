HRM_DexRating0c:
	channel_count 3
	channel 5, HRM_DexRating0c_Ch5
	channel 6, HRM_DexRating0c_Ch6
	channel 7, HRM_DexRating0c_Ch7

HRM_DexRating0c_Ch5:
_chan = 1
	set_music
	tempo 256
	volume 7
	duty_cycle 2
	pitch_offset -1
	note_type 5, 10, 2
	octave 3
	note A_, 2
	note G_, 2
	note F_, 2
	note E_, 2
	note D_, 2
	note G_, 2
	note G_, 2
	octave 4
	note C_, 2
	note A_, 4
	note A#, 4
	note A_, 4
	sound_ret

HRM_DexRating0c_Ch6:
_chan = 2
	set_music
	duty_cycle 2
	note_type 5, 12, 1
	octave 2
	note F_, 2
	octave 3
	note A_, 2
	note A#, 2
	octave 4
	note C_, 2
	octave 3
	note C_, 2
	octave 4
	note E_, 2
	note F_, 2
	note G_, 2
	octave 2
	note F_, 4
	octave 3
	note C_, 4
	octave 2
	note F_, 4
	sound_ret

HRM_DexRating0c_Ch7:
_chan = 3
	set_music
	note_type 5, 1, 12
	octave 6
	note F_, 2
	note E_, 1
	rest 1
	note D_, 1
	rest 1
	note C_, 1
	rest 1
	octave 5
	note A#, 2
	octave 6
	note C_, 1
	rest 1
	note D_, 1
	rest 1
	note E_, 1
	rest 1
	note F_, 1
	rest 3
	note G_, 1
	rest 3
	note F_, 1
	rest 3
	sound_ret