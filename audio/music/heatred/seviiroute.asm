HRM_SeviiRoutes:
	channel_count 4
	channel 1, HRM_SeviiRoutes_Ch1
	channel 2, HRM_SeviiRoutes_Ch2
	channel 3, HRM_SeviiRoutes_Ch3
	channel 4, HRM_SeviiRoutes_Ch4

HRM_SeviiRoutes_Ch1:
_chan = 1
	tempo 152
	volume 7
	duty_cycle 3
	pitch_inc_switch
	vibrato 8, 2, 2
	stereo_panning %1101, %0110
	relative_pitch 5
	note_type 12, 11, 4
	octave 3
	note D_, 6
	note D_, 10
	note D_, 6
	note D_, 6
	note E_, 4
.mainloop:
	volume_envelope 11, 5
	octave 3
	note F#, 6
	note E_, 6
	note D_, 4
	octave 4
	note D_, 6
	note C_, 4
	note E_, 2
	note D_, 4
	octave 3
	note B_, 6
	note G_, 2
	note_type 8, 11, 5
	note D_, 4
	note G_, 4
	note B_, 4
	note_type 12, 11, 4
	note D_, 3
	note F#, 1
	volume_envelope 11, 7
	note A_, 8
	note F#, 4
	note A_, 3
	octave 4
	note C#, 1
	note D_, 12
	note_type 8, 11, 4
	octave 3
	note C_, 4
	octave 2
	note B_, 4
	note A_, 4
	note_type 8, 11, 7
	note A_, 12
	note_type 12, 11, 7
	octave 3
	note C_, 12
	volume_envelope 11, 4
	note E_, 4
	note D_, 2
	volume_envelope 11, 7
	octave 2
	note A_, 10
	volume_envelope 11, 4
	octave 3
	note E_, 4
	note D_, 3
	note E_, 1
	volume_envelope 11, 7
	note F#, 8
	note D_, 6
	note C_, 1
	note E_, 1
	note C_, 8
	note E_, 6
	note E_, 1
	note G_, 1
	note E_, 8
	note G_, 6
	note F#, 1
	note G_, 1
	volume_envelope 10, 0
	note A_, 7
	volume_envelope 10, 7
	note A_, 7
	note A_, 1
	octave 4
	note C_, 1
	volume_envelope 10, 0
	note D_, 6
	volume_envelope 10, 7
	note D_, 6
	sound_jump .mainloop

HRM_SeviiRoutes_Ch2:
_chan = 2
	duty_cycle 1
	note_type 12, 14, 6
	octave 2
	note C_, 4
	rest 2
	note C_, 4
	rest 6
	octave 1
	note B_, 4
	rest 2
	note B_, 4
	rest 2
	note A_, 4
.mainloop:
	octave 1
	note G_, 4
	note D_, 2
	note G_, 4
	note D_, 2
	note G_, 2
	note A_, 2
	note A#, 4
	note F_, 2
	note A#, 4
	note F_, 2
	note A#, 2
	note B_, 2
	octave 2
	note C_, 4
	octave 1
	note G_, 2
	octave 2
	note C_, 4
	octave 1
	note G_, 2
	octave 2
	note C_, 2
	note E_, 2
	note D_, 2
	octave 1
	note G_, 2
	note B_, 2
	octave 2
	note D_, 4
	octave 1
	note G_, 2
	note A_, 2
	note B_, 2
	octave 2
	note D_, 2
	octave 1
	note B_, 2
	octave 2
	note D_, 2
	note G_, 4
	note D_, 2
	note G_, 2
	note B_, 2
	octave 1
	note A_, 4
	note F_, 2
	note A_, 4
	note F_, 2
	note A_, 2
	note F_, 2
	octave 2
	note C_, 4
	octave 1
	note F_, 2
	octave 2
	note C_, 4
	octave 1
	note F_, 2
	octave 2
	note C_, 2
	octave 1
	note F_, 2
	note B_, 4
	note G_, 2
	note B_, 4
	note G_, 2
	note B_, 2
	note G_, 2
	octave 2
	note D_, 2
	octave 1
	note G_, 2
	note B_, 2
	octave 2
	note G_, 4
	octave 1
	note G_, 2
	note A_, 2
	note B_, 2
	octave 2
	note C_, 4
	octave 1
	note F_, 2
	octave 2
	note C_, 4
	octave 1
	note F_, 2
	octave 2
	note C_, 2
	octave 1
	note F_, 2
	octave 2
	note C_, 4
	octave 1
	note F_, 2
	octave 2
	note C_, 4
	octave 1
	note F_, 2
	octave 2
	note C_, 2
	octave 1
	note F_, 2
	note B_, 4
	note G_, 2
	note B_, 4
	note G_, 2
	note B_, 2
	note G_, 2
	note G_, 4
	note D_, 2
	note G_, 4
	note D_, 2
	note G_, 2
	note D_, 2
	sound_jump .mainloop

HRM_SeviiRoutes_Ch3:
_chan = 3
	vibrato 32, 2, 4
	relative_pitch 5
	note_type 12, 2, 12
	envelope_sequence 0
	octave 4
	note G_, 16
	note A_, 16
.mainloop:
	note_type 8, 2, 12
	envelope_sequence 0
	octave 5
	note D_, 16
	octave 4
	note A_, 4
	octave 5
	note D_, 4
	note A_, 16
	octave 6
	note C_, 4
	octave 5
	note B_, 4
	note_type 12, 2, 12
	envelope_sequence 0
	note G_, 12
	note B_, 4
	note A_, 3
	note G_, 1
	note F#, 12
	note F#, 16
	vibrato 32, 4, 4
	note_type 8, 1, 19
	octave 3
	note G_, 4
	note F#, 4
	note E_, 4
	note C_, 12
	rest 3
	vibrato 32, 2, 4
	note_type 12, 1, 24
	octave 4
	note C_, 1
	note E_, 1
	note G_, 1
	rest 1
	note E_, 1
	note G_, 1
	octave 5
	note C_, 8
	rest 2
	volume_envelope 2, 3
	envelope_sequence 0
	note A_, 4
	note G_, 4
	note F#, 4
	note E_, 2
	note_type 8, 2, 3
	envelope_sequence 0
	note D_, 4
	note E_, 4
	note F#, 4
	note A_, 12
	note_type 8, 1, 14
	octave 4
	note G_, 4
	note F#, 4
	note E_, 4
	octave 5
	note C_, 4
	octave 4
	note B_, 4
	note A_, 4
	octave 5
	note E_, 4
	note D_, 4
	note C_, 4
	note G_, 4
	note F#, 4
	note E_, 4
	note_type 8, 2, 14
	envelope_sequence 0
	note F#, 16
	note D_, 4
	note F#, 4
	note_type 12, 2, 14
	envelope_sequence 0
	note A_, 14
	rest 2
	sound_jump .mainloop

HRM_SeviiRoutes_Ch4:
_chan = 4
	toggle_noise 3
	drum_speed 12
.mainloop:
	drum_note 3, 2
	drum_note 3, 1
	drum_note 3, 1
	drum_note 8, 2
	drum_note 3, 2
	drum_note 3, 1
	drum_note 3, 1
	drum_note 7, 6
	drum_note 3, 2
	drum_note 3, 1
	drum_note 3, 1
	drum_note 8, 2
	drum_note 3, 2
	drum_note 3, 1
	drum_note 3, 1
	drum_note 7, 3
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	sound_jump .mainloop
