HRM_CeladonCity:
	channel_count 3
	channel 1, HRM_CeladonCity_Ch1
	channel 2, HRM_CeladonCity_Ch2
	channel 3, HRM_CeladonCity_Ch3

HRM_CeladonCity_Ch1:
_chan = 1
	tempo 144
	volume 7
	vibrato 7, 4, 2
	pitch_offset -1
	duty_cycle 3
	stereo_panning TRUE, FALSE
	note_type 6, 3, 9
	rest 16
	octave 4
	note D_, 2
	note C#, 2
	note D_, 2
	note E_, 2
	note F#, 2
	note E_, 2
	note F#, 2
	note G_, 2
.mainloop:
	volume_envelope 10, 3
	sound_call .sub1
	octave 3
	note D_, 4
	note F#, 4
	octave 2
	note A_, 4
	note B_, 4
	octave 3
	note C_, 4
	octave 2
	note A_, 8
	octave 3
	note D_, 4
	note F#, 2
	note E_, 2
	note D_, 2
	note E_, 2
	note F#, 4
	note D_, 4
	octave 2
	note B_, 8
	octave 3
	note D_, 8
	sound_call .sub1
	octave 3
	note F#, 4
	note E_, 4
	note D_, 4
	note E_, 4
	note D_, 4
	note C_, 4
	octave 2
	note B_, 4
	note A_, 4
	note F#, 8
	duty_cycle 0
	stereo_panning FALSE, TRUE
	octave 3
	note D_, 2
	note C#, 2
	note D_, 2
	note E_, 2
	note F#, 16
	duty_cycle 3
	stereo_panning TRUE, FALSE
	sound_call .sub2
	note A_, 8
	note G_, 8
	note F#, 4
	note G_, 4
	note A_, 4
	note B_, 4
	octave 4
	note C_, 4
	octave 3
	note D_, 4
	note B_, 4
	octave 4
	note C_, 4
	octave 3
	note B_, 4
	note D_, 4
	octave 2
	note G_, 4
	note A_, 4
	sound_call .sub2
	note A_, 8
	note G_, 8
	note F#, 4
	note E_, 4
	note D_, 4
	note E_, 4
	note D_, 4
	note C_, 4
	octave 2
	note B_, 4
	note A_, 4
	note F#, 8
	note A_, 8
	sound_jump .mainloop

.sub1:
	octave 3
	note D_, 4
	note G_, 4
	octave 2
	note B_, 4
	octave 3
	note C_, 4
	note D_, 4
	octave 2
	note B_, 8
	octave 3
	note D_, 4
	note G_, 2
	note D_, 2
	note C_, 2
	note D_, 2
	note E_, 4
	note D_, 4
	note F#, 4
	octave 2
	note A_, 1
	rest 11
	sound_ret

.sub2:
	octave 2
	note B_, 8
	octave 3
	note D_, 8
	note E_, 4
	note D_, 4
	note C_, 4
	note D_, 4
	note C_, 8
	octave 2
	note B_, 4
	octave 3
	note C_, 4
	octave 2
	note B_, 8
	octave 3
	note G_, 8
	sound_ret

HRM_CeladonCity_Ch2:
_chan = 2
	duty_cycle 2
	vibrato 17, 2, 4
	stereo_panning TRUE, TRUE
	note_type 6, 10, 13
	octave 2
	note A_, 4
	rest 4
	note F#, 4
	rest 4
	volume_envelope 1, 13
	note D_, 16
.mainloop:
	duty_cycle 2
	stereo_panning TRUE, TRUE
	volume_envelope 12, 3
	sound_call .sub1
	sound_call .sub1
	sound_call .sub1
	sound_call .sub2
	sound_call .sub2
	sound_call .sub2
	sound_call .sub2
	sound_call .sub1
	sound_call .sub1
	sound_call .sub1
	sound_call .sub1
	sound_call .sub2
	stereo_panning TRUE, TRUE
	volume_envelope 12, 2
	octave 2
	note D_, 4
	note C_, 4
	octave 1
	note B_, 4
	note A_, 4
	note G_, 4
	note F#, 4
	note E_, 4
	note C#, 4
	note D_, 4
	note A_, 12
	volume_envelope 12, 3
	octave 2
	note D_, 16
	duty_cycle 0
	sound_call .sub3
	octave 5
	note E_, 4
	stereo_panning FALSE, TRUE
	volume_envelope 10, 8
	octave 2
	note B_, 1
	rest 3
	stereo_panning TRUE, TRUE
	volume_envelope 6, 8
	octave 5
	note F#, 4
	stereo_panning FALSE, TRUE
	volume_envelope 10, 8
	octave 2
	note B_, 1
	rest 3
	stereo_panning TRUE, TRUE
	volume_envelope 6, 8
	octave 5
	note D_, 12
	stereo_panning FALSE, TRUE
	volume_envelope 10, 8
	octave 2
	note B_, 1
	rest 3
	stereo_panning TRUE, TRUE
	volume_envelope 6, 8
	octave 5
	note C_, 16
	octave 4
	note A_, 4
	note B_, 4
	octave 5
	note C_, 4
	note D_, 4
	sound_call .sub4
	sound_call .sub3
	sound_call .sub4
	stereo_panning TRUE, TRUE
	volume_envelope 6, 8
	octave 5
	note C_, 16
	note A_, 4
	note G_, 4
	note F#, 4
	note G_, 4
	note F#, 4
	note E_, 4
	note D_, 4
	note E_, 4
	note D_, 8
	rest 4
	stereo_panning FALSE, TRUE
	volume_envelope 10, 8
	octave 3
	note C_, 1
	rest 3
	sound_jump .mainloop

.sub1:
	stereo_panning TRUE, TRUE
	octave 1
	note G_, 4
	stereo_panning FALSE, TRUE
	octave 2
	note B_, 1
	rest 3
	stereo_panning TRUE, TRUE
	octave 1
	note D_, 4
	stereo_panning FALSE, TRUE
	octave 2
	note B_, 1
	rest 3
	sound_ret

.sub2:
	stereo_panning TRUE, TRUE
	octave 1
	note A_, 4
	stereo_panning FALSE, TRUE
	octave 3
	note C_, 1
	rest 3
	stereo_panning TRUE, TRUE
	octave 1
	note D_, 4
	stereo_panning FALSE, TRUE
	octave 3
	note C_, 1
	rest 3
	sound_ret

.sub3:
	stereo_panning TRUE, TRUE
	volume_envelope 6, 8
	octave 5
	note D_, 16
	note C_, 4
	octave 4
	note B_, 4
	note A_, 4
	note B_, 4
	sound_ret

.sub4:
	octave 5
	note E_, 4
	stereo_panning FALSE, TRUE
	volume_envelope 10, 8
	octave 2
	note B_, 1
	rest 3
	stereo_panning TRUE, TRUE
	volume_envelope 6, 8
	octave 5
	note D_, 4
	note E_, 4
	note D_, 12
	stereo_panning FALSE, TRUE
	volume_envelope 10, 8
	octave 2
	note B_, 1
	rest 3
	sound_ret

HRM_CeladonCity_Ch3:
_chan = 3
	vibrato 11, 2, 3
	stereo_panning TRUE, TRUE
	note_type 6, 1, 27
	octave 5
	note D_, 2
	note C#, 2
	note D_, 2
	note E_, 2
	note F#, 2
	note E_, 2
	note F#, 2
	note G_, 2
	note A_, 16
.mainloop:
	sound_call .sub1
	stereo_panning TRUE, TRUE
	volume_envelope 1, 9
	octave 5
	note A_, 4
	stereo_panning FALSE, TRUE
	volume_envelope 1, 6
	octave 3
	note A_, 1
	rest 3
	stereo_panning TRUE, TRUE
	volume_envelope 1, 9
	octave 5
	note F#, 4
	stereo_panning FALSE, TRUE
	volume_envelope 1, 6
	octave 3
	note A_, 1
	rest 3
	stereo_panning TRUE, TRUE
	volume_envelope 1, 9
	octave 5
	note A_, 4
	note F#, 6
	rest 2
	stereo_panning FALSE, TRUE
	volume_envelope 1, 6
	octave 3
	note A_, 1
	rest 3
	stereo_panning TRUE, TRUE
	volume_envelope 1, 9
	octave 5
	note A_, 2
	note G_, 2
	note F#, 2
	note G_, 2
	note A_, 3
	rest 1
	note B_, 3
	rest 1
	note G_, 6
	rest 2
	note B_, 6
	rest 2
	sound_call .sub1
	stereo_panning TRUE, TRUE
	volume_envelope 1, 9
	octave 5
	note A_, 2
	rest 2
	note G_, 2
	rest 2
	note F#, 2
	rest 2
	note G_, 2
	rest 2
	note F#, 2
	rest 2
	note E_, 2
	rest 2
	note D_, 2
	rest 2
	note C#, 2
	rest 2
	note D_, 5
	rest 3
	stereo_panning TRUE, FALSE
	volume_envelope 1, 7
	octave 4
	note D_, 2
	note E_, 2
	note F#, 2
	note A_, 2
	octave 5
	note D_, 2
	volume_envelope 2, 7
	note D_, 2
	volume_envelope 3, 7
	note D_, 2
	rest 6
	stereo_panning TRUE, TRUE
	volume_envelope 1, 5
	octave 2
	note F#, 2
	volume_envelope 2, 5
	note F#, 2
.loop1:
	volume_envelope 1, 5
	sound_call .sub2
	sound_call .sub2
	sound_loop 2, .loop1
	sound_call .sub3
.loop2:
	sound_call .sub2
	sound_call .sub2
	sound_loop 3, .loop2
	sound_call .sub3
	sound_call .sub4
	stereo_panning TRUE, TRUE
	octave 2
	note A_, 2
	volume_envelope 2, 5
	note A_, 2
	sound_call .sub5
	sound_call .sub4
	stereo_panning TRUE, TRUE
	octave 2
	note D_, 2
	volume_envelope 2, 5
	note D_, 2
	sound_call .sub5
	sound_jump .mainloop

.sub1:
	stereo_panning TRUE, TRUE
	volume_envelope 1, 9
	octave 5
	note B_, 4
	stereo_panning FALSE, TRUE
	volume_envelope 1, 6
	octave 3
	note G_, 1
	rest 3
	stereo_panning TRUE, TRUE
	volume_envelope 1, 9
	octave 5
	note G_, 4
	stereo_panning FALSE, TRUE
	volume_envelope 1, 6
	octave 3
	note G_, 1
	rest 3
	stereo_panning TRUE, TRUE
	volume_envelope 1, 9
	octave 5
	note B_, 4
	note G_, 6
	rest 2
	stereo_panning FALSE, TRUE
	volume_envelope 1, 6
	octave 3
	note G_, 1
	rest 3
	stereo_panning TRUE, TRUE
	volume_envelope 1, 9
	octave 5
	note B_, 2
	note G_, 2
	note A_, 2
	note B_, 2
	octave 6
	note C_, 3
	rest 1
	octave 5
	note B_, 3
	rest 1
	note A_, 8
	rest 4
	stereo_panning FALSE, TRUE
	volume_envelope 1, 6
	octave 3
	note A_, 1
	rest 3
	sound_ret

.sub2:
	stereo_panning TRUE, TRUE
	octave 2
	note G_, 2
	volume_envelope 2, 5
	note G_, 2
	stereo_panning FALSE, TRUE
	volume_envelope 1, 5
	octave 3
	note G_, 1
	rest 3
	stereo_panning TRUE, TRUE
	octave 2
	note D_, 2
	volume_envelope 2, 5
	note D_, 2
	stereo_panning FALSE, TRUE
	volume_envelope 1, 5
	octave 3
	note G_, 1
	rest 3
	sound_ret

.sub3:
	stereo_panning TRUE, TRUE
	octave 2
	note A_, 2
	volume_envelope 2, 5
	note A_, 2
	stereo_panning FALSE, TRUE
	volume_envelope 1, 5
	octave 3
	note A_, 1
	rest 3
	stereo_panning TRUE, TRUE
	octave 2
	note D_, 2
	volume_envelope 2, 5
	note D_, 2
	stereo_panning FALSE, TRUE
	volume_envelope 1, 5
	octave 3
	note A_, 1
	rest 3
	sound_loop 2, .sub3
	sound_ret

.sub4:
	stereo_panning TRUE, TRUE
	note D_, 2
	volume_envelope 2, 5
	note D_, 2
.sub5:
	stereo_panning FALSE, TRUE
	volume_envelope 1, 5
	octave 3
	note A_, 1
	rest 3
	sound_ret


