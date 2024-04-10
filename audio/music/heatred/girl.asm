HRM_Girl:
	channel_count 3
	channel 1, HRM_Girl_Ch1
	channel 2, HRM_Girl_Ch2
	channel 3, HRM_Girl_Ch3

HRM_Girl_Ch1:
_chan = 1
	tempo 220
	volume 7, 7
	old_panning %1011, %1110
	duty_cycle 2
	note_type 6, 11, 1
	octave 4
	note G_, 2
	volume_envelope 7, 7
	octave 5
	note G_, 6
	duty_cycle 1
	volume_envelope 10, 1
	octave 3
	note A_, 2
	note G_, 2
	note F_, 2
.mainloop:
	old_panning %1110, %1011
	duty_cycle 2
	vibrato 1, 4, 1
	volume_envelope 7, 3
	octave 4
	note C_, 2
	rest 2
	note D_, 4
	note E_, 2
	rest 2
	note D_, 4
	note D#, 2
	note C_, 1
	rest 1
	note D#, 2
	note C_, 1
	rest 1
	note C_, 2
	octave 3
	note G_, 1
	rest 1
	octave 4
	note D#, 2
	note C_, 1
	rest 1
	note C_, 2
	rest 2
	note D_, 4
	note E_, 2
	rest 2
	note D_, 4
	note C_, 3
	rest 1
	octave 3
	note A_, 2
	note G_, 1
	rest 1
	note F_, 2
	note G_, 1
	rest 1
	note A_, 3
	rest 1
	sound_jump .mainloop

HRM_Girl_Ch2:
_chan = 2
	duty_cycle 2
	pitch_inc_switch
	note_type 6, 6, 2
	octave 4
	note E_, 6
	duty_cycle 1
	volume_envelope 10, 1
	note C_, 2
	octave 3
	note B_, 2
	note A_, 2
	note G#, 2
.mainloop:
	volume_envelope 14, 1
	octave 2
	note C_, 4
	octave 1
	note E_, 4
	octave 2
	note C_, 4
	octave 1
	note D#, 2
	note E_, 2
	octave 2
	note C_, 4
	octave 1
	note D#, 4
	octave 2
	note C_, 4
	octave 1
	note D#, 2
	note G_, 2
	octave 2
	note C_, 4
	octave 1
	note E_, 4
	octave 2
	note C_, 4
	octave 1
	note E_, 4
	octave 2
	note C_, 4
	octave 1
	note D_, 4
	octave 2
	note C_, 4
	octave 1
	note D_, 4
	sound_jump .mainloop

HRM_Girl_Ch3:
_chan = 3
	vibrato 11, 1, 3
	note_type 6, 2, 0
	envelope_sequence 0
	octave 5
	note G_, 1
	volume_envelope 3, 0
	envelope_sequence 0
	note G_, 1
	volume_envelope 2, 0
	envelope_sequence 0
	octave 6
	note G_, 12
.mainloop:
	octave_pluck_on
	vibrato 11, 2, 3
	note_type 3, 1, 21
	octave 5
	note G_, 3
	plucks_off
	volume_envelope 3, 21
	octave 8
	note B_, 1
	rest 3
	note B_, 1
	octave_pluck_on
	volume_envelope 1, 21
	octave 5
	note B_, 8
	octave 6
	note C_, 4
	rest 4
	octave 5
	note B_, 8
	note A_, 4
	note G_, 2
	rest 2
	note F#, 4
	note F_, 2
	rest 2
	note E_, 4
	note F_, 2
	rest 2
	note F#, 4
	note A_, 2
	rest 2
	note G_, 3
	plucks_off
	volume_envelope 3, 21
	octave 8
	note B_, 1
	rest 3
	note B_, 1
	octave_pluck_on
	volume_envelope 1, 21
	octave 5
	note A_, 8
	note G_, 4
	rest 4
	note F_, 8
	note E_, 4
	note D_, 2
	rest 2
	note C_, 4
	octave 4
	note B_, 2
	rest 2
	octave 5
	note C_, 4
	note D_, 2
	rest 2
	note E_, 4
	note F_, 2
	rest 2
	sound_jump .mainloop
