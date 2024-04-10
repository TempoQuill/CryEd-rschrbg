Music_PokeComCenter: ; JUNICHI MASUDA
; PCC theme in the style of the Smile Song
; wav, drun, engine
	channel_count 4
	channel 1, Music_PokeComCenter_Ch1
	channel 2, Music_PokeComCenter_Ch2
	channel 3, Music_PokeComCenter_Ch3
	channel 4, Music_PokeComCenter_Ch4

Music_PokeComCenter_Ch1:
_chan = 1
	tempo 246
	volume 7
	pitch_offset -1
	note_type 12, 0, 0
	rest 8
.mainloop:
	stereo_panning FALSE, TRUE
	duty_cycle 1
	note_type 8, 10, 1
	sound_call .sub1
	note G_, 2
	note A#, 4
	octave 4
	note D#, 3
	note D_, 3
	sound_call .sub1
	note G_, 4
	rest 8
	stereo_panning TRUE, FALSE
	duty_cycle 2
	volume_envelope 10, 2
	note A#, 1
	rest 1
	note G_, 1
	rest 3
	note F_, 1
	rest 1
	note G_, 1
	rest 3
	octave 4
	note C_, 1
	rest 1
	octave 3
	note A#, 1
	note G#, 3
	note F_, 1
	rest 5
	note G#, 1
	rest 1
	note G_, 1
	rest 3
	note D_, 1
	rest 1
	note D#, 1
	rest 3
	note G_, 1
	rest 1
	note G#, 1
	note A#, 1
	rest 1
	octave 4
	note C_, 1
	octave 3
	note A#, 1
	rest 5
	octave 4
	note D#, 1
	rest 1
	note D_, 1
	rest 3
	octave 3
	note A#, 1
	rest 1
	octave 4
	note C_, 1
	rest 3
	note F_, 1
	rest 1
	note D#, 1
	note D_, 2
	rest 1
	note C_, 1
	rest 5
	note D_, 1
	rest 2
	octave 3
	note A#, 2
	rest 1
	note G#, 1
	rest 1
	note A#, 1
	rest 3
	note A#, 1
	rest 1
	note G#, 1
	note G_, 1
	rest 1
	note F_, 1
	note D#, 1
	rest 5
	sound_jump .mainloop

.sub1:
	octave 3
	note G_, 2
	note F#, 1
	note G_, 2
	note G_, 3
	note F_, 3
	note D#, 1
	note D_, 2
	octave 2
	note A#, 4
	octave 3
	note G_, 3
	note F_, 3
	note A#, 2
	note F_, 1
	note A#, 2
	note A#, 3
	note G#, 3
	note F_, 1
	sound_ret

Music_PokeComCenter_Ch2:
_chan = 2
	stereo_panning FALSE, TRUE
	duty_cycle 2
	note_type 8, 9, 2
	octave 3
	note A#, 2
	octave 4
	note C_, 1
	note D_, 2
	rest 1
	note D_, 2
	note D#, 1
	note F_, 2
	rest 1
	stereo_panning TRUE, TRUE
	pitch_inc_switch
	volume_envelope 13, 1
.mainloop:
	octave 2
	note D#, 3
	octave 1
	note A#, 3
	octave 2
	note D#, 3
	note C_, 3
	octave 1
	note A#, 3
	octave 2
	note D_, 3
	note C_, 3
	octave 1
	note A#, 3
	octave 2
	note F_, 3
	octave 1
	note A#, 3
	octave 2
	note C_, 3
	note D_, 3
	note D#, 3
	note D_, 3
	note C_, 3
	octave 1
	note A#, 3
	sound_jump .mainloop

Music_PokeComCenter_Ch3:
_chan = 3
	stereo_panning TRUE, FALSE
	note_type 8, 2, 11
	octave 4
	note G_, 2
	note G#, 1
	note A#, 2
	rest 1
	note A#, 2
	octave 5
	note C_, 1
	note D_, 2
	rest 1
.mainloop:
	sound_call .sub1
	note D#, 3
	rest 1
	note G_, 4
	rest 4
	volume_envelope 2, 5
	octave 4
	note G_, 2
	note A#, 2
	note G_, 2
	note F_, 2
	note A#, 2
	note F_, 2
	sound_call .sub1
	note D#, 8
	rest 4
	volume_envelope 2, 5
	octave 4
	note D#, 2
	note F_, 2
	note G_, 2
	note G#, 2
	note A#, 2
	octave 5
	note C_, 2
	stereo_panning FALSE, TRUE
	volume_envelope 1, 10
	octave 5
	note G_, 6
	stereo_panning TRUE, FALSE
	volume_envelope 2, 5
	octave 4
	note D#, 3
	rest 3
	stereo_panning FALSE, TRUE
	volume_envelope 1, 10
	octave 5
	note A#, 6
	stereo_panning TRUE, FALSE
	volume_envelope 2, 5
	octave 4
	note G#, 2
	rest 2
	note A#, 2
	stereo_panning FALSE, TRUE
	volume_envelope 1, 10
	octave 5
	note G_, 1
	note G#, 1
	rest 2
	note A#, 2
	note G#, 2
	rest 2
	note G_, 2
	note F_, 4
	stereo_panning TRUE, FALSE
	volume_envelope 2, 5
	octave 4
	note G_, 2
	note G#, 2
	rest 2
	note A#, 2
	stereo_panning FALSE, TRUE
	volume_envelope 1, 10
	octave 5
	note D_, 6
	stereo_panning TRUE, FALSE
	volume_envelope 2, 5
	octave 4
	note F_, 3
	rest 3
	stereo_panning FALSE, TRUE
	volume_envelope 1, 10
	octave 5
	note F_, 6
	stereo_panning TRUE, FALSE
	volume_envelope 2, 5
	octave 4
	note F_, 2
	rest 2
	note G#, 2
	sound_call .sub2
	octave 4
	note G#, 2
	note G_, 2
	rest 2
	note F_, 2
	stereo_panning FALSE, TRUE
	volume_envelope 1, 10
	octave 5
	note G_, 6
	stereo_panning TRUE, FALSE
	volume_envelope 2, 5
	note C_, 3
	rest 3
	stereo_panning FALSE, TRUE
	volume_envelope 1, 10
	octave 5
	note A#, 6
	stereo_panning TRUE, FALSE
	volume_envelope 2, 5
	note D_, 2
	rest 2
	note D#, 2
	stereo_panning FALSE, TRUE
	volume_envelope 1, 10
	note G#, 2
	rest 2
	note G_, 2
	note G#, 2
	rest 2
	note A#, 2
	octave 6
	note C_, 4
	stereo_panning TRUE, FALSE
	volume_envelope 2, 5
	octave 5
	note D_, 2
	note D#, 2
	rest 2
	note F_, 2
	stereo_panning FALSE, TRUE
	volume_envelope 1, 10
	note A_, 1
	note A#, 3
	stereo_panning TRUE, FALSE
	volume_envelope 2, 5
	note C_, 2
	stereo_panning FALSE, TRUE
	volume_envelope 1, 10
	note G#, 2
	rest 2
	note G_, 2
	note G#, 6
	stereo_panning TRUE, FALSE
	volume_envelope 2, 5
	note C_, 2
	rest 2
	octave 4
	note G#, 2
	sound_call .sub2
	octave 4
	note F_, 2
	note G_, 2
	rest 2
	note G#, 2
	sound_jump .mainloop

.sub1:
	note_type 4, 1, 12
	octave 5
	note D#, 3
	rest 1
	octave 4
	note A#, 2
	octave 5
	note D#, 4
	note A#, 5
	rest 1
	note G_, 1
	note G#, 5
	note G_, 2
	note F_, 3
	rest 1
	note D_, 4
	rest 4
	stereo_panning TRUE, FALSE
	volume_envelope 2, 5
	octave 4
	note D#, 2
	note A#, 2
	note D#, 2
	note D_, 2
	note A#, 2
	note D_, 2
	volume_envelope 1, 12
	octave 5
	note D_, 3
	rest 1
	octave 4
	note A#, 2
	octave 5
	note D_, 4
	note G_, 5
	rest 1
	note E_, 1
	note F_, 5
	note D_, 2
	sound_ret

.sub2:
	stereo_panning FALSE, TRUE
	volume_envelope 1, 10
	octave 5
	note F#, 1
	note G_, 1
	rest 2
	note G#, 2
	note G_, 2
	rest 2
	note F_, 2
	note D#, 4
	stereo_panning TRUE, FALSE
	volume_envelope 2, 5
	sound_ret

Music_PokeComCenter_Ch4:
_chan = 4
	toggle_noise 6
	stereo_panning TRUE, TRUE
	drum_speed 8
	rest 8
.mainloop:
	drum_note 12, 1
	drum_note 10, 2
	drum_note 10, 1
.loop1:
	drum_note 10, 3
	drum_note 12, 2
	drum_note 10, 1
	sound_loop 3, .loop1
	drum_note 10, 2
	sound_jump .mainloop
