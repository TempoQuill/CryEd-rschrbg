HRM_Route24:
	channel_count 4
	channel 1, HRM_Route24_Ch1
	channel 2, HRM_Route24_Ch2
	channel 3, HRM_Route24_Ch3
	channel 4, HRM_Route24_Ch4

HRM_Route24_Ch1:
_chan = 1
	tempo 155
	volume 7
	vibrato 8, 3, 2
	stereo_panning FALSE, TRUE
.mainloop:
	note_type 12, 10, 1
	sound_call .sub1
	sound_call .sub2
	sound_call .sub1
	note F_, 1
	note A_, 1
	octave 4
	note C_, 1
	note F_, 1
	note C_, 1
	octave 3
	note G_, 1
	octave 4
	note C_, 1
	octave 3
	note G_, 1
	note F_, 1
	note G_, 1
	octave 4
	note C_, 1
	sound_call .sub1
	sound_call .sub2
	sound_call .sub1
	note F_, 1
	note A_, 1
	octave 4
	note C_, 1
	sound_call .sub1
	octave 4
	note C_, 1
	note F_, 1
	note A_, 1
	stereo_panning TRUE, FALSE
	duty_cycle 1
	note_type 6, 10, 4
	octave 3
	note A_, 1
	note A#, 3
	octave 4
	note D_, 4
	note F_, 4
	octave 3
	note A_, 2
	note G_, 2
	note A_, 4
	octave 4
	note C_, 4
	note F_, 4
	octave 3
	note G_, 2
	note F_, 2
	note G_, 4
	note A#, 4
	octave 4
	note F_, 4
	octave 3
	note F_, 2
	note E_, 2
	note F_, 4
	note A_, 4
	octave 4
	note C_, 4
	octave 3
	note A_, 4
	octave 2
	note G_, 2
	rest 2
	note G_, 2
	note A#, 2
	octave 3
	note D#, 4
	note A#, 8
	octave 4
	note C_, 4
	note D_, 4
	octave 3
	note A#, 4
	octave 4
	note C_, 4
	octave 3
	note F_, 2
	note A#, 2
	note A_, 4
	octave 4
	note C_, 8
	octave 3
	note F_, 4
	note A#, 4
	octave 4
	note C_, 4
	octave 3
	note G_, 2
	rest 2
	note A#, 2
	note A_, 2
	note A#, 2
	rest 2
	note A#, 2
	octave 4
	note C_, 2
	note D_, 8
	note F_, 8
	note A_, 4
	note C_, 2
	note G_, 2
	note F_, 16
	stereo_panning FALSE, TRUE
	duty_cycle 0
	note_type 12, 10, 1
	octave 3
	note F_, 1
	note A_, 1
	octave 4
	note C_, 1
	note E_, 1
	sound_jump .mainloop

.sub1:
	octave 4
	note F_, 1
	note C_, 1
	octave 3
	note A_, 1
	octave 4
	note C_, 1
	octave 3
	note A_, 1
	sound_ret

.sub2:
	note F_, 1
	note A_, 1
	octave 4
	note C_, 1
	note F_, 1
	note D_, 1
	octave 3
	note A#, 1
	octave 4
	note D_, 1
	octave 3
	note A#, 1
	note F_, 1
	note A#, 1
	octave 4
	note D_, 1
	sound_ret

HRM_Route24_Ch2:
_chan = 2
	duty_cycle 3
	vibrato 19, 3, 4
.mainloop:
	stereo_panning TRUE, TRUE
	note_type 6, 12, 7
	sound_call .sub1
	sound_call .sub2
	octave 3
	note C_, 1
	note F_, 1
	note G_, 1
	octave 4
	note C_, 4
	stereo_panning TRUE, TRUE
	volume_envelope 12, 7
	octave 1
	note F_, 2
	note E_, 2
	note C_, 4
	note E_, 4
	sound_call .sub1
	sound_call .sub2
	octave 3
	note F_, 1
	note A_, 1
	octave 4
	note C_, 1
	note F_, 8
	stereo_panning TRUE, TRUE
	volume_envelope 12, 7
	octave 1
	note G_, 1
	note A_, 7
	octave 1
	note A#, 3
	sound_call .sub3
	note A#, 2
	note F_, 2
	note D_, 2
	octave 2
	note A#, 2
	stereo_panning TRUE, TRUE
	volume_envelope 12, 7
	octave 1
	note A_, 3
	rest 1
	stereo_panning FALSE, TRUE
	volume_envelope 10, 7
	octave 3
	note C_, 2
	note F_, 2
	note A_, 2
	note F_, 2
	note C_, 2
	octave 2
	note A_, 2
	stereo_panning TRUE, TRUE
	volume_envelope 12, 7
	octave 1
	note G_, 3
	sound_call .sub3
	note G_, 2
	note D_, 2
	octave 2
	note A#, 2
	note G_, 2
	stereo_panning TRUE, TRUE
	volume_envelope 12, 7
	octave 1
	note F_, 3
	rest 1
	stereo_panning FALSE, TRUE
	volume_envelope 10, 7
	octave 2
	note A_, 2
	octave 3
	note C_, 2
	note F_, 2
	note C_, 2
	octave 2
	note A_, 2
	note F_, 2
	sound_call .sub4
	sound_call .sub5
	sound_call .sub6
	sound_call .sub4
	sound_call .sub5
	stereo_panning TRUE, TRUE
	volume_envelope 12, 7
	octave 1
	note A_, 2
	sound_call .sub7
	sound_jump .mainloop

.sub1:
	octave 1
	note F_, 12
	stereo_panning TRUE, FALSE
	volume_envelope 10, 7
	octave 2
	note F_, 2
	note A_, 2
	note A#, 8
	stereo_panning TRUE, TRUE
	volume_envelope 12, 7
	octave 1
	note C_, 4
	stereo_panning TRUE, FALSE
	volume_envelope 10, 7
	octave 3
	note D_, 4
	sound_ret

.sub2:
	stereo_panning TRUE, TRUE
	volume_envelope 12, 7
	octave 1
	note F_, 13
	stereo_panning TRUE, FALSE
	volume_envelope 10, 5
	sound_ret

.sub3:
	rest 1
	stereo_panning FALSE, TRUE
	volume_envelope 10, 7
	octave 3
	note D_, 2
	note F_, 2
	sound_ret

.sub4:
	stereo_panning TRUE, TRUE
	volume_envelope 12, 7
	octave 1
	note D#, 2
	stereo_panning FALSE, TRUE
	volume_envelope 10, 7
	octave 2
	note A#, 2
	octave 3
	note G_, 2
	octave 2
	note A#, 2
	sound_loop 2, .sub4
	stereo_panning TRUE, TRUE
	volume_envelope 12, 7
	octave 1
	note G_, 2
	stereo_panning FALSE, TRUE
	volume_envelope 10, 7
	octave 2
	note A#, 2
	octave 3
	note G_, 2
	octave 2
	note A#, 2
	stereo_panning TRUE, TRUE
	volume_envelope 12, 7
	note D#, 2
	stereo_panning FALSE, TRUE
	volume_envelope 10, 7
	note A#, 2
	octave 3
	note G_, 2
	octave 2
	note A#, 2
	sound_ret

.sub5:
	stereo_panning TRUE, TRUE
	volume_envelope 12, 7
	note F_, 2
	stereo_panning FALSE, TRUE
	volume_envelope 10, 7
	octave 3
	note C_, 2
	note A_, 2
	note C_, 2
	stereo_panning TRUE, TRUE
	volume_envelope 12, 7
	octave 2
	note C_, 2
	stereo_panning FALSE, TRUE
	volume_envelope 10, 7
	octave 3
	note C_, 2
	note A_, 2
	note C_, 2
.sub6:
	stereo_panning TRUE, TRUE
	volume_envelope 12, 7
	octave 1
	note F_, 2
.sub7:
	stereo_panning FALSE, TRUE
	volume_envelope 10, 7
	octave 3
	note C_, 2
	note A_, 2
	note C_, 2
	sound_ret

HRM_Route24_Ch3:
_chan = 3
	vibrato 11, 2, 3
.mainloop:
	note_type 6, 1, 22
	octave 4
	note F_, 8
	rest 4
	note C_, 2
	note F_, 2
	note G_, 8
	rest 4
	note A#, 4
	note A_, 4
	rest 2
	note F_, 2
	note G_, 16
	rest 8
	note F_, 8
	rest 4
	note C_, 2
	note F_, 2
	note G_, 8
	rest 4
	note A#, 4
	note A_, 4
	rest 2
	note F_, 2
	note B_, 1
	octave 5
	note C_, 15
	volume_envelope 1, 12
	note F#, 1
	note G_, 1
	note G#, 1
	note A_, 1
	note A#, 1
	note B_, 1
	octave 6
	note C_, 1
	note C#, 1
	note D_, 8
	rest 4
	note C_, 2
	octave 5
	note A#, 2
	octave 6
	note C_, 8
	rest 4
	octave 5
	note A#, 2
	note A_, 2
	note A#, 8
	rest 4
	note A_, 2
	note G_, 2
	note A_, 8
	note G_, 4
	note F_, 4
	note D#, 2
	rest 2
	note D#, 2
	note F_, 2
	note G_, 12
	rest 4
	note A_, 1
	note A#, 7
	note A_, 4
	rest 2
	note G_, 2
	note F_, 12
	rest 4
	note G_, 4
	note F_, 4
	note D#, 2
	rest 2
	note D#, 2
	note F_, 2
	note G_, 2
	rest 2
	note G_, 2
	note A_, 2
	note A#, 8
	octave 6
	note C#, 1
	note D_, 7
	note C_, 4
	rest 2
	octave 5
	note A#, 2
	note A_, 16
	rest 8
	sound_jump .mainloop

HRM_Route24_Ch4:
_chan = 4
	toggle_noise 7
	drum_speed 6
	sound_call .sub1
.mainloop:
	sound_call .sub3
	drum_note 12, 8
	sound_call .sub1
	sound_call .sub3
	drum_note 7, 1
	drum_note 8, 1
	drum_note 9, 1
	drum_note 9, 1
	drum_note 10, 1
	drum_note 10, 1
	drum_note 11, 1
	drum_note 11, 1
	drum_note 5, 8
	sound_call .sub2
	sound_call .sub3
	drum_note 12, 8
	sound_call .sub1
	sound_call .sub3
	drum_note 12, 8
	sound_call .sub1
	sound_call .sub3
	drum_note 12, 2
	drum_note 9, 2
	drum_note 10, 2
	drum_note 9, 2
	drum_note 5, 8
	sound_call .sub2
	sound_jump .mainloop

.sub1:
	drum_note 12, 8
.sub2:
	drum_note 12, 12
	drum_note 12, 2
	drum_note 12, 2
	drum_note 12, 4
	drum_note 12, 4
	sound_ret

.sub3:
	drum_note 12, 8
	drum_note 7, 1
	drum_note 8, 1
	drum_note 9, 1
	drum_note 9, 1
	drum_note 10, 1
	drum_note 10, 1
	drum_note 11, 1
	drum_note 11, 1
	drum_note 12, 4
	drum_note 12, 4
	sound_ret


