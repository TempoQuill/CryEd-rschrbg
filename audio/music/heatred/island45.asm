HRM_Island45:
	channel_count 4
	channel 1, HRM_Island45_Ch1
	channel 2, HRM_Island45_Ch2
	channel 3, HRM_Island45_Ch3
	channel 4, HRM_Island45_Ch4

HRM_Island45_Ch1:
_chan = 1
	tempo 158
	volume 7
.mainloop:
	sound_call .sub1
	note A#, 4
	octave 5
	note F_, 4
	rest 4
	note D#, 2
.loop1:
	note F_, 1
	note D#, 1
	sound_loop 9, .loop1
	sound_call .sub1
	note A#, 4
	octave 5
	note F_, 4
	rest 4
	note D#, 2
.loop2:
	note F_, 1
	note D#, 1
	sound_loop 6, .loop2
	note C#, 1
	note C_, 1
	octave 4
	note A#, 1
	note G#, 1
	note G_, 1
	note G#, 1
	duty_cycle 1
	vibrato 0, 2, 2
	transpose 0, 0
	note_type 12, 9, 6
	octave 3
	note D#, 4
	note G_, 4
	note A#, 4
	octave 4
	note D#, 4
	note C#, 2
	note D#, 1
	rest 1
	note C#, 1
	rest 1
	note C_, 10
	octave 3
	note D#, 4
	note F_, 4
	note G_, 4
	note A#, 4
	note A#, 2
	octave 4
	note C_, 2
	octave 3
	note A#, 2
	note G#, 10
	stereo_panning TRUE, FALSE
	volume_envelope 11, 7
	octave 4
	note C#, 8
	note C_, 8
	octave 3
	note A#, 8
	note G#, 8
	stereo_panning FALSE, TRUE
	volume_envelope 9, 6
	note G_, 6
	note F_, 6
	note A#, 4
	stereo_panning TRUE, FALSE
	duty_cycle 2
	note G_, 6
	note G#, 6
	note A#, 4
	sound_jump .mainloop

.sub1:
	duty_cycle 2
	pitch_offset -1
	vibrato 2, 2, 2
	stereo_panning FALSE, TRUE
	transpose 1, 0
	note_type 6, 6, 8
	rest 8
	octave 4
	note D#, 7
	note G#, 1
	note A#, 1
	octave 5
	note C_, 6
	octave 4
	note A#, 1
	note G#, 1
	note G_, 7
	note G#, 12
	note D#, 8
	note C#, 8
	note D#, 4
	note F_, 16
	note D#, 16
	note C#, 7
	note D#, 1
	note E_, 1
	note F_, 6
	note F#, 1
	note G_, 1
	note G#, 7
	note F_, 2
	rest 2
	note G#, 2
	rest 1
	octave 5
	note D#, 1
	note F_, 16
	note C#, 4
	octave 4
	note F_, 2
	rest 2
	note G#, 2
	rest 2
	note F_, 2
	rest 2
	octave 5
	note C#, 16
	octave 4
	note F_, 2
	rest 2
	note G#, 2
	rest 2
	note F_, 2
	rest 2
	note G#, 2
	rest 2
	octave 5
	note D#, 16
	octave 4
	note A#, 2
	rest 2
	note G#, 2
	rest 2
	note A#, 2
	rest 2
	note G#, 2
	rest 2
	sound_ret

HRM_Island45_Ch2:
_chan = 2
	duty_cycle 3
	vibrato 15, 7, 4
.mainloop:
	sound_call .sub1
	note D#, 4
	rest 2
	note D#, 2
	octave 2
	note D#, 4
	octave 1
	note G_, 4
	sound_call .sub1
	note D#, 4
	rest 2
	note D#, 2
	octave 2
	note D#, 4
	octave 1
	note F_, 4
	note D#, 4
	rest 2
	note G_, 2
	rest 2
	note D#, 2
	octave 2
	note D#, 4
	octave 1
	note G#, 4
	rest 2
	note G#, 2
	note D#, 2
	note C#, 2
	note C_, 2
	note C#, 2
	note D#, 4
	rest 2
	octave 2
	note D#, 4
	octave 1
	note A#, 2
	note G#, 2
	note G_, 2
	note F_, 4
	rest 2
	note C_, 3
	rest 1
	note C_, 2
	note F_, 2
	note C_, 2
	note C#, 4
	rest 2
	note G#, 2
	rest 2
	note G#, 1
	rest 1
	octave 2
	note D#, 4
	note C#, 4
	rest 2
	note C_, 2
	rest 2
	octave 1
	note A#, 2
	note G#, 2
	note G_, 2
	note D#, 4
	rest 2
	note A#, 4
	rest 2
	octave 2
	note D#, 2
	rest 2
	octave 1
	note D#, 4
	rest 2
	note G_, 3
	rest 1
	note D#, 2
	note G_, 2
	note A#, 2
	sound_jump .mainloop

.sub1:
	note_type 12, 11, 7
	octave 1
	note G#, 2
	rest 4
	note G#, 2
	rest 2
	note G#, 2
	octave 2
	note D#, 2
	note G#, 2
	octave 1
	note D#, 4
	rest 2
	note G#, 3
	rest 1
	note D#, 2
	note G#, 2
	octave 2
	note C_, 2
	note C#, 4
	rest 2
	octave 2
	note F_, 2
	note D#, 2
	note C#, 2
	note C_, 2
	octave 1
	note F_, 2
	note A#, 4
	rest 2
	note A#, 2
	rest 2
	note A#, 1
	rest 1
	octave 2
	note F_, 4
	octave 1
	note G#, 2
	note F_, 2
	rest 2
	note G#, 2
	rest 2
	octave 2
	note C#, 1
	rest 1
	note F_, 2
	octave 1
	note G#, 2
	note A#, 4
	rest 2
	octave 2
	note A#, 2
	note F_, 2
	octave 1
	note A#, 2
	rest 2
	octave 2
	note F_, 2
	note D#, 4
	rest 2
	note C#, 4
	octave 1
	note A#, 2
	note G#, 2
	note G_, 2
	sound_ret

HRM_Island45_Ch3:
_chan = 3
.mainloop:
	stereo_panning TRUE, FALSE
	sound_call .sub1
	sound_call .sub2
	note G#, 2
	rest 2
	note A#, 10
	sound_call .sub1
	sound_call .sub2
	note D#, 2
	rest 2
	octave 5
	note D#, 9
	stereo_panning TRUE, TRUE
	vibrato 15, 2, 3
	note_type 6, 1, 30
	octave 4
	note G#, 1
	note A_, 1
	note A#, 4
	note G#, 2
	rest 2
	note G_, 2
	rest 1
	octave 5
	note E_, 1
	note D#, 4
	rest 4
	note C#, 4
	rest 4
	note C_, 2
	rest 2
	octave 4
	note A#, 4
	octave 5
	note C_, 2
	rest 2
	octave 4
	note A#, 2
	rest 2
	note G#, 8
	rest 10
	note G#, 1
	note A_, 1
	note A#, 4
	note G#, 2
	rest 2
	note G_, 2
	rest 2
	note A#, 4
	rest 4
	octave 5
	note D#, 4
	rest 3
	note G#, 1
	note G_, 2
	rest 2
	note G_, 4
	note G#, 2
	rest 2
	note G_, 2
	rest 2
	note C_, 8
	rest 12
	note C_, 4
	octave 4
	note A#, 2
	rest 2
	note G#, 2
	rest 1
	octave 5
	note C#, 1
	note C_, 4
	rest 4
	octave 4
	note A#, 4
	rest 4
	note G#, 4
	octave 5
	note C_, 4
	octave 4
	note A#, 2
	rest 2
	note G#, 2
	rest 2
	octave 5
	note C_, 4
	rest 3
	note F#, 1
	note F_, 4
	rest 4
	note G_, 4
	note D#, 16
	volume_envelope 2, 30
	toggle_tie_slur
	note D#, 12
	volume_envelope 1, 6
	toggle_tie_slur
	octave 1
	note A#, 4
	vibrato 7, 2, 3
	volume_envelope 1, 19
	octave 4
	note D#, 12
	note F_, 12
	note G_, 8
	sound_jump .mainloop

.sub1:
	vibrato 7, 2, 3
	note_type 6, 1, 19
	octave 4
	note G#, 4
	note D#, 2
	rest 2
	note G_, 2
	rest 2
	note G#, 8
	note A#, 8
	octave 5
	note C_, 2
	rest 1
	note E_, 1
	note D#, 12
	note C_, 3
	rest 5
	octave 4
	note A#, 3
	rest 5
	octave 5
	note C_, 2
	rest 2
	note_type 12, 1, 19
	octave 4
	note G#, 8
	volume_envelope 2, 19
	toggle_tie_slur
	note G#, 8
	volume_envelope 3, 19
	note G#, 16
	note_type 6, 1, 19
	toggle_tie_slur
	octave 5
	note C#, 16
	volume_envelope 2, 19
	toggle_tie_slur
	note C#, 8
	volume_envelope 1, 19
	toggle_tie_slur
	note C_, 4
	octave 4
	note A#, 2
	rest 2
	note G#, 16
	volume_envelope 2, 19
	toggle_tie_slur
	note G#, 8
	volume_envelope 1, 19
	toggle_tie_slur
	note G_, 4
	note G#, 2
	rest 1
	note B_, 1
	note A#, 16
	volume_envelope 2, 19
	toggle_tie_slur
	note A#, 16
	sound_ret

.sub2:
	vibrato 1, 3, 1
	note_type 12, 1, 0
	envelope_sequence 0
	toggle_tie_slur
	note G_, 2
	sound_ret

HRM_Island45_Ch4:
_chan = 4
	toggle_noise 3
.mainloop:
	drum_speed 6
	sound_call .sub1
	sound_call .sub2
	sound_call .sub1
	sound_call .sub3
	sound_call .sub1
	sound_call .sub2
	sound_call .sub1
	stereo_panning TRUE, TRUE
	drum_note 11, 4
	stereo_panning TRUE, FALSE
	drum_note 8, 4
	drum_note 8, 4
	stereo_panning TRUE, TRUE
	drum_note 11, 4
	drum_note 11, 4
	drum_note 11, 3
	drum_note 3, 1
	drum_note 3, 4
	drum_note 4, 4
	sound_call .sub1
	sound_call .sub2
	sound_call .sub1
	sound_call .sub3
	sound_call .sub1
	sound_call .sub2
	sound_call .sub3
	stereo_panning TRUE, TRUE
	drum_note 11, 4
	stereo_panning TRUE, FALSE
	drum_note 8, 4
	stereo_panning TRUE, TRUE
	drum_note 3, 4
	drum_note 11, 4
	drum_note 2, 2
	drum_note 2, 2
	drum_note 4, 4
	drum_note 1, 4
	drum_note 4, 4
	sound_call .sub4
	stereo_panning TRUE, TRUE
	drum_note 11, 4
	stereo_panning TRUE, FALSE
	drum_note 8, 4
	stereo_panning TRUE, TRUE
	drum_note 3, 4
	drum_note 11, 4
	stereo_panning TRUE, FALSE
	drum_note 8, 4
	stereo_panning TRUE, TRUE
	drum_note 3, 4
	drum_note 3, 4
	stereo_panning TRUE, FALSE
	drum_note 8, 4
	sound_call .sub4
	stereo_panning TRUE, TRUE
	drum_note 11, 4
	stereo_panning TRUE, FALSE
	drum_note 8, 4
	stereo_panning TRUE, TRUE
	drum_note 3, 4
	drum_note 11, 4
	drum_note 3, 4
	drum_note 4, 4
	drum_note 1, 4
	drum_note 3, 4
	sound_call .sub1
	sound_call .sub2
	stereo_panning TRUE, TRUE
	drum_note 11, 4
	drum_note 4, 4
	drum_note 3, 4
	drum_note 11, 4
	drum_note 11, 4
	drum_note 11, 4
	drum_note 3, 4
	stereo_panning TRUE, FALSE
	drum_note 8, 4
	stereo_panning TRUE, TRUE
	drum_note 11, 4
	stereo_panning TRUE, FALSE
	drum_note 8, 4
	stereo_panning TRUE, TRUE
	drum_note 3, 4
	drum_note 11, 4
	drum_note 2, 2
	drum_note 2, 2
	drum_note 3, 4
	drum_note 1, 4
	drum_note 3, 4
	sound_jump .mainloop

.sub1:
	stereo_panning TRUE, TRUE
	drum_note 11, 4
	stereo_panning TRUE, FALSE
	drum_note 8, 4
	drum_note 8, 4
	stereo_panning TRUE, TRUE
	drum_note 11, 4
	stereo_panning TRUE, FALSE
	drum_note 8, 4
	drum_note 8, 4
	stereo_panning TRUE, TRUE
	drum_note 3, 4
	stereo_panning TRUE, FALSE
	drum_note 8, 4
	sound_ret

.sub2:
	stereo_panning TRUE, TRUE
	drum_note 11, 4
	stereo_panning TRUE, FALSE
	drum_note 8, 4
	drum_note 8, 4
	stereo_panning TRUE, TRUE
	drum_note 11, 4
	stereo_panning TRUE, FALSE
	drum_note 8, 4
	stereo_panning TRUE, TRUE
	drum_note 11, 4
	drum_note 3, 4
	drum_note 11, 4
	sound_ret

.sub3:
	stereo_panning TRUE, TRUE
	drum_note 11, 4
	stereo_panning TRUE, FALSE
	drum_note 8, 4
	drum_note 8, 4
	stereo_panning TRUE, TRUE
	drum_note 11, 4
	drum_note 11, 4
	drum_note 11, 4
	drum_note 3, 4
	stereo_panning TRUE, FALSE
	drum_note 8, 4
	sound_ret

.sub4:
	stereo_panning TRUE, TRUE
	drum_note 11, 4
	stereo_panning TRUE, FALSE
	drum_note 8, 4
	stereo_panning TRUE, TRUE
	drum_note 3, 4
	drum_note 11, 4
	stereo_panning TRUE, FALSE
	drum_note 8, 4
	stereo_panning TRUE, TRUE
	drum_note 11, 4
	drum_note 3, 4
	stereo_panning TRUE, FALSE
	drum_note 8, 4
	sound_ret
