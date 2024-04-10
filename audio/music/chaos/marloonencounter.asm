Music_MarloonEncounter:
; verse is "Romonen" while the chorus comes from a song written back in 2015
; engine
	channel_count 4
	channel 1, Music_MarloonEncounter_Ch1
	channel 2, Music_MarloonEncounter_Ch2
	channel 3, Music_MarloonEncounter_Ch3
	channel 4, Music_MarloonEncounter_Ch4

Music_MarloonEncounter_Ch1:
_chan = 1
	tempo 154
	volume 7
	pitch_inc_switch
	stereo_panning TRUE, FALSE
.mainloop:
	duty_cycle 1
	note_type 12, 9, 1
	rest 16
	rest 14
	octave 3
	note E_, 2
	sound_call .sub1
	rest 2
	note F_, 3
	note D_, 3
	note F_, 3
	note F_, 3
	note F_, 2
	rest 2
	note E_, 3
	note F_, 3
	note G_, 3
	note F_, 3
	note E_, 2
	sound_call .sub1
	rest 2
	note F_, 3
	note F_, 3
	note E_, 3
	note E_, 3
	note E_, 2
	rest 2
	note F_, 3
	note F_, 3
	note F_, 3
	note F_, 1
	octave 2
	note A_, 2
	note A#, 2
	sound_call .sub2
	note C_, 2
	note F_, 2
	octave 2
	note A_, 1
	octave 3
	note F_, 3
	note F_, 3
	note F_, 1
	note F_, 2
	note F_, 1
	note A_, 1
	note A#, 2
	note F_, 2
	note D_, 1
	note D_, 3
	note F_, 3
	note F_, 3
	note F_, 2
.loop1:
	octave 3
	note F_, 1
	note C_, 1
	octave 2
	note G_, 1
	sound_loop 2, .loop1
	octave 3
	note C_, 1
	note F_, 1
	volume_envelope 7, 4
	note G_, 3
	volume_envelope 9, 1
	note F_, 3
	note E_, 2
	sound_call .sub2
	note C_, 2
	note F_, 2
	octave 2
	note A_, 1
	octave 3
	note F_, 3
	note F_, 3
	note F_, 1
	note A_, 2
	note F_, 1
	note G_, 1
	note F_, 2
	note F_, 2
	note D_, 1
	note F_, 3
	note E_, 3
	note E_, 1
	octave 2
	note A#, 2
	octave 3
	note E_, 2
	note A#, 1
	note F_, 1
	note D_, 1
	note A#, 1
	note F_, 1
	note D_, 1
	note F_, 1
	note A#, 1
	volume_envelope 8, 5
	note A_, 4
	note A_, 2
	note G_, 2
	note F_, 4
	note A_, 4
	note G_, 2
	note F_, 2
	note E_, 2
	note D_, 2
	note C_, 4
	octave 2
	note A_, 2
	note A_, 1
	note A#, 1
	octave 3
	note C_, 2
	octave 2
	note F_, 2
	octave 3
	note A_, 2
	note G_, 2
	note F_, 4
	note A_, 4
	note G_, 4
	note A#, 4
	note A_, 4
	note G_, 4
	note F_, 4
	note D_, 2
	note C_, 2
	octave 2
	note A#, 4
	octave 3
	note A#, 4
	octave 4
	note C_, 2
	octave 3
	note G_, 2
	note F_, 2
	note G_, 2
	note A_, 2
	note C_, 2
	note A_, 2
	note G_, 2
	note F_, 2
	note C_, 2
	note E_, 2
	note C_, 2
	note D_, 6
	octave 2
	note F_, 6
	octave 3
	note D_, 2
	note F_, 2
	note E_, 16
	sound_jump .mainloop

.sub1:
	rest 2
	note F_, 3
	note F_, 3
	note E_, 3
	note E_, 3
	note E_, 2
	rest 2
	note F_, 3
	note F_, 3
	note F_, 3
	note F_, 3
	note F_, 2
	sound_ret

.sub2:
	octave 3
	note C_, 2
	note F_, 2
	note F_, 1
	note F_, 3
	note E_, 3
	note E_, 1
	note G_, 2
	note E_, 2
	sound_ret

Music_MarloonEncounter_Ch2:
_chan = 2
	pitch_inc_switch
.mainloop:
	vibrato 0, 0, 0
	stereo_panning TRUE, FALSE
	duty_cycle 1
	note_type 12, 8, 1
	rest 2
	octave 3
	note F_, 3
	note F_, 3
	note F_, 3
	note F_, 3
	note F_, 2
	rest 2
	note E_, 3
	note F_, 3
	note G_, 3
	note F_, 1
	vibrato 8, 3, 3
	stereo_panning TRUE, TRUE
	duty_cycle 2
	note_type 6, 8, 4
	note F_, 4
	note G_, 4
	sound_call .sub1
	sound_call .sub2
	sound_call .sub1
	sound_call .sub3
	note_type 12, 10, 7
	note F_, 12
	duty_cycle 0
	note_type 6, 8, 4
	note F_, 4
	note G_, 4
	sound_call .sub1
	sound_call .sub2
	sound_call .sub1
	sound_call .sub3
	note F_, 16
	rest 7
	duty_cycle 2
	volume_envelope 6, 1
	octave 4
	note E_, 1
	volume_envelope 9, 6
	note F_, 4
	note E_, 4
	note D_, 12
	octave 3
	note A#, 4
	octave 4
	note C_, 12
	octave 3
	note A#, 4
	note A_, 8
	note F_, 15
	volume_envelope 6, 1
	octave 4
	note E_, 1
	volume_envelope 9, 6
	note F_, 4
	note E_, 4
	note D_, 12
	note D_, 4
	note C_, 7
	volume_envelope 6, 1
	note D#, 1
	volume_envelope 9, 6
	note E_, 8
	note F_, 16
	rest 7
	volume_envelope 6, 1
	note E_, 1
	volume_envelope 9, 6
	note F_, 4
	note E_, 4
	note D_, 8
	note F_, 8
	note E_, 8
	octave 3
	note A_, 4
	note A#, 4
	octave 4
	note C_, 8
	note C_, 4
	octave 3
	note A#, 4
	note A_, 8
	note G_, 8
	note_type 12, 10, 7
	note F_, 12
	stereo_panning FALSE, TRUE
	duty_cycle 3
	octave 2
	note A#, 2
	note A_, 2
	note G_, 4
	stereo_panning TRUE, TRUE
	duty_cycle 2
	volume_envelope 9, 6
	octave 3
	note G_, 2
	note A_, 2
	note G_, 4
	note F_, 4
	sound_jump .mainloop

.sub1:
	volume_envelope 9, 6
	note A_, 7
	volume_envelope 6, 1
	note B_, 1
	volume_envelope 9, 6
	octave 4
	note C_, 8
	octave 3
	note G_, 8
	note A_, 4
	note A#, 4
	sound_ret

.sub2:
	note A_, 8
	note F_, 16
	note A_, 4
	octave 4
	note C_, 3
	volume_envelope 6, 1
	note C#, 1
	volume_envelope 9, 6
	note D_, 8
	octave 3
	note F_, 8
	note G_, 12
	note A_, 4
	note_type 12, 10, 7
	note G_, 12
	note_type 6, 8, 4
	note F_, 4
	note G_, 4
	sound_ret

.sub3:
	note A_, 8
	note F_, 15
	volume_envelope 6, 1
	octave 4
	note E_, 1
	volume_envelope 9, 6
	note F_, 4
	note E_, 4
	note D_, 8
	octave 3
	note A#, 8
	note A_, 8
	note G_, 8
	sound_ret

Music_MarloonEncounter_Ch3:
_chan = 3
	note_type 6, 2, 7
	sound_call .sub1
	stereo_panning TRUE, TRUE
	octave 2
	note A#, 2
	sound_call .sub2
	sound_call .sub1
	stereo_panning TRUE, TRUE
	octave 3
	note C_, 2
	sound_call .sub3
	sound_call .sub4
	sound_call .sub2
	sound_call .sub1
	stereo_panning TRUE, TRUE
	octave 3
	note C_, 2
	sound_call .sub3
	sound_call .sub5
	stereo_panning TRUE, TRUE
	octave 2
	note F_, 2
	rest 2
	stereo_panning FALSE, TRUE
	octave 4
	note C_, 2
	rest 2
	stereo_panning TRUE, TRUE
	octave 2
	note C_, 2
	stereo_panning FALSE, TRUE
	octave 4
	note C_, 2
	stereo_panning TRUE, TRUE
	octave 2
	note F_, 4
	stereo_panning FALSE, TRUE
	octave 4
	note C_, 2
	rest 2
	stereo_panning TRUE, TRUE
	octave 2
	note C_, 2
	stereo_panning FALSE, TRUE
	octave 4
	note C_, 2
	stereo_panning TRUE, TRUE
	octave 2
	note A_, 2
	note G_, 2
	stereo_panning FALSE, TRUE
	octave 4
	note C_, 2
	stereo_panning TRUE, TRUE
	octave 2
	note E_, 2
	sound_call .sub1
	stereo_panning TRUE, TRUE
	octave 3
	note C_, 2
	sound_call .sub3
	sound_call .sub4
	sound_call .sub2
	sound_call .sub1
	stereo_panning TRUE, TRUE
	octave 3
	note C_, 2
	sound_call .sub3
	sound_call .sub5
	stereo_panning TRUE, TRUE
	octave 2
	note F_, 2
	rest 2
	stereo_panning FALSE, TRUE
	octave 4
	note D_, 2
	rest 2
	stereo_panning TRUE, TRUE
	octave 2
	note C_, 2
	stereo_panning FALSE, TRUE
	octave 4
	note D_, 2
	stereo_panning TRUE, TRUE
	octave 2
	note F_, 4
	stereo_panning FALSE, TRUE
	octave 4
	note C_, 2
	rest 2
	stereo_panning TRUE, TRUE
	octave 2
	note C_, 2
	stereo_panning FALSE, TRUE
	octave 4
	note C_, 2
	stereo_panning TRUE, TRUE
	octave 2
	note A_, 2
	note G_, 2
	stereo_panning FALSE, TRUE
	octave 4
	note C_, 2
	stereo_panning TRUE, TRUE
	octave 2
	note A_, 2
	sound_call .sub6
.loop1:
	stereo_panning TRUE, TRUE
	octave 2
	note F_, 4
	stereo_panning FALSE, TRUE
	octave 3
	note A_, 2
	sound_loop 2, .loop1
	stereo_panning TRUE, TRUE
	rest 2
	octave 2
	note F_, 2
	octave 3
	note F_, 2
	note G_, 1
	note F_, 1
	note E_, 2
	rest 2
	note D_, 2
	rest 2
	note C_, 2
	rest 2
	sound_call .sub6
.loop2:
	stereo_panning TRUE, TRUE
	octave 3
	note D_, 4
	stereo_panning FALSE, TRUE
	octave 4
	note F_, 2
	sound_loop 2, .loop2
	stereo_panning TRUE, TRUE
	rest 2
	octave 3
	note C_, 2
	note D_, 2
	note E_, 1
	note D_, 1
	note C_, 2
	rest 2
	octave 2
	note A#, 2
	rest 2
	note A_, 2
	rest 2
	note G_, 4
	stereo_panning FALSE, TRUE
	octave 3
	note A#, 2
	stereo_panning TRUE, TRUE
	octave 2
	note G_, 2
	stereo_panning FALSE, TRUE
	octave 3
	note A#, 2
	octave 4
	note C_, 2
	octave 3
	note A#, 2
	note A_, 2
	stereo_panning TRUE, TRUE
	note C_, 2
	stereo_panning FALSE, TRUE
	note G_, 2
	octave 4
	note C_, 2
	stereo_panning TRUE, TRUE
	octave 2
	note G_, 2
	stereo_panning FALSE, TRUE
	octave 4
	note D_, 2
	note E_, 2
	stereo_panning TRUE, TRUE
	octave 3
	note C_, 4
	note F_, 4
	stereo_panning FALSE, TRUE
	octave 4
	note C_, 2
	octave 3
	note A_, 2
	stereo_panning TRUE, TRUE
	note E_, 4
	stereo_panning FALSE, TRUE
	octave 4
	note E_, 2
	note C_, 2
	stereo_panning TRUE, TRUE
	octave 3
	note D_, 4
	stereo_panning FALSE, TRUE
	octave 4
	note F_, 2
	note C_, 2
	stereo_panning TRUE, TRUE
	octave 3
	note C_, 4
	stereo_panning FALSE, TRUE
	octave 4
	note F_, 2
	note C_, 2
	stereo_panning TRUE, TRUE
	octave 2
	note A#, 4
	stereo_panning FALSE, TRUE
	octave 4
	note D_, 2
	stereo_panning TRUE, TRUE
	octave 2
	note F_, 4
	stereo_panning FALSE, TRUE
	octave 4
	note C_, 2
	stereo_panning TRUE, TRUE
	octave 2
	note A#, 2
	stereo_panning FALSE, TRUE
	octave 4
	note C_, 2
	note D_, 2
	octave 3
	note A#, 2
	stereo_panning TRUE, TRUE
	note F_, 2
	note D_, 2
	note F_, 2
	note D_, 2
	octave 2
	note A#, 2
	octave 3
	note D_, 2
	note C_, 4
	volume_envelope 3, 7
	note C_, 4
	volume_envelope 2, 5
	note A#, 4
	octave 4
	note C_, 4
	octave 3
	note A#, 4
	volume_envelope 3, 5
	note A#, 4
	volume_envelope 2, 5
	note A_, 4
	volume_envelope 3, 5
	note A_, 4
	sound_jump Music_MarloonEncounter_Ch3

.sub1:
	stereo_panning TRUE, TRUE
	octave 2
	note F_, 2
	rest 2
	stereo_panning FALSE, TRUE
	octave 4
	note C_, 2
	rest 2
	stereo_panning TRUE, TRUE
	octave 2
	note F_, 2
	stereo_panning FALSE, TRUE
	octave 4
	note C_, 2
	stereo_panning TRUE, TRUE
	octave 2
	note F_, 4
	stereo_panning FALSE, TRUE
	octave 4
	note C_, 2
	rest 2
	stereo_panning TRUE, TRUE
	octave 2
	note G_, 2
	stereo_panning FALSE, TRUE
	octave 4
	note C_, 2
	stereo_panning TRUE, TRUE
	octave 2
	note G_, 4
	stereo_panning FALSE, TRUE
	octave 4
	note C_, 2
	sound_ret

.sub2:
	stereo_panning TRUE, TRUE
	octave 3
	note C_, 4
	stereo_panning FALSE, TRUE
	octave 4
	note C_, 2
	rest 2
	stereo_panning TRUE, TRUE
	octave 2
	note A#, 2
	stereo_panning FALSE, TRUE
	octave 4
	note D_, 2
	rest 2
	stereo_panning TRUE, TRUE
	octave 2
	note A_, 2
	stereo_panning FALSE, TRUE
	octave 4
	note E_, 2
	rest 2
	stereo_panning TRUE, TRUE
	octave 2
	note G_, 2
	stereo_panning FALSE, TRUE
	octave 4
	note C_, 2
	stereo_panning TRUE, TRUE
	octave 3
	note C_, 4
	stereo_panning FALSE, TRUE
	note A#, 2
	rest 2
	sound_ret

.sub3:
	stereo_panning TRUE, TRUE
	octave 3
	note D_, 2
	rest 2
	stereo_panning FALSE, TRUE
	octave 4
	note C_, 2
	rest 2
	stereo_panning TRUE, TRUE
	octave 3
	note D_, 2
	stereo_panning FALSE, TRUE
	octave 4
	note C_, 2
	stereo_panning TRUE, TRUE
	octave 3
	note C_, 4
	stereo_panning FALSE, TRUE
	octave 4
	note C_, 2
	rest 2
	stereo_panning TRUE, TRUE
	octave 2
	note A_, 2
	stereo_panning FALSE, TRUE
	octave 4
	note C_, 2
	stereo_panning TRUE, TRUE
	octave 2
	note F_, 2
	note A_, 2
	stereo_panning FALSE, TRUE
	octave 4
	note C_, 2
	stereo_panning TRUE, TRUE
	octave 3
	note C_, 2
	sound_ret

.sub4:
	stereo_panning TRUE, TRUE
	octave 2
	note A#, 2
	rest 2
	stereo_panning FALSE, TRUE
	octave 3
	note A#, 2
	rest 2
	stereo_panning TRUE, TRUE
	note D_, 2
	stereo_panning FALSE, TRUE
	note A#, 2
	stereo_panning TRUE, TRUE
	note C_, 4
	stereo_panning FALSE, TRUE
	note B_, 2
	rest 2
	stereo_panning TRUE, TRUE
	octave 2
	note G_, 2
	stereo_panning FALSE, TRUE
	octave 3
	note B_, 2
	stereo_panning TRUE, TRUE
	octave 2
	note A_, 1
	note B_, 3
	stereo_panning FALSE, TRUE
	octave 3
	note B_, 2
	rest 2
	sound_ret

.sub5:
	stereo_panning TRUE, TRUE
	octave 2
	note A#, 2
	rest 2
	stereo_panning FALSE, TRUE
	octave 4
	note D_, 2
	rest 2
	stereo_panning TRUE, TRUE
	octave 3
	note D_, 2
	stereo_panning FALSE, TRUE
	octave 4
	note D_, 2
	stereo_panning TRUE, TRUE
	octave 3
	note F_, 4
	stereo_panning FALSE, TRUE
	octave 4
	note C_, 2
	rest 2
	stereo_panning TRUE, TRUE
	octave 2
	note C_, 2
	stereo_panning FALSE, TRUE
	octave 4
	note C_, 2
	stereo_panning TRUE, TRUE
	octave 2
	note E_, 2
	note G_, 2
	stereo_panning FALSE, TRUE
	octave 4
	note C_, 2
	stereo_panning TRUE, TRUE
	octave 2
	note E_, 2
	sound_ret

.sub6:
	stereo_panning TRUE, TRUE
	octave 2
	note A#, 4
.sub6loop1:
	stereo_panning FALSE, TRUE
	octave 4
	note D_, 2
	octave 3
	note F_, 2
	stereo_panning TRUE, TRUE
	octave 2
	note A#, 2
	sound_loop 2, .sub6loop1
.sub6loop2:
	stereo_panning FALSE, TRUE
	octave 4
	note E_, 2
	octave 3
	note G_, 2
	stereo_panning TRUE, TRUE
	note C_, 2
	sound_loop 2, .sub6loop2
	stereo_panning FALSE, TRUE
	octave 4
	note E_, 2
	octave 3
	note G_, 2
	sound_ret

Music_MarloonEncounter_Ch4:
_chan = 4
	toggle_noise 3
	drum_speed 6
.mainloop:
.loop1:
	sound_call .sub1
	sound_call .sub2
	sound_call .sub1
	sound_call .sub1
	sound_call .sub1
	sound_loop 3, .loop1
	sound_call .sub1
	sound_call .sub2
	stereo_panning TRUE, TRUE
	drum_note 11, 4
	stereo_panning FALSE, TRUE
	drum_note 8, 2
	stereo_panning TRUE, TRUE
	drum_note 11, 2
	drum_note 1, 4
	drum_note 11, 2
	stereo_panning FALSE, TRUE
	drum_note 8, 2
	drum_note 8, 2
	drum_note 8, 2
	stereo_panning TRUE, TRUE
	drum_note 11, 2
	stereo_panning FALSE, TRUE
	drum_note 8, 1
	drum_note 1, 1
	stereo_panning TRUE, TRUE
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
.loop2:
	sound_call .sub1
	sound_loop 3, .loop2
	sound_call .sub2
.loop3:
	sound_call .sub1
	sound_loop 3, .loop3
	drum_note 11, 16
	rest 8
	drum_note 2, 2
	drum_note 2, 2
	drum_note 2, 2
	drum_note 2, 2
	sound_jump .mainloop

.sub1:
	stereo_panning TRUE, TRUE
	drum_note 11, 4
	stereo_panning FALSE, TRUE
	drum_note 8, 2
	stereo_panning TRUE, TRUE
	drum_note 11, 2
	drum_note 1, 4
	drum_note 11, 2
	stereo_panning FALSE, TRUE
	drum_note 8, 2
	drum_note 8, 2
	drum_note 8, 2
	stereo_panning TRUE, TRUE
	drum_note 11, 2
	stereo_panning FALSE, TRUE
	drum_note 8, 2
	stereo_panning TRUE, TRUE
	drum_note 1, 4
	drum_note 11, 2
	drum_note 1, 2
	sound_ret

.sub2:
	stereo_panning TRUE, TRUE
	drum_note 11, 4
	stereo_panning FALSE, TRUE
	drum_note 8, 2
	stereo_panning TRUE, TRUE
	drum_note 11, 2
	drum_note 1, 4
	drum_note 11, 2
	stereo_panning FALSE, TRUE
	drum_note 8, 2
	drum_note 8, 2
	drum_note 8, 2
	stereo_panning TRUE, TRUE
	drum_note 11, 2
	stereo_panning FALSE, TRUE
	drum_note 8, 2
	stereo_panning TRUE, TRUE
	drum_note 1, 2
	drum_note 1, 2
	drum_note 11, 2
	drum_note 1, 2
	sound_ret
