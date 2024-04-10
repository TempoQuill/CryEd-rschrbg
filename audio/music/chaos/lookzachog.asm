Music_Student:
; old song from a scrapped project before doing Ray/Shade
	channel_count 4
	channel 1, Music_Student_Ch1
	channel 2, Music_Student_Ch2
	channel 3, Music_Student_Ch3
	channel 4, Music_Student_Ch4

Music_Student_Ch1:
_chan = 1
	tempo 256
	volume 7
	note_type 6, 7, 8
	rest 12
.mainloop:
	rest 16
	rest 4
	octave 3
	note G#, 1
	rest 5
	note G#, 1
	rest 1
	duty_cycle 3
	vibrato 24, 4, 4
	volume_envelope 8, 8
	octave 2
	note B_, 2
	octave 3
	note C_, 2
	note C#, 8
	note C_, 8
	sound_call .sub1
	duty_cycle 3
	volume_envelope 8, 8
	octave 2
	note A_, 8
	octave 3
	note C#, 8
	note E_, 8
	note F#, 8
	note E_, 8
	note D#, 8
	duty_cycle 0
	volume_envelope 7, 8
	rest 4
	note G#, 1
	rest 5
	note G#, 1
	rest 5
	duty_cycle 3
	volume_envelope 8, 8
	octave 2
	note G#, 8
	note A_, 8
	note A#, 8
	note B_, 4
	octave 3
	note C_, 4
	note C#, 8
	note C_, 8
	sound_call .sub1
	duty_cycle 3
	volume_envelope 8, 8
	octave 2
	note B_, 8
	octave 3
	note C#, 8
	note D#, 8
	octave 2
	note A_, 8
	note G#, 16
	duty_cycle 0
	volume_envelope 7, 8
	octave 3
	note G#, 1
	rest 3
	note G#, 3
	rest 9
	sound_jump .mainloop

.sub1:
	duty_cycle 0
	volume_envelope 7, 8
	rest 4
	note A_, 1
	rest 5
	note F#, 1
	rest 5
	sound_ret

Music_Student_Ch2:
_chan = 2
	duty_cycle 2
	vibrato 12, 2, 2
	note_type 3, 10, 7
	octave 3
	note B_, 1
	rest 3
	note_type 6, 10, 7
	octave 4
	note B_, 10
.mainloop:
	sound_call .sub1
	duty_cycle 1
	vibrato 12, 3, 3
	volume_envelope 10, 8
	octave 3
	note D#, 4
	duty_cycle 0
	volume_envelope 7, 8
	note F#, 1
	rest 1
	duty_cycle 1
	volume_envelope 10, 8
	note F#, 4
	duty_cycle 0
	volume_envelope 7, 8
	note F#, 1
	rest 1
	duty_cycle 1
	volume_envelope 10, 8
	note G#, 1
	note A_, 14
	note_type 3, 10, 8
	note B_, 1
	note A_, 1
	note G#, 4
	note F#, 3
	rest 1
	note F#, 1
	note G_, 1
	note_type 6, 10, 8
	note G#, 15
	duty_cycle 3
	vibrato 24, 4, 4
	volume_envelope 8, 8
	note C#, 8
	octave 2
	note B_, 8
	sound_call .sub1
	duty_cycle 1
	vibrato 12, 3, 3
	volume_envelope 10, 8
	octave 3
	note A_, 4
	duty_cycle 0
	volume_envelope 7, 8
	note E_, 1
	rest 1
	duty_cycle 1
	volume_envelope 10, 8
	note E_, 4
	duty_cycle 0
	volume_envelope 7, 8
	note E_, 1
	rest 1
	duty_cycle 1
	volume_envelope 10, 8
	note G_, 1
	note G#, 3
	note F#, 10
	note E_, 2
	note D#, 2
	note_type 12, 10, 8
	note E_, 9
	duty_cycle 0
	note_type 6, 7, 8
	octave 2
	note B_, 1
	rest 3
	note B_, 3
	rest 9
	sound_jump .mainloop

.sub1:
	duty_cycle 1
	vibrato 12, 3, 3
	volume_envelope 10, 8
	octave 3
	note E_, 4
	duty_cycle 0
	volume_envelope 7, 8
	note G#, 1
	rest 1
	duty_cycle 1
	volume_envelope 10, 8
	note G#, 4
	duty_cycle 0
	volume_envelope 7, 8
	note G#, 1
	rest 1
	duty_cycle 1
	volume_envelope 10, 8
	note A#, 1
	note B_, 15
	note A_, 2
	note G#, 2
	note A_, 16
	duty_cycle 3
	vibrato 24, 4, 4
	volume_envelope 8, 8
	octave 2
	note B_, 8
	note A#, 8
	sound_ret

Music_Student_Ch3:
_chan = 3
	note_type 6, 1, 28
	rest 8
	octave 2
	note B_, 1
	octave 3
	note C#, 1
	note D_, 1
	note D#, 1
.mainloop:
	note_type 6, 1, 28
	sound_call .sub1
	sound_call .sub2
.loop1:
	sound_call .sub1
	sound_loop 3, .loop1
	sound_call .sub2
	sound_call .sub1
	octave 3
	note E_, 1
	rest 3
	octave 2
	note E_, 3
	rest 3
	note B_, 1
	rest 1
	note B_, 2
	note_type 3, 1, 28
	octave 3
	note C_, 1
	note C#, 1
	note D_, 1
	note D#, 1
	sound_jump .mainloop

.sub1:
	octave 3
	note E_, 4
	volume_envelope 2, 27
	note B_, 1
	rest 1
	volume_envelope 1, 28
	note E_, 1
	rest 1
	octave 2
	note B_, 2
	volume_envelope 2, 27
	octave 3
	note B_, 1
	rest 3
	volume_envelope 1, 28
	octave 2
	note B_, 1
	rest 1
	sound_ret

.sub2:
	octave 3
	note E_, 4
	volume_envelope 2, 27
	note B_, 1
	rest 1
	volume_envelope 1, 28
	note E_, 1
	rest 1
	note E_, 2
	volume_envelope 2, 27
	note B_, 1
	rest 1
	volume_envelope 1, 28
	note F_, 4
	note F#, 4
	volume_envelope 2, 27
	octave 4
	note A_, 1
	rest 1
	volume_envelope 1, 28
	octave 3
	note F#, 1
	rest 1
	note E_, 2
	volume_envelope 2, 27
	octave 4
	note A_, 1
	rest 3
	volume_envelope 1, 28
	octave 3
	note E_, 1
	rest 1
	note D#, 4
	volume_envelope 2, 27
	octave 4
	note F#, 1
	rest 1
	volume_envelope 1, 28
	octave 3
	note D#, 1
	rest 1
	note F#, 2
	volume_envelope 2, 27
	octave 4
	note C#, 1
	rest 1
	volume_envelope 1, 28
	octave 2
	note F#, 4
	octave 3
	note F#, 4
	volume_envelope 2, 27
	octave 4
	note C#, 1
	rest 1
	volume_envelope 1, 28
	octave 3
	note F#, 1
	rest 1
	note C#, 2
	volume_envelope 2, 27
	octave 4
	note C#, 1
	rest 3
	volume_envelope 1, 28
	octave 3
	note C#, 1
	rest 1
	octave 2
	note B_, 4
	volume_envelope 2, 27
	octave 4
	note C#, 1
	rest 1
	volume_envelope 1, 28
	octave 2
	note B_, 1
	rest 1
	octave 3
	note D#, 2
	volume_envelope 2, 27
	note A_, 1
	rest 3
	volume_envelope 1, 28
	note D#, 1
	rest 1
	sound_ret

Music_Student_Ch4:
_chan = 4
	toggle_noise 9
	drum_speed 3
	rest 10
	rest 10
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 1
.mainloop:
	drum_note 1, 4
	drum_note 1, 4
	drum_note 3, 4
	drum_note 1, 4
	sound_loop 30, .mainloop
	drum_note 3, 4
	drum_note 1, 4
	drum_note 3, 12
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 3, 4
	drum_note 1, 4
	sound_jump .mainloop
