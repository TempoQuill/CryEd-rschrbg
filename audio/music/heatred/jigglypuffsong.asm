Music_JigglypuffSong:
	channel_count 2
	channel 2, Music_JigglypuffSong_Ch2
	channel 3, Music_JigglypuffSong_Ch3

Music_JigglypuffSong_Ch2:
_chan = 2
	tempo 144
	volume 7
	vibrato 8, 2, 4
	duty_cycle 2
	toggle_perfect_pitch
	note_type 13, 0, 0
	envelope_sequence 8
	octave 4
	note E_, 8
	note_type 12, 0, 0
	envelope_sequence 9
	note B_, 2
	note G#, 6
	note F#, 8
	note G#, 2
	note A_, 6
	note G#, 8
	note F#, 4
	note G#, 4
	note E_, 10
	sound_ret

Music_JigglypuffSong_Ch3:
_chan = 3
	vibrato 5, 2, 5
	note_type 12, 1, 14
	octave 5
	note E_, 4
	volume_envelope 2, 14
	toggle_tie_slur
	note E_, 4
	volume_envelope 1, 14
	toggle_tie_slur
	note B_, 2
	note G#, 4
	volume_envelope 2, 14
	toggle_tie_slur
	note G#, 2
	volume_envelope 1, 14
	toggle_tie_slur
	note F#, 4
	volume_envelope 2, 14
	toggle_tie_slur
	note F#, 4
	volume_envelope 1, 14
	toggle_tie_slur
	note G#, 2
	note A_, 4
	volume_envelope 2, 14
	toggle_tie_slur
	note A_, 2
	volume_envelope 1, 14
	toggle_tie_slur
	note G#, 4
	volume_envelope 2, 14
	toggle_tie_slur
	note G#, 4
	volume_envelope 1, 14
	toggle_tie_slur
	note F#, 4
	note G#, 4
	note E_, 4
	volume_envelope 2, 14
	toggle_tie_slur
	note E_, 4
	volume_envelope 3, 14
	note E_, 2
	note_type 8, 3, 14
	toggle_tie_slur
	rest 1
	sound_ret
