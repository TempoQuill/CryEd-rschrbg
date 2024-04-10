Music_EquineTrioBattle: ; SOLO ACAPELLO
; "Towards the Truth" from Turnabout Storm in Pokemon battle form
; wav, engine
	channel_count 3
	channel 1, Music_EquineTrioBattle_Ch1
	channel 2, Music_EquineTrioBattle_Ch2
	channel 3, Music_EquineTrioBattle_Ch3

Music_EquineTrioBattle_Ch1:
_chan = 1
	tempo 205
	volume 7
	duty_cycle 2
	note_type 6, 5, 7
	octave 4
	note A#, 1
	note A_, 1
	note G#, 4
	note G_, 1
	note F#, 1
	note F_, 4
	note D#, 1
	note D_, 1
	note C#, 6
	octave 3
	note G#, 1
	note G_, 1
	note G#, 1
	octave 4
	note C#, 1
	note D_, 1
	note D#, 1
	note E_, 1
	note F_, 1
	volume_envelope 4, 12
	note G#, 4
	sound_call .sub1
	sound_call .sub1
.mainloop:
	volume_envelope 10, 7
	octave 3
	note C#, 6
	octave 2
	note A_, 6
	octave 3
	note C#, 4
	note C#, 4
	octave 2
	note B_, 2
	note A_, 6
	octave 3
	note C#, 4
	note D_, 6
	note F#, 4
	note D_, 2
	note G#, 2
	note F#, 2
	vibrato 0, 1, 2
	volume_envelope 7, 7
	octave 5
	note A_, 4
	note G#, 2
	note A_, 4
	note C#, 2
	note B_, 2
	note A_, 10
	vibrato 0, 0, 0
	volume_envelope 10, 7
	octave 3
	note F#, 8
	note E_, 8
	note D_, 8
	note C#, 8
	note G#, 8
	note F#, 8
	note F_, 8
	note F#, 4
	note E_, 2
	note F#, 6
	note C#, 2
	note E_, 2
	note F#, 4
	note E_, 2
	note C#, 6
	note C#, 2
	note E_, 2
	note F#, 4
	note E_, 2
	note C#, 4
	volume_envelope 8, 2
	note E_, 4
	volume_envelope 10, 7
	note D_, 4
	note E_, 4
	note D_, 4
	note E_, 4
	note C#, 2
	octave 2
	note B_, 4
	octave 3
	note C#, 2
	note D_, 4
	note E_, 4
	note F#, 4
	note A_, 4
	note G#, 4
	note F#, 2
	note G#, 2
	note F#, 2
	note F_, 4
	note F_, 4
	note F#, 4
	note G#, 4
	note F_, 2
	note F#, 2
	note G#, 2
	note F#, 2
	note G#, 2
	note B_, 2
	note G#, 2
	note B_, 2
	sound_call .sub2
	note C#, 4
	note D_, 4
	note E_, 4
	note C#, 4
	note E_, 4
	note G#, 4
	note B_, 4
	note A_, 4
	note G#, 8
	note B_, 8
	note A_, 8
	note G#, 2
	note A_, 2
	octave 4
	note C#, 2
	note E_, 2
	sound_call .sub2
	note C#, 6
	note G#, 6
	note B_, 4
	volume_envelope 10, 3
	octave 4
	note C#, 4
	note C#, 4
	octave 3
	note B_, 4
	note G#, 4
	volume_envelope 10, 7
	note F#, 6
	note F_, 10
	rest 16
	sound_jump .mainloop

.sub1:
	volume_envelope 9, 1
	octave 3
	note F#, 6
	note F#, 6
	volume_envelope 10, 6
	note A_, 4
	sound_loop 2, .sub1
	volume_envelope 9, 1
	note F_, 6
	note F_, 6
	note F_, 4
	note D_, 6
	note D_, 6
	volume_envelope 10, 6
	note F_, 4
	sound_ret

.sub2:
	octave 3
	note A_, 4
	octave 4
	note C#, 2
	octave 3
	note B_, 2
	note A_, 2
	octave 4
	note C#, 2
	octave 3
	note B_, 2
	note A_, 2
	note F#, 2
	note E_, 2
	note F#, 2
	note G#, 2
	note A_, 2
	note G#, 2
	note A_, 2
	note F#, 2
	note G#, 8
	note F#, 8
	note E_, 8
	note D_, 8
	sound_ret

Music_EquineTrioBattle_Ch2:
_chan = 2
	relative_pitch 2
	note_type 6, 15, 2
.loop1:
	octave 2
	note D_, 1
	rest 1
	octave 1
	note D_, 2
	octave 2
	note D_, 1
	rest 1
	octave 1
	note D_, 2
	octave 2
	note C#, 1
	rest 1
	octave 1
	note C#, 2
	octave 2
	note C#, 1
	rest 1
	octave 1
	note C#, 2
	relative_pitch 0
	sound_loop 2, .loop1
	sound_call .sub1
	sound_call .sub1
.mainloop:
	duty_cycle 1
	vibrato 19, 4, 3
	volume_envelope 13, 7
	octave 3
	note F#, 6
	note C#, 6
	note F#, 3
	note G#, 1
	note A_, 4
	note G#, 2
	note F#, 4
	note C#, 2
	note F#, 2
	note G#, 2
	note A_, 4
	note G#, 2
	note A_, 4
	note C#, 2
	note B_, 2
	note A_, 12
	note C#, 2
	note A_, 2
	note B_, 2
	octave 4
	note C#, 4
	volume_envelope 14, 1
	octave 3
	note B_, 2
	volume_envelope 13, 3
	note B_, 4
	note A_, 4
	volume_envelope 13, 7
	octave 4
	note C#, 6
	volume_envelope 14, 1
	octave 3
	note B_, 2
	volume_envelope 13, 3
	note B_, 4
	note A_, 4
	octave 4
	note C#, 6
	volume_envelope 13, 7
	note C#, 4
	note F_, 2
	volume_envelope 14, 2
	note C#, 4
	volume_envelope 13, 7
	note C#, 14
	octave 3
	note F#, 2
	note G#, 2
	note A_, 4
	note G#, 2
	note A_, 6
	note F#, 2
	note G#, 2
	note A_, 4
	note G#, 2
	note A_, 6
	note G#, 2
	note A_, 2
	note B_, 4
	note A_, 2
	note G#, 4
	volume_envelope 14, 1
	note A_, 4
	volume_envelope 13, 7
	note A_, 12
	note E_, 2
	note A_, 2
	note B_, 2
	octave 4
	note C#, 4
	volume_envelope 14, 1
	octave 3
	note B_, 2
	volume_envelope 13, 7
	note B_, 4
	note A_, 4
	octave 4
	note C#, 4
	volume_envelope 14, 2
	octave 3
	note B_, 4
	volume_envelope 13, 7
	note B_, 4
	note A_, 2
	note B_, 2
	octave 4
	note C_, 2
	volume_envelope 14, 2
	note C#, 4
	volume_envelope 13, 7
	note C#, 4
	note F_, 2
	volume_envelope 14, 2
	note C#, 4
	volume_envelope 13, 7
	note C#, 14
	duty_cycle 2
	vibrato 11, 3, 4
	volume_envelope 7, 7
	note C#, 2
	note E_, 2
	volume_envelope 10, 7
	note F#, 8
	note E_, 8
	note D_, 8
	note C#, 8
	volume_envelope 10, 8
	octave 3
	note B_, 8
	volume_envelope 11, 7
	note B_, 16
	volume_envelope 10, 7
	note A_, 8
	note G#, 8
	note A_, 8
	note B_, 8
	octave 4
	note E_, 8
	note D_, 16
	note C#, 16
	note F#, 8
	note E_, 8
	note D_, 8
	note C#, 8
	octave 3
	note B_, 8
	octave 4
	note C#, 8
	note D_, 8
	note E_, 8
	volume_envelope 12, 3
	note F_, 6
	note F_, 6
	note F_, 4
	volume_envelope 11, 2
	note F_, 4
	note F_, 4
	note F#, 4
	note G#, 4
	volume_envelope 10, 7
	note A_, 6
	note G#, 8
	duty_cycle 1
	note G#, 1
	note B_, 1
	octave 5
	note C#, 16
	sound_jump .mainloop

.sub1:
	octave 1
	note F#, 2
	octave 2
	note C#, 2
	sound_loop 8, .sub1
.sub1loop1:
	octave 1
	note G#, 2
	octave 2
	note C_, 2
	sound_loop 4, .sub1loop1
	octave 1
	note A_, 2
	octave 2
	note D_, 2
	octave 1
	note A_, 2
	octave 2
	note D_, 2
	octave 1
	note D_, 2
	note A_, 2
	note D_, 2
	note A_, 2
	sound_ret

Music_EquineTrioBattle_Ch3:
_chan = 3
	relative_pitch 0
	note_type 6, 1, 1
.loop1:
	octave 5
	note E_, 1
	note F_, 1
	note F#, 1
	octave 6
	note D_, 1
	sound_loop 4, .loop1
.loop2:
	octave 5
	note G#, 1
	note G_, 1
	note G#, 1
	octave 6
	note C#, 1
	sound_loop 4, .loop2
	volume_envelope 2, 11
	sound_call .sub1
	octave 3
	note A_, 1
	rest 5
	note A_, 1
	rest 5
	octave 4
	note D_, 4
	sound_call .sub1
	octave 3
	note A_, 1
	rest 5
	note A_, 1
	rest 1
	volume_envelope 1, 6
	octave 5
	note F#, 1
	note F_, 1
	note C#, 1
	octave 4
	note B_, 1
	octave 5
	note C#, 1
	octave 4
	note B_, 1
	note A_, 1
	note G#, 1
	volume_envelope 1, 8
.mainloop:
	sound_call .sub2
	sound_call .sub3
	sound_call .sub4
	sound_call .sub4
	sound_call .sub2
	sound_call .sub3
	sound_call .sub4
	sound_call .sub4
	relative_pitch 1
	sound_call .sub4
	sound_call .sub4
	relative_pitch 3
	sound_call .sub4
	sound_call .sub4
	relative_pitch 0
	sound_call .sub4
	sound_call .sub4
.loop3:
	octave 2
	note F#, 2
	octave 3
	note C#, 2
	sound_loop 7, .loop3
	octave 2
	note B_, 2
	note A_, 2
	relative_pitch 1
	sound_call .sub4
	sound_call .sub4
	relative_pitch 3
	sound_call .sub4
	sound_call .sub4
	relative_pitch 0
	sound_call .sub4
	sound_call .sub4
	sound_call .sub4
	octave 2
	note C#, 2
	octave 3
	note C#, 2
	octave 2
	note B_, 2
	octave 3
	note C#, 2
	octave 2
	note B_, 2
	note A_, 2
	note G#, 2
	note F_, 2
	sound_jump .mainloop

.sub1:
	octave 4
	note C#, 1
	rest 5
	note C#, 1
	rest 5
	note E_, 2
	note D_, 2
	note C#, 1
	rest 5
	note C#, 1
	rest 3
	note E_, 2
	note D_, 2
	note C#, 2
	note C_, 1
	rest 5
	note C_, 1
	rest 5
	note C_, 1
	rest 3
	sound_ret

.sub2:
	octave 2
	note F#, 2
	octave 3
	note C#, 2
	sound_loop 8, .sub2
	sound_ret

.sub3:
	octave 2
	note D_, 2
	note A_, 2
	sound_loop 8, .sub3
.sub3loop1:
	note E_, 2
	note B_, 2
	sound_loop 8, .sub3loop1
	sound_ret

.sub4:
	octave 2
	note C#, 2
	note G#, 2
	octave 3
	note C#, 2
	octave 2
	note C#, 2
	note G#, 2
	octave 3
	note C#, 2
	octave 2
	note G#, 2
	octave 3
	note C#, 2
	sound_ret
