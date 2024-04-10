HRM_PokemonTower:
	channel_count 3
	channel 1, HRM_PokemonTower_Ch1
	channel 2, HRM_PokemonTower_Ch2
	channel 3, HRM_PokemonTower_Ch3

HRM_PokemonTower_Ch1:
_chan = 1
	tempo 144
	volume 7
	duty_cycle 3
	pitch_inc_switch
	old_panning %1110, %1101
	vibrato 12, 2, 3
	relative_pitch 1
	note_type 12, 9, 0
	rest 4
	octave 4
	note B_, 12
.mainloop:
	old_panning %1011, %1110
	note_type 6, 11, 4
	octave 4
	note E_, 1
	note G_, 1
	rest 14
	note E_, 1
	note G_, 1
	rest 14
	octave 3
	note B_, 1
	octave 4
	note E_, 1
	rest 14
	octave 3
	note B_, 1
	octave 4
	note E_, 1
	rest 6
	octave 3
	note B_, 1
	octave 4
	note E_, 1
	note D#, 2
	note F#, 2
	note D#, 2
	octave 3
	note B_, 1
	octave 4
	note E_, 1
	rest 14
	octave 3
	note B_, 1
	octave 4
	note G_, 1
	rest 14
	octave 3
	note B_, 1
	octave 4
	note E_, 1
	rest 14
	note F#, 1
	note B_, 1
	rest 14
	note C_, 1
	note E_, 1
	octave 3
	note B_, 1
	octave 4
	note D#, 1
	octave 3
	note G_, 1
	note B_, 1
	rest 10
	note E_, 1
	note B_, 1
	rest 14
	note E_, 1
	note B_, 1
	rest 14
	note F#, 1
	note B_, 1
	rest 14
	note E_, 1
	octave 4
	note C_, 1
	rest 14
	octave 3
	note G_, 1
	octave 4
	note C_, 1
	rest 14
	octave 3
	note G_, 1
	octave 4
	note C_, 1
	rest 14
	octave 3
	note F#, 1
	octave 4
	note C_, 1
	rest 14
	octave 3
	note F#, 1
	note B_, 1
	rest 14
	note G_, 1
	note B_, 1
	rest 14
	note E_, 1
	note B_, 1
	rest 14
	note D_, 1
	note B_, 1
	rest 14
	octave 3
	note E_, 1
	octave 4
	note C_, 1
	rest 14
	octave 3
	note G_, 1
	octave 4
	note C_, 1
	rest 14
	octave 3
	note G_, 1
	octave 4
	note C_, 1
	rest 14
	octave 3
	note F#, 1
	octave 4
	note C_, 1
	rest 14
	octave 3
	note B_, 1
	octave 4
	note E_, 1
	rest 14
	octave 3
	note B_, 1
	octave 4
	note E_, 1
	rest 14
	octave 4
	note C_, 1
	note E_, 1
	rest 14
	note C_, 1
	note E_, 1
	rest 14
	note C#, 1
	note E_, 1
	rest 14
	note C#, 1
	note E_, 1
	rest 14
	note C_, 1
	note E_, 1
	rest 14
	note C_, 1
	note E_, 1
	rest 6
	volume_envelope 8, 4
	note C_, 1
	note G_, 1
	rest 6
	volume_envelope 11, 4
	note D_, 1
	note F#, 1
	rest 14
	note D_, 1
	note F#, 1
	rest 14
	octave 3
	note A_, 1
	octave 4
	note D_, 1
	rest 14
	octave 3
	note A_, 1
	octave 4
	note D_, 1
	rest 6
	note D_, 2
	rest 2
	note D#, 2
	rest 2
	volume_envelope 10, 7
	octave 3
	note B_, 1
	octave 4
	note E_, 1
	rest 14
	octave 3
	note B_, 1
	octave 4
	note E_, 1
	rest 14
	octave 4
	note C_, 1
	note F_, 1
	rest 14
	note C_, 1
	note F_, 1
	rest 14
	note C#, 1
	note F#, 1
	rest 14
	note C#, 1
	note F#, 1
	rest 14
	note_type 6, 10, 6
	note D_, 1
	note G_, 1
	note_type 12, 7, 7
	rest 15
	duty_cycle 0
	note F#, 1
	rest 3
	note F#, 1
	rest 3
	note G_, 1
	rest 3
	note F#, 1
	rest 3
	note F#, 1
	rest 15
	note F#, 1
	rest 3
	note F#, 1
	rest 3
	note G_, 1
	rest 3
	note F#, 1
	rest 3
	note F#, 1
	rest 7
	duty_cycle 3
	volume_envelope 10, 6
	octave 5
	note E_, 1
	rest 1
	note D#, 1
	rest 1
	note F#, 1
	rest 1
	note D#, 1
	rest 1
	volume_envelope 9, 2
	octave 4
	note B_, 4
	octave 5
	note E_, 4
	note D_, 4
	note C_, 4
	octave 4
	note B_, 4
	octave 5
	note E_, 4
	note D_, 4
	note C_, 4
	octave 4
	note B_, 4
	octave 5
	note E_, 4
	note D_, 4
	note C_, 4
	octave 4
	note B_, 4
	note G_, 4
	note F#, 4
	note E_, 4
	note_type 12, 9, 2
	octave 5
	note C_, 16
	note C_, 8
	note_type 12, 9, 2
	octave 4
	note E_, 1
	rest 1
	note D#, 1
	rest 1
	note F#, 1
	rest 1
	note D#, 1
	rest 1
	sound_jump .mainloop

HRM_PokemonTower_Ch2:
_chan = 2
	duty_cycle 1
	vibrato 12, 2, 3
	note_type 12, 9, 0
	rest 8
	octave 4
	note G#, 8
.mainloop:
	note_type 12, 12, 3
	duty_cycle 2
	octave 1
	note F_, 1
	rest 7
	note F_, 1
	rest 3
	note G#, 4
	note F_, 1
	rest 7
	note F_, 1
	rest 7
	note F_, 1
	rest 7
	note F_, 1
	rest 7
	octave 1
	note F_, 1
	rest 7
	note F_, 1
	rest 3
	note C_, 4
	octave 2
	note C#, 1
	note C_, 1
	octave 1
	note G#, 1
	rest 5
	note F_, 1
	rest 3
	note G#, 4
	note F_, 1
	rest 7
	note G_, 1
	rest 7
	note G#, 1
	rest 7
	note F_, 1
	rest 7
	octave 2
	note C_, 1
	rest 7
	octave 1
	note G#, 1
	rest 3
	note F_, 4
	note G_, 1
	rest 7
	note G#, 1
	rest 3
	note G#, 4
	note F_, 1
	rest 7
	note D#, 1
	rest 7
	note F_, 1
	rest 7
	note G#, 1
	rest 7
	note G#, 1
	rest 7
	note G_, 1
	rest 3
	note C_, 4
	octave 2
	note C_, 1
	rest 7
	note C_, 1
	rest 3
	octave 1
	note F_, 4
	octave 2
	note C_, 1
	rest 7
	note C_, 1
	rest 3
	octave 1
	note F_, 4
	octave 2
	note C#, 1
	rest 7
	note C#, 1
	rest 3
	octave 1
	note F_, 4
	octave 2
	note C#, 1
	rest 7
	note C#, 1
	rest 3
	octave 1
	note C#, 4
	octave 2
	note D#, 1
	rest 7
	note D#, 1
	rest 3
	octave 1
	note D#, 4
	note A#, 1
	rest 7
	note A#, 1
	rest 7
	octave 2
	note C_, 8
	note C_, 8
	note C#, 8
	note C#, 8
	note D_, 8
	note D_, 8
	note D#, 4
	pitch_slide 1, 1, B_
	note D#, 4
	rest 8
.loop1:
	duty_cycle 1
	pitch_offset 1
	octave 3
	note G_, 1
	rest 3
	note G_, 1
	rest 3
	pitch_inc_switch
	note G#, 1
	rest 3
	pitch_inc_switch
	note G_, 1
	rest 3
	note G_, 1
	rest 15
	sound_loop 2, .loop1
.loop2:
	pitch_offset 0
	octave 5
	note F_, 1
	rest 15
	sound_loop 5, .loop2
	octave 5
	note F_, 1
	rest 7
	octave 4
	note F_, 1
	rest 1
	note E_, 1
	rest 1
	note G_, 1
	rest 1
	note E_, 1
	rest 1
	sound_jump .mainloop

HRM_PokemonTower_Ch3:
_chan = 3
	vibrato 20, 1, 4
	relative_pitch 13
	staccato -1
	note_type 12, 2, 6
	octave 5
	note C_, 12
	octave 4
	note E_, 4
.mainloop:
	vibrato 20, 1, 4
	staccato 5
	volume_envelope 1, 0
	octave 5
	note C_, 8
	octave 4
	note B_, 4
	relative_pitch 1
	note G_, 1
	note F#, 1
	note E_, 1
	note D#, 1
	staccato 53
	relative_pitch 13
	volume_envelope 1, 11
	note G_, 8
	octave 5
	note C_, 8
	staccato 26
	octave 4
	note B_, 4
	note G_, 4
	note E_, 4
	note G_, 4
	staccato 95
	octave 5
	note C_, 16
	staccato 5
	volume_envelope 1, 0
	octave 4
	note G_, 1
	note F#, 1
	note E_, 1
	rest 1
	staccato 26
	volume_envelope 1, 30
	octave 3
	note G_, 4
	note G_, 4
	note B_, 4
	note G_, 4
	note B_, 4
	octave 4
	note C_, 4
	octave 3
	note B_, 4
	staccato -1
	octave 4
	note C_, 16
	note E_, 16
	staccato 26
	note_type 6, 1, 30
	note E_, 7
	volume_envelope 2, 11
	note B_, 1
	note_type 12, 1, 11
	octave 5
	note C_, 4
	octave 4
	note B_, 4
	note G_, 4
	note B_, 4
	note G_, 4
	note F#, 4
	note E_, 4
	staccato 80
	note F#, 12
	staccato 26
	note G_, 4
	staccato 95
	note F#, 16
	staccato 26
	note B_, 4
	note G_, 4
	note F#, 4
	note E_, 4
	staccato -1
	note B_, 16
	staccato 26
	volume_envelope 1, 30
	octave 5
	note C_, 4
	octave 4
	note G_, 4
	note F#, 4
	note E_, 4
	staccato -1
	octave 5
	note C_, 16
	envelope_sequence 0
	note D_, 4
	octave 4
	note A_, 4
	note G#, 4
	note F#, 4
	octave 5
	note D_, 16
	staccato 26
	volume_envelope 1, 11
	note E_, 4
	octave 4
	note B_, 4
	note A_, 4
	note G_, 4
	octave 5
	note F_, 4
	note C_, 4
	octave 4
	note A#, 4
	note G#, 4
	octave 5
	note F#, 4
	note D_, 4
	note C_, 4
	octave 4
	note A#, 4
	note G#, 4
	note F#, 4
	note E_, 4
	note D_, 4
	staccato -1
	note C_, 16
	volume_envelope 2, 11
	note C_, 16
	volume_envelope 3, 11
	note C_, 16
	rest 16
	vibrato 0, 1, 4
	volume_envelope 2, 23
	octave 5
	note G_, 16
	octave 6
	note C_, 16
	octave 5
	note B_, 8
	note G_, 8
	note E_, 8
	note G_, 8
	octave 6
	note C_, 16
	volume_envelope 3, 23
	note C_, 16
	sound_jump .mainloop



