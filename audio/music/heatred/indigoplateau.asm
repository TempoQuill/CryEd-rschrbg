HRM_IndigoLeague:
	channel_count 4
	channel 1, HRM_IndigoLeague_Ch1
	channel 2, HRM_IndigoLeague_Ch2
	channel 3, HRM_IndigoLeague_Ch3
	channel 4, HRM_IndigoLeague_Ch4

HRM_IndigoLeague_Ch1:
_chan = 1
	tempo 136
	volume 7
	old_panning %1110, %1011
	pitch_inc_switch
	vibrato 26, 6, 4
	note_type 12, 9, 3
	octave 2
	note A_, 8
	note A_, 8
	note A_, 8
	note A_, 4
	volume_envelope 11, 4
	note A#, 4
.mainloop:
	sound_call .sub1
	octave 3
	note E_, 4
	sound_call .sub1
	octave 3
	note F_, 4
	sound_call .sub1
	octave 3
	note E_, 4
	sound_call .sub1
	note G#, 4
	sound_call .sub1
	octave 3
	note E_, 4
	sound_call .sub1
	octave 3
	note E_, 4
	sound_call .sub1
	duty_cycle 1
	volume_envelope 13, 7
	octave 3
	note F_, 2
	note G_, 2
	note A_, 8
	octave 2
	note A_, 8
	octave 3
	note G_, 8
	volume_envelope 3, 12
	note A#, 8
	duty_cycle 0
	sound_call .sub1
	note A#, 4
	sound_jump .mainloop

.sub1:
	volume_envelope 9, 3
	octave 2
	note A_, 4
	note A_, 4
	note A_, 4
	note A_, 4
	note A_, 4
	note A_, 4
	note A_, 4
	volume_envelope 11, 4
	sound_ret

HRM_IndigoLeague_Ch2:
_chan = 2
	duty_cycle 2
	note_type 12, 10, 2
	octave 1
	note A_, 8
	note A_, 8
	note A_, 8
	note A_, 4
	volume_envelope 11, 3
	note A#, 4
.mainloop:
.loop1:
	sound_call .sub1
	note E_, 4
	sound_loop 6, .loop1
	sound_call .sub1
	octave 2
	note F_, 2
	note G_, 2
	note A_, 8
	octave 1
	note A_, 8
	octave 2
	note F_, 8
	octave 1
	note F_, 8
	sound_call .sub1
	note E_, 4
	sound_jump .mainloop

.sub1:
	volume_envelope 10, 2
	note A_, 4
	note A_, 4
	note A_, 4
	note A_, 4
	note A_, 4
	note A_, 4
	note A_, 4
	volume_envelope 12, 3
	sound_ret

HRM_IndigoLeague_Ch3:
_chan = 3
	vibrato 26, 4, 3
	note_type 6, 1, 8
	octave 3
	note E_, 1
	volume_envelope 2, 8
	note E_, 2
	volume_envelope 3, 8
	note E_, 2
	rest 11
	volume_envelope 1, 8
	octave 3
	note E_, 1
	volume_envelope 2, 8
	note E_, 2
	volume_envelope 3, 8
	note E_, 2
	rest 11
	volume_envelope 1, 8
	octave 3
	note E_, 1
	volume_envelope 2, 8
	note E_, 2
	volume_envelope 3, 8
	note E_, 2
	rest 11
	sound_call .sub2
	volume_envelope 1, 8
	note F_, 2
	volume_envelope 2, 8
	note F_, 6
.mainloop:
	sound_call .sub1
	sound_call .sub2
	sound_call .sub1
	volume_envelope 1, 8
	note A_, 2
	volume_envelope 2, 8
	note A_, 6
	sound_call .sub1
	sound_call .sub2
	sound_call .sub1
	volume_envelope 1, 8
	note A#, 2
	volume_envelope 2, 8
	note A#, 6
	sound_call .sub1
	sound_call .sub2
	sound_call .sub1
	volume_envelope 1, 8
	note A_, 2
	volume_envelope 2, 8
	note A_, 6
	sound_call .sub1
	sound_call .sub2
	sound_call .sub1
	volume_envelope 1, 8
	note F_, 2
	volume_envelope 2, 8
	note F_, 6
	sound_call .sub1
	sound_call .sub2
	sound_call .sub1
	volume_envelope 1, 8
	note A_, 2
	volume_envelope 2, 8
	note A_, 6
	note_type 12, 1, 6
	octave 4
	pitch_slide 1, 4, E_
	note D_, 1
	note E_, 11
	vibrato 0, 4, 3
	note E_, 16
	vibrato 26, 4, 3
	octave 3
	note A_, 4
	octave 4
	pitch_slide 1, 4, F_
	note D#, 1
	note F_, 11
	vibrato 0, 4, 3
	note F_, 16
	vibrato 26, 4, 3
	note_type 6, 1, 6
	note C_, 4
	note D_, 4
	note E_, 6
	volume_envelope 2, 6
	note E_, 10
	volume_envelope 1, 6
	octave 3
	note E_, 6
	volume_envelope 2, 6
	note E_, 10
	volume_envelope 1, 6
	octave 4
	note D_, 6
	volume_envelope 2, 6
	note D_, 10
	volume_envelope 1, 6
	note F_, 16
	sound_call .sub1
	sound_call .sub2
	sound_call .sub1
	note F_, 2
	note F_, 6
	sound_jump .mainloop

.sub1:
	volume_envelope 1, 8
	octave 3
	note E_, 1
	volume_envelope 2, 8
	note E_, 2
	volume_envelope 3, 8
	note E_, 2
	rest 3
	volume_envelope 1, 8
	octave 3
	note E_, 1
	volume_envelope 2, 8
	note E_, 2
	volume_envelope 3, 8
	note E_, 2
	rest 3
.sub2:
	volume_envelope 1, 8
	octave 3
	note E_, 1
	volume_envelope 2, 8
	note E_, 2
	volume_envelope 3, 8
	note E_, 2
	rest 3
	sound_ret

HRM_IndigoLeague_Ch4:
_chan = 4
	toggle_noise 4
	drum_speed 6
	drum_note 5, 16
	drum_note 5, 16
	drum_note 5, 16
	drum_note 5, 8
	sound_call .sub1
.mainloop:
.loop1:
	sound_call .sub2
	drum_note 5, 4
	drum_note 2, 4
	drum_note 3, 4
	drum_note 2, 4
	drum_note 5, 4
	drum_note 2, 4
	sound_call .sub1
	sound_loop 7, .loop1
	drum_note 5, 16
	drum_note 5, 16
	drum_note 5, 16
	sound_call .sub1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	sound_call .sub2
	drum_note 5, 4
	drum_note 2, 4
	drum_note 3, 4
	drum_note 2, 4
	drum_note 5, 4
	drum_note 2, 4
	sound_call .sub1
	sound_jump .mainloop

.sub1:
	drum_note 3, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
	sound_ret

.sub2:
	drum_note 5, 4
	drum_note 2, 4
	drum_note 3, 4
	drum_note 2, 4
	drum_note 5, 4
	drum_note 2, 4
	drum_note 3, 4
	drum_note 2, 2
	drum_note 2, 2
	sound_ret


