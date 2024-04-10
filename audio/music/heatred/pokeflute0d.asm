HRM_Pokeflute0d:
	channel_count 3
	channel 5, HRM_Pokeflute0d_Ch5
	channel 6, HRM_Pokeflute0d_Ch6
	channel 7, HRM_Pokeflute0d_Ch7

HRM_Pokeflute0d_Ch5:
_chan = 1
	tempo 256

HRM_Pokeflute0d_Ch6:
_chan = 2
	toggle_music
	note_type 8, 0, 0
	rest 5
	rest 7
	rest 5
	rest 5
	rest 5
	rest 5
	sound_ret

HRM_Pokeflute0d_Ch7:
_chan = 3
	toggle_music
	vibrato 17, 1, 5
	note_type 8, 1, 11
	octave 5
	note E_, 3
	note F_, 3
	note G_, 7
	note A_, 3
	note G_, 3
	octave 6
	note C_, 13
	rest 2
	sound_ret