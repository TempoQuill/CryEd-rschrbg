Music_PilotTegere: ; WILLIAM ANDERSON
; Tegere is a french corruption of Tajiri, the creator of Pokemon
; engine
	channel_count 4
	channel 1, Music_PilotTegere_Ch1
	channel 2, Music_PilotTegere_Ch2
	channel 3, Music_PilotTegere_Ch3
	channel 4, Music_PilotTegere_Ch4

Music_PilotTegere_Ch1:
_chan = 1
	tempo 160
	volume 7
	stereo_panning TRUE, TRUE
.mainloop:
	duty_cycle 3
	note_type 12, 11, 1
	sound_call Music_PilotTegere_Ch2.sub3
	note G_, 2
	note G_, 1
	note F#, 1
	note G_, 2
	note A_, 2
	note B_, 8
	sound_call Music_PilotTegere_Ch2.sub3
	note G_, 2
	note G_, 1
	note F#, 1
	note G_, 2
	note G_, 1
	note F#, 1
	note G_, 8
	stereo_panning TRUE, FALSE
	note_type 6, 7, 1
.loop1:
	octave 6
	note D_, 1
	note E_, 1
	sound_loop 16, .loop1
	note D_, 4
	note_type 12, 15, 1
	octave 3
	note D_, 1
	note D_, 1
	note D_, 2
	note D_, 2
	note D_, 8
	pitch_inc_switch
	duty_cycle 0
	sound_call .sub1
	rest 2
	volume_envelope 10, 2
	octave 3
	note E_, 2
	note G_, 2
	octave 4
	note C_, 2
	volume_envelope 11, 4
	note E_, 8
	rest 2
	volume_envelope 10, 2
	octave 3
	note D_, 2
	note F#, 2
	note A_, 2
	volume_envelope 11, 4
	octave 4
	note D_, 8
	sound_call .sub1
	stereo_panning TRUE, TRUE
	rest 2
	volume_envelope 9, 1
	octave 3
	note B_, 1
	note A#, 1
	volume_envelope 10, 2
	note B_, 2
	octave 4
	note D_, 2
	volume_envelope 11, 4
	note G_, 8
	transpose 1, 10
.loop2:
	rest 2
	volume_envelope 9, 1
	note D_, 1
	note C#, 1
	volume_envelope 10, 2
	note D_, 2
	note F#, 2
	volume_envelope 11, 4
	note A_, 8
	transpose 0, 0
	sound_loop 2, .loop2
.loop3:
	volume_envelope 10, 2
	note G_, 2
	volume_envelope 9, 1
	note G_, 1
	note F#, 1
	sound_loop 2, .loop3
	volume_envelope 10, 2
	note G_, 8
	pitch_inc_switch
	sound_jump .mainloop

.sub1:
	rest 2
	volume_envelope 10, 2
	octave 3
	note D_, 2
	note G_, 2
	note B_, 2
	volume_envelope 11, 4
	octave 4
	note D_, 8
	sound_ret

Music_PilotTegere_Ch2:
_chan = 2
	stereo_panning TRUE, TRUE
	pitch_inc_switch
.mainloop:
	duty_cycle 2
	note_type 12, 13, 1
	sound_call .sub1
	octave 2
	note B_, 2
	note B_, 1
	note A#, 1
	note B_, 2
	octave 3
	note C_, 2
	note D_, 8
	sound_call .sub1
	sound_call .sub2
	volume_envelope 4, 15
	octave 4
	note D_, 8
	note E_, 7
	volume_envelope 7, 12
	note F_, 1
	volume_envelope 10, 1
	note F#, 1
	rest 1
	octave 2
	note D_, 1
	note D_, 1
	note D_, 2
	note D_, 2
	note D_, 4
	rest 4
	pitch_inc_switch
	duty_cycle 1
	volume_envelope 14, 1
	sound_call .sub3
	note G_, 2
	note G_, 1
	note F#, 1
	note G_, 2
	note A_, 2
	note B_, 8
	sound_call .sub3
	pitch_inc_switch
	duty_cycle 2
	note_type 12, 13, 1
	sound_call .sub2
	sound_jump .mainloop

.sub1:
	rest 2
	octave 3
	note G_, 1
	note F#, 1
	note G_, 2
	note B_, 2
	note G_, 2
	note D_, 2
	octave 2
	note B_, 4
	rest 2
	octave 3
	note G_, 1
	note F#, 1
	note G_, 2
	octave 4
	note C_, 2
	octave 3
	note G_, 2
	note E_, 2
	note C_, 4
	rest 2
	octave 3
	note F#, 1
	note F_, 1
	note F#, 2
	note A_, 2
	note F#, 2
	octave 2
	note A_, 2
	note B_, 2
	octave 3
	note C_, 2
	sound_ret

.sub2:
	octave 2
	note B_, 2
	note B_, 1
	note A#, 1
	note B_, 2
	note B_, 1
	note A#, 1
	note B_, 8
	sound_ret

.sub3:
	rest 2
	octave 4
	note B_, 1
	note A#, 1
	note B_, 2
	octave 5
	note D_, 2
	octave 4
	note B_, 2
	note G_, 2
	note D_, 4
	rest 2
	octave 5
	note C_, 1
	octave 4
	note B_, 1
	octave 5
	note C_, 2
	note E_, 2
	note C_, 2
	octave 4
	note G_, 2
	note E_, 4
	rest 2
	octave 4
	note A_, 1
	note G#, 1
	note A_, 2
	octave 5
	note D_, 2
	octave 4
	note A_, 2
	note D_, 2
	note E_, 2
	note F#, 2
	sound_ret

Music_PilotTegere_Ch3:
_chan = 3
	stereo_panning FALSE, TRUE
	vibrato 15, 4, 4
.mainloop:
	note_type 12, 1, 7
	sound_call .sub1
	rest 3
	note B_, 1
	rest 3
	sound_call .sub1
	rest 7
	volume_envelope 2, 7
	octave 3
	note D_, 8
	note C#, 8
	volume_envelope 1, 7
	note D_, 1
	rest 1
	octave 2
	note D_, 1
	note D_, 1
	note D_, 1
	rest 1
	note D_, 1
	rest 1
	note D_, 4
	rest 4
	sound_call .sub1
	rest 3
	note B_, 1
	rest 3
	sound_call .sub1
	rest 7
	sound_jump .mainloop

.sub1:
	octave 2
	note G_, 1
	rest 3
	note D_, 1
	rest 3
	note G_, 1
	rest 3
	note A#, 1
	rest 2
	note B_, 1
	octave 3
	note C_, 1
	rest 3
	octave 2
	note G_, 1
	rest 3
	octave 3
	note C_, 1
	rest 3
	note E_, 1
	rest 3
	note D_, 1
	rest 3
	octave 2
	note A_, 1
	rest 3
	note F#, 1
	rest 3
	note A_, 1
	rest 2
	note A#, 1
	note G_, 1
	rest 3
	note D_, 1
	rest 3
	note G_, 1
	sound_ret

Music_PilotTegere_Ch4:
_chan = 4
	toggle_noise 0
	stereo_panning TRUE, FALSE
	drum_speed 6
.mainloop:
	sound_call .sub1
	rest 12
	rest 16
	rest 16
	rest 16
	rest 16
	sound_call .sub1
	drum_note 4, 4
	drum_note 4, 1
	drum_note 4, 1
	drum_note 4, 1
	drum_note 4, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 2, 1
	drum_note 2, 1
	sound_jump .mainloop

.sub1:
	drum_note 1, 4
	drum_note 4, 2
	drum_note 3, 2
	drum_note 2, 4
	drum_note 4, 4
	drum_note 3, 2
	drum_note 4, 2
	drum_note 3, 2
	drum_note 2, 2
	drum_note 1, 4
	drum_note 4, 4
	drum_note 3, 4
	drum_note 4, 2
	drum_note 3, 2
	drum_note 2, 4
	drum_note 4, 2
	drum_note 3, 2
	drum_note 2, 12
	drum_note 4, 2
	drum_note 3, 2
	drum_note 2, 4
	drum_note 4, 4
	drum_note 3, 4
	drum_note 4, 2
	drum_note 3, 2
	drum_note 2, 4
	drum_note 4, 4
	drum_note 3, 2
	drum_note 4, 2
	drum_note 3, 2
	drum_note 2, 2
	drum_note 1, 4
	drum_note 4, 2
	drum_note 3, 2
	drum_note 2, 4
	drum_note 4, 2
	drum_note 3, 2
	drum_note 2, 12
	drum_note 4, 1
	drum_note 4, 1
	drum_note 4, 1
	drum_note 3, 1
	drum_note 2, 4
	drum_note 4, 4
	drum_note 3, 2
	drum_note 4, 2
	drum_note 3, 2
	drum_note 2, 2
	drum_note 1, 12
	drum_note 4, 1
	drum_note 4, 1
	drum_note 4, 1
	drum_note 3, 1
	drum_note 2, 4
	drum_note 4, 2
	drum_note 3, 2
	drum_note 2, 4
	drum_note 4, 4
	drum_note 3, 12
	drum_note 4, 1
	drum_note 4, 1
	drum_note 4, 1
	drum_note 3, 1
	drum_note 2, 4
	drum_note 4, 4
	drum_note 3, 2
	drum_note 4, 2
	drum_note 3, 2
	drum_note 2, 2
	drum_note 1, 4
	drum_note 4, 2
	drum_note 3, 2
	drum_note 2, 4
	drum_note 4, 2
	drum_note 3, 2
	drum_note 2, 4
	drum_note 4, 4
	drum_note 3, 2
	drum_note 4, 2
	drum_note 3, 2
	drum_note 2, 2
	drum_note 1, 4
	sound_ret


