HRM_ViridianForest:
	channel_count 4
	channel 1, HRM_ViridianForest_Ch1
	channel 2, HRM_ViridianForest_Ch2
	channel 3, HRM_ViridianForest_Ch3
	channel 4, HRM_ViridianForest_Ch4

HRM_ViridianForest_Ch1:
_chan = 1
	tempo 152
	volume 7
	pitch_inc_switch
	vibrato 10, 1, 4
.mainloop:
	duty_cycle 2
	stereo_panning TRUE, TRUE
	transpose 0, 0
	note_type 12, 11, 2
	octave 4
	note E_, 4
	note E_, 4
	note E_, 4
	note E_, 4
	note A#, 4
	note A#, 4
	note A#, 4
	note A#, 4
	note E_, 4
	note E_, 4
	note E_, 4
	note E_, 4
	octave 5
	note C#, 4
	note C#, 4
	note C#, 4
	note C#, 4
	stereo_panning TRUE, FALSE
	octave 3
	note E_, 4
	stereo_panning FALSE, TRUE
	note E_, 4
	stereo_panning TRUE, FALSE
	note E_, 4
	stereo_panning FALSE, TRUE
	note E_, 4
	note A#, 4
	stereo_panning TRUE, FALSE
	note A#, 4
	stereo_panning FALSE, TRUE
	note A#, 4
	stereo_panning TRUE, FALSE
	note A#, 4
	octave 2
	note G_, 2
	note A#, 4
	note G_, 2
	octave 3
	note C#, 4
	octave 2
	note G_, 2
	note A#, 2
	stereo_panning FALSE, TRUE
	note B_, 2
	note G_, 2
	octave 3
	note C#, 4
	octave 2
	note G_, 2
	note A_, 4
	note F#, 2
	sound_loop 2, .mainloop
	transpose 1, 0
	stereo_panning TRUE, TRUE
	duty_cycle 1
	note_type 12, 3, 8
	octave 3
	note E_, 16
	note C_, 16
	note D_, 16
	octave 2
	note A#, 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	sound_jump .mainloop

HRM_ViridianForest_Ch2:
_chan = 2
	vibrato 11, 1, 5
.mainloop:
	duty_cycle 3
	stereo_panning TRUE, FALSE
	note_type 12, 12, 2
	octave 3
	note E_, 4
	stereo_panning FALSE, TRUE
	note E_, 4
	stereo_panning TRUE, FALSE
	note E_, 4
	stereo_panning FALSE, TRUE
	note E_, 4
	note C_, 4
	stereo_panning TRUE, FALSE
	note C_, 4
	stereo_panning FALSE, TRUE
	note C_, 4
	stereo_panning TRUE, FALSE
	note C_, 4
	note E_, 4
	stereo_panning FALSE, TRUE
	note E_, 4
	stereo_panning TRUE, FALSE
	note E_, 4
	stereo_panning FALSE, TRUE
	note E_, 4
	note C_, 4
	stereo_panning TRUE, FALSE
	note C_, 4
	stereo_panning FALSE, TRUE
	note C_, 4
	stereo_panning TRUE, FALSE
	note C_, 4
	stereo_panning TRUE, TRUE
	duty_cycle 2
	note B_, 4
	note B_, 4
	note B_, 4
	note B_, 4
	octave 4
	note F#, 4
	note F#, 4
	note F#, 4
	note F#, 4
	note D_, 4
	note D_, 4
	note D_, 4
	note D_, 4
	note G_, 4
	note G_, 4
	note G_, 4
	note F#, 4
	sound_loop 2, .mainloop
	duty_cycle 3
	stereo_panning TRUE, FALSE
	octave 3
	note E_, 2
	note G_, 2
	note E_, 2
	note D#, 2
	note E_, 2
	note E_, 2
	stereo_panning FALSE, TRUE
	octave 5
	note E_, 2
	rest 2
	note D#, 2
	rest 2
	note D_, 2
	rest 2
	note C#, 2
	note C_, 2
	octave 4
	note E_, 2
	note G_, 2
	stereo_panning TRUE, FALSE
	octave 3
	note A#, 2
	note C#, 2
	note A#, 2
	note A_, 2
	note A#, 2
	note G_, 2
	stereo_panning FALSE, TRUE
	octave 5
	note G_, 2
	rest 2
	note F#, 2
	rest 2
	note F_, 2
	rest 2
	note E_, 2
	note D#, 2
	note D_, 2
	note C#, 2
	rest 16
	rest 16
	rest 16
	rest 16
	stereo_panning TRUE, TRUE
	note_type 12, 12, 7
	duty_cycle 1
	octave 4
	note E_, 16
	note D_, 16
	note C_, 16
	note D_, 16
	sound_jump .mainloop

HRM_ViridianForest_Ch3:
_chan = 3
	transpose 1, 0
	vibrato 8, 2, 6
	staccato -1
	stereo_panning TRUE, TRUE
.mainloop:
	note_type 12, 1, 11
	sound_call .sub1
	sound_loop 16, .mainloop
	staccato 27
	note E_, 12
	note E_, 4
	note C_, 12
	note C_, 4
	note D_, 12
	note D_, 4
	octave 3
	note A#, 12
	note A#, 4
.loop1:
	staccato 14
	octave 5
	note E_, 4
	note B_, 4
	note A#, 4
	octave 6
	note D_, 4
	note C#, 4
	octave 5
	note G#, 4
	note G_, 4
	note B_, 4
	note A#, 4
	note E_, 4
	note D#, 4
	note A_, 4
	note G#, 4
	note E_, 4
	note F#, 4
	note D#, 4
	sound_loop 3, .loop1
	staccato -1
	transpose 0, 0
	octave 4
	note E_, 4
	note B_, 4
	note A#, 4
	octave 5
	note D_, 4
	note C#, 4
	octave 4
	note G#, 4
	note G_, 4
	note B_, 4
	note A#, 4
	note E_, 4
	note D#, 4
	note A_, 4
	note G#, 4
	note E_, 4
	note F#, 4
	note D#, 4
	volume_envelope 1, 14
	octave 3
	note E_, 16
	note C_, 16
	note D_, 16
	octave 2
	note A#, 16
	octave 3
	note E_, 16
	note F_, 16
	note G_, 16
	octave 3
	note B_, 16
	rest 16
	rest 16
	rest 16
	rest 16
	transpose 1, 0
	volume_envelope 1, 11
	sound_call .sub1
	sound_call .sub1
	sound_call .sub1
	sound_call .sub1
	sound_call .sub1
	sound_call .sub1
	sound_call .sub1
	sound_call .sub1
	sound_jump .mainloop

.sub1:
	octave 4
	note E_, 2
	rest 4
	octave 3
	note E_, 1
	rest 3
	note E_, 1
	rest 1
	octave 4
	note F#, 4
	sound_ret

HRM_ViridianForest_Ch4:
_chan = 4
	toggle_noise 1
	stereo_panning TRUE, TRUE
.mainloop:
.loop1:
	drum_speed 12
	drum_note 5, 4
	drum_note 6, 4
	drum_note 5, 4
	drum_note 3, 4
	drum_note 5, 4
	drum_note 6, 4
	drum_note 4, 4
	drum_note 2, 4
	sound_loop 8, .loop1
.loop2:
	rest 16
	sound_loop 40, .loop2
	sound_jump .mainloop


