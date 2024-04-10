Music_Hedgetown:
	channel_count 3
	channel 1, Music_Hedgetown_Ch1
	channel 2, Music_Hedgetown_Ch2
	channel 3, Music_Hedgetown_Ch3

Music_Hedgetown_Ch1:
_chan = 1
	tempo 320
	volume 7
	pitch_inc_switch
.mainloop:
	sound_call .sub1
	sound_call .sub2
	sound_call .sub1
	sound_call .sub3
	sound_call .sub4
	note D_, 16
	sound_call .sub1
	sound_call .sub2
	sound_call .sub1
	sound_call .sub3
	sound_call .sub4
	octave 2
	note B_, 8
	note A_, 8
	fifths_pluck_on
	vibrato 0, 0, 0
	note_type 8, 9, 4
	sound_call .sub5
	note G_, 2
	note E_, 2
	note G_, 2
	note E_, 2
	note B_, 2
	note G_, 2
	octave 3
	note D_, 2
	octave 2
	note A_, 2
	sound_call .sub5
	note G_, 2
	note E_, 2
	note G_, 2
	note E_, 2
	octave 3
	note D_, 2
	octave 2
	note G_, 2
	octave 3
	note D_, 2
	octave 2
	note A_, 2
	octave 3
	note D_, 2
	octave 2
	note G_, 2
	octave 3
	note D_, 2
	octave 2
	note G_, 2
	note B_, 2
	note F#, 2
	note B_, 2
	note F#, 2
	note B_, 2
	note E_, 2
	note G_, 2
	note E_, 2
	note A_, 2
	note E_, 2
	octave 3
	note C#, 2
	octave 2
	note E_, 2
	note G_, 2
	note E_, 2
	note G_, 2
	note E_, 2
	note B_, 2
	note E_, 2
	note G_, 2
	note E_, 2
	plucks_off
	vibrato 20, 4, 4
	note_type 2, 7, 8
	octave 3
	note F#, 1
	note G_, 7
	note_type 8, 7, 8
	note F#, 2
	note E_, 2
	note F#, 6
	rest 4
	sound_jump .mainloop

.sub1:
	duty_cycle 1
	vibrato 0, 0, 0
	note_type 8, 9, 7
	octave 3
	note B_, 2
	note D_, 2
	note A_, 2
	note G_, 2
	note E_, 2
	note C_, 2
	note A_, 2
	note C_, 2
	note G_, 4
	note B_, 2
	octave 4
	note D_, 2
	note E_, 8
	sound_ret

.sub2:
	octave 3
	note F#, 2
	note D_, 2
	note A_, 2
	note D_, 2
	note E_, 2
	note C_, 2
	note E_, 2
	note C_, 2
	note G_, 2
	note D_, 2
	note F#, 2
	note E_, 2
	note F#, 4
	note A_, 4
	sound_ret

.sub3:
	octave 3
	note C_, 2
	note G_, 2
	note E_, 2
	note G_, 2
	note G_, 2
	note D_, 2
	note F#, 2
	note D_, 2
	sound_ret

.sub4:
	duty_cycle 0
	vibrato 15, 4, 4
	note_type 2, 7, 8
	note D#, 1
	note E_, 1
	note_type 4, 7, 8
	note E_, 11
	note D_, 2
	note C_, 2
	vibrato 20, 4, 4
	sound_ret

.sub5:
	note B_, 2
	note G_, 2
	note B_, 2
	note G_, 2
	note A_, 2
	note F#, 2
	note A_, 2
	note F#, 2
	sound_ret

Music_Hedgetown_Ch2:
_chan = 2
.mainloop:
	sound_call .sub1
	sound_call .sub2
	sound_call .sub1
	note E_, 16
	note B_, 1
	octave 4
	note C_, 15
	octave 3
	note B_, 16
	note A_, 16
	sound_call .sub3
	octave 2
	note B_, 16
	sound_call .sub1
	sound_call .sub2
	sound_call .sub1
	note E_, 16
	note B_, 1
	octave 4
	note C_, 15
	octave 3
	note B_, 16
	note A_, 16
	sound_call .sub3
	note D_, 12
	duty_cycle 1
	note_type 2, 10, 8
	octave 4
	note D#, 1
	note E_, 3
	note F#, 4
	note_type 4, 10, 8
	note G_, 12
	note F#, 12
	note D_, 4
	note E_, 4
	toggle_tie_slur
	note E_, 8
	toggle_tie_slur
	note C_, 4
	note D_, 12
	rest 4
	note_type 2, 10, 8
	note D#, 1
	note E_, 3
	note F#, 4
	vibrato 0, 0, 0
	note_type 4, 10, 8
	note G_, 8
	note A_, 4
	note G_, 8
	note F#, 8
	note E_, 4
	toggle_tie_slur
	note E_, 4
	toggle_tie_slur
	note D_, 4
	note C_, 4
	vibrato 20, 4, 4
	octave 3
	note B_, 12
	rest 4
	vibrato 0, 0, 0
	volume_envelope 12, 7
	note G_, 2
	note A_, 2
	note B_, 8
	note G_, 4
	note A_, 12
	note F#, 4
	note G_, 4
	toggle_tie_slur
	note G_, 4
	toggle_tie_slur
	note B_, 8
	note A_, 12
	duty_cycle 0
	note_type 2, 10, 8
	note G#, 1
	note A_, 7
	note B_, 8
	octave 4
	note C_, 16
	octave 3
	note B_, 8
	note G_, 16
	vibrato 20, 4, 4
	note_type 4, 10, 8
	note D_, 12
	note_type 2, 10, 8
	note A#, 1
	note B_, 7
	note A_, 8
	note G_, 8
	note_type 4, 10, 8
	note A_, 12
	rest 8
	sound_jump .mainloop

.sub1:
	duty_cycle 2
	vibrato 0, 0, 0
	note_type 2, 10, 8
	octave 4
	note C#, 1
	note D_, 15
	note C_, 8
	octave 3
	note B_, 8
	octave 4
	note C_, 16
	note D_, 8
	note E_, 8
	note D_, 8
	octave 3
	note G_, 8
	octave 4
	note F#, 1
	note G_, 7
	note F#, 8
	note G_, 16
	octave 3
	note G_, 16
	sound_ret

.sub2:
	note A_, 16
	octave 4
	note D_, 16
	note C_, 16
	octave 3
	note G_, 16
	note B_, 16
	note A_, 8
	note G_, 8
	note A_, 16
	rest 16
	sound_ret

.sub3:
	vibrato 20, 4, 4
	note_type 4, 10, 8
	note G_, 16
	duty_cycle 0
	volume_envelope 7, 8
	sound_ret

Music_Hedgetown_Ch3:
_chan = 3
.mainloop:
	vibrato 20, 4, 4
	note_type 8, 2, 27
	sound_call .sub1
	sound_call .sub2
	sound_call .sub1
	octave 3
	note A_, 8
	octave 4
	note D_, 8
	sound_call .sub3
	vibrato 20, 4, 4
	note G_, 8
	sound_call .sub1
	sound_call .sub2
	sound_call .sub1
	octave 3
	note A_, 8
	octave 4
	note D_, 8
	sound_call .sub3
	volume_envelope 1, 25
	note G_, 4
	note F#, 4
	vibrato 20, 4, 4
	sound_call .sub4
	sound_call .sub4
.loop1:
	volume_envelope 1, 25
	note E_, 1
	volume_envelope 3, 25
	note E_, 1
	sound_loop 4, .loop1
.loop2:
	volume_envelope 1, 25
	note D#, 1
	volume_envelope 3, 25
	note D#, 1
	sound_loop 4, .loop2
.loop3:
	volume_envelope 1, 25
	note D_, 1
	volume_envelope 3, 25
	note D_, 1
	sound_loop 4, .loop3
.loop4:
	volume_envelope 1, 25
	note C#, 1
	volume_envelope 3, 25
	note C#, 1
	sound_loop 4, .loop4
.loop5:
	volume_envelope 1, 25
	note C_, 1
	volume_envelope 3, 25
	note C_, 1
	sound_loop 8, .loop5
.loop6:
	volume_envelope 1, 25
	note D_, 1
	volume_envelope 3, 25
	note D_, 1
	sound_loop 4, .loop6
	volume_envelope 1, 25
	note D_, 8
	sound_jump .mainloop

.sub1:
	octave 3
	note G_, 8
	note A_, 8
	note B_, 8
	octave 4
	note C_, 8
	sound_ret

.sub2:
	note D_, 8
	note C_, 8
	octave 3
	note B_, 8
	octave 4
	note D_, 4
	octave 3
	note D_, 4
	sound_ret

.sub3:
	vibrato 0, 0, 0
	octave 4
	note C_, 4
	octave 3
	note B_, 2
	note A_, 2
	sound_ret

.sub4:
.sub4loop1:
	volume_envelope 1, 25
	note E_, 1
	volume_envelope 3, 25
	note E_, 1
	sound_loop 4, .sub4loop1
.sub4loop2:
	volume_envelope 1, 25
	note D_, 1
	volume_envelope 3, 25
	note D_, 1
	sound_loop 4, .sub4loop2
.sub4loop3:
	volume_envelope 1, 25
	note C_, 1
	volume_envelope 3, 25
	note C_, 1
	sound_loop 4, .sub4loop3
.sub4loop4:
	volume_envelope 1, 25
	note G_, 1
	volume_envelope 3, 25
	note G_, 1
	sound_loop 2, .sub4loop4
.sub4loop5:
	volume_envelope 1, 25
	note F#, 1
	volume_envelope 3, 25
	note F#, 1
	sound_loop 2, .sub4loop5
	sound_ret
