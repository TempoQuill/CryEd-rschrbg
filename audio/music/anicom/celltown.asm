Music_Celltown:
	channel_count 4
	channel 1, Music_Celltown_Ch1
	channel 2, Music_Celltown_Ch2
	channel 3, Music_Celltown_Ch3
	channel 4, Music_Celltown_Ch4

Music_Celltown_Ch1:
_chan = 1
	tempo 448
	volume 7
	duty_cycle 2
	vibrato 0, 2, 5
	note_type 8, 10, 1
	rest 16
	rest 14
	octave 4
	note A_, 2
.mainloop:
	vibrato 0, 2, 5
	note_type 8, 10, 1
	note D_, 2
	note A_, 2
	octave 5
	note F#, 2
	octave 4
	note A_, 2
	note D_, 2
	note B_, 2
	octave 5
	note G_, 2
	octave 4
	note B_, 2
	note D_, 2
	note A_, 2
	octave 5
	note F#, 2
	octave 4
	note A_, 2
	note D_, 2
	note A_, 2
	octave 5
	note F#, 2
	octave 4
	note A_, 2
	note C#, 2
	note A_, 2
	octave 5
	note F#, 2
	octave 4
	note A_, 2
	note D_, 2
	note B_, 2
	octave 5
	note G_, 2
	octave 4
	note B_, 2
	note C#, 2
	note A_, 2
	octave 5
	note G_, 2
	octave 4
	note A_, 2
	note C#, 2
	note A_, 2
	octave 5
	note G_, 2
	octave 4
	note A_, 2
	note D_, 2
	note B_, 2
	octave 5
	note G_, 2
	octave 4
	note B_, 2
	volume_envelope 8, 7
	octave 3
	note G_, 2
	volume_envelope 10, 1
	octave 4
	note A_, 1
	volume_envelope 8, 7
	octave 3
	note F#, 1
	note E_, 1
	note D_, 1
	note C#, 1
	note D_, 1
	note C#, 2
	volume_envelope 10, 1
	octave 4
	note A_, 2
	octave 5
	note F#, 2
	octave 4
	note A_, 2
	volume_envelope 8, 7
	octave 3
	note F#, 2
	volume_envelope 10, 1
	octave 4
	note A_, 1
	volume_envelope 8, 7
	octave 3
	note G_, 1
	note F#, 1
	note E_, 1
	note D_, 1
	note C#, 1
	note D_, 2
	volume_envelope 10, 1
	octave 4
	note B_, 2
	octave 5
	note G_, 1
	volume_envelope 8, 7
	octave 3
	note G_, 1
	note F#, 1
	note E_, 1
	volume_envelope 10, 1
	octave 4
	note C#, 2
	note A_, 2
	octave 5
	note G_, 1
	vibrato 0, 0, 0
	duty_cycle 0
	volume_envelope 10, 8
	octave 3
	note D_, 1
	vibrato 0, 2, 5
	duty_cycle 2
	volume_envelope 8, 7
	note A_, 1
	note F#, 1
	volume_envelope 10, 1
	octave 4
	note D_, 2
	note A_, 2
	octave 5
	note F#, 2
	octave 4
	note A_, 1
	volume_envelope 8, 7
	note D_, 1
	volume_envelope 10, 1
	note D_, 2
	note A_, 2
	octave 5
	note F#, 1
	duty_cycle 0
	volume_envelope 8, 8
	octave 3
	note D_, 1
	note A_, 1
	note B_, 1
	sound_call .sub1
	toggle_tie_slur
	note C#, 8
	toggle_tie_slur
	octave 3
	note B_, 8
	note A_, 8
	note B_, 8
	sound_call .sub1
	toggle_tie_slur
	note C#, 8
	toggle_tie_slur
	octave 3
	note B_, 8
	note A_, 12
	vibrato 0, 2, 5
	duty_cycle 2
	volume_envelope 10, 1
	octave 4
	note A_, 4
	sound_jump .mainloop

.sub1:
	vibrato 18, 4, 4
	note_type 2, 8, 8
	octave 4
	note C_, 1
	note C#, 1
	note_type 4, 8, 8
	toggle_tie_slur
	note C#, 15
	vibrato 21, 4, 4
	toggle_tie_slur
	octave 3
	note B_, 16
	vibrato 18, 4, 4
	note_type 2, 8, 8
	octave 4
	note C_, 1
	note C#, 15
	vibrato 21, 4, 4
	note E_, 16
	note F#, 16
	note E_, 16
	note_type 4, 8, 8
	note D_, 3
	note_type 8, 8, 8
	toggle_tie_slur
	note D_, 10
	note_type 4, 8, 8
	toggle_tie_slur
	rest 1
	note D_, 2
	note E_, 2
	note D_, 2
	note C#, 2
	sound_ret

Music_Celltown_Ch2:
_chan = 2
	duty_cycle 2
	vibrato 0, 2, 5
	note_type 8, 10, 1
	octave 4
	note D_, 2
	note A_, 2
	octave 5
	note F#, 2
	octave 4
	note A_, 2
	note D_, 2
	note A_, 2
	octave 5
	note F#, 2
	octave 4
	note A_, 2
	note D_, 2
	note A_, 2
	octave 5
	note F#, 2
	octave 4
	note A_, 2
	note D_, 2
	note A_, 2
	octave 5
	note F#, 2
	duty_cycle 0
	vibrato 21, 4, 4
	volume_envelope 10, 8
	octave 3
	note F#, 1
	note G_, 1
.mainloop:
	duty_cycle 0
	vibrato 21, 4, 4
	note_type 8, 10, 8
	octave 3
	note A_, 4
	rest 1
	note A_, 1
	note F#, 1
	note A_, 1
	vibrato 0, 0, 0
	note G_, 3
	note E_, 2
	note F#, 1
	note D_, 1
	vibrato 21, 4, 4
	octave 2
	note A_, 1
	toggle_tie_slur
	note A_, 5
	duty_cycle 2
	vibrato 0, 2, 5
	volume_envelope 8, 7
	toggle_tie_slur
	octave 3
	note D_, 1
	note F#, 1
	note G_, 1
	note A_, 3
	note B_, 1
	note A_, 2
	duty_cycle 0
	vibrato 0, 0, 0
	volume_envelope 10, 8
	note A_, 1
	note B_, 1
	octave 4
	note C#, 3
	octave 3
	note B_, 1
	note A_, 1
	note G_, 1
	note F#, 1
	note A_, 1
	vibrato 21, 4, 4
	note_type 4, 10, 8
	note G_, 9
	rest 1
	note_type 8, 10, 8
	note F#, 1
	note G_, 1
	note E_, 1
	toggle_tie_slur
	note E_, 5
	duty_cycle 2
	vibrato 0, 2, 5
	volume_envelope 8, 7
	toggle_tie_slur
	note G_, 1
	note A_, 1
	note B_, 1
	octave 4
	note C#, 2
	note D_, 2
	note E_, 2
	duty_cycle 0
	vibrato 21, 4, 4
	volume_envelope 10, 8
	octave 3
	note E_, 1
	note F#, 1
	note G_, 6
	note F#, 1
	note E_, 4
	rest 1
	note E_, 1
	note F#, 1
	note G_, 1
	note B_, 1
	vibrato 0, 0, 0
	note A_, 3
	note G_, 1
	note F#, 1
	note E_, 1
	note D_, 1
	note C#, 1
	note D_, 3
	rest 1
	duty_cycle 2
	vibrato 0, 2, 5
	volume_envelope 10, 1
	octave 5
	note F#, 1
	duty_cycle 0
	vibrato 0, 0, 0
	volume_envelope 10, 8
	octave 3
	note D_, 1
	note F#, 1
	note A_, 1
	note B_, 3
	note G_, 1
	note F#, 1
	note E_, 1
	note D_, 1
	vibrato 21, 4, 4
	note C#, 4
	duty_cycle 2
	vibrato 0, 2, 5
	volume_envelope 8, 7
	octave 4
	note D_, 1
	note C#, 2
	duty_cycle 0
	vibrato 21, 4, 4
	volume_envelope 10, 8
	octave 3
	note E_, 1
	note D_, 1
	toggle_tie_slur
	note D_, 3
	duty_cycle 2
	vibrato 0, 0, 0
	volume_envelope 8, 7
	toggle_tie_slur
	note F#, 2
	note G_, 1
	note A_, 1
	note F#, 7
	duty_cycle 1
	vibrato 0, 5, 0
	volume_envelope 12, 7
	note F#, 1
	note G_, 1
	sound_call .sub1
	toggle_tie_slur
	note A_, 4
	toggle_tie_slur
	octave 4
	note D_, 4
	note C#, 6
	octave 3
	note F#, 1
	note G_, 1
	sound_call .sub1
	toggle_tie_slur
	note A_, 4
	toggle_tie_slur
	octave 4
	note D_, 4
	note C#, 6
	duty_cycle 0
	vibrato 21, 4, 4
	octave 3
	note F#, 1
	note G_, 1
	sound_jump .mainloop

.sub1:
	note A_, 5
	note E_, 1
	note C#, 1
	note D_, 6
	note F#, 2
	note G_, 1
	note A_, 5
	note B_, 1
	octave 4
	note C#, 1
	note D_, 4
	octave 3
	note A_, 5
	note B_, 3
	note A_, 3
	note F#, 1
	note G_, 2
	note A_, 2
	note B_, 2
	octave 4
	note C#, 1
	octave 3
	note B_, 1
	note A_, 1
	sound_ret

Music_Celltown_Ch3:
_chan = 3
	note_type 8, 2, 27
	rest 16
	rest 16
.mainloop:
	note_type 8, 2, 27
	octave 3
	note D_, 6
	rest 1
	octave 2
	note A_, 1
	octave 3
	note D_, 6
	rest 1
	octave 2
	note A_, 1
	octave 3
	note D_, 4
	rest 1
	octave 2
	note A_, 1
	octave 3
	note D_, 1
	note E_, 1
	note F#, 4
	note A_, 2
	note G_, 2
	note F#, 6
	note A_, 2
	note_type 2, 2, 27
	note A#, 1
	note B_, 15
	note D_, 8
	note E_, 4
	note A_, 4
	toggle_tie_slur
	note A_, 14
	toggle_tie_slur
	rest 2
	note A_, 4
	note B_, 4
	octave 4
	note C#, 4
	note D_, 4
	note E_, 8
	octave 3
	note A_, 8
	octave 4
	note C#, 4
	octave 3
	note B_, 4
	note A_, 4
	note D_, 4
	note_type 8, 2, 27
	note E_, 8
	note A_, 6
	note G_, 2
	note F#, 8
	note B_, 4
	note D_, 4
	note G_, 5
	note A_, 1
	note B_, 1
	note A_, 5
	note E_, 1
	note F#, 1
	note G_, 1
	note D_, 1
	note D_, 14
	note_type 8, 1, 25
	octave 2
	note E_, 2
	sound_call .sub1
	note A_, 8
	note E_, 4
	octave 3
	note C#, 1
	octave 2
	note B_, 1
	note A_, 1
	note G_, 1
	sound_call .sub1
	note A_, 8
	note_type 8, 2, 27
	octave 3
	note E_, 8
	sound_jump .mainloop

.sub1:
	note F#, 8
	note G_, 8
	note F#, 4
	note A_, 4
	note B_, 4
	note D_, 2
	note E_, 2
	note F#, 8
	note G_, 8
	sound_ret

Music_Celltown_Ch4:
_chan = 4
	toggle_noise 10
	drum_speed 8
	rest 16
	rest 16
.mainloop:
.loop1:
	drum_note 6, 4
	drum_note 6, 4
	drum_note 6, 4
	drum_note 6, 4
	sound_loop 15, .loop1
	drum_note 6, 4
	drum_note 6, 4
	drum_note 6, 8
	sound_jump .mainloop
