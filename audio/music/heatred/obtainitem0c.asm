HRM_ObtainItem0c:
	channel_count 3
	channel 5, HRM_ObtainItem0c_Ch5
	channel 6, HRM_ObtainItem0c_Ch6
	channel 7, HRM_ObtainItem0c_Ch7

HRM_ObtainItem0c_Ch5:
_chan = 1
	set_music
	tempo 256
	volume 7
	duty_cycle 3
	vibrato 4, 3, 2
	note_type 8, 10, 1
	octave 3
	note G#, 1
	note G#, 1
	note G#, 1
	volume_envelope 10, 3
	octave 4
	note E_, 3
	sound_ret

HRM_ObtainItem0c_Ch6:
_chan = 2
	set_music
	duty_cycle 3
	vibrato 10, 4, 4
	note_type 8, 12, 1
	octave 3
	note B_, 1
	note B_, 1
	note B_, 1
	volume_envelope 12, 2
	note B_, 3
	sound_ret

HRM_ObtainItem0c_Ch7:
_chan = 3
	set_music
	vibrato 4, 1, 3
	note_type 4, 1, 10
	octave 5
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	note B_, 4
	volume_envelope 2, 10
	note B_, 1
	volume_envelope 3, 10
	note B_, 1
	sound_ret