HRM_Mansion:
	channel_count 4
	channel 1, HRM_Mansion_Ch1
	channel 2, HRM_Mansion_Ch2
	channel 3, HRM_Mansion_Ch3
	channel 4, HRM_Mansion_Ch4

HRM_Mansion_Ch1:
_chan = 1
	tempo 148
	volume 7
	vibrato 11, 2, 5
	duty_cycle 2
	transpose 0, 1
	pitch_inc_switch
.mainloop:
	staccato 4
	stereo_panning TRUE, FALSE
	note_type 12, 6, 3
	octave 5
	note E_, 1
	note E_, 1
	octave 4
	note B_, 1
	note B_, 1
	stereo_panning TRUE, TRUE
	note C_, 1
	rest 2
	staccato 6
	stereo_panning FALSE, TRUE
	octave 5
	note B_, 2
	stereo_panning TRUE, TRUE
	note E_, 2
	stereo_panning TRUE, FALSE
	octave 4
	note C_, 2
	stereo_panning TRUE, TRUE
	note B_, 2
	stereo_panning FALSE, TRUE
	note E_, 2
	stereo_panning TRUE, TRUE
	staccato 4
	note C_, 1
	octave 5
	note B_, 1
	rest 2
	sound_loop 14, .mainloop
	rest 16
	rest 16
	rest 15
	octave 4
	note C_, 1
	staccato -1
	volume_envelope 6, 12
	octave 5
	note B_, 3
	sound_jump .mainloop

HRM_Mansion_Ch2:
_chan = 2
	duty_cycle 2
	vibrato 10, 2, 4
	note_type 12, 12, 2
	transpose 0, 1
	pitch_offset 2
	stereo_panning TRUE, TRUE
.loop1:
	rest 16
	rest 16
	sound_loop 4, .loop1
.mainloop:
	note_type 12, 12, 2
.loop2:
	octave 3
	note E_, 4
	note D#, 4
	note B_, 4
	note A#, 4
	note G_, 4
	note G#, 4
	note A_, 4
	note A#, 4
	note E_, 4
	note D#, 4
	note B_, 4
	note A#, 4
	note G_, 4
	note G#, 4
	rest 4
	note A#, 4
	sound_loop 3, .loop2
	octave 3
	note E_, 4
	note D#, 4
	note B_, 4
	note A#, 4
	note G_, 4
	note G#, 4
	rest 4
	note A#, 4
	note E_, 4
	note D#, 4
	note B_, 4
	note A#, 4
	note G_, 4
	note G#, 4
	note G_, 4
	note D#, 4
	sound_jump .mainloop

HRM_Mansion_Ch3:
_chan = 3
	note_type 12, 1, 6
	transpose 1, 1
	pitch_inc_switch
	stereo_panning TRUE, TRUE
.mainloop:
	octave 2
	note B_, 2
	rest 2
	octave 3
	note E_, 2
	rest 2
	note E_, 2
	rest 2
	note E_, 2
	rest 2
	note E_, 2
	rest 2
	note E_, 2
	rest 2
	note E_, 2
	rest 2
	note E_, 2
	rest 2
	note C_, 2
	rest 2
	octave 3
	note D#, 2
	rest 2
	note D#, 2
	rest 2
	note D#, 2
	rest 2
	note D#, 2
	rest 2
	note D#, 2
	rest 2
	note D#, 2
	rest 2
	note D#, 2
	rest 2
	sound_loop 8, .mainloop
	note E_, 16
	note D#, 16
	note G_, 16
	note G#, 8
	note D#, 8
	sound_jump .mainloop

HRM_Mansion_Ch4:
_chan = 4
	toggle_noise 1
	stereo_panning TRUE, TRUE
	drum_speed 6
	rest 16
	rest 16
	rest 16
	rest 16
.mainloop:
	drum_note 5, 2
	drum_note 5, 2
	drum_note 6, 4
	drum_note 5, 2
	drum_note 5, 2
	drum_note 6, 4
	drum_note 5, 2
	drum_note 5, 2
	drum_note 6, 4
	drum_note 5, 2
	drum_note 5, 2
	drum_note 7, 4
	drum_note 5, 2
	drum_note 5, 2
	rest 2
	rest 10
	rest 8
	drum_note 7, 8
	sound_jump .mainloop


