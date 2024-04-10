Music_UnionStation:
	channel_count 4
	channel 1, Music_UnionStation_Ch1
	channel 2, Music_UnionStation_Ch2
	channel 3, Music_UnionStation_Ch3
	channel 4, Music_UnionStation_Ch4

Music_UnionStation_Ch1:
_chan = 1
	tempo 320
	volume 7
	pitch_offset 2
	duty_cycle 1
.mainloop:
	note_type 8, 7, 7
	octave 3
	note G_, 2
	octave 2
	note A#, 2
	octave 3
	note A#, 2
	note D#, 2
	octave 4
	note C_, 2
	octave 3
	note A#, 2
	note G#, 2
	note G_, 2
	note G#, 4
	note F_, 4
	note G#, 2
	note C_, 2
	note F_, 2
	note C_, 2
	note A#, 2
	note D#, 2
	note A#, 2
	octave 4
	note C_, 2
	note D#, 2
	note C_, 2
	note D#, 2
	octave 3
	note A#, 2
	toggle_tie_slur
	note A#, 2
	toggle_tie_slur
	octave 2
	note A#, 2
	octave 3
	note D#, 2
	note F_, 4
	octave 2
	note A#, 2
	octave 3
	note D_, 2
	note F_, 2
	octave 2
	note B_, 2
	octave 3
	note D_, 2
	note F_, 2
	note B_, 2
	note C_, 2
	note E_, 2
	note G_, 2
	octave 4
	note C_, 2
	octave 3
	note C_, 2
	note D#, 2
	note F_, 2
	note A#, 2
	note C_, 2
	note D#, 2
	note F_, 2
	note A_, 2
	note A#, 2
	note D#, 2
	octave 2
	note A#, 2
	octave 3
	note G_, 2
	note A#, 2
	note G#, 2
	note G_, 2
	note F_, 2
	note G_, 8
	octave 2
	note A#, 2
	octave 3
	note D#, 2
	note G_, 2
	note G#, 2
	sound_jump .mainloop

Music_UnionStation_Ch2:
_chan = 2
	duty_cycle 2
	pitch_inc_switch
.mainloop:
	vibrato 0, 0, 0
	note_type 4, 10, 8
	octave 3
	note D#, 8
	note F#, 1
	note G_, 7
	note G#, 4
	note G_, 4
	note F_, 4
	note D#, 4
	octave 2
	note A#, 8
	octave 3
	note D_, 8
	note D#, 8
	rest 8
	note G_, 12
	note G#, 4
	note A_, 1
	note A#, 3
	note G#, 4
	note G_, 4
	vibrato 20, 4, 4
	note F_, 4
	toggle_tie_slur
	note F_, 16
	vibrato 0, 0, 0
	toggle_tie_slur
	rest 12
	note F_, 4
	vibrato 15, 4, 4
	note F#, 1
	note G_, 11
	vibrato 0, 0, 0
	note G#, 4
	note G_, 8
	note F_, 4
	note E_, 4
	note C_, 12
	note D#, 4
	note E_, 1
	note F_, 7
	rest 4
	note D#, 4
	vibrato 15, 4, 4
	note F#, 1
	note G_, 11
	vibrato 20, 4, 4
	note D#, 4
	note G_, 4
	note F_, 4
	note D#, 4
	note D_, 4
	note D#, 16
	rest 16
	sound_jump .mainloop

Music_UnionStation_Ch3:
_chan = 3
.mainloop:
	note_type 4, 1, 28
	octave 3
	note D#, 8
	rest 4
	octave 2
	note A#, 1
	rest 3
	octave 3
	note D#, 8
	rest 4
	note C_, 1
	rest 3
	octave 2
	note A#, 8
	rest 4
	note G#, 4
	rest 4
	note G#, 4
	octave 3
	note E_, 1
	note F_, 7
	note D#, 8
	rest 4
	octave 2
	note A#, 1
	rest 3
	octave 3
	note D#, 4
	octave 2
	note A#, 4
	octave 3
	note F#, 1
	note G_, 3
	note G#, 4
	note A#, 8
	rest 4
	note D#, 2
	note F_, 2
	octave 2
	note A#, 8
	note G#, 8
	note G_, 8
	rest 4
	note B_, 1
	rest 3
	octave 3
	note C_, 8
	octave 2
	note G_, 1
	rest 3
	octave 3
	note C_, 1
	rest 3
	octave 2
	note F_, 8
	rest 4
	note F_, 4
	rest 4
	note F_, 4
	rest 4
	note F_, 4
	note A#, 8
	rest 4
	note A#, 1
	rest 3
	octave 3
	note C#, 1
	note D_, 7
	note A#, 8
	note D#, 8
	rest 4
	octave 2
	note A#, 1
	rest 3
	octave 3
	note D#, 2
	rest 2
	note D#, 2
	rest 2
	octave 2
	note A#, 6
	rest 2
	sound_jump .mainloop

Music_UnionStation_Ch4:
_chan = 4
	toggle_noise 9
.mainloop:
	drum_speed 8
	sound_call .sub1
	sound_call .sub2
	sound_call .sub1
	drum_note 4, 2
	drum_note 2, 2
	drum_note 7, 2
	drum_note 2, 1
	drum_note 4, 1
	drum_note 4, 2
	drum_note 4, 2
	drum_note 7, 2
	drum_note 4, 1
	drum_note 7, 1
	sound_call .sub1
	sound_call .sub2
	drum_note 4, 2
	drum_note 2, 2
	drum_note 7, 2
	drum_note 2, 1
	drum_note 4, 1
	drum_note 2, 2
	drum_note 7, 2
	drum_note 2, 2
	drum_note 7, 1
	drum_note 7, 1
	drum_note 4, 2
	drum_note 2, 2
	drum_note 7, 2
	drum_note 2, 1
	drum_note 7, 1
	drum_note 4, 1
	drum_note 7, 1
	drum_note 4, 2
	drum_note 7, 2
	drum_note 4, 1
	drum_note 7, 1
	sound_jump .mainloop

.sub1:
	drum_note 4, 2
	drum_note 2, 2
	drum_note 7, 2
	drum_note 2, 1
	drum_note 4, 1
	drum_note 2, 2
	drum_note 2, 2
	drum_note 2, 2
	drum_note 7, 2
	sound_ret

.sub2:
	drum_note 4, 2
	drum_note 2, 2
	drum_note 7, 2
	drum_note 2, 1
	drum_note 4, 1
	drum_note 4, 2
	drum_note 4, 2
	drum_note 7, 2
	drum_note 2, 2
	sound_ret
