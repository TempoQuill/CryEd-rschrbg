HRM_BadGuy:
	channel_count 3
	channel 1, HRM_BadGuy_Ch1
	channel 2, HRM_BadGuy_Ch2
	channel 3, HRM_BadGuy_Ch3

HRM_BadGuy_Ch1:
_chan = 1
	tempo 132
	volume 7
	duty_cycle 1
	vibrato 7, 6, 3
	pitch_offset 2
	relative_pitch 2
	old_panning %1110, %1101
	note_type 12, 10, 1
	rest 8
	octave 3
	note B_, 2
	note A#, 2
	volume_envelope 10, 1
	note B_, 4
	note F#, 4
	note F#, 4
	volume_envelope 6, 12
	note A#, 4
.mainloop:
	volume_envelope 10, 1
	note F#, 4
	note F#, 4
	note F#, 4
	volume_envelope 6, 12
	note A#, 4
	sound_jump .mainloop

HRM_BadGuy_Ch2:
_chan = 2
	duty_cycle 0
	vibrato 7, 6, 2
	relative_pitch 2
	pitch_inc_switch
	note_type 12, 11, 6
	octave 2
	note B_, 2
	note A#, 2
	note B_, 8
.mainloop:
	volume_envelope 12, 2
	octave 3
	note D#, 2
	note D_, 2
	note C#, 2
	note C_, 2
	octave 2
	note B_, 4
	note B_, 4
	note B_, 4
	note B_, 4
	note B_, 4
	volume_envelope 4, 15
	note A#, 4
	volume_envelope 12, 2
	note G_, 2
	note G#, 2
	note A_, 2
	note A#, 2
	note B_, 4
	note B_, 4
	note B_, 4
	note B_, 4
	note B_, 4
	volume_envelope 3, 15
	note A#, 4
	sound_jump .mainloop

HRM_BadGuy_Ch3:
_chan = 3
	vibrato 3, 4, 4
	note_type 12, 2, 5
	octave 3
	note C#, 2
	octave 2
	note G#, 2
	octave 3
	note G#, 1
	rest 1
	note G_, 1
	rest 1
	note G#, 4
.mainloop:
	octave 2
	note C#, 1
	rest 3
	note C#, 1
	rest 3
	note C#, 1
	rest 3
	octave 3
	note C#, 4
	octave 2
	note G#, 1
	rest 3
	note D_, 1
	rest 3
	note C#, 1
	rest 3
	octave 3
	note C_, 4
	octave 2
	note C#, 1
	rest 3
	note C#, 1
	rest 3
	octave 3
	note C#, 1
	rest 1
	octave 2
	note G#, 1
	rest 1
	note C#, 4
	note G#, 2
	rest 2
	octave 3
	note C#, 3
	rest 1
	octave 2
	note C#, 3
	rest 1
	octave 3
	note C_, 4
	sound_jump .mainloop


