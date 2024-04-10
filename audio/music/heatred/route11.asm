HRM_Route11:
	channel_count 4
	channel 1, HRM_Route11_Ch1
	channel 2, HRM_Route11_Ch2
	channel 3, HRM_Route11_Ch3
	channel 4, HRM_Route11_Ch4
HRM_Route11_Ch1:
_chan = 1
	tempo 156
	volume 7
	vibrato 18, 3, 4
	pitch_inc_switch
	relative_pitch 1
	old_panning %1110, %0111
	duty_cycle 3
	note_type 12, 9, 1
	octave 3
	note G#, 3
	note A_, 1
	note G#, 4
	note G#, 4
	volume_envelope 9, 5
	note G#, 4
	volume_envelope 9, 1
	note E_, 3
	note F#, 1
	note E_, 4
	note E_, 4
	volume_envelope 9, 5
	note D#, 4
.mainloop:
	duty_cycle 2
	volume_envelope 9, 6
	sound_call .sub1
	sound_call .sub2
	sound_call .sub1
	note E_, 1
	rest 2
	note F#, 1
	note E_, 4
	note B_, 4
	octave 4
	note D#, 4
	sound_call .sub1
	sound_call .sub2
	sound_call .sub1
	volume_envelope 9, 2
	octave 4
	note E_, 1
	octave 3
	note B_, 1
	note G#, 1
	note E_, 1
	octave 4
	note D#, 1
	octave 3
	note B_, 1
	note G#, 1
	note D#, 1
	octave 4
	note D_, 1
	octave 3
	note B_, 1
	note G#, 1
	note D_, 1
	note C#, 1
	note F_, 1
	note G#, 1
	note B_, 1
	duty_cycle 3
	volume_envelope 7, 15
	octave 4
	note C#, 3
	octave 3
	note B_, 3
	note A_, 1
	rest 1
	note A_, 4
	octave 4
	note C#, 2
	octave 3
	note B_, 2
	octave 4
	note C#, 1
	octave 3
	note B_, 1
	note A_, 4
	note G#, 2
	note F#, 2
	note G#, 2
	note A_, 2
	octave 4
	note C_, 2
	octave 3
	note B_, 3
	note A_, 3
	note G#, 1
	rest 1
	note G#, 4
	note B_, 2
	note A_, 2
	note B_, 1
	note A_, 1
	note G#, 4
	note F#, 2
	note E_, 2
	note F#, 2
	note G_, 2
	note E_, 2
	note D#, 3
	note F#, 3
	note D#, 2
	note E_, 8
	note F#, 8
	note D#, 4
	note F#, 4
.loop1:
	volume_envelope 9, 7
	note G#, 1
	note A_, 1
	note B_, 4
	octave 2
	note B_, 1
	octave 3
	note D#, 1
	note E_, 1
	rest 1
	note E_, 1
	note F#, 1
	note G#, 4
	sound_loop 2, .loop1
	sound_jump .mainloop

.sub1:
	octave 3
	note G#, 1
	rest 1
	note E_, 1
	rest 1
	octave 2
	note B_, 1
	rest 1
	note B_, 1
	octave 3
	note D#, 1
	note E_, 4
	note G#, 4
	sound_ret

.sub2:
	note A_, 1
	rest 1
	note F#, 1
	rest 1
	note D_, 1
	rest 1
	note F#, 1
	note G#, 1
	note A_, 4
	note F#, 4
	sound_ret

HRM_Route11_Ch2:
_chan = 2
	duty_cycle 3
	vibrato 18, 3, 4
	relative_pitch 1
	note_type 12, 13, 1
	octave 2
	note E_, 4
	note E_, 4
	note E_, 4
	volume_envelope 13, 3
	note E_, 4
	volume_envelope 13, 1
	note E_, 4
	note E_, 4
	note E_, 4
	volume_envelope 13, 3
	octave 1
	note B_, 4
.mainloop:
	duty_cycle 3
	volume_envelope 11, 7
	sound_call .sub1
	note F#, 1
	note A_, 1
	note G#, 1
	note F#, 1
	note G#, 2
	rest 1
	note E_, 1
	octave 3
	note B_, 12
	duty_cycle 2
	octave 2
	note B_, 1
	rest 2
	octave 3
	note C_, 1
	octave 2
	note B_, 4
	octave 3
	note D#, 4
	note F#, 4
	duty_cycle 3
	sound_call .sub1
	note A_, 1
	octave 5
	note C#, 1
	octave 4
	note B_, 1
	note A_, 1
	note B_, 2
	rest 1
	note A_, 1
	volume_envelope 11, 8
	note G#, 6
	volume_envelope 11, 7
	note G#, 6
	volume_envelope 6, 15
	note G#, 16
	duty_cycle 2
	volume_envelope 10, 8
	note A_, 3
	note G#, 3
	note F#, 1
	rest 1
	note F#, 8
	volume_envelope 10, 7
	note F#, 10
	rest 2
	note F#, 4
	volume_envelope 10, 8
	note G#, 3
	note F#, 3
	note E_, 1
	rest 1
	note E_, 8
	volume_envelope 10, 7
	note E_, 10
	rest 2
	note E_, 4
	note F#, 3
	note D#, 3
	octave 3
	note B_, 2
	volume_envelope 10, 8
	octave 4
	note B_, 8
	note B_, 8
	note A_, 8
	note G#, 1
	note F#, 1
	note E_, 14
	note E_, 10
	volume_envelope 10, 4
	note E_, 6
	sound_jump .mainloop

.sub1:
	octave 4
	note E_, 6
	volume_envelope 11, 1
	octave 3
	note B_, 1
	note B_, 1
	volume_envelope 11, 7
	note B_, 4
	octave 4
	note B_, 4
	note A_, 4
	note G#, 4
	note F#, 4
	sound_ret

HRM_Route11_Ch3:
_chan = 3
	vibrato 18, 5, 4
	relative_pitch 1
	note_type 12, 1, 30
	octave 4
	note E_, 1
	rest 2
	note F#, 1
	note E_, 12
	octave 3
	note B_, 1
	rest 2
	octave 4
	note C_, 1
	octave 3
	note B_, 8
	volume_envelope 1, 6
	octave 4
	note D#, 1
	note F#, 1
	note B_, 1
	octave 5
	note D#, 1
.mainloop:
	volume_envelope 1, 6
	sound_call .sub1
	note F#, 1
	rest 1
	note E_, 1
	rest 3
	note D#, 1
	note E_, 1
	note F#, 4
	octave 2
	note B_, 4
	sound_call .sub1
	note E_, 1
	rest 1
	note B_, 1
	rest 3
	octave 2
	note B_, 1
	octave 3
	note C#, 1
	note D_, 4
	note F_, 4
	volume_envelope 1, 4
	note F#, 13
	rest 1
	note F#, 1
	note G#, 1
	note A_, 5
	rest 1
	note A_, 1
	note B_, 1
	octave 4
	note C_, 4
	octave 3
	note F#, 4
	note E_, 14
	note G#, 1
	note A_, 1
	note B_, 6
	note E_, 1
	note F#, 1
	note G_, 4
	note E_, 4
	octave 2
	note B_, 5
	rest 1
	note B_, 1
	octave 3
	note D#, 1
	note F#, 8
	note E_, 8
	note F#, 4
	note D#, 4
.loop1:
	volume_envelope 1, 5
	note E_, 1
	rest 1
	note E_, 1
	rest 3
	note E_, 1
	note F#, 1
	note G#, 4
	note E_, 3
	rest 1
	sound_loop 2, .loop1
	sound_jump .mainloop

.sub1:
	octave 3
	note E_, 1
	rest 1
	note E_, 1
	rest 3
	note E_, 1
	note F#, 1
	note G#, 4
	note E_, 4
	note D_, 1
	rest 1
	note D_, 1
	rest 3
	note D_, 1
	note E_, 1
	note F#, 4
	note D_, 4
	note E_, 1
	rest 1
	note E_, 1
	rest 3
	note E_, 1
	note F#, 1
	note G#, 4
	note E_, 4
	sound_ret

HRM_Route11_Ch4:
_chan = 4
	toggle_noise 2
	drum_speed 12 
	rest 16
	rest 12
	drum_note 4, 1
	drum_note 4, 1
	drum_note 3, 1
	drum_note 3, 1
.mainloop:
	drum_note 2, 4
	drum_note 4, 1
	drum_note 4, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 2, 2
	drum_note 3, 2
	drum_note 2, 1
	drum_note 4, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 2, 4
	drum_note 4, 1
	drum_note 4, 1
	drum_note 4, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 2, 4
	drum_note 2, 2
	drum_note 2, 4
	drum_note 4, 1
	drum_note 4, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 2, 2
	drum_note 2, 2
	drum_note 2, 2
	drum_note 2, 1
	drum_note 4, 1
	drum_note 2, 4
	drum_note 4, 1
	drum_note 4, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 2, 2
	drum_note 2, 2
	drum_note 3, 1
	drum_note 3, 1
	drum_note 4, 1
	drum_note 4, 1
	drum_note 2, 4
	drum_note 4, 1
	drum_note 4, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 2, 2
	drum_note 2, 2
	drum_note 2, 1
	drum_note 4, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 2, 4
	drum_note 4, 1
	drum_note 4, 1
	drum_note 4, 1
	drum_note 4, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 2, 4
	drum_note 2, 2
	drum_note 2, 4
	drum_note 4, 1
	drum_note 4, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 2, 2
	drum_note 2, 2
	drum_note 2, 2
	drum_note 2, 1
	drum_note 4, 1
	drum_note 2, 4
	drum_note 4, 1
	drum_note 4, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 2, 2
	drum_note 2, 2
	drum_note 2, 1
	drum_note 4, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 2, 4
	drum_note 4, 1
	drum_note 4, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 2, 2
	drum_note 2, 2
	drum_note 2, 1
	drum_note 4, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 2, 4
	drum_note 4, 1
	drum_note 4, 1
	drum_note 4, 1
	drum_note 4, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 2, 4
	drum_note 2, 2
	drum_note 2, 4
	drum_note 4, 1
	drum_note 4, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 2, 2
	drum_note 2, 2
	drum_note 2, 2
	drum_note 2, 1
	drum_note 3, 1
	drum_note 2, 4
	drum_note 4, 1
	drum_note 4, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 2, 2
	drum_note 2, 2
	drum_note 2, 1
	drum_note 4, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 2, 4
	drum_note 4, 1
	drum_note 4, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 2, 2
	drum_note 2, 2
	drum_note 2, 1
	drum_note 4, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 2, 4
	drum_note 4, 1
	drum_note 4, 1
	drum_note 4, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 2, 4
	drum_note 2, 2
	drum_note 2, 4
	drum_note 4, 1
	drum_note 4, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 2, 2
	drum_note 2, 2
	drum_note 2, 2
	drum_note 2, 1
	drum_note 3, 1
	drum_note 2, 4
	drum_note 4, 1
	drum_note 4, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 2, 2
	drum_note 2, 2
	drum_note 2, 2
	drum_note 2, 2
	sound_jump .mainloop


