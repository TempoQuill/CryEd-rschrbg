HRM_LavenderTown:
	channel_count 4
	channel 1, HRM_LavenderTown_Ch1
	channel 2, HRM_LavenderTown_Ch2
	channel 3, HRM_LavenderTown_Ch3
	channel 4, HRM_LavenderTown_Ch4
HRM_LavenderTown_Ch1:
_chan = 1
	tempo 152
	volume 7
	duty_cycle 2
	old_panning %1111, %1111
	vibrato 0, 1, 5
	note_type 12, 4, 7
	rest 16
	rest 16
	rest 16
	rest 16
.mainloop:
	old_panning %1101, %1011
	octave 5
	note C_, 4
	note G_, 4
	note B_, 4
	note F#, 4
	sound_jump .mainloop

HRM_LavenderTown_Ch2:
_chan = 2
	vibrato 0, 1, 5
	duty_cycle 2
	note_type 12, 4, 7
.loop1:
	octave 5
	note C_, 4
	note G_, 4
	note B_, 4
	note F#, 4
	sound_loop 4, .loop1
.mainloop:
	pitch_inc_switch
	duty_cycle 1
	vibrato 0, 3, 4
	volume_envelope 6, 7
	octave 3
	note G_, 8
	note G_, 8
	note E_, 8
	note E_, 8
	note G_, 4
	note F#, 4
	note E_, 4
	note B_, 4
	note C#, 8
	note C#, 8
	note G_, 8
	note G_, 8
	note F#, 8
	note F#, 8
	note B_, 4
	note G_, 4
	note F#, 4
	note B_, 4
	octave 4
	note C_, 8
	note C_, 8
	octave 3
	note G_, 8
	note G_, 8
	note E_, 8
	note E_, 8
	note G_, 4
	note F#, 4
	note E_, 4
	note B_, 4
	note C#, 8
	note C#, 8
	note G_, 8
	note G_, 8
	note F#, 8
	note F#, 8
	note B_, 4
	note G_, 4
	note F#, 4
	note B_, 4
	note C_, 8
	note C_, 8
	rest 16
	rest 16
	rest 16
	rest 16
	sound_jump .mainloop

HRM_LavenderTown_Ch3:
_chan = 3
	vibrato 4, 1, 1
	note_type 12, 2, 3
	rest 16
	rest 16
	rest 16
	rest 16
.mainloop:
	octave 4
	note E_, 16
	note D_, 16
	note C_, 16
	note E_, 4
	note C_, 4
	octave 3
	note B_, 4
	octave 4
	note E_, 4
	note E_, 16
	note D_, 16
	note C_, 16
	note E_, 4
	note C_, 4
	octave 3
	note B_, 4
	octave 4
	note E_, 4
	note E_, 16
	note D_, 16
	note C_, 16
	note E_, 4
	note C_, 4
	octave 3
	note B_, 4
	octave 4
	note E_, 4
	volume_envelope 3, 11
	octave 5
	note B_, 4
	note G_, 4
	note F#, 4
	note B_, 4
	volume_envelope 2, 11
	note B_, 4
	note G_, 4
	note F#, 4
	note B_, 4
	octave 6
	note B_, 4
	note G_, 4
	note F#, 4
	note B_, 4
	volume_envelope 2, 3
	octave 4
	note E_, 4
	note G_, 4
	note F#, 4
	note B_, 4
	note E_, 16
	note D_, 16
	note C_, 16
	note E_, 4
	note C_, 4
	octave 3
	note B_, 4
	octave 4
	note E_, 4
	note E_, 16
	note D_, 16
	note C_, 16
	note E_, 4
	note C_, 4
	octave 3
	note B_, 4
	octave 4
	note E_, 4
	note E_, 16
	note D_, 16
	note C_, 16
	note E_, 4
	note C_, 4
	octave 3
	note B_, 4
	octave 4
	note E_, 4
	volume_envelope 3, 11
	octave 5
	note B_, 4
	note G_, 4
	note F#, 4
	note B_, 4
	octave 6
	note B_, 4
	note G_, 4
	note F#, 4
	note B_, 4
	octave 7
	note B_, 4
	note G_, 4
	note F#, 4
	note B_, 4
	volume_envelope 2, 3
	octave 4
	note E_, 4
	note G_, 4
	note F#, 4
	note B_, 4
	sound_jump .mainloop

HRM_LavenderTown_Ch4:
_chan = 4
	toggle_noise 10
	drum_speed 12
	rest 16
	rest 16
	rest 16
	rest 16
.mainloop:
	drum_note 6, 8
	drum_note 6, 8
	sound_jump .mainloop


