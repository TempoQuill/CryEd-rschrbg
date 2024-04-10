Music_ChaosIntro: ; WILLIAM ANDERSON
; Sonic Rainboom theme
; wav, engine
	channel_count 4
	channel 1, Music_ChaosIntro_Ch1
	channel 2, Music_ChaosIntro_Ch2
	channel 3, Music_ChaosIntro_Ch3
	channel 4, Music_ChaosIntro_Ch4

Music_ChaosIntro_Ch1:
_chan = 1
	tempo 198
	volume 7
	stereo_panning FALSE, TRUE
	duty_cycle 3
	pitch_offset -1
	vibrato 0, 3, 3
	note_type 12, 5, 8
	octave 3
	note A_, 8
	note A#, 8
	note B_, 8
	octave 4
	note C_, 8
	note C#, 8
	note D_, 8
	note D#, 8
	note E_, 8
	note F_, 8
	note F#, 8
	note G_, 8
	note G#, 8
	stereo_panning TRUE, FALSE
	volume_envelope 10, 7
	note D_, 3
	volume_envelope 7, 7
	note D_, 3
	volume_envelope 4, 8
	note D_, 8
	volume_envelope 5, 5
	note D_, 2
	volume_envelope 8, 8
	note D_, 3
	volume_envelope 7, 7
	note D_, 5
	sound_ret

Music_ChaosIntro_Ch2:
_chan = 2
	pitch_inc_switch
.loop1:
	stereo_panning TRUE, TRUE
	duty_cycle 1
	note_type 6, 15, 1
	octave 1
	note A_, 4
	stereo_panning TRUE, FALSE
	duty_cycle 0
	volume_envelope 10, 1
	note A_, 2
	stereo_panning TRUE, TRUE
	duty_cycle 1
	volume_envelope 15, 1
	note A_, 4
	stereo_panning TRUE, FALSE
	duty_cycle 0
	volume_envelope 10, 1
	note A_, 2
	note A_, 2
	note A_, 2
	note A_, 2
	note A_, 2
	note A_, 2
	note A_, 2
	note A_, 2
	note A_, 2
	note A_, 2
	note A_, 2
	sound_loop 6, .loop1
	stereo_panning TRUE, TRUE
	note_type 6, 13, 7
	note D_, 5
	rest 1
	note E_, 5
	rest 1
	note F_, 5
	rest 1
	note F#, 5
	rest 1
	note G_, 2
	rest 2
	note A_, 2
	rest 2
	note A#, 16
	sound_ret

Music_ChaosIntro_Ch3:
_chan = 3
	stereo_panning TRUE, FALSE
	vibrato 13, 2, 4
	note_type 6, 2, 2
	octave 4
	note A_, 16
	note A_, 16
	note A_, 6
	stereo_panning TRUE, TRUE
	vibrato 11, 2, 3
	volume_envelope 1, 12
	octave 5
	note D_, 2
	note E_, 8
	stereo_panning TRUE, FALSE
	vibrato 13, 2, 4
	volume_envelope 2, 2
	octave 4
	note A_, 16
	note A_, 16
	note A_, 16
	note A_, 16
	note A_, 16
	note A_, 8
	note A#, 8
	note B_, 8
	octave 5
	note C_, 8
	note C#, 8
	note D_, 8
	note D#, 8
	note E_, 8
	stereo_panning TRUE, TRUE
	volume_envelope 1, 4
	note C#, 1
	note D_, 5
	note E_, 6
	note F_, 6
	note F#, 6
	note G_, 2
	rest 2
	note A_, 2
	rest 2
	note A_, 1
	note A#, 15
	sound_ret

Music_ChaosIntro_Ch4:
_chan = 4
	toggle_noise 4
	drum_speed 12
.loop1:
	stereo_panning FALSE, TRUE
	drum_note 12, 2
	stereo_panning TRUE, TRUE
	drum_note 5, 1
	stereo_panning FALSE, TRUE
	drum_note 12, 2
	stereo_panning TRUE, TRUE
	drum_note 11, 1
	drum_note 5, 2
	drum_note 11, 2
	drum_note 5, 2
	drum_note 11, 1
	drum_note 11, 1
	drum_note 5, 2
	sound_loop 6, .loop1
	stereo_panning FALSE, TRUE
	drum_note 12, 2
	stereo_panning TRUE, TRUE
	drum_note 11, 1
	stereo_panning FALSE, TRUE
	drum_note 12, 2
	stereo_panning TRUE, TRUE
	drum_note 11, 1
	stereo_panning FALSE, TRUE
	drum_note 12, 2
	stereo_panning TRUE, TRUE
	drum_note 11, 1
	stereo_panning FALSE, TRUE
	drum_note 12, 2
	stereo_panning TRUE, TRUE
	drum_note 11, 1
	drum_note 5, 2
	drum_note 5, 2
	drum_note 11, 8
	sound_ret
