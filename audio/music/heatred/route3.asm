HRM_Route3:
	channel_count 4
	channel 1, HRM_Route3_Ch1
	channel 2, HRM_Route3_Ch2
	channel 3, HRM_Route3_Ch3
	channel 4, HRM_Route3_Ch4

HRM_Route3_Ch1:
_chan = 1
	tempo 147
	volume 7
	duty_cycle 2
	stereo_panning FALSE, TRUE
	vibrato 18, 3, 4
	note_type 12, 10, 7
	octave 3
	note A_, 1
	note A#, 1
	volume_envelope 1, 15
	octave 4
	note D#, 8
	volume_envelope 10, 7
	note D_, 1
	rest 7
	volume_envelope 10, 5
	octave 2
	note A#, 4
	octave 3
	note D_, 4
	note F#, 4
	note G#, 4
	note F_, 8
.mainloop:
	duty_cycle 2
	sound_call .sub1
	note F_, 8
	note D#, 4
	note C_, 4
	sound_call .sub1
	octave 4
	note C_, 8
	note D#, 6
	duty_cycle 3
	note D_, 1
	note D#, 1
	note F_, 2
	note D#, 2
	note F_, 2
	note D_, 4
	note C_, 2
	octave 3
	note A#, 2
	note A_, 1
	note G_, 1
	note A_, 2
	octave 4
	note C_, 4
	octave 3
	note A_, 4
	octave 4
	note C_, 2
	note F_, 2
	note D#, 1
	note F_, 1
	note_type 8, 10, 7
	note F#, 1
	note G_, 3
	note F_, 4
	note D#, 4
	note_type 12, 10, 7
	note D#, 4
	note D_, 1
	note D#, 1
	note F_, 1
	note A_, 1
	note G_, 6
	note F_, 1
	note G_, 1
	note A_, 4
	octave 5
	note C_, 4
	sound_jump .mainloop

.sub1:
	octave 3
	note D_, 6
	note C_, 1
	note D_, 1
	octave 2
	note A#, 4
	octave 3
	note F_, 4
	note A#, 6
	note G#, 2
	note G_, 2
	note F_, 2
	note D#, 2
	note D_, 2
	note D#, 2
	note G#, 4
	note D#, 1
	note G#, 1
	octave 4
	note C_, 4
	octave 3
	note G#, 4
	sound_ret

HRM_Route3_Ch2:
_chan = 2
	duty_cycle 3
	vibrato 11, 6, 3
	stereo_panning TRUE, TRUE
	note_type 6, 12, 7
	octave 3
	note C_, 2
	note D#, 2
	note F_, 8
	note C_, 4
	stereo_panning FALSE, TRUE
	note A#, 2
	octave 4
	note C_, 2
	stereo_panning TRUE, TRUE
	sound_call .sub1
	note A#, 2
	rest 2
	note A#, 8
	note A#, 1
	rest 1
	note A#, 1
	rest 1
	note A#, 2
	rest 2
	note A#, 2
	rest 2
	note A#, 2
	octave 2
	note D_, 2
	note F_, 2
	note A_, 2
.mainloop:
.loop1:
	sound_call .sub1
	note A#, 2
	rest 2
	note A#, 8
	note A#, 1
	rest 1
	note A#, 1
	rest 1
	note A#, 2
	rest 2
	note A#, 2
	rest 2
	octave 2
	note D_, 4
	note G_, 4
	note G#, 2
	rest 2
	octave 1
	note G#, 8
	note G#, 1
	rest 1
	note G#, 1
	rest 1
	note G#, 2
	rest 2
	note G#, 2
	rest 2
	note G#, 7
	rest 1
	note G#, 2
	rest 2
	note G#, 8
	note G#, 1
	rest 1
	note G#, 1
	rest 1
	note G#, 2
	rest 2
	note G#, 2
	rest 2
	octave 2
	note D#, 4
	note G#, 4
	sound_loop 2, .loop1
	note A#, 2
	rest 2
	octave 1
	note A#, 8
	note A#, 1
	rest 1
	note A#, 1
	rest 1
	note A#, 2
	rest 2
	note A#, 4
	octave 2
	note D_, 4
	note D#, 4
	note F_, 2
	rest 2
	octave 1
	note F_, 8
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	note F_, 2
	rest 2
	note F_, 4
	octave 2
	note C_, 4
	note D_, 4
	note D#, 10
	rest 2
	note D#, 1
	rest 1
	note D#, 1
	rest 1
	note D#, 2
	rest 2
	note D#, 4
	note A#, 4
	octave 1
	note G_, 4
	octave 2
	note C_, 10
	rest 2
	note D#, 1
	rest 1
	note G_, 1
	rest 1
	note F_, 8
	note G_, 1
	note A_, 7
	sound_jump .mainloop

.sub1:
	octave 2
	note A#, 2
	rest 2
	octave 1
	note A#, 8
	note A#, 1
	rest 1
	note A#, 1
	rest 1
	note A#, 2
	rest 2
	note A#, 2
	rest 2
	note A#, 7
	rest 1
	sound_ret

HRM_Route3_Ch3:
_chan = 3
	vibrato 0, 1, 3
	stereo_panning TRUE, FALSE
	note_type 12, 1, 4
	octave 6
	note F_, 1
	note G_, 1
	note A_, 6
	note G_, 1
	note A_, 1
	note A#, 1
	rest 7
	vibrato 11, 1, 3
	note_type 6, 2, 7
	octave 5
	note D_, 6
	volume_envelope 3, 7
	note D_, 2
	volume_envelope 2, 7
	note E_, 1
	note F_, 6
	volume_envelope 3, 7
	note F_, 1
	volume_envelope 2, 7
	note D#, 6
	volume_envelope 3, 7
	note D#, 2
	volume_envelope 2, 7
	note C_, 6
	volume_envelope 3, 7
	note C_, 2
	volume_envelope 2, 7
	note D_, 6
	volume_envelope 3, 7
	note D_, 6
	rest 4
.mainloop:
	sound_call .sub1
	volume_envelope 1, 12
	octave 5
	note G#, 8
	note G_, 4
	note D#, 4
	sound_call .sub1
	volume_envelope 1, 12
	octave 5
	note G#, 8
	octave 6
	note C_, 6
	note_type 6, 1, 2
	octave 5
	note A#, 2
	octave 6
	note C_, 2
	note D_, 4
	note C_, 4
	note D_, 4
	octave 5
	note A#, 16
	note A_, 2
	note A#, 2
	octave 6
	note C_, 4
	octave 5
	note F_, 8
	octave 6
	note E_, 1
	note F_, 15
	note D#, 2
	note D_, 1
	rest 1
	note_type 8, 1, 2
	note D_, 1
	note D#, 3
	note D_, 4
	octave 5
	note A#, 2
	rest 2
	note A#, 12
	note_type 12, 1, 12
	note D#, 8
	note F_, 4
	note D#, 4
	sound_jump .mainloop

.sub1:
	note_type 12, 1, 11
	note A#, 6
	note F_, 1
	note A#, 1
	octave 6
	note D_, 8
	rest 2
	octave 5
	note F_, 2
	note A#, 2
	octave 6
	note F_, 2
	note D#, 2
	note D_, 2
	note C_, 2
	octave 5
	note A#, 2
	octave 6
	note C_, 8
	note D#, 8
	sound_ret

HRM_Route3_Ch4:
_chan = 4
	toggle_noise 5
	stereo_panning TRUE, TRUE
	drum_speed 6
	drum_note 1, 2
	drum_note 2, 2
.loop1:
	drum_note 3, 1
	sound_loop 8, .loop1
	drum_note 2, 1
	drum_note 3, 1
	drum_note 2, 1
	drum_note 3, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
.mainloop:
	sound_call .sub1
.loop2:
	sound_call .sub2
	sound_call .sub1
	drum_note 1, 12
	drum_note 1, 2
	drum_note 2, 2
	drum_note 1, 4
	drum_note 1, 4
	drum_note 1, 4
	drum_note 1, 2
	drum_note 2, 2
	drum_note 1, 12
	drum_note 1, 2
	drum_note 2, 2
	drum_note 1, 4
	drum_note 1, 4
	drum_note 1, 8
	sound_loop 2, .loop2
	sound_call .sub2
	sound_call .sub1
	drum_note 9, 12
	drum_note 1, 2
	drum_note 2, 2
	drum_note 1, 4
	drum_note 1, 4
	sound_call .sub3
	sound_jump .mainloop

.sub1:
	drum_note 9, 12
	drum_note 1, 2
	drum_note 2, 2
	drum_note 1, 4
	drum_note 1, 4
	drum_note 1, 8
	sound_ret

.sub2:
	drum_note 1, 4
	drum_note 1, 8
	drum_note 1, 2
	drum_note 2, 2
	drum_note 1, 2
	drum_note 2, 2
	drum_note 3, 2
	drum_note 2, 2
.sub3:
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 2, 1
	drum_note 3, 1
	drum_note 2, 1
	drum_note 2, 1
	sound_ret


