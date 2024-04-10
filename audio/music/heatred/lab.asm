HRM_Lab:
	channel_count 3
	channel 1, HRM_Lab_Ch1
	channel 2, HRM_Lab_Ch2
	channel 3, HRM_Lab_Ch3

HRM_Lab_Ch1:
_chan = 1
	tempo 156
	volume 7
	duty_cycle 1
	old_panning %1011, %1110
	note_type 12, 10, 2
	octave 2
	note B_, 1
	octave 3
	note C_, 1
	note D_, 1
	note E_, 1
	note F#, 1
	note G_, 1
	note A_, 1
	note A#, 1
.mainloop:
	note B_, 4
	note A_, 2
	note B_, 2
	note G_, 4
	note F#, 2
	note G_, 2
	note A_, 4
	note G_, 8
	note B_, 4
	note G_, 4
	note F#, 2
	note G_, 2
	note E_, 4
	note D_, 2
	note E_, 2
	note F#, 4
	note E_, 8
	note G_, 4
	note G_, 6
	note E_, 1
	note G_, 1
	octave 4
	note C_, 8
	octave 3
	note B_, 6
	note G_, 1
	note B_, 1
	octave 4
	note D_, 8
	octave 3
	note A_, 4
	note B_, 2
	note A_, 2
	note G_, 2
	note B_, 2
	note A_, 2
	note G_, 2
	note F#, 2
	note G_, 2
	note F#, 2
	note E_, 2
	note F#, 2
	note E_, 2
	note D_, 2
	note C_, 2
	sound_jump .mainloop

HRM_Lab_Ch2:
_chan = 2
	duty_cycle 2
	pitch_inc_switch
	note_type 6, 10, 2
	rest 4
	octave 2
	note F#, 2
	rest 2
	note D_, 2
	rest 2
	octave 1
	note A_, 2
	rest 2
.mainloop:
	note G_, 2
	rest 2
	octave 2
	note G_, 2
	rest 6
	note G_, 2
	rest 6
	note D_, 2
	rest 6
	octave 1
	note B_, 2
	rest 2
	note G_, 2
	rest 2
	octave 2
	note G_, 2
	rest 2
	note D_, 2
	rest 2
	note G_, 2
	rest 2
	octave 1
	note B_, 1
	rest 1
	note G_, 2
	octave 2
	note F#, 2
	note G_, 1
	rest 1
	note D_, 4
	octave 1
	note G_, 2
	rest 2
	note E_, 2
	rest 2
	octave 2
	note E_, 2
	rest 6
	note E_, 2
	rest 6
	octave 1
	note B_, 2
	rest 6
	note G_, 2
	rest 2
	note E_, 2
	rest 2
	octave 2
	note E_, 2
	rest 2
	octave 1
	note B_, 2
	rest 2
	octave 2
	note E_, 2
	rest 2
	octave 1
	note G_, 1
	rest 1
	note E_, 2
	octave 2
	note D#, 2
	note E_, 1
	rest 1
	octave 1
	note G_, 4
	note E_, 2
	rest 2
	note C_, 2
	rest 2
	octave 2
	note C_, 2
	rest 6
	note C_, 2
	rest 6
	note C_, 2
	rest 2
	octave 1
	note B_, 2
	rest 2
	note A_, 2
	rest 2
	note G_, 2
	rest 2
	octave 2
	note D_, 2
	rest 6
	note G_, 2
	rest 6
	note G_, 2
	rest 2
	note D_, 2
	rest 2
	octave 1
	note G_, 2
	rest 2
	note D_, 2
	rest 2
	note A_, 2
	rest 2
	octave 2
	note D_, 2
	rest 2
	note A_, 2
	rest 2
	octave 1
	note A_, 2
	rest 2
	octave 2
	note E_, 2
	rest 2
	note A_, 2
	rest 2
	octave 3
	note E_, 2
	rest 2
	octave 1
	note D_, 4
	octave 2
	note E_, 2
	rest 2
	note D_, 2
	rest 2
	note C_, 2
	rest 2
	octave 1
	note B_, 2
	rest 2
	note A_, 2
	rest 2
	note G_, 2
	rest 2
	note F#, 2
	rest 2
	sound_jump .mainloop

HRM_Lab_Ch3:
_chan = 3
	octave_pluck_on
	vibrato 19, 2, 4
	note_type 6, 1, 21
	octave 4
	note G_, 2
	note A_, 2
	note B_, 2
	octave 5
	note C_, 2
	note D_, 2
	note E_, 2
	note F_, 2
	note F#, 2
.mainloop:
	note G_, 12
	note F#, 2
	note E_, 2
	note D_, 12
	note C#, 2
	note D_, 2
	note E_, 4
	rest 4
	note D_, 12
	rest 3
	octave 4
	note G_, 2
	octave 5
	note D_, 6
	rest 1
	note E_, 12
	note D_, 2
	note C_, 2
	octave 4
	note B_, 12
	note A_, 2
	note B_, 2
	octave 5
	note C_, 4
	rest 4
	octave 4
	note B_, 12
	rest 3
	note E_, 2
	note B_, 6
	rest 1
	octave 5
	note C_, 12
	octave 4
	note G_, 2
	octave 5
	note C_, 1
	octave 4
	note G_, 2
	octave 5
	note E_, 12
	rest 3
	note D_, 12
	octave 4
	note B_, 2
	octave 5
	note D_, 1
	octave 4
	note B_, 2
	octave 5
	note G_, 12
	rest 2
	note F_, 1
	note F#, 8
	note G_, 4
	note F#, 4
	note E_, 8
	note F#, 4
	note E_, 4
	note D_, 2
	rest 2
	octave 4
	note A_, 2
	rest 2
	note B_, 2
	rest 2
	octave 5
	note C_, 2
	rest 2
	note D_, 2
	rest 2
	note E_, 2
	rest 2
	note F_, 2
	rest 2
	note F#, 2
	rest 2
	sound_jump .mainloop


