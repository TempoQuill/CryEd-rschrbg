HRM_FollowMe:
	channel_count 4
	channel 1, HRM_FollowMe_Ch1
	channel 2, HRM_FollowMe_Ch2
	channel 3, HRM_FollowMe_Ch3
	channel 4, HRM_FollowMe_Ch4

HRM_FollowMe_Ch1:
_chan = 1
	tempo 128
	volume 7
	duty_cycle 1
	stereo_panning TRUE, FALSE
	note_type 12, 11, 1
	envelope_sequence 7
	octave 3
	note B_, 2
	note A_, 2
	note G#, 2
	note A_, 2
	note G#, 2
	note F#, 2
	note E_, 2
	note D#, 2
	octave 2
	note B_, 4
	note B_, 1
	octave 3
	note D#, 1
	note E_, 1
	note G#, 1
	note B_, 10
	envelope_sequence 5
	note A_, 2
	note A_, 6
	note A_, 2
	note A_, 6
	note A_, 2
	note A_, 6
	note G#, 2
	note G#, 6
	note A_, 2
	note A_, 6
	note A_, 2
	note A_, 6
	note B_, 4
	note G#, 4
	note A_, 2
	note A_, 4
.mainloop:
	octave 5
	note C#, 2
	octave 4
	note A_, 2
	note A_, 4
	octave 5
	note F#, 2
	octave 4
	note A_, 2
	note A_, 4
	octave 5
	note E_, 2
	octave 4
	note A_, 2
	note A_, 4
	note B_, 2
	note G#, 2
	note G#, 4
	octave 5
	note C#, 2
	octave 4
	note A_, 2
	note A_, 4
	octave 5
	note F#, 2
	octave 4
	note A_, 2
	note A_, 2
	octave 5
	note E_, 2
	note D_, 2
	octave 4
	note B_, 2
	note A_, 2
	note G#, 2
	note A_, 2
	note A_, 2
	note A_, 4
	sound_jump .mainloop

HRM_FollowMe_Ch2:
_chan = 2
	duty_cycle 2
	vibrato 6, 3, 3
	pitch_inc_switch
	note_type 12, 12, 1
	envelope_sequence 5
	octave 4
	note E_, 2
	note D_, 2
	note C#, 2
	note D_, 2
	note C#, 2
	octave 3
	note B_, 2
	note A_, 2
	note G#, 2
	note E_, 4
	note E_, 1
	note G#, 1
	note B_, 1
	octave 4
	note D#, 1
	note E_, 8
	octave 3
	note A_, 2
	octave 4
	note C#, 2
	note E_, 4
	note D_, 2
	note F#, 2
	note A_, 4
	octave 3
	note A_, 2
	octave 4
	note C#, 2
	note E_, 4
	note D_, 2
	note C#, 2
	octave 3
	note B_, 4
	note A_, 2
	octave 4
	note C#, 2
	note E_, 4
	note D_, 2
	note F#, 2
	note A_, 2
	note A_, 2
	note G#, 2
	note E_, 2
	note F#, 2
	note G#, 2
	note A_, 2
	note A_, 2
	note A_, 4
.mainloop:
	octave 3
	note A_, 2
	octave 4
	note C#, 2
	note E_, 3
	note E_, 1
	note D_, 2
	note F#, 2
	note A_, 3
	note A_, 1
	octave 3
	note A_, 2
	octave 4
	note C#, 2
	note E_, 4
	note D_, 1
	note C#, 1
	note C_, 1
	octave 3
	note B_, 1
	note B_, 3
	note G#, 1
	note A_, 2
	octave 4
	note C#, 2
	note E_, 3
	note E_, 1
	note D_, 2
	note F#, 2
	note A_, 3
	note A_, 1
	note G#, 2
	note E_, 1
	note E_, 1
	note F#, 2
	note F#, 1
	note G#, 1
	note A_, 2
	note A_, 2
	note A_, 4
	sound_jump .mainloop

HRM_FollowMe_Ch3:
_chan = 3
	note_type 12, 1, 0
	stereo_panning FALSE, TRUE
.loop1:
	volume_envelope 1, 7
	octave 2
	note E_, 1
	volume_envelope 2, 7
	note E_, 3
	sound_loop 4, .loop1
	volume_envelope 1, 7
	note E_, 1
	volume_envelope 2, 7
	note E_, 5
	pitch_slide 1, 4, E_
	note F_, 3
	octave 4
	note E_, 1
	pitch_slide 1, 2, E_
	note E_, 2
	octave 2
	note E_, 4
	sound_call .sub1
	octave 2
	note E_, 1
	volume_envelope 2, 7
	note E_, 1
	volume_envelope 1, 7
	note A_, 1
	volume_envelope 2, 7
	note A_, 1
	stereo_panning TRUE, FALSE
	volume_envelope 1, 7
	octave 4
	note E_, 1
	rest 1
	note E_, 1
	rest 5
	note D_, 1
	rest 1
	note D_, 1
	rest 1
	stereo_panning FALSE, TRUE
	octave 2
	note G#, 1
	volume_envelope 2, 7
	note G#, 1
	sound_call .sub1
	octave 2
	note F#, 1
	volume_envelope 2, 7
	note F#, 1
	volume_envelope 1, 7
	note G#, 1
	volume_envelope 2, 7
	note G#, 1
	stereo_panning TRUE, FALSE
	volume_envelope 1, 7
	octave 4
	note G#, 1
	rest 1
	stereo_panning FALSE, TRUE
	octave 2
	note E_, 1
	volume_envelope 2, 7
	note E_, 1
	stereo_panning TRUE, FALSE
	volume_envelope 1, 7
	octave 4
	note E_, 1
	rest 1
	stereo_panning FALSE, TRUE
	octave 2
	note A_, 1
	volume_envelope 2, 7
	note A_, 1
	stereo_panning TRUE, FALSE
	volume_envelope 1, 7
	octave 4
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	stereo_panning FALSE, TRUE
	octave 2
	note G#, 1
	volume_envelope 2, 7
	note G#, 1
.mainloop:
	note_type 6, 1, 7
	sound_call .sub2
	rest 2
	stereo_panning FALSE, TRUE
	octave 2
	note A_, 2
	volume_envelope 2, 7
	note A_, 1
	octave 3
	note C#, 1
	sound_call .sub3
	rest 2
	stereo_panning FALSE, TRUE
	octave 2
	note E_, 2
	volume_envelope 2, 7
	note E_, 2
	sound_call .sub2
	stereo_panning FALSE, TRUE
	octave 2
	note B_, 2
	octave 3
	note C#, 2
	note D_, 2
	note E_, 2
	volume_envelope 2, 7
	note E_, 2
	stereo_panning TRUE, FALSE
	volume_envelope 1, 7
	octave 4
	note D_, 1
	note G#, 1
	rest 2
	note D_, 1
	note G#, 1
	rest 2
	stereo_panning FALSE, TRUE
	octave 2
	note G#, 2
	volume_envelope 2, 7
	note G#, 2
	sound_call .sub2
	rest 2
	stereo_panning FALSE, TRUE
	octave 2
	note A_, 2
	octave 3
	note C#, 2
	sound_call .sub3
	stereo_panning FALSE, TRUE
	octave 3
	note F#, 2
	octave 2
	note D_, 2
	volume_envelope 2, 7
	note D_, 2
	volume_envelope 1, 7
	note E_, 2
	volume_envelope 2, 7
	note E_, 2
	stereo_panning TRUE, FALSE
	volume_envelope 1, 7
	octave 4
	note G#, 1
	note B_, 1
	rest 1
	stereo_panning FALSE, TRUE
	volume_envelope 2, 7
	octave 2
	note G_, 1
	volume_envelope 1, 7
	note G#, 2
	volume_envelope 2, 7
	note G#, 2
	stereo_panning TRUE, FALSE
	volume_envelope 1, 7
	octave 4
	note E_, 1
	note G#, 1
	rest 2
	stereo_panning FALSE, TRUE
	sound_call .sub2
	rest 2
	stereo_panning FALSE, TRUE
	octave 2
	note G#, 2
	volume_envelope 2, 7
	note G#, 2
	sound_jump .mainloop

.sub1:
	stereo_panning FALSE, TRUE
	volume_envelope 1, 7
	note A_, 1
	volume_envelope 2, 7
	note A_, 1
	stereo_panning TRUE, FALSE
	volume_envelope 1, 7
	octave 4
	note E_, 1
	rest 1
	note E_, 1
	rest 3
	stereo_panning FALSE, TRUE
	octave 3
	note D_, 1
	volume_envelope 2, 7
	note D_, 1
	stereo_panning TRUE, FALSE
	volume_envelope 1, 7
	octave 4
	note F#, 1
	rest 1
	note F#, 1
	rest 1
	stereo_panning FALSE, TRUE
	volume_envelope 1, 7
	sound_ret

.sub2:
	volume_envelope 1, 7
	octave 2
	note A_, 2
	volume_envelope 2, 7
	note A_, 2
	stereo_panning TRUE, FALSE
	volume_envelope 1, 7
	octave 4
	note E_, 1
	note A_, 1
	rest 2
	note E_, 1
	note A_, 1
	sound_ret

.sub3:
	volume_envelope 1, 7
	note D_, 2
	volume_envelope 2, 7
	note D_, 2
	stereo_panning TRUE, FALSE
	volume_envelope 1, 7
	octave 4
	note F#, 1
	note A_, 1
	rest 2
	note F#, 1
	note A_, 1
	sound_ret

HRM_FollowMe_Ch4:
_chan = 4
	toggle_noise 2
	drum_speed 12
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 14
	drum_speed 6
	drum_note 4, 1
	drum_note 4, 1
	drum_note 3, 1
	drum_note 3, 1
.mainloop:
	drum_note 2, 4
	drum_note 2, 6
	drum_note 2, 2
	drum_note 2, 2
	drum_note 2, 2
	drum_note 2, 4
	drum_note 2, 2
	drum_note 4, 1
	drum_note 4, 1
	drum_note 2, 6
	drum_note 4, 1
	drum_note 4, 1
	drum_note 2, 4
	drum_note 2, 6
	drum_note 2, 2
	drum_note 3, 1
	drum_note 3, 1
	drum_note 2, 2
	drum_note 2, 2
	drum_note 2, 2
	drum_note 4, 1
	drum_note 4, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 2, 6
	drum_note 2, 2
	drum_note 2, 4
	drum_note 2, 4
	drum_note 4, 1
	drum_note 4, 1
	drum_note 2, 2
	drum_note 3, 1
	drum_note 3, 1
	drum_note 2, 2
	drum_note 2, 4
	drum_note 2, 4
	drum_note 2, 2
	drum_note 4, 1
	drum_note 4, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 2, 2
	drum_note 2, 2
	drum_note 2, 4
	drum_note 2, 2
	drum_note 4, 1
	drum_note 4, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 2, 6
	drum_note 4, 1
	drum_note 4, 1
	drum_note 2, 4
	drum_note 2, 4
	drum_note 4, 1
	drum_note 4, 1
	drum_note 3, 1
	drum_note 3, 1
	sound_jump .mainloop


