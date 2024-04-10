Music_GamingAndTheater:
	channel_count 4
	channel 1, Music_GamingAndTheater_Ch1
	channel 2, Music_GamingAndTheater_Ch2
	channel 3, Music_GamingAndTheater_Ch3
	channel 4, Music_GamingAndTheater_Ch4
Music_GamingAndTheater_Ch1:
_chan = 1
	tempo 160
	volume 7
	pitch_offset 2
	relative_pitch 0
.mainloop:
	duty_cycle 1
	note_type 12, 5, 8
	rest 16
	rest 16
	rest 16
	rest 16
	octave 3
	note D#, 16
	note C_, 8
	note F_, 3
	note G_, 3
	note D#, 2
	note C_, 16
	note C_, 14
	rest 2
	sound_call .sub1
	note A_, 14
	note A_, 1
	note A#, 1
	octave 4
	note C_, 4
	octave 3
	note C_, 4
	note D#, 3
	note D_, 3
	note C_, 2
	volume_envelope 10, 8
	octave 2
	note A_, 3
	note G_, 1
	rest 2
	note A_, 1
	rest 7
	note G_, 1
	note A#, 1
	octave 3
	note C_, 8
	note D#, 8
	relative_pitch 2
	sound_call .sub1
	relative_pitch 0
	volume_envelope 10, 8
	octave 2
	note B_, 4
	octave 3
	note C_, 1
	rest 2
	octave 2
	note B_, 1
	rest 6
	note B_, 1
	octave 3
	note C_, 1
	note D_, 3
	note E_, 3
	note D_, 2
	note C_, 3
	note D_, 3
	note C_, 2
	octave 2
	note B_, 8
	octave 3
	note D_, 8
	note G_, 8
	octave 4
	note D_, 8
	octave 3
	note E_, 3
	note D_, 1
	rest 2
	note E_, 1
	rest 2
	duty_sequence 0
	volume_envelope 10, 5
	octave 2
	note G_, 1
	octave 3
	note C_, 1
	note E_, 1
	note G_, 1
	note E_, 1
	note C_, 1
	note E_, 1
	note D_, 1
	octave 2
	note A#, 1
	octave 3
	note D_, 1
	note F_, 1
	note A#, 1
	note F_, 1
	note D_, 1
	note F_, 1
	note A#, 1
	note F_, 1
	note A#, 1
	octave 4
	note D_, 1
	note F_, 1
	note D_, 1
	octave 3
	note A#, 1
	octave 4
	note D_, 1
	duty_cycle 1
	volume_envelope 10, 8
	octave 3
	note E_, 3
	note D_, 1
	rest 2
	note E_, 1
	rest 5
	duty_cycle 0
	note C_, 4
	note D_, 8
	note F_, 8
	note E_, 8
	note G_, 8
	sound_jump .mainloop

.sub1:
	volume_envelope 5, 8
	note A_, 14
	note A_, 1
	note A#, 1
	octave 4
	note C_, 3
	note D_, 3
	note C_, 2
	octave 3
	note A#, 3
	octave 4
	note C_, 3
	octave 3
	note A#, 2
	note A_, 14
	note A#, 1
	note A_, 1
	note G_, 16
	sound_ret

Music_GamingAndTheater_Ch2:
_chan = 2
	relative_pitch 0
	pitch_inc_switch
.mainloop:
	duty_cycle 1
	note_type 12, 5, 8
	rest 16
	rest 16
	rest 16
	rest 16
	octave 3
	note A_, 16
	note A_, 4
	note F_, 2
	note A_, 2
	note B_, 3
	note A#, 3
	note A_, 2
	note F_, 16
	note F_, 14
	rest 2
	sound_call .sub1
	note F_, 16
	relative_pitch 2
	sound_call .sub1
	note A_, 16
	relative_pitch 0
	octave 4
	note C_, 3
	octave 3
	note A#, 1
	rest 2
	octave 4
	note C_, 1
	rest 6
	octave 3
	note G_, 1
	note A#, 1
	octave 4
	note C_, 1
	note D_, 3
	note E_, 2
	note D_, 1
	note C_, 1
	octave 3
	note A#, 2
	note F_, 1
	note G_, 1
	note A#, 1
	octave 4
	note C_, 1
	note D_, 1
	octave 3
	note G_, 1
	note F_, 1
	octave 4
	note C_, 3
	octave 3
	note G_, 3
	octave 4
	note E_, 7
	octave 3
	note G_, 1
	octave 4
	note E_, 1
	note F_, 1
	note G_, 8
	plucks_off
	duty_cycle 0
	volume_envelope 10, 8
	octave 3
	note A#, 8
	octave 4
	note C_, 16
	sound_jump .mainloop

.sub1:
	octave_pluck_on
	volume_envelope 13, 5
	note F_, 4
	note C_, 1
	rest 2
	note F_, 1
	rest 6
	note F_, 1
	note G_, 1
	note A_, 3
	note A#, 3
	note A_, 2
	note G_, 3
	note A_, 3
	note G_, 2
	note F_, 3
	note D#, 1
	rest 2
	note F_, 1
	rest 7
	note D#, 1
	note F_, 1
	note D#, 3
	note C_, 1
	rest 2
	note C_, 1
	rest 1
	plucks_off
	volume_envelope 5, 8
	note D#, 8
	octave_pluck_on
	volume_envelope 13, 5
	note F_, 4
	note C_, 1
	rest 2
	note F_, 1
	rest 6
	note F_, 1
	note G_, 1
	note A_, 3
	note F_, 3
	note A_, 2
	note G_, 3
	note F_, 3
	note D#, 2
	note F_, 3
	note D#, 1
	rest 2
	note F_, 1
	rest 7
	note D#, 1
	note G_, 1
	sound_ret

Music_GamingAndTheater_Ch3:
_chan = 3
.mainloop:
	relative_pitch 0
.loop1:
	note_type 12, 1, 28
	sound_call .sub1
	sound_call .sub2
	note D#, 1
	sound_call .sub3
	sound_call .sub2
	note D#, 1
	sound_loop 3, .loop1
	sound_call .sub1
	sound_call .sub2
	note D#, 1
	sound_call .sub3
	note F_, 4
	note C_, 1
	note D#, 1
	rest 1
	note D#, 1
	rest 1
	note C_, 1
	rest 1
	note C_, 1
	note D_, 1
	note D#, 1
	note F_, 1
	note F#, 1
	relative_pitch 2
	sound_call .sub1
	sound_call .sub2
	note D#, 1
	sound_call .sub3
	sound_call .sub2
	note D#, 1
	sound_call .sub1
	sound_call .sub2
	note D#, 1
	sound_call .sub3
	sound_call .sub2
	octave 3
	note C_, 1
.loop2:
	relative_pitch 0
	octave 3
	note C_, 3
	octave 2
	note G_, 1
	rest 2
	octave 3
	note C_, 1
	rest 3
	note C_, 2
	note G_, 2
	note C_, 2
	octave 2
	note A#, 2
	note G_, 1
	note A#, 2
	note G_, 1
	note A#, 1
	octave 3
	note D_, 2
	octave 2
	note A#, 1
	octave 3
	note D_, 1
	note G_, 1
	note A#, 1
	note G_, 1
	note D_, 1
	octave 2
	note A#, 1
	sound_loop 2, .loop2
	octave 3
	note C_, 2
	octave 2
	note G_, 1
	octave 3
	note C_, 2
	octave 2
	note G_, 1
	octave 3
	note C_, 1
	note E_, 2
	note C_, 1
	note E_, 1
	note G_, 1
	octave 4
	note C_, 1
	octave 3
	note G_, 1
	note E_, 1
	note C_, 1
	sound_jump .mainloop

.sub1:
	octave 3
	note F_, 4
	note C_, 1
	note D#, 1
	rest 1
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	octave 2
	note F_, 1
	octave 3
	note C_, 2
	note A_, 2
	sound_ret

.sub2:
	note F_, 4
	note C_, 1
	note D#, 1
	rest 1
	note D#, 1
	rest 1
	note C_, 1
	rest 1
	note C_, 1
	octave 2
	note B_, 1
	note A#, 1
	note A_, 1
	sound_ret

.sub3:
	octave 3
	note F_, 4
	note C_, 1
	note D#, 1
	rest 1
	note F_, 1
	rest 1
	note A_, 1
	rest 1
	octave 2
	note F_, 1
	octave 3
	note C_, 2
	note D#, 2
	sound_ret

Music_GamingAndTheater_Ch4:
_chan = 4
	toggle_noise 9
.mainloop:
	drum_speed 12
	rest 16
	rest 16
.loop1:
	drum_note 8, 1
	drum_note 11, 1
	drum_note 11, 1
	drum_note 11, 1
	drum_note 8, 1
	drum_note 11, 1
	drum_note 11, 1
	drum_note 8, 1
	drum_note 11, 1
	drum_note 11, 1
	drum_note 11, 1
	drum_note 11, 1
	drum_note 8, 1
	drum_note 11, 1
	drum_note 11, 1
	drum_note 11, 1
	sound_loop 14, .loop1
.loop2:
	drum_note 8, 1
	drum_note 11, 1
	drum_note 11, 1
	drum_note 12, 1
	drum_note 8, 1
	drum_note 11, 1
	drum_note 11, 1
	drum_note 8, 1
	drum_note 11, 1
	drum_note 11, 1
	drum_note 12, 1
	drum_note 11, 1
	drum_note 8, 1
	drum_note 11, 1
	drum_note 11, 1
	drum_note 11, 1
	sound_loop 8, .loop2
.loop3:
	sound_call .sub1
	drum_note 11, 1
	drum_note 11, 1
	drum_note 11, 1
	sound_loop 3, .loop3
.loop4:
	sound_call .sub1
	drum_note 10, 1
	drum_note 10, 1
	drum_note 9, 1
	sound_loop 2, .loop4
	sound_jump .mainloop

.sub1:
	drum_note 8, 1
	drum_note 11, 1
	drum_note 11, 1
	drum_note 9, 1
	drum_note 8, 1
	drum_note 11, 1
	drum_note 9, 1
	drum_note 8, 1
	drum_note 11, 1
	drum_note 10, 1
	drum_note 12, 1
	drum_note 11, 1
	drum_note 9, 1
	sound_ret


