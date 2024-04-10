HRM_CaughtNewMon:
	channel_count 3
	channel 5, HRM_CaughtNewMon_Ch5
	channel 6, HRM_CaughtNewMon_Ch6
	channel 7, HRM_CaughtNewMon_Ch7

HRM_CaughtNewMon_Ch5:
_chan = 1
	set_music
	tempo 245
	volume 7
	duty_cycle 2
	note_type 6, 10, 1
	octave 4
	note E_, 2
	note E_, 1
	note E_, 1
	note C#, 2
	note C#, 1
	note C#, 1
	note E_, 2
	note E_, 1
	note E_, 1
	note C_, 2
	note C_, 1
	note C_, 1
	vibrato 5, 4, 2
	volume_envelope 10, 4
	octave 3
	note B_, 6
	sound_ret

HRM_CaughtNewMon_Ch6:
_chan = 2
	set_music
	duty_cycle 2
	note_type 6, 12, 1
	octave 2
	note B_, 2
	octave 3
	note B_, 1
	octave 2
	note B_, 1
	note A_, 2
	octave 3
	note A_, 1
	octave 2
	note A_, 1
	note G#, 2
	octave 3
	note G#, 1
	octave 2
	note G#, 1
	note F#, 2
	octave 3
	note F#, 1
	octave 2
	note F#, 1
	vibrato 14, 6, 4
	volume_envelope 12, 3
	note E_, 6
	sound_ret

HRM_CaughtNewMon_Ch7:
_chan = 3
	set_music
	vibrato 0, 1, 3
	note_type 3, 1, 11
	octave 5
	note G#, 2
	rest 2
	note G#, 1
	rest 1
	note G#, 1
	rest 1
	note E_, 2
	rest 2
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	note B_, 2
	rest 2
	note B_, 1
	rest 1
	note B_, 1
	rest 1
	note A_, 2
	rest 2
	note A_, 1
	rest 1
	note A_, 1
	rest 1
	note G#, 8
	volume_envelope 2, 11
	note G#, 2
	volume_envelope 3, 11
	note G#, 2
	sound_ret
