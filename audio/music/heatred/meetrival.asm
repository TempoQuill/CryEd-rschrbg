HRM_MeetRival:
	channel_count 4
	channel 1, HRM_MeetRival_Ch1
	channel 2, HRM_MeetRival_Ch2
	channel 3, HRM_MeetRival_Ch3
	channel 4, HRM_MeetRival_Ch4

HRM_RivalLeaving:
	channel_count 4
	channel 1, HRM_RivalLeaving_Ch1
	channel 2, HRM_RivalLeaving_Ch2
	channel 3, HRM_RivalLeaving_Ch3
	channel 4, HRM_RivalLeaving_Ch4

HRM_MeetRivalRoute22::
	channel_count 4
	channel 1, HRM_MeetRivalRoute22_Ch1
	channel 2, HRM_MeetRival_Ch2
	channel 3, HRM_MeetRival_Ch3
	channel 4, HRM_MeetRival_Ch4

HRM_RivalLeavingRoute22::
	channel_count 4
	channel 1, HRM_RivalLeavingRoute22_Ch1
	channel 2, HRM_RivalLeaving_Ch2
	channel 3, HRM_RivalLeaving_Ch3
	channel 4, HRM_RivalLeaving_Ch4

HRM_MeetRivalRoute22_Ch1:
_chan = 1
	tempo 108
	sound_jump HRM_MeetRivalRoute22_Ch1_in
HRM_RivalLeavingRoute22_Ch1:
_chan = 1
	tempo 108
	sound_jump HRM_RivalLeavingRoute22_Ch1_in
HRM_MeetRival_Ch1:
_chan = 1
	tempo 116
HRM_MeetRivalRoute22_Ch1_in:
	volume 7
	duty_cycle 2
	vibrato 6, 3, 4
	pitch_inc_switch
	stereo_panning TRUE, TRUE
	note_type 12, 12, 4
	octave 4
	note B_, 1
	note A#, 1
	note A_, 1
	note G#, 1
	note G_, 2
	note F#, 1
	note F_, 1
	note E_, 1
	note D#, 1
	note D_, 6
	sound_jump HRM_RivalLeavingRoute22_Ch1_in
HRM_RivalLeaving_Ch1:
_chan = 1
	tempo 116
HRM_RivalLeavingRoute22_Ch1_in:
	volume 7
	duty_cycle 2
	vibrato 6, 3, 4
	pitch_inc_switch
	stereo_panning TRUE, TRUE
	note_type 12, 12, 4
	octave 3
	note G_, 1
	rest 3
	note G_, 1
	rest 5
	duty_cycle 0
	volume_envelope 9, 5
	stereo_panning TRUE, FALSE
	note A_, 2
	note G_, 2
	note A_, 2
.mainloop:
	note B_, 4
	note A#, 2
	note A_, 4
	note G_, 2
	octave 4
	note C_, 4
	note D_, 6
	note D_, 4
	note C#, 2
	note C_, 2
	octave 3
	note B_, 2
	octave 4
	note C_, 4
	note E_, 2
	note D_, 4
	note C_, 2
	octave 3
	note B_, 4
	octave 4
	note C_, 6
	note G_, 4
	note G_, 2
	note F#, 2
	note E_, 2
	note D_, 2
	note F#, 2
	octave 3
	note A_, 2
	octave 4
	note D_, 2
	note F#, 2
	octave 3
	note A_, 2
	octave 4
	note D_, 2
	octave 3
	note D_, 2
	octave 4
	note D_, 4
	octave 3
	note D_, 2
	octave 4
	note C_, 4
	octave 3
	note B_, 2
	note A#, 2
	note B_, 2
	octave 4
	note C_, 2
	note F_, 2
	octave 3
	note G_, 2
	octave 4
	note C_, 2
	note F_, 2
	note D#, 2
	note C_, 2
	octave 3
	note A#, 2
	octave 4
	note C_, 1
	rest 5
	octave 3
	note A#, 4
	octave 4
	note C_, 2
	octave 3
	note A#, 2
	octave 4
	note C_, 2
	stereo_panning TRUE, TRUE
	octave 2
	note G_, 2
	note A#, 2
	rest 2
	note G_, 2
	note A#, 2
	note G_, 2
	rest 2
	note A#, 2
	note G_, 2
	octave 3
	note D_, 2
	octave 2
	note G_, 2
	rest 2
	octave 3
	note D_, 2
	stereo_panning TRUE, FALSE
	note A_, 2
	note G_, 2
	note A_, 2
	sound_jump .mainloop

HRM_MeetRival_Ch2:
_chan = 2
	duty_cycle 1
	vibrato 10, 2, 6
	stereo_panning TRUE, FALSE
	note_type 12, 12, 7
	octave 4
	note D_, 2
	rest 2
	note C#, 2
	rest 2
	note C_, 2
	rest 2
	octave 3
	note B_, 2
	rest 2
HRM_RivalLeaving_Ch2:
_chan = 2
	duty_cycle 1
	vibrato 10, 2, 6
	stereo_panning TRUE, FALSE
	note_type 12, 13, 2
	octave 3
	note G_, 1
	rest 3
	note G_, 1
	rest 3
	note G_, 1
	rest 1
	duty_sequence 0
	stereo_panning FALSE, TRUE
	envelope_sequence 4
	octave 4
	note D_, 2
	note F_, 2
	note F#, 2
.mainloop:
	note G_, 4
	note D_, 2
	note F_, 6
	note F#, 4
	envelope_sequence 6
	note G_, 6
	envelope_sequence 4
	note G_, 4
	note G_, 2
	note A#, 2
	note B_, 2
	octave 5
	note C_, 4
	octave 4
	note G_, 2
	note A#, 6
	note B_, 4
	envelope_sequence 6
	octave 5
	note C_, 6
	envelope_sequence 4
	note C_, 4
	note C_, 2
	octave 4
	note B_, 2
	octave 5
	note C_, 2
	envelope_sequence 0
	note D_, 16
	rest 6
	envelope_sequence 4
	note F_, 4
	note D_, 2
	note C_, 2
	note D_, 2
	envelope_sequence 0
	note C_, 16
	duty_cycle 0
	envelope_sequence 6
	octave 3
	note G_, 6
	duty_sequence 0
	envelope_sequence 4
	octave 4
	note A#, 4
	note G_, 2
	note F_, 2
	envelope_sequence 0
	note G_, 16
	rest 2
	stereo_panning TRUE, TRUE
	duty_cycle 0
	volume_envelope 12, 7
	octave 2
	note D_, 1
	rest 5
	note D_, 2
	rest 2
	stereo_panning FALSE, TRUE
	duty_sequence 0
	envelope_sequence 4
	octave 4
	note D_, 2
	note F_, 2
	note F#, 2
	sound_jump .mainloop

HRM_MeetRival_Ch3:
_chan = 3
	vibrato 0, 2, 0
	stereo_panning FALSE, TRUE
	note_type 12, 1, 1
	octave 5
	note D_, 1
	note C#, 1
	note C_, 1
	octave 4
	note B_, 1
	note A#, 2
	note A_, 1
	note G#, 1
	note G_, 1
	note F#, 1
	note F_, 2
	volume_envelope 2, 1
	note F_, 2
	volume_envelope 3, 1
	note F_, 2
HRM_RivalLeaving_Ch3:
_chan = 3
	vibrato 0, 2, 0
	stereo_panning FALSE, TRUE
	note_type 12, 1, 1
	octave 4
	note D_, 1
	rest 3
	note D_, 1
	rest 5
	stereo_panning TRUE, TRUE
	volume_envelope 1, 31
	octave 2
	note A#, 2
	note A_, 2
	note G#, 2
.mainloop:
	octave 2
	note G_, 4
	rest 2
	note D_, 4
	rest 2
	octave 3
	note D_, 1
	note C_, 1
	octave 2
	note F#, 2
	note G_, 2
	rest 4
	note G_, 4
	octave 3
	note G_, 2
	note F_, 2
	note D_, 2
	note C_, 4
	rest 2
	octave 2
	note G_, 4
	rest 2
	octave 3
	note G_, 1
	note F_, 1
	octave 2
	note B_, 2
	octave 3
	note C_, 2
	rest 4
	octave 2
	note D#, 4
	note D#, 2
	note D_, 2
	note C_, 2
	note D_, 1
	rest 1
	note D_, 1
	rest 1
	note D_, 1
	rest 1
	note D_, 1
	rest 1
	note D_, 1
	rest 1
	octave 3
	note D_, 1
	rest 1
	note D_, 1
	note C_, 1
	octave 2
	note A_, 1
	note D_, 1
	note D_, 1
	rest 1
	note D_, 1
	rest 1
	note D_, 1
	rest 1
	note C#, 2
	note D_, 1
	rest 1
	note D_, 1
	rest 1
	octave 3
	note D_, 2
	note C#, 2
	note C_, 1
	rest 1
	octave 2
	note C_, 1
	rest 1
	note B_, 2
	octave 3
	note C_, 1
	rest 1
	note C_, 1
	rest 1
	note C_, 1
	rest 1
	octave 2
	note G_, 2
	note B_, 1
	rest 1
	octave 3
	note C_, 2
	volume_envelope 2, 31
	pitch_slide 1, 2, C_
	note C_, 2
	octave 2
	note C_, 2
	volume_envelope 1, 31
	octave 3
	note C_, 4
	octave 2
	note A#, 2
	note A_, 2
	note G#, 2
	note G_, 4
	note D_, 2
	note F_, 6
	note F#, 4
	note G_, 2
	rest 4
	note G_, 4
	octave 3
	note G_, 2
	octave 2
	note F_, 2
	octave 3
	note F#, 2
	sound_jump .mainloop

HRM_RivalLeaving_Ch4:
_chan = 4
	toggle_noise 3
	sound_jump HRM_RivalLeaving_Ch4_in
HRM_MeetRival_Ch4:
_chan = 4
	toggle_noise 3
	drum_speed 6
	drum_note 9, 8
	drum_note 9, 8
	drum_note 9, 8
	drum_note 9, 8

HRM_RivalLeaving_Ch4_in:
	drum_speed 6
	drum_note 9, 8
	drum_note 9, 8
	drum_note 1, 2
	drum_note 1, 2
	drum_note 11, 2
	drum_note 11, 2
	drum_note 1, 4
	drum_note 1, 4
.mainloop:
	drum_note 11, 4
	drum_note 8, 4
	drum_note 1, 4
	drum_note 11, 4
	drum_note 8, 4
	drum_note 1, 4
	drum_note 11, 4
	drum_note 11, 4
	drum_note 1, 4
	drum_note 11, 4
	drum_note 11, 4
	drum_note 12, 8
	drum_note 4, 1
	drum_note 4, 1
	drum_note 11, 1
	drum_note 11, 1
	drum_note 1, 4
	drum_note 11, 4
	drum_note 11, 4
	drum_note 8, 4
	drum_note 1, 4
	drum_note 11, 4
	drum_note 8, 4
	drum_note 1, 4
	drum_note 11, 4
	drum_note 11, 4
	drum_note 1, 4
	drum_note 11, 4
	drum_note 11, 4
	drum_note 12, 8
	drum_note 4, 1
	drum_note 4, 1
	drum_note 11, 1
	drum_note 11, 1
	drum_note 1, 4
	drum_note 11, 4
	drum_note 11, 4
	drum_note 8, 4
	drum_note 8, 4
	drum_note 11, 4
	drum_note 8, 4
	drum_note 4, 4
	drum_note 1, 4
	drum_note 7, 4
	drum_note 11, 4
	drum_note 8, 4
	drum_note 8, 4
	drum_note 11, 4
	drum_note 8, 4
	drum_note 4, 4
	drum_note 1, 4
	drum_note 7, 4
	drum_note 11, 4
	drum_note 8, 4
	drum_note 8, 4
	drum_note 11, 4
	drum_note 4, 4
	drum_note 4, 4
	drum_note 1, 4
	drum_note 7, 4
	drum_note 1, 4
	drum_note 11, 4
	drum_note 11, 4
	drum_note 12, 8
	drum_note 4, 4
	drum_note 1, 4
	drum_note 11, 4
	drum_note 11, 4
	drum_note 8, 4
	drum_note 1, 4
	drum_note 11, 4
	drum_note 8, 4
	drum_note 11, 4
	drum_note 1, 4
	drum_note 11, 4
	drum_note 1, 4
	drum_note 11, 4
	drum_note 11, 4
	drum_note 12, 8
	drum_note 4, 4
	drum_note 1, 4
	drum_note 11, 4
	sound_jump .mainloop


