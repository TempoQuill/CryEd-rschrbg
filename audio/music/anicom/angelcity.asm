Music_AngelCity:
	channel_count 3
	channel 1, Music_AngelCity_Ch1
	channel 2, Music_AngelCity_Ch2
	channel 3, Music_AngelCity_Ch3

Music_AngelCity_Ch1:
_chan = 1
	tempo 320
	volume 7
	duty_cycle 1
	pitch_inc_switch
	octave_pluck_on
	note_type 2, 10, 5
	rest 1
	note_type 8, 10, 5
	octave 3
	note D_, 4
	note D_, 12
	note C#, 4
	note C#, 11
	note_type 2, 10, 5
	rest 3
.mainloop:
	plucks_off
	duty_cycle 1
	note_type 8, 8, 7
	octave 3
	note A_, 2
	note D_, 2
	note E_, 2
	note G_, 2
	note F#, 2
	note D_, 2
	note E_, 2
	note D_, 2
	note C#, 2
	note D_, 2
	note E_, 2
	note A_, 4
	note A_, 1
	note F#, 1
	note E_, 2
	note C#, 2
	note D_, 2
	note F#, 2
	note A_, 2
	octave 4
	note D_, 1
	note E_, 1
	note D_, 2
	note D_, 2
	octave 3
	note A_, 2
	note F#, 1
	note E_, 1
	note D_, 2
	octave 2
	note B_, 2
	octave 3
	note D_, 2
	note F#, 2
	note E_, 2
	note C#, 2
	note E_, 2
	note G_, 2
	note F#, 2
	note D_, 2
	note A_, 2
	octave 4
	note D_, 4
	note D_, 1
	octave 3
	note A_, 1
	note F#, 2
	note D_, 2
	octave 2
	note A_, 4
	octave 3
	note A_, 2
	note G_, 2
	note F#, 2
	note E_, 2
	note D_, 2
	note E_, 2
	note F#, 2
	note D_, 2
	note F#, 2
	note G_, 2
	note A_, 4
	note D_, 2
	note A_, 2
	note G_, 2
	octave 4
	note D_, 2
	octave 3
	note B_, 2
	note G_, 2
	note E_, 2
	note C#, 2
	octave 2
	note A_, 2
	octave 3
	note C#, 2
	duty_cycle 2
	volume_envelope 10, 1
	sound_call .sub1
	sound_call .sub1
	sound_call .sub2
	sound_call .sub2
	sound_call .sub3
.loop1:
	note F#, 1
	note A_, 1
	note F#, 1
	note A_, 1
	octave 4
	note D_, 1
	octave 3
	note A_, 1
	note F#, 1
	note A_, 1
	sound_loop 2, .loop1
	sound_call .sub1
	duty_cycle 1
	note_type 4, 7, 8
	note E_, 8
	note F_, 1
	note F#, 3
	note D_, 4
	duty_cycle 2
	note_type 8, 10, 1
	sound_call .sub2
	octave 3
	note B_, 1
	octave 4
	note D_, 1
	octave 3
	note B_, 1
	octave 4
	note D_, 1
	note F#, 1
	note D_, 1
	octave 3
	note B_, 1
	octave 4
	note D_, 1
	sound_call .sub3
	duty_cycle 1
	note_type 4, 8, 7
	note F#, 1
	note G_, 3
	note F#, 4
	note D_, 4
	note E_, 8
	note F#, 8
	note G_, 4
	sound_jump .mainloop

.sub1:
	octave 3
	note B_, 1
	octave 4
	note D_, 1
	octave 3
	note B_, 1
	octave 4
	note D_, 1
	note G_, 1
	note D_, 1
	octave 3
	note B_, 1
	octave 4
	note D_, 1
	sound_ret

.sub2:
	octave 3
	note A_, 1
	octave 4
	note D_, 1
	octave 3
	note A_, 1
	octave 4
	note D_, 1
	note F#, 1
	note D_, 1
	octave 3
	note A_, 1
	octave 4
	note D_, 1
	sound_ret

.sub3:
	octave 3
	note G_, 1
	note B_, 1
	note G_, 1
	note B_, 1
	octave 4
	note D_, 1
	octave 3
	note B_, 1
	note G_, 1
	note B_, 1
	sound_loop 2, .sub3
	sound_ret

Music_AngelCity_Ch2:
_chan = 2
	duty_cycle 1
	octave_pluck_on
	note_type 2, 10, 5
	sound_call .sub1
	note A_, 11
	note_type 2, 10, 5
	rest 1
	sound_call .sub1
	note A_, 7
	plucks_off
	note_type 2, 10, 7
	rest 1
	octave 4
	note D_, 8
	note E_, 8
.mainloop:
	duty_cycle 1
	note_type 8, 10, 7
	note F#, 6
	note D_, 1
	octave 3
	note A_, 1
	octave 4
	note A_, 4
	note F#, 4
	note E_, 4
	note C#, 10
	octave 3
	note F#, 2
	note_type 4, 10, 7
	note B_, 8
	octave 4
	note F_, 1
	note F#, 11
	note F#, 8
	octave 3
	note B_, 4
	note G_, 12
	octave 4
	note D_, 4
	octave 3
	note A_, 12
	note A_, 4
	octave 4
	note D_, 8
	note G#, 1
	note A_, 15
	note A_, 4
	octave 3
	note A_, 4
	octave 4
	note E_, 8
	duty_cycle 2
	volume_envelope 10, 1
	octave 3
	note A_, 2
	note B_, 2
	octave 4
	note C#, 2
	note E_, 2
.loop1:
	note A_, 1
	note B_, 1
	sound_loop 4, .loop1
	note A_, 4
	duty_cycle 1
	volume_envelope 10, 7
	octave 3
	note A_, 2
	octave 4
	note E_, 2
	note D_, 4
	octave 3
	note A_, 4
	octave 4
	note D_, 4
	note E_, 4
	note F#, 4
	note D_, 4
	octave 3
	note A_, 4
	octave 4
	note D_, 4
	note F#, 12
	note E_, 2
	note D_, 2
	note E_, 12
	duty_cycle 0
	vibrato 20, 4, 4
	volume_envelope 10, 8
	octave 3
	note F#, 2
	note A_, 2
	note B_, 16
	octave 4
	note C_, 1
	vibrato 0, 0, 0
	note C#, 7
	note D_, 4
	vibrato 10, 4, 4
	note_type 8, 10, 8
	octave 3
	note A_, 2
	toggle_tie_slur
	note A_, 7
	toggle_tie_slur
	rest 1
	vibrato 0, 0, 0
	note_type 4, 10, 8
	note D_, 8
	note F_, 1
	note F#, 7
	vibrato 20, 4, 4
	note G_, 12
	vibrato 0, 0, 0
	note A#, 1
	note B_, 9
	pitch_slide 1, 3, A#
	note B_, 3
	pitch_slide 1, 3, A_
	note A#, 3
	note A_, 2
	note G_, 2
	vibrato 20, 4, 4
	note_type 8, 10, 8
	note A_, 12
	rest 2
	note D_, 2
	note_type 4, 10, 8
	note A#, 1
	note B_, 15
	vibrato 0, 0, 0
	octave 4
	note C#, 8
	note D_, 4
	vibrato 20, 4, 4
	octave 3
	note A_, 4
	toggle_tie_slur
	note A_, 12
	vibrato 40, 4, 4
	toggle_tie_slur
	note D_, 16
	rest 4
	vibrato 20, 4, 4
	note G_, 16
	vibrato 0, 0, 0
	note D_, 8
	octave 2
	note B_, 4
	vibrato 15, 4, 4
	octave 3
	note C_, 1
	note C#, 3
	note_type 8, 10, 8
	toggle_tie_slur
	note C#, 12
	duty_cycle 1
	vibrato 0, 0, 0
	note_type 8, 10, 7
	toggle_tie_slur
	octave 4
	note D_, 2
	note E_, 2
	sound_jump .mainloop

.sub1:
	octave 2
	note A_, 2
	octave 3
	note E_, 1
	note A_, 13
	octave 2
	note A_, 2
	octave 3
	note E_, 1
	note_type 8, 10, 5
	sound_ret

Music_AngelCity_Ch3:
_chan = 3
	note_type 8, 3, 27
	rest 16
	rest 8
	octave 3
	note A_, 8
.mainloop:
	note_type 8, 2, 27
	octave 3
	note D_, 16
	note A_, 14
	note A#, 2
	note B_, 12
	octave 4
	note D_, 4
	octave 3
	note G_, 8
	note A_, 4
	note E_, 4
	note D_, 16
	note C#, 4
	octave 4
	note C#, 2
	octave 3
	note B_, 2
	note A_, 2
	note G_, 2
	note F#, 2
	note A_, 2
	note_type 4, 2, 27
	note A#, 1
	note B_, 1
	note_type 8, 2, 27
	toggle_tie_slur
	note B_, 11
	toggle_tie_slur
	note F#, 4
	note E_, 4
	octave 4
	note D_, 2
	octave 3
	note B_, 2
	note G_, 2
	note E_, 2
	note C#, 2
	octave 2
	note A_, 2
	note_type 4, 1, 29
	sound_call .sub1
	note E_, 8
	rest 6
	octave 2
	note B_, 1
	rest 1
	octave 3
	note E_, 2
	rest 2
	note E_, 3
	rest 1
	note C#, 6
	rest 2
	note D_, 8
	rest 4
	note D_, 2
	rest 2
	note D_, 2
	rest 2
	note D_, 2
	rest 2
	note F#, 6
	rest 2
	sound_call .sub1
	note E_, 8
	rest 6
	note E_, 1
	rest 1
	note E_, 2
	rest 2
	note E_, 3
	rest 1
	octave 2
	note B_, 6
	rest 2
	note A_, 8
	rest 4
	note A_, 10
	rest 2
	volume_envelope 2, 27
	octave 3
	note A_, 8
	sound_jump .mainloop

.sub1:
	octave 3
	note G_, 8
	rest 6
	note D_, 1
	rest 1
	note G_, 2
	rest 2
	note G_, 4
	rest 4
	note G_, 2
	rest 2
	note F#, 8
	rest 6
	note D_, 1
	rest 1
	note F#, 2
	rest 2
	note F#, 4
	rest 4
	note F#, 2
	rest 2
	sound_ret
