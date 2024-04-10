HRM_MeetOak:
	channel_count 3
	channel 1, HRM_MeetOak_Ch1
	channel 2, HRM_MeetOak_Ch2
	channel 3, HRM_MeetOak_Ch3

HRM_MeetOak_Ch1:
_chan = 1
	tempo 224
	volume 7
	duty_cycle 1
	vibrato 13, 3, 4
	old_panning %1101, %1110
	pitch_inc_switch
	note_type 6, 10, 7
	rest 4
	octave 4
	note B_, 16
.loop1:
	vibrato 6, 3, 2
	note_type 3, 10, 7
	octave 3
	note E_, 8
	note F#, 2
	rest 2
	note G_, 1
	note G#, 7
	note F#, 4
	note E_, 2
	rest 2
	note F#, 2
	rest 2
	note E_, 8
	octave 2
	note B_, 2
	octave 3
	note E_, 2
	note B_, 12
	note A#, 4
	note B_, 4
	note G#, 4
	note F#, 4
	note E_, 4
	note F#, 8
	note E_, 4
	note G_, 1
	note G#, 3
	note F#, 4
	note E_, 8
	note F#, 2
	note G#, 2
	note B_, 8
	note E_, 4
	note D#, 4
	note E_, 4
	sound_loop 2, .loop1
.mainloop:
	note A_, 4
	note E_, 8
	note C#, 8
	note C#, 2
	note E_, 2
	note A_, 4
	note B_, 4
	note A_, 8
	note G#, 8
	note F#, 8
	note G#, 4
	note F#, 4
	sound_call .sub1
	octave 2
	note B_, 4
	octave 3
	note D#, 8
	note F#, 8
	note D#, 2
	note F#, 2
	note A_, 4
	note F#, 2
	note A_, 2
	note G#, 8
	note F#, 8
	octave 2
	note B_, 8
	octave 3
	note F#, 8
	sound_call .sub1
	sound_jump .mainloop

.sub1:
	note E_, 8
	note G#, 8
	note B_, 4
	note G#, 1
	rest 1
	note G#, 1
	rest 5
	note G#, 2
	rest 2
	octave 4
	note B_, 4
	octave 3
	note G#, 1
	rest 1
	note G#, 1
	rest 5
	octave 4
	note G#, 2
	note B_, 2
	octave 5
	note E_, 4
	octave 3
	note G#, 1
	rest 1
	note G#, 1
	rest 5
	note G#, 2
	rest 2
	sound_ret

HRM_MeetOak_Ch2:
_chan = 2
	duty_cycle 1
	note_type 6, 12, 7
	octave 3
	note B_, 1
	octave 4
	note D#, 1
	note F#, 1
	note A_, 1
	vibrato 6, 6, 2
	octave 2
	note E_, 6
	note B_, 4
	duty_cycle 0
	octave 3
	note F#, 1
	rest 1
	note B_, 1
	rest 1
	octave 4
	note C#, 1
	rest 1
.loop1:
	vibrato 13, 3, 3
	duty_cycle 0
	note_type 3, 12, 7
	octave 3
	note B_, 2
	rest 2
	octave 4
	note C#, 2
	rest 2
	note D#, 2
	rest 2
	note D#, 1
	note E_, 7
	note D#, 4
	note C#, 8
	duty_cycle 2
	volume_envelope 10, 2
	note B_, 2
	rest 2
	octave 5
	note C#, 2
	rest 2
	note D#, 2
	rest 2
	note E_, 8
	note D#, 4
	note C#, 8
	duty_cycle 0
	volume_envelope 12, 7
	octave 3
	note B_, 2
	rest 2
	note A_, 2
	rest 2
	note G#, 2
	rest 2
	note G#, 1
	note A_, 7
	note B_, 2
	rest 2
	note B_, 6
	rest 2
	duty_cycle 2
	volume_envelope 10, 2
	octave 4
	note B_, 2
	rest 2
	note A_, 2
	rest 2
	note G#, 2
	rest 2
	note A_, 8
	note B_, 2
	rest 2
	note B_, 6
	rest 2
	sound_loop 2, .loop1
.mainloop:
	relative_pitch 0
	vibrato 13, 4, 3
	duty_cycle 0
	note_type 6, 12, 7
	octave 4
	note C#, 6
	octave 3
	note A_, 1
	octave 4
	note C#, 1
	note E_, 6
	note C#, 1
	note E_, 1
	note F#, 4
	note E_, 4
	note D#, 4
	note C#, 4
	octave 3
	note B_, 6
	note G#, 1
	note B_, 1
	volume_envelope 12, 8
	octave 4
	note E_, 8
	volume_envelope 12, 7
	vibrato 0, 4, 3
	note E_, 16
	vibrato 13, 4, 3
	octave 3
	note A_, 6
	note F#, 1
	note A_, 1
	octave 4
	note D#, 6
	octave 3
	note B_, 1
	octave 4
	note D#, 1
	note E_, 4
	note D#, 4
	note C#, 4
	note C_, 4
	octave 3
	note B_, 6
	note G#, 1
	note B_, 1
	octave 4
	note E_, 6
	octave 3
	note B_, 1
	octave 4
	note E_, 1
	note G#, 16
	sound_jump .mainloop

HRM_MeetOak_Ch3:
_chan = 3
	vibrato 8, 2, 3
	note_type 3, 1, 30
	octave 4
	note F#, 2
	note B_, 2
	octave 5
	note D#, 2
	note E_, 2
	note F#, 9
	vibrato 0, 2, 3
	volume_envelope 2, 30
	note F#, 9
	volume_envelope 3, 30
	note F#, 9
	rest 5
.loop1:
	vibrato 0, 0, 0
	volume_envelope 1, 29
	octave 3
	note E_, 4
	note B_, 2
	rest 6
	note B_, 8
	rest 12
	note G#, 4
	volume_envelope 1, 11
	octave 5
	note E_, 2
	rest 2
	note F#, 2
	rest 2
	volume_envelope 1, 29
	octave 3
	note F#, 8
	note G#, 2
	rest 2
	note F#, 2
	rest 2
	note G#, 2
	rest 2
	octave 3
	note E_, 4
	note B_, 2
	rest 6
	note B_, 8
	rest 12
	note G#, 4
	volume_envelope 1, 11
	octave 5
	note F#, 2
	rest 2
	note E_, 2
	rest 2
	volume_envelope 1, 29
	octave 3
	note F#, 8
	note G#, 2
	rest 2
	note F#, 2
	rest 2
	note G#, 2
	rest 2
	sound_loop 2, .loop1
.mainloop:
	octave 3
	note A_, 2
	rest 6
	note E_, 2
	rest 2
	octave 4
	note C#, 2
	note E_, 2
	octave 3
	note A_, 2
	rest 6
	note E_, 2
	rest 2
	note A_, 2
	octave 4
	note C#, 2
	octave 3
	note A_, 2
	rest 2
	octave 4
	note D#, 2
	rest 2
	octave 3
	note E_, 2
	rest 2
	octave 4
	note C#, 2
	rest 2
	octave 3
	note C#, 2
	rest 2
	note B_, 2
	rest 2
	note E_, 2
	rest 2
	note A_, 2
	rest 2
	sound_call .sub1
.loop2:
	octave 3
	note F#, 2
	rest 6
	octave 2
	note B_, 2
	rest 2
	octave 4
	note D#, 2
	note F#, 2
	sound_loop 2, .loop2
	octave 3
	note F#, 2
	rest 2
	octave 4
	note C#, 2
	rest 2
	octave 2
	note B_, 2
	rest 2
	octave 3
	note B_, 2
	rest 2
	note F#, 2
	rest 2
	note B_, 2
	rest 2
	note D#, 2
	rest 2
	note A_, 2
	rest 2
	sound_call .sub1
	sound_jump .mainloop

.sub1:
	note G#, 2
	rest 6
	note E_, 2
	rest 2
	octave 4
	note E_, 2
	note G#, 2
.sub1loop1:
	octave 3
	note G#, 2
	rest 2
	octave 4
	note B_, 1
	rest 1
	note B_, 1
	rest 1
	octave 3
	note E_, 2
	rest 2
	octave 4
	note E_, 2
	rest 2
	sound_loop 3, .sub1loop1
	sound_ret


