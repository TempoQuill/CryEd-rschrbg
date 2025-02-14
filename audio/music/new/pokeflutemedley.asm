Music_PokeFluteMedley:
	channel_count 3
	channel 1, Music_PokeFluteMedley_Ch1
	channel 2, Music_PokeFluteMedley_Ch2
	channel 3, Music_PokeFluteMedley_Ch3

Music_PokeFluteMedley_Ch1:
_chan = 1
	tempo 280
	volume 7
	pitch_offset -1
	duty_cycle 1
	note_type 6, 0, 0
	rest 8
.mainloop:
	volume_envelope 7, 7
	sound_call .sub1
	octave 3
	note C#, 2
	note D#, 2
	note E_, 2
	note D#, 2
	note C#, 4
	note A_, 4
	note G#, 8
	note E_, 4
	note F#, 4
	sound_call .sub1
	octave 3
	note C#, 2
	note D#, 2
	note E_, 2
	note D#, 2
	note C#, 4
	note A_, 4
	note G#, 8
	note E_, 4
	note D#, 4
	sound_call .sub2
	note D#, 8
	note F#, 8
	note E_, 4
	note F#, 4
	note E_, 4
	note D#, 4
	sound_call .sub2
	note D#, 8
	note E_, 8
	note F#, 8
	octave 2
	note B_, 8
	sound_jump .mainloop

.sub1:
	octave 3
	note G#, 1
	note F#, 1
	note G#, 6
	octave 2
	note G#, 4
	note A_, 4
	note B_, 2
	octave 3
	note G#, 2
	note F#, 2
	octave 2
	note B_, 10
	sound_ret

.sub2:
	note C#, 4
	note D#, 4
	note E_, 4
	note D#, 4
	note C#, 4
	note A_, 4
	note B_, 4
	note A_, 4
	note G#, 8
	note F#, 4
	note G#, 4
	note B_, 4
	note A_, 4
	note B_, 4
	octave 4
	note C#, 4
	octave 3
	note B_, 4
	note A_, 4
	note G#, 8
	note F#, 4
	note E_, 4
	note D#, 4
	note E_, 4
	sound_ret

Music_PokeFluteMedley_Ch2:
_chan = 2
	duty_cycle 2
	vibrato 13, 2, 3
	note_type 12, 3, -7
	octave 4
	note G#, 2
	note A_, 2
.mainloop:
	sound_call .sub1
	note E_, 2
	octave 4
	note B_, 2
	octave 5
	note C#, 2
	octave 4
	note A_, 2
	note B_, 2
	vibrato 0, 2, 3
	volume_envelope 7, 8
	note B_, 2
	vibrato 13, 2, 3
	volume_envelope 3, -7
	note G#, 2
	note A_, 2
	sound_call .sub1
	note E_, 2
	octave 4
	note B_, 2
	octave 5
	note C#, 2
	octave 4
	note A_, 2
	note B_, 2
	vibrato 0, 2, 3
	volume_envelope 7, 8
	note B_, 4
	rest 2
	sound_call .sub2
	note B_, 2
	vibrato 0, 2, 3
	volume_envelope 7, 8
	note B_, 6
	duty_cycle 1
	vibrato 0, 0, 0
	volume_envelope 6, 7
	octave 3
	note B_, 4
	note B_, 4
	duty_cycle 2
	sound_call .sub2
	note B_, 2
	vibrato 0, 2, 3
	volume_envelope 7, 8
	note B_, 6
	duty_cycle 1
	vibrato 0, 0, 0
	volume_envelope 6, 7
	octave 2
	note B_, 4
	duty_cycle 2
	vibrato 13, 2, 3
	volume_envelope 3, -7
	octave 4
	note G#, 2
	note A_, 2
	sound_jump .mainloop

.sub1:
	note B_, 2
	vibrato 0, 2, 3
	volume_envelope 7, 8
	note B_, 2
	vibrato 13, 2, 3
	volume_envelope 3, -7
	octave 5
	note C#, 2
	octave 4
	note B_, 2
	octave 5
	note E_, 2
	vibrato 0, 2, 3
	volume_envelope 7, 8
	note E_, 2
	vibrato 13, 2, 3
	volume_envelope 3, -7
	note E_, 2
	note F#, 2
	sound_ret

.sub2:
	vibrato 13, 2, 3
	volume_envelope 3, -7
	octave 3
	note E_, 2
	octave 4
	note A_, 2
	note G#, 2
	note A_, 2
	octave 5
	note E_, 2
	vibrato 0, 2, 3
	volume_envelope 7, 8
	note E_, 4
	rest 2
	vibrato 13, 2, 3
	volume_envelope 3, -7
	octave 3
	note E_, 2
	octave 4
	note B_, 2
	note A_, 2
	note B_, 2
	octave 5
	note E_, 2
	vibrato 0, 2, 3
	volume_envelope 7, 8
	note E_, 2
	vibrato 13, 2, 3
	volume_envelope 3, -7
	note D#, 2
	note C#, 2
	note D#, 2
	vibrato 0, 2, 3
	volume_envelope 7, 8
	note D#, 2
	vibrato 13, 2, 3
	volume_envelope 3, -7
	note C#, 2
	octave 4
	note B_, 2
	octave 5
	note C#, 2
	vibrato 0, 2, 3
	volume_envelope 7, 8
	note C#, 2
	vibrato 13, 2, 3
	volume_envelope 3, -7
	octave 4
	note B_, 2
	note A#, 2
	sound_ret

Music_PokeFluteMedley_Ch3:
_chan = 3
	pitch_inc_switch
	note_type 12, 1, 12
	rest 4
.mainloop:
.loop1:
	octave 3
	note E_, 8
	octave 2
	note G#, 8
	note A_, 8
	octave 3
	note E_, 4
	octave 2
	note B_, 4
	sound_loop 2, .loop1
	sound_call .sub1
	note B_, 4
	octave 3
	note D#, 4
	note C#, 4
	octave 2
	note B_, 4
	sound_call .sub1
	note B_, 4
	octave 3
	note C#, 4
	note D#, 4
	note F#, 4
	sound_jump .mainloop

.sub1:
	note A_, 4
	octave 3
	note A_, 4
	note G#, 4
	note F#, 4
	note E_, 4
	note D#, 4
	note C#, 4
	octave 2
	note B_, 2
	note A_, 2
	note G#, 8
	note A#, 8
	sound_ret
