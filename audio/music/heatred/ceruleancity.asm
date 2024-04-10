HRM_CeruleanCity:
	channel_count 3
	channel 1, HRM_CeruleanCity_Ch1
	channel 2, HRM_CeruleanCity_Ch2
	channel 3, HRM_CeruleanCity_Ch3
HRM_CeruleanCity_Ch1:
_chan = 1
	tempo 160
	volume 7
	duty_cycle 2
	stereo_panning TRUE, FALSE
	vibrato 8, 2, 2
	note_type 12, 6, 3
	octave 4
	note G#, 2
	note F#, 2
	note E_, 2
	note D#, 2
	note C#, 2
	octave 3
	note B_, 2
	note A_, 2
	note F#, 2
.mainloop:
.loop1:
	note_type 12, 6, 3
	note G#, 2
	note B_, 4
	note B_, 4
	note G#, 1
	note A_, 1
	note B_, 2
	octave 4
	note E_, 2
	note C#, 2
	note E_, 4
	note C#, 1
	note E_, 1
	note D#, 2
	note C#, 2
	octave 3
	note B_, 2
	note A_, 2
	sound_loop 2, .loop1
	note G#, 2
	note B_, 2
	octave 4
	note E_, 2
	sound_call .sub1
	note E_, 2
	note D#, 2
	note C#, 1
	note D#, 1
	note C#, 1
	octave 4
	note B_, 1
	note A_, 2
	note F#, 2
	note D#, 2
	octave 3
	note B_, 2
	note G#, 1
	note G#, 1
	note G#, 1
	note G#, 1
	note G#, 2
	sound_call .sub1
	note E_, 2
	note D#, 2
	note C#, 2
	octave 4
	note B_, 2
	note A_, 2
	note G#, 2
	note F#, 2
	note D#, 2
	octave 3
	note E_, 1
	note D#, 1
	note E_, 1
	note F#, 1
	note G#, 2
	octave 4
	note C#, 2
	stereo_panning FALSE, TRUE
	volume_envelope 10, 4
	note G#, 4
	note E_, 4
	stereo_panning TRUE, FALSE
	volume_envelope 6, 3
	octave 3
	note G#, 1
	note E_, 1
	note G#, 1
	note B_, 1
	octave 4
	note E_, 2
	note G#, 2
	stereo_panning FALSE, TRUE
	volume_envelope 10, 4
	note B_, 4
	note F#, 4
	stereo_panning TRUE, FALSE
	volume_envelope 6, 3
	octave 3
	note A_, 1
	note G#, 1
	note A_, 1
	note B_, 1
	octave 4
	note C#, 2
	note C#, 1
	octave 3
	note B_, 1
	octave 4
	note C#, 1
	note D#, 1
	note E_, 2
	note E_, 1
	note D#, 1
	note E_, 1
	note C#, 1
	note D#, 1
	note F#, 1
	note D#, 1
	note C#, 1
	octave 3
	note B_, 1
	octave 4
	note C#, 1
	note D#, 1
	note F#, 1
	note D#, 2
	octave 3
	note B_, 1
	octave 4
	note C#, 1
	octave 3
	note B_, 2
	note A_, 2
	note G#, 2
	note B_, 2
	note G#, 2
	note B_, 2
	note G#, 2
	note B_, 2
	note A_, 2
	octave 4
	note C#, 2
	octave 4
	note E_, 2
	octave 3
	note B_, 2
	octave 4
	note F#, 2
	octave 3
	note B_, 2
	octave 4
	note G#, 2
	octave 3
	note B_, 2
	octave 4
	note C#, 2
	octave 3
	note B_, 2
	octave 4
	note D#, 2
	octave 3
	note B_, 2
	octave 4
	note G#, 2
	octave 3
	note B_, 2
	octave 4
	note D#, 2
	octave 3
	note B_, 2
	octave 4
	note B_, 2
	octave 3
	note B_, 2
	octave 4
	note A_, 2
	note C#, 2
	note F#, 2
	note E_, 1
	note F#, 1
	note_type 6, 6, 3
	note G_, 1
	note G#, 3
	note F#, 4
	note E_, 4
	note F#, 2
	octave 3
	note B_, 2
	sound_jump .mainloop

.sub1:
	octave 4
	note G#, 1
	note E_, 1
	note A_, 2
	note B_, 2
	octave 5
	note C#, 1
	note D#, 1
	note E_, 1
	note F#, 1
	sound_ret

HRM_CeruleanCity_Ch2:
_chan = 2
	duty_cycle 2
	stereo_panning FALSE, TRUE
	note_type 12, 13, 1
	octave 5
	note E_, 2
	note D#, 2
	note C#, 2
	octave 4
	note B_, 2
	note A_, 2
	note B_, 2
	octave 5
	note C#, 2
	note D#, 2
	note E_, 2
	duty_cycle 3
	stereo_panning TRUE, FALSE
	sound_call .sub1
.mainloop:
	sound_call .sub3
	duty_cycle 3
	octave 3
	note F#, 2
	note D#, 2
	note E_, 2
	sound_call .sub1
	sound_call .sub4
	stereo_panning TRUE, FALSE
	duty_cycle 3
	octave 3
	note G#, 2
	note F#, 2
	note E_, 2
	note G#, 4
	sound_call .sub2
	sound_call .sub3
	octave 3
	note F#, 2
	note D#, 2
	octave 2
	note B_, 1
	note B_, 1
	note B_, 1
	note B_, 1
	note B_, 2
	sound_call .sub2
	sound_call .sub4
	octave 3
	note A_, 2
	note F#, 2
	note C#, 1
	octave 2
	note B_, 1
	octave 3
	note C#, 1
	note D#, 1
	note E_, 4
	volume_envelope 8, 4
	vibrato 12, 3, 3
	stereo_panning TRUE, FALSE
	note B_, 4
	note G#, 4
	volume_envelope 13, 1
	vibrato 0, 0, 0
	stereo_panning FALSE, TRUE
	note D#, 1
	note C#, 1
	note D#, 1
	note E_, 1
	note F#, 4
	volume_envelope 8, 4
	vibrato 12, 3, 3
	stereo_panning TRUE, FALSE
	octave 4
	note G#, 2
	note E_, 2
	octave 3
	note B_, 2
	note A_, 1
	note G#, 1
	volume_envelope 13, 1
	vibrato 0, 0, 0
	stereo_panning FALSE, TRUE
	note C#, 1
	octave 2
	note B_, 1
	octave 3
	note C#, 1
	note D#, 1
	note E_, 2
	note E_, 1
	note D#, 1
	note E_, 1
	note F#, 1
	note G#, 2
	note G#, 1
	note A_, 1
	note G#, 1
	note A_, 1
	note B_, 1
	note F#, 1
	note D#, 1
	note C#, 1
	octave 2
	note B_, 1
	octave 3
	note C#, 1
	note D#, 1
	note F#, 1
	note B_, 4
	note B_, 4
	duty_cycle 1
	volume_envelope 10, 2
	vibrato 12, 4, 3
	stereo_panning TRUE, TRUE
	octave 1
	note E_, 1
	rest 1
	octave 2
	note E_, 2
	rest 2
	note E_, 2
	rest 2
	note E_, 2
	octave 1
	note E_, 1
	rest 1
	octave 2
	note E_, 2
	octave 1
	note F#, 1
	rest 1
	octave 2
	note E_, 2
	rest 2
	note E_, 2
	rest 2
	note E_, 2
	octave 1
	note F#, 1
	rest 1
	octave 2
	note E_, 2
	octave 1
	note G#, 1
	rest 1
	octave 2
	note G#, 2
	rest 2
	note G#, 1
	rest 1
	note D#, 1
	octave 1
	note G#, 1
	note B_, 1
	octave 2
	note D#, 1
	note G#, 1
	note B_, 1
	octave 3
	note D#, 1
	octave 2
	note B_, 1
	octave 1
	note A_, 1
	rest 1
	octave 2
	note A_, 2
	octave 1
	note A_, 1
	octave 2
	note E_, 1
	note G#, 1
	note A_, 1
	octave 1
	note B_, 1
	rest 1
	octave 2
	note B_, 1
	rest 1
	octave 1
	note B_, 1
	octave 2
	note F#, 1
	note A_, 1
	note B_, 1
	note E_, 1
	rest 1
	duty_cycle 3
	volume_envelope 13, 1
	vibrato 0, 0, 0
	stereo_panning TRUE, FALSE
	sound_call .sub1
	sound_jump .mainloop

.sub1:
	octave 3
	note G#, 4
	duty_cycle 1
.sub2:
	volume_envelope 10, 3
	vibrato 12, 3, 3
	stereo_panning FALSE, TRUE
	octave 4
	note E_, 1
	octave 3
	note B_, 1
	octave 4
	note C#, 2
	note D#, 2
	note E_, 1
	note F#, 1
	note G#, 1
	note A_, 1
	sound_ret

.sub3:
	note G#, 6
	note A_, 1
	note G#, 1
	note F#, 4
	volume_envelope 13, 1
	vibrato 0, 0, 0
	stereo_panning TRUE, FALSE
	sound_ret

.sub4:
	note G#, 6
	note E_, 1
	note G#, 1
	note B_, 4
	volume_envelope 13, 1
	vibrato 0, 0, 0
	sound_ret

HRM_CeruleanCity_Ch3:
_chan = 3
	vibrato 12, 2, 3
	stereo_panning TRUE, TRUE
	note_type 6, 1, 6
	rest 16
	rest 8
	octave 2
	note B_, 2
	octave 3
	note D#, 2
	note F#, 2
	note B_, 2
.mainloop:
	sound_call .sub1
	sound_call .sub3
	sound_call .sub1
	sound_call .sub4
	sound_call .sub1
	sound_call .sub3
.loop1:
	note E_, 1
	rest 1
	sound_loop 4, .loop1
	note E_, 1
	rest 3
	sound_call .sub2
	sound_call .sub4
.loop2:
	octave 2
	note C#, 1
	rest 1
	sound_loop 4, .loop2
	octave 3
	note C#, 2
	rest 2
	note G#, 2
	rest 2
	stereo_panning TRUE, FALSE
	volume_envelope 2, 6
	octave 4
	note C#, 2
	note E_, 2
	note G#, 2
	octave 5
	note C#, 2
	octave 4
	note E_, 2
	note G#, 2
	octave 5
	note C#, 2
	note E_, 2
.loop3:
	stereo_panning TRUE, TRUE
	volume_envelope 1, 6
	octave 2
	note G#, 1
	rest 1
	sound_loop 4, .loop3
	octave 3
	note G#, 2
	rest 2
	note B_, 2
	rest 2
	stereo_panning TRUE, FALSE
	volume_envelope 2, 6
	octave 4
	note E_, 2
	note G#, 2
	note B_, 2
	octave 5
	note E_, 2
	octave 4
	note G#, 2
	note B_, 2
	octave 5
	note E_, 2
	note G#, 2
	stereo_panning TRUE, TRUE
	volume_envelope 1, 6
	octave 2
	note A_, 2
	rest 2
	octave 3
	note A_, 2
	rest 2
	octave 2
	note A_, 2
	octave 3
	note C#, 2
	note E_, 2
	note A_, 2
	note C#, 2
	rest 2
	note A_, 2
	rest 2
	note C#, 2
	note A_, 2
	octave 4
	note C#, 2
	note E_, 2
	note D#, 2
	octave 3
	note F#, 2
	octave 2
	note B_, 2
	rest 2
	note B_, 2
	rest 2
	octave 3
	note B_, 2
	rest 6
	stereo_panning FALSE, TRUE
	volume_envelope 1, 10
	octave 5
	note G#, 2
	note A_, 2
	note G#, 4
	note F#, 4
	note E_, 14
	rest 2
	octave 4
	note B_, 8
	octave 5
	note F#, 6
	rest 2
	note F#, 1
	note G_, 1
	note G#, 6
	note A_, 8
	note B_, 14
	rest 2
	note B_, 14
	rest 2
	note G#, 8
	octave 6
	note C#, 1
	note D_, 1
	note D#, 6
	note C#, 8
	note D#, 6
	rest 2
	note D#, 1
	note E_, 3
	note D#, 4
	note C#, 4
	note D#, 4
	sound_jump .mainloop

.sub1:
	note E_, 2
	rest 2
	stereo_panning TRUE, TRUE
	volume_envelope 1, 6
	octave 2
	note E_, 2
	rest 6
.sub2:
	octave 2
	note E_, 2
	rest 6
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	note G#, 2
	rest 2
	note B_, 2
	octave 3
	note E_, 2
	sound_ret

.sub3:
	octave 2
	note A_, 2
	rest 2
	octave 3
	note A_, 2
	rest 6
	octave 2
	note A_, 1
	rest 1
	octave 3
	note E_, 1
	rest 1
	octave 2
	note B_, 2
	octave 3
	note D#, 2
	note F#, 2
	note B_, 2
	note F#, 2
	rest 2
	note D#, 2
	rest 2
	sound_ret

.sub4:
	octave 2
	note A_, 2
	rest 2
	octave 3
	note A_, 2
	rest 6
	octave 2
	note A_, 1
	rest 1
	octave 3
	note E_, 1
	rest 1
	octave 2
	note B_, 2
	rest 2
	octave 3
	note F#, 2
	rest 2
	octave 2
	note B_, 2
	octave 3
	note D#, 2
	note F#, 2
	note B_, 2
	sound_ret


