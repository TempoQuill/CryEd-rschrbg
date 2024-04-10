HRM_IntroMovie:
	channel_count 4
	channel 1, HRM_IntroMovie_Ch1
	channel 2, HRM_IntroMovie_Ch2
	channel 3, HRM_IntroMovie_Ch3
	channel 4, HRM_IntroMovie_Ch4

HRM_IntroMovie_Ch1:
_chan = 1
	tempo 220
	volume 7
	stereo_panning FALSE, TRUE
	pitch_offset -1
	note_type 12, 12, 1
	rest 4
	sound_call .sub2
	sound_call .sub1
	octave 4
	note D#, 2
	sound_call .sub2
	sound_call .sub1
	note G#, 2
	sound_call .sub2
	sound_call .sub1
	octave 4
	note G_, 2
	note A_, 4
	octave 3
	note A_, 4
	octave 4
	note F_, 4
	octave 3
	note F_, 4
	sound_call .sub2
	sound_call .sub1
	octave 4
	note D#, 2
	sound_call .sub2
	octave 4
	note F_, 2
	sound_call .sub2
	octave 4
	note G_, 2
	volume_envelope 1, 15
	note F#, 8
	volume_envelope 10, 3
	note D_, 3
	sound_ret

.sub1:
	octave 4
	note D_, 2
.sub2:
	duty_cycle 3
	vibrato 0, 0, 0
	volume_envelope 12, 1
	octave 3
	note A_, 1
	note A_, 1
	vibrato 8, 2, 3
	volume_envelope 12, 6
	sound_ret

HRM_IntroMovie_Ch2:
_chan = 2
	stereo_panning FALSE, TRUE
	duty_cycle 3
	note_type 12, 5, 0
	rest 4
	stereo_panning TRUE, TRUE
.loop1:
	sound_call .sub1
	sound_loop 3, .loop1
	sound_call .sub2
	note F#, 1
	sound_call .sub1
	sound_call .sub2
	note E_, 1
	note F#, 8
	octave 2
	note D_, 8
	note A#, 8
	note D_, 8
	sound_call .sub1
	sound_call .sub1
	sound_call .sub2
	note F_, 1
	sound_call .sub2
	note G_, 1
	octave 1
	note D_, 2
	octave 3
	note A_, 2
	octave 1
	note D_, 2
	octave 3
	note A_, 2
	octave 2
	note D_, 2
	octave 3
	note A_, 2
	octave 1
	note A_, 2
	octave 3
	note A_, 2
	volume_envelope 12, 2
	octave 1
	note D_, 6
	sound_ret

.sub1:
	note_type 6, 12, 7
	octave 1
	note D_, 1
	rest 1
	note D_, 1
	rest 1
	octave 2
	note D_, 1
	note A_, 1
	octave 3
	note D_, 1
	note A_, 1
	sound_ret

.sub2:
	octave 1
	note A_, 1
	rest 1
	note A_, 1
	rest 1
	note A_, 1
	octave 2
	note G_, 1
	octave 3
	note C#, 1
	sound_ret

HRM_IntroMovie_Ch3:
_chan = 3
	stereo_panning TRUE, FALSE
	vibrato 15, 2, 4
	note_type 12, 2, 24
	rest 4
	vibrato 8, 1, 3
	note_type 6, 1, 24
	sound_call .sub2
	sound_call .sub1
	note A#, 4
	sound_call .sub2
	sound_call .sub1
	note F#, 4
	sound_call .sub2
	sound_call .sub1
	octave 5
	note C#, 4
	note D_, 8
	octave 4
	note D_, 8
	octave 5
	note C_, 8
	octave 4
	note C_, 8
	sound_call .sub2
	sound_call .sub1
	note A#, 4
	sound_call .sub2
	octave 5
	note C_, 4
	sound_call .sub2
	octave 5
	note C#, 4
	note D_, 15
	note_type 3, 2, 24
	note D_, 1
	volume_envelope 3, 24
	note D_, 1
	volume_envelope 1, 24
	note D_, 3
	volume_envelope 2, 24
	note D_, 2
	volume_envelope 3, 24
	note D_, 2
	rest 5
	sound_ret

.sub1:
	note A_, 4
.sub2:
	octave 4
	note D_, 1
	rest 1
	note D_, 1
	rest 1
	sound_ret

HRM_IntroMovie_Ch4:
_chan = 4
	toggle_noise 1
	stereo_panning TRUE, TRUE
	drum_speed 3
	drum_note 12, 1
	drum_note 12, 1
	drum_note 12, 1
	drum_note 12, 1
	drum_note 11, 1
	drum_note 12, 1
	drum_note 11, 1
	drum_note 12, 1
	drum_note 11, 1
	drum_note 12, 1
	drum_note 11, 1
	drum_note 11, 1
	drum_note 11, 1
	drum_note 11, 1
	drum_note 10, 1
	drum_note 10, 1
	drum_note 10, 4
	drum_note 10, 4
	sound_call .sub1
	drum_note 10, 4
	drum_note 10, 4
	drum_note 10, 8
	drum_note 10, 4
	drum_note 10, 4
	drum_note 10, 8
	drum_note 10, 4
	drum_note 10, 4
	sound_call .sub1
	drum_note 10, 4
	drum_note 10, 4
	drum_note 10, 8
	drum_note 10, 4
	drum_note 10, 4
	drum_note 10, 4
	drum_note 12, 1
	drum_note 12, 1
	drum_note 11, 1
	drum_note 11, 1
	drum_note 10, 16
	drum_note 10, 16
	drum_note 10, 16
	drum_note 12, 1
	drum_note 12, 1
	drum_note 12, 1
	drum_note 12, 1
	drum_note 11, 1
	drum_note 12, 1
	drum_note 11, 1
	drum_note 12, 1
	drum_note 11, 1
	drum_note 11, 1
	drum_note 11, 1
	drum_note 11, 1
	drum_note 10, 1
	drum_note 10, 1
	drum_note 10, 1
	drum_note 10, 1
	drum_note 10, 4
	drum_note 10, 4
	drum_note 10, 8
	drum_note 10, 4
	drum_note 10, 4
	sound_call .sub1
	drum_note 10, 4
	drum_note 10, 4
	drum_note 10, 8
	drum_note 10, 4
	drum_note 10, 8
	drum_note 10, 4
	drum_note 10, 16
	drum_note 10, 16
	drum_note 10, 12
	sound_ret

.sub1:
	drum_note 12, 1
	drum_note 12, 1
	drum_note 12, 1
	drum_note 12, 1
	drum_note 11, 1
	drum_note 11, 1
	drum_note 11, 1
	drum_note 11, 1
	sound_ret
