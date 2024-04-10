HRM_MtMoon:
	channel_count 3
	channel 1, HRM_MtMoon_Ch1
	channel 2, HRM_MtMoon_Ch2
	channel 3, HRM_MtMoon_Ch3

HRM_MtMoon_Ch1:
_chan = 1
	tempo 164
	volume 7
	stereo_panning FALSE, TRUE
	vibrato 2, 3, 3
	pitch_inc_switch
.mainloop:
	duty_cycle 2
	note_type 12, 0, 0
	envelope_sequence 1
	octave 4
	note D#, 16
	note D#, 16
	note D#, 16
	note D#, 8
	pitch_slide 1, 4, G#
	note D#, 8
	note G#, 16
	note G#, 16
	note G#, 16
	note G#, 8
	pitch_slide 1, 4, D#
	note G#, 8
	note D#, 16
	note D#, 16
	note D#, 16
	note D#, 12
	duty_cycle 1
	stereo_panning TRUE, FALSE
	note_type 6, 4, 9
	octave 1
	note B_, 1
	octave 2
	note C_, 1
	note C#, 1
	note D_, 1
	note D#, 1
	note E_, 1
	volume_envelope 1, 0
	note D#, 1
	note E_, 1
	stereo_panning FALSE, TRUE
	volume_envelope 4, 9
	note C_, 1
	note C#, 1
	note D_, 1
	note D#, 1
	note E_, 1
	note F_, 1
	volume_envelope 1, 0
	note E_, 1
	note F_, 1
	rest 8
	rest 16
	rest 16
	tempo 172
	stereo_panning TRUE, FALSE
	volume_envelope 9, 4
	note E_, 8
	octave 1
	note B_, 8
	tempo 180
	octave 2
	note D#, 8
	octave 1
	note A#, 8
	tempo 188
	octave 2
	note D_, 8
	octave 1
	note A_, 8
	tempo 196
	octave 2
	note C#, 8
	octave 1
	note G#, 8
	tempo 204
	octave 2
	note C_, 8
	octave 1
	note G_, 8
	tempo 212
	note B_, 8
	note F#, 8
	tempo 220
	note A#, 8
	note F_, 8
	tempo 228
	note A_, 8
	volume_envelope 9, 7
	note E_, 12
	tempo 164
	rest 16
	rest 16
	rest 8
	stereo_panning FALSE, TRUE
	volume_envelope 4, 9
	octave 2
	note F_, 1
	note E_, 1
	note D#, 1
	note D_, 1
	note C#, 1
	note C_, 1
	volume_envelope 1, 0
	note C#, 1
	note C_, 1
	stereo_panning TRUE, FALSE
	volume_envelope 4, 9
	note E_, 1
	note D#, 1
	note D_, 1
	note C#, 1
	note C_, 1
	octave 1
	note B_, 1
	duty_cycle 2
	stereo_panning FALSE, TRUE
	note_type 12, 0, 0
	envelope_sequence 1
	octave 4
	note C#, 13
	note C#, 16
	note C#, 16
	note C#, 8
	pitch_slide 1, 3, G_
	note C#, 8
	octave 3
	note G_, 16
	note G_, 16
	note G_, 16
	note G_, 9
	pitch_slide 1, 4, A#
	note G_, 9
	octave 4
	note A_, 14
	note A_, 16
	note A_, 8
	pitch_slide 1, 4, F#
	note A_, 8
	note F#, 16
	note F#, 16
	note F#, 16
	note F#, 12
	volume_envelope 0, 0
	rest 4
	rest 16
	rest 16
	rest 16
	rest 16
	rest 10
	duty_cycle 3
	volume_envelope 3, 7
	octave 2
	note B_, 2
	octave 3
	note D#, 2
	note G_, 2
	octave 2
	note B_, 2
	octave 3
	note D#, 2
	note G_, 2
	octave 2
	note B_, 2
	octave 3
	note D#, 2
	octave 2
	note B_, 2
	octave 3
	note D#, 2
	note G_, 2
	octave 2
	note B_, 2
	octave 3
	note D#, 2
	note G_, 2
	octave 2
	note B_, 2
	octave 3
	note D#, 2
	sound_jump .mainloop

HRM_MtMoon_Ch2:
_chan = 2
	duty_cycle 3
	pitch_offset -1
	vibrato 8, 1, 4
	stereo_panning TRUE, TRUE
.mainloop:
.loop1:
	note_type 12, 9, 4
	octave 2
	note B_, 2
	octave 3
	note D#, 2
	note G_, 2
	octave 2
	note B_, 2
	octave 3
	note D#, 2
	note G_, 2
	octave 2
	note B_, 2
	octave 3
	note D#, 2
	sound_loop 3, .loop1
	octave 2
	note B_, 2
	octave 3
	note D#, 2
	note G_, 2
	octave 2
	note B_, 2
	octave 3
	note D#, 2
	note G_, 2
	note D#, 2
	note E_, 2
.loop2:
	note E_, 2
	note G#, 2
	duty_cycle 2
	octave 4
	note C_, 2
	duty_cycle 3
	octave 3
	note E_, 2
	note G#, 2
	duty_cycle 2
	octave 4
	note C_, 2
	duty_cycle 3
	octave 3
	note E_, 2
	note G#, 2
	sound_loop 4, .loop2
.loop3:
	octave 2
	note B_, 2
	octave 3
	note D#, 2
	note G_, 2
	octave 2
	note B_, 2
	octave 3
	note D#, 2
	note G_, 2
	octave 2
	note B_, 2
	octave 3
	note D#, 2
	sound_loop 4, .loop3
	duty_cycle 2
	octave 4
	note F_, 2
	note F_, 2
	rest 2
	note F_, 2
	note E_, 2
	note E_, 2
	note D#, 2
	note D#, 2
	rest 2
	note D#, 2
	note D_, 2
	note D_, 2
	duty_cycle 3
	stereo_panning FALSE, TRUE
	volume_envelope 10, 3
	octave 1
	note A#, 1
	note B_, 1
	octave 2
	note C_, 1
	note C#, 1
	note D_, 1
	note D#, 1
	note E_, 1
	note F_, 1
	octave 1
	note A#, 1
	note B_, 1
	octave 2
	note C_, 1
	note C#, 1
	note D_, 1
	note D#, 1
	note E_, 1
	note F_, 1
	octave 1
	note A#, 1
	note B_, 1
	octave 2
	note C_, 1
	note C#, 1
	note D_, 1
	note D#, 1
	note E_, 1
	note F_, 1
	octave 1
	note A_, 1
	note A#, 1
	note B_, 1
	octave 2
	note C_, 1
	note C#, 1
	note D_, 1
	note D#, 1
	note E_, 1
	octave 1
	note G#, 1
	note A_, 1
	note A#, 1
	note B_, 1
	octave 2
	note C_, 1
	note C#, 1
	note D_, 1
	note D#, 1
	octave 1
	note G_, 1
	note G#, 1
	note A_, 1
	note A#, 1
	note B_, 1
	octave 2
	note C_, 1
	note C#, 1
	note D_, 1
	octave 1
	note F#, 1
	note G_, 1
	note G#, 1
	note A_, 1
	note A#, 1
	note B_, 1
	octave 2
	note C_, 1
	note C#, 1
	octave 1
	note F_, 1
	note F#, 1
	note G_, 1
	note G#, 1
	note A_, 1
	note A#, 1
	note B_, 1
	octave 2
	note C_, 3
	duty_cycle 2
	stereo_panning TRUE, TRUE
	volume_envelope 9, 4
	octave 4
	note D_, 2
	note D_, 2
	rest 2
	note D_, 2
	note D#, 2
	note D#, 2
	note E_, 2
	note E_, 2
	rest 2
	note E_, 2
	note F_, 2
	note F_, 2
	duty_cycle 3
	octave 3
	note D#, 2
	octave 2
	note B_, 2
	octave 3
	note G_, 2
	note D#, 2
	octave 2
	note B_, 2
	octave 3
	note G_, 2
	note D#, 2
	octave 2
	note B_, 2
	octave 3
	note D#, 2
	octave 2
	note B_, 2
	octave 3
	note G_, 2
	note D#, 2
	octave 2
	note B_, 2
	octave 3
	note G_, 2
	note D#, 2
	octave 2
	note B_, 2
	octave 3
	note D#, 2
	octave 2
	note B_, 2
	octave 3
	note G_, 2
	note D#, 2
	octave 2
	note B_, 2
	octave 3
	note G_, 2
	note D#, 2
	octave 2
	note B_, 2
	octave 3
	note D#, 2
	octave 2
	note B_, 2
	octave 3
	note G_, 2
	note D#, 2
	octave 2
	note B_, 2
	octave 3
	note G_, 2
	note D#, 2
	octave 2
	note B_, 2
	note A_, 2
	note F_, 2
	octave 3
	note C#, 2
	octave 2
	note A_, 2
	note F_, 2
	octave 3
	note C#, 2
	octave 2
	note A_, 2
	note F_, 2
	note A_, 2
	note F_, 2
	octave 3
	note C#, 2
	octave 2
	note A_, 2
	note F_, 2
	octave 3
	note C#, 2
	octave 2
	note A_, 2
	note F_, 2
	note A_, 2
	note F_, 2
	octave 3
	note C#, 2
	octave 2
	note A_, 2
	note F_, 2
	octave 3
	note C#, 2
	octave 2
	note A_, 2
	note F_, 2
	octave 3
	note C#, 2
	octave 2
	note A_, 2
	note F_, 2
	octave 3
	note C#, 2
	octave 2
	note A_, 2
	note F_, 2
	octave 3
	note A_, 2
	note F_, 2
	duty_cycle 2
	octave 4
	note C#, 2
	duty_cycle 3
	octave 3
	note A_, 2
	note F_, 2
	duty_cycle 2
	octave 4
	note C#, 2
	duty_cycle 3
	octave 3
	note A_, 2
	note F_, 2
	note A_, 2
	note F_, 2
	duty_cycle 2
	octave 4
	note C#, 2
	duty_cycle 3
	octave 3
	note A_, 2
	note F_, 2
	duty_cycle 2
	octave 4
	note C#, 2
	duty_cycle 3
	octave 3
	note A_, 2
	note F_, 2
	duty_cycle 2
	octave 4
	note C#, 2
	duty_cycle 3
	octave 3
	note A_, 2
	note F_, 2
	duty_cycle 2
	octave 4
	note C#, 2
	duty_cycle 3
	octave 3
	note A_, 2
	note F_, 2
	duty_cycle 2
	octave 4
	note C#, 2
	duty_cycle 3
	octave 3
	note A_, 2
	note F_, 2
	duty_cycle 2
	octave 4
	note C#, 2
	duty_cycle 3
	octave 3
	note A_, 2
	note F_, 2
	note G#, 2
	note E_, 2
	duty_cycle 2
	octave 4
	note C_, 2
	duty_cycle 3
	octave 3
	note G#, 2
	note E_, 2
	duty_cycle 2
	octave 4
	note C_, 2
	duty_cycle 3
	octave 3
	note G#, 2
	note E_, 2
	note G#, 2
	note E_, 2
	duty_cycle 2
	octave 4
	note C_, 2
	duty_cycle 3
	octave 3
	note G#, 2
	note E_, 2
	duty_cycle 2
	octave 4
	note C_, 2
	duty_cycle 3
	octave 3
	note G#, 2
	note E_, 2
	note G#, 2
	note E_, 2
	duty_cycle 2
	octave 4
	note C_, 2
	duty_cycle 3
	octave 3
	note G#, 2
	note E_, 2
	duty_cycle 2
	octave 4
	note C_, 2
	duty_cycle 3
	octave 3
	note G#, 2
	note E_, 2
	duty_cycle 2
	octave 4
	note C_, 2
	duty_cycle 3
	octave 3
	note G#, 2
	note E_, 2
	duty_cycle 2
	octave 4
	note C_, 2
	duty_cycle 3
	octave 3
	note G#, 2
	note E_, 2
	rest 16
	rest 8
	volume_envelope 9, 4
	note D#, 2
	note G_, 2
	note D#, 2
	volume_envelope 9, 5
	note C#, 6
	volume_envelope 9, 4
	note D#, 2
	note G_, 2
	note D#, 2
	volume_envelope 9, 5
	note C#, 6
	volume_envelope 9, 4
	note D#, 2
	note G_, 2
	note D#, 2
	volume_envelope 9, 5
	note C#, 6
	volume_envelope 9, 4
	note D#, 2
	note G_, 2
	note D#, 2
	volume_envelope 9, 5
	note C#, 6
	volume_envelope 9, 4
	note D#, 2
	octave 2
	note B_, 2
	octave 3
	note D#, 2
	note G_, 2
	octave 2
	note B_, 2
	octave 3
	note D#, 2
	note G_, 2
	octave 2
	note B_, 2
	octave 3
	note D#, 2
	octave 2
	note B_, 2
	octave 3
	note D#, 2
	note G_, 2
	octave 2
	note B_, 2
	octave 3
	note D#, 2
	note G_, 2
	octave 2
	note B_, 2
	octave 3
	note D#, 2
	sound_jump .mainloop

HRM_MtMoon_Ch3:
_chan = 3
	vibrato 11, 1, 5
	transpose 0, 12
	stereo_panning TRUE, TRUE
.mainloop:
	note_type 12, 1, 14
	octave 4
	note D#, 2
	volume_envelope 2, 13
	note D#, 4
	volume_envelope 1, 14
	note C#, 2
	volume_envelope 2, 13
	note C#, 4
	volume_envelope 1, 14
	octave 3
	note B_, 2
	octave 4
	note C#, 2
	note D#, 2
	note G_, 2
	note D#, 2
	note C#, 2
	volume_envelope 2, 13
	note C#, 4
	volume_envelope 1, 14
	octave 3
	note B_, 2
	octave 4
	note C#, 2
	note D#, 2
	note G_, 2
	note D#, 2
	note C#, 2
	volume_envelope 2, 13
	note C#, 4
	volume_envelope 1, 14
	octave 3
	note B_, 2
	note A#, 2
	note B_, 2
	volume_envelope 2, 13
	note B_, 4
	volume_envelope 1, 14
	octave 4
	note C#, 2
	volume_envelope 2, 13
	note C#, 6
	volume_envelope 1, 14
	rest 2
	note G#, 2
	volume_envelope 2, 13
	note G#, 4
	volume_envelope 1, 14
	note F#, 2
	volume_envelope 2, 13
	note F#, 4
	volume_envelope 1, 14
	note E_, 2
	note F#, 2
	note G#, 2
	octave 5
	note C_, 2
	octave 4
	note G#, 2
	note F#, 2
	volume_envelope 2, 13
	note F#, 4
	volume_envelope 1, 14
	note E_, 2
	note F#, 2
	note G#, 2
	octave 5
	note C_, 2
	octave 4
	note G#, 2
	note F#, 2
	volume_envelope 2, 13
	note F#, 4
	volume_envelope 1, 14
	note E_, 2
	note D#, 2
	note E_, 2
	volume_envelope 2, 13
	note E_, 4
	volume_envelope 1, 14
	note F#, 2
	volume_envelope 2, 13
	note F#, 4
	volume_envelope 1, 14
	note E_, 2
	volume_envelope 2, 13
	note E_, 2
	volume_envelope 1, 21
	note D#, 2
	volume_envelope 2, 21
	note D#, 4
	volume_envelope 1, 21
	note C#, 2
	volume_envelope 2, 21
	note C#, 4
	volume_envelope 1, 21
	octave 3
	note B_, 2
	octave 4
	note C#, 2
	note D#, 2
	note G_, 2
	note D#, 2
	note C#, 2
	volume_envelope 2, 21
	note C#, 4
	volume_envelope 1, 21
	octave 3
	note B_, 2
	octave 4
	note C#, 2
	note D#, 2
	note G_, 2
	note D#, 2
	note C#, 2
	volume_envelope 2, 21
	note C#, 4
	volume_envelope 1, 21
	octave 3
	note B_, 2
	note A#, 2
	note B_, 2
	volume_envelope 2, 21
	note B_, 4
	volume_envelope 1, 21
	octave 4
	note C#, 2
	volume_envelope 2, 21
	note C#, 6
	rest 2
	volume_envelope 1, 21
	note G#, 2
	note G#, 2
	rest 2
	note G#, 2
	note A_, 2
	note A_, 2
	note A#, 2
	note A#, 2
	rest 2
	note A#, 2
	note B_, 2
	note B_, 2
	transpose 1, 0
	stereo_panning TRUE, FALSE
	octave 5
	note E_, 4
	octave 4
	note B_, 4
	octave 5
	note D#, 4
	octave 4
	note A#, 4
	octave 5
	note D_, 4
	octave 4
	note A_, 4
	octave 5
	note C#, 4
	octave 4
	note G#, 4
	octave 5
	note C_, 4
	octave 4
	note G_, 4
	note B_, 4
	note F#, 4
	note A#, 4
	note F_, 4
	note A_, 4
	note E_, 4
	volume_envelope 3, 21
	note E_, 2
	transpose 0, 12
	stereo_panning TRUE, TRUE
	volume_envelope 1, 14
	octave 4
	note B_, 2
	note B_, 2
	rest 2
	note B_, 2
	note A#, 2
	note A#, 2
	note A_, 2
	note A_, 2
	rest 2
	note A_, 2
	note G#, 2
	note G#, 2
	volume_envelope 1, 21
	note C#, 2
	volume_envelope 2, 21
	note C#, 6
	rest 2
	volume_envelope 1, 21
	octave 3
	note B_, 2
	volume_envelope 2, 21
	note B_, 4
	volume_envelope 1, 21
	note A#, 2
	note B_, 2
	octave 4
	note D#, 2
	note G_, 2
	note D#, 2
	note C#, 2
	volume_envelope 2, 21
	note C#, 4
	volume_envelope 1, 21
	octave 3
	note B_, 2
	octave 4
	note C#, 2
	note D#, 2
	note G_, 2
	note D#, 2
	note C#, 2
	volume_envelope 2, 21
	note C#, 4
	volume_envelope 1, 21
	octave 3
	note B_, 2
	octave 4
	note C#, 2
	note D#, 2
	volume_envelope 2, 21
	note D#, 4
	volume_envelope 1, 21
	note G_, 2
	volume_envelope 2, 21
	note G_, 4
	volume_envelope 1, 6
	octave 3
	note G_, 2
	volume_envelope 2, 6
	note G_, 6
	rest 2
	volume_envelope 1, 6
	note F_, 2
	volume_envelope 2, 6
	note F_, 4
	volume_envelope 1, 6
	note E_, 2
	note F_, 2
	note A_, 2
	octave 4
	note C#, 2
	octave 3
	note A_, 2
	note G_, 2
	volume_envelope 2, 6
	note G_, 4
	volume_envelope 1, 6
	note F_, 2
	note G_, 2
	note A_, 2
	octave 4
	note C#, 2
	octave 3
	note A_, 2
	note G_, 2
	volume_envelope 2, 6
	note G_, 4
	volume_envelope 1, 6
	note A_, 2
	volume_envelope 2, 6
	note A_, 4
	volume_envelope 1, 6
	octave 4
	note C#, 2
	volume_envelope 2, 6
	note C#, 4
	volume_envelope 1, 21
	note G_, 2
	volume_envelope 2, 21
	note G_, 6
	rest 2
	volume_envelope 1, 21
	note F_, 2
	volume_envelope 2, 21
	note F_, 4
	volume_envelope 1, 21
	note E_, 2
	note F_, 2
	note A_, 2
	octave 5
	note C#, 2
	octave 4
	note A_, 2
	note G_, 2
	volume_envelope 2, 21
	note G_, 4
	volume_envelope 1, 21
	note A_, 2
	octave 5
	note C#, 2
	octave 4
	note A_, 2
	note G_, 2
	volume_envelope 2, 21
	note G_, 4
	volume_envelope 1, 21
	note A_, 2
	volume_envelope 2, 21
	note A_, 4
	volume_envelope 1, 21
	octave 5
	note C#, 2
	volume_envelope 2, 21
	note C#, 4
	volume_envelope 1, 14
	octave 4
	note F#, 2
	volume_envelope 2, 13
	note F#, 6
	rest 2
	volume_envelope 1, 14
	note E_, 2
	volume_envelope 2, 13
	note E_, 4
	volume_envelope 1, 14
	note D#, 2
	note E_, 2
	note G#, 2
	octave 5
	note C_, 2
	octave 4
	note G#, 2
	note F#, 2
	volume_envelope 2, 13
	note F#, 4
	volume_envelope 1, 14
	note E_, 2
	note F#, 2
	note G#, 2
	octave 5
	note C_, 2
	octave 4
	note G#, 2
	note F#, 2
	volume_envelope 2, 13
	note F#, 4
	volume_envelope 1, 14
	note G#, 2
	volume_envelope 2, 13
	note G#, 4
	volume_envelope 1, 14
	octave 5
	note C_, 2
	volume_envelope 2, 13
	note C_, 4
	volume_envelope 1, 21
	octave 3
	note D#, 2
	note G_, 2
	note D#, 2
	note C#, 2
	stereo_panning FALSE, TRUE
	volume_envelope 2, 21
	note C#, 2
	stereo_panning TRUE, FALSE
	volume_envelope 2, 21
	note C#, 2
	stereo_panning TRUE, TRUE
	volume_envelope 1, 6
	note D#, 2
	note G_, 2
	note D#, 2
	note C#, 2
	stereo_panning TRUE, FALSE
	volume_envelope 2, 6
	note C#, 2
	stereo_panning FALSE, TRUE
	volume_envelope 3, 6
	note C#, 2
	stereo_panning TRUE, TRUE
	volume_envelope 1, 6
	octave 2
	note E_, 2
	note G#, 2
	octave 3
	note C_, 2
	note E_, 2
	note G#, 2
	volume_envelope 1, 14
	octave 4
	note C_, 2
	note E_, 2
	note G#, 2
	note C_, 2
	volume_envelope 1, 21
	note E_, 2
	note G#, 2
	note C_, 2
	volume_envelope 1, 14
	note E_, 2
	note G#, 2
	note C_, 2
	volume_envelope 1, 21
	note E_, 2
	note G#, 2
	note C_, 2
	volume_envelope 1, 14
	note E_, 2
	note G#, 2
	note C_, 2
	volume_envelope 1, 21
	note E_, 2
	note G#, 2
	note C_, 2
	note D#, 2
	rest 6
	rest 16
	rest 10
	sound_jump .mainloop


