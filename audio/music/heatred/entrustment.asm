HRM_Entrustment:
	channel_count 3
	channel 5, HRM_Entrustment_Ch5
	channel 6, HRM_Entrustment_Ch6
	channel 7, HRM_Entrustment_Ch7

HRM_Entrustment_Ch5:
_chan = 1
	set_music
	tempo 256
	volume 7
	duty_cycle 3
	vibrato 6, 3, 2
	note_type 6, 10, 1
	octave 3
	note B_, 2
	note B_, 1
	note B_, 1
	note B_, 2
	octave 4
	note E_, 2
	volume_envelope 10, 3
	note G#, 6
	sound_ret

HRM_Entrustment_Ch6:
_chan = 2
	set_music
	duty_cycle 3
	vibrato 15, 4, 4
	note_type 6, 12, 1
	octave 3
	note G#, 2
	note G#, 1
	note G#, 1
	note G#, 2
	note B_, 2
	volume_envelope 10, 2
	note G#, 6
	sound_ret

HRM_Entrustment_Ch7:
_chan = 3
	set_music
	vibrato 9, 1, 3
	note_type 3, 1, 11
	octave 5
	note E_, 2
	rest 2
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	note E_, 2
	rest 2
	note G#, 2
	rest 2
	note B_, 8
	volume_envelope 2, 11
	note B_, 2
	volume_envelope 3, 11
	note B_, 2
	sound_ret