HRM_GameCorner:
	channel_count 3
	channel 1, HRM_GameCorner_Ch1
	channel 2, HRM_GameCorner_Ch2
	channel 3, HRM_GameCorner_Ch3

HRM_GameCorner_Ch1:
_chan = 1
	tempo 132
	volume 7
	pitch_offset -1
	vibrato 7, 3, 2
	duty_sequence 1
	relative_pitch 1
	stereo_panning TRUE, FALSE
	note_type 12, 8, 5
	octave 3
	note A_, 6
	note G#, 2
	volume_envelope 10, 1
	note F#, 1
	note A_, 1
	octave 4
	note C#, 1
	note E_, 1
	octave 3
	note A_, 1
	octave 4
	note C#, 1
	note E_, 1
	note G#, 1
	volume_envelope 9, 2
	note B_, 2
	volume_envelope 10, 1
	octave 3
	note B_, 1
	note A#, 1
	note B_, 1
	note A#, 1
	note B_, 1
	note A#, 1
	volume_envelope 8, 5
	note B_, 8
.mainloop:
	sound_call .sub1
	volume_envelope 11, 2
	note D#, 2
	note C#, 2
	octave 3
	note B_, 2
	volume_envelope 12, 1
	note A_, 1
	note G#, 1
	volume_envelope 10, 4
	note F#, 2
	note E_, 2
	note D#, 2
	note G_, 2
	note G#, 4
	note F#, 2
	note E_, 2
	note D#, 2
	note C#, 2
	octave 2
	note B_, 2
	note G_, 2
	sound_call .sub1
	volume_envelope 11, 2
	note D#, 2
	note C#, 2
	octave 3
	note B_, 2
	volume_envelope 12, 1
	note A_, 1
	note G#, 1
	volume_envelope 11, 2
	note F#, 2
	note G#, 2
	note A_, 2
	note B_, 2
	note G#, 1
	rest 9
	note D#, 2
	note E_, 2
	note F_, 2
	sound_call .sub2
	note E_, 2
	note F#, 2
	note E_, 2
	volume_envelope 12, 1
	note B_, 1
	octave 4
	note C#, 1
	volume_envelope 11, 2
	octave 3
	note B_, 2
	note A_, 2
	note G#, 2
	note D#, 2
	note E_, 2
	note F_, 2
	sound_call .sub2
	note B_, 2
	note A_, 2
	volume_envelope 10, 4
	note G#, 3
	note A_, 1
	note G#, 2
	note F#, 2
	note E_, 2
	octave 2
	note B_, 2
	note F#, 2
	note G_, 2
	sound_jump .mainloop

.sub1:
	volume_envelope 11, 2
	octave 2
	note G#, 2
	volume_envelope 12, 1
	note E_, 1
	note G#, 1
	note B_, 1
	octave 3
	note E_, 1
	note G#, 1
	note B_, 1
	volume_envelope 11, 2
	octave 2
	note B_, 2
	volume_envelope 12, 1
	note G#, 1
	note B_, 1
	octave 3
	note E_, 1
	note G#, 1
	note B_, 1
	note G#, 1
	volume_envelope 10, 4
	note A_, 2
	note G#, 4
	volume_envelope 12, 1
	octave 2
	note G#, 1
	note B_, 1
	octave 3
	note G#, 1
	note E_, 1
	octave 2
	note B_, 1
	octave 3
	note E_, 1
	note B_, 1
	note G#, 1
	note E_, 1
	note A_, 1
	volume_envelope 11, 2
	note G#, 2
	volume_envelope 12, 1
	note E_, 1
	note G#, 1
	note B_, 1
	octave 4
	note E_, 1
	volume_envelope 11, 2
	octave 3
	note B_, 2
	note A_, 2
	note G#, 2
	volume_envelope 12, 1
	note F#, 1
	note E_, 1
	note D#, 1
	note E_, 1
	volume_envelope 10, 4
	note D#, 4
	volume_envelope 12, 1
	note D#, 1
	note E_, 1
	note D#, 1
	note C#, 1
	volume_envelope 11, 2
	octave 2
	note B_, 2
	note A_, 2
	note B_, 2
	octave 3
	note C#, 2
	octave 2
	note B_, 2
	volume_envelope 12, 1
	note F#, 1
	note B_, 1
	octave 3
	note D#, 1
	note F#, 1
	note B_, 1
	octave 4
	note D#, 1
	volume_envelope 11, 2
	octave 3
	note D#, 2
	volume_envelope 12, 1
	octave 2
	note B_, 1
	octave 3
	note D#, 1
	note F#, 1
	note B_, 1
	octave 4
	note D#, 1
	note F#, 1
	volume_envelope 10, 4
	octave 3
	note B_, 2
	note A_, 4
	volume_envelope 12, 1
	octave 2
	note B_, 1
	octave 3
	note D#, 1
	note F#, 1
	note B_, 1
	volume_envelope 11, 2
	octave 4
	note E_, 2
	note D#, 2
	volume_envelope 12, 1
	note C#, 1
	note D_, 1
	sound_ret

.sub2:
	note F#, 2
	octave 2
	note B_, 2
	octave 3
	note C#, 2
	note D_, 2
	note D#, 2
	note D#, 2
	note E_, 2
	note F#, 2
	note G#, 2
	octave 2
	note B_, 2
	octave 3
	note C#, 2
	note D#, 2
	note E_, 2
	note D#, 2
	note E_, 2
	note F#, 2
	note A_, 2
	note D#, 2
	note F#, 2
	note A_, 2
	note F#, 2
	note D#, 2
	sound_ret

HRM_GameCorner_Ch2:
_chan = 2
	vibrato 16, 3, 4
	duty_cycle 2
	relative_pitch 1
	stereo_panning TRUE, TRUE
	note_type 6, 12, 3
	octave 4
	note C#, 12
	octave 3
	note B_, 4
	note A_, 4
	note G#, 4
	note F#, 4
	note E_, 4
	note F_, 1
	note F#, 3
	stereo_panning FALSE, TRUE
	volume_envelope 6, 3
	octave 4
	note D#, 2
	note D_, 2
	note D#, 2
	note D_, 2
	note D#, 2
	note D_, 2
	note D#, 4
	stereo_panning TRUE, TRUE
	volume_envelope 14, 1
	octave 1
	note B_, 2
	rest 2
	octave 2
	note C#, 2
	rest 2
	note D#, 2
	rest 2
.mainloop:
.loop1:
	duty_cycle 2
	note_type 12, 14, 1
	sound_call CASINO_melo3
	sound_call CASINO_melo3
	sound_loop 3, .loop1
.loop2:
	sound_call CASINO_melo6
	sound_call CASINO_melo6
	sound_loop 4, .loop2
.loop3:
	sound_call CASINO_melo3
	sound_call CASINO_melo3
	sound_loop 4, .loop3
.loop4:
	sound_call CASINO_melo6
	sound_call CASINO_melo6
	sound_loop 4, .loop4
	stereo_panning TRUE, TRUE
	note E_, 1
	rest 1
	volume_envelope 9, 1
	octave 4
	note G#, 1
	note G_, 1
	note G#, 1
	note G_, 1
	note G#, 1
	note G_, 1
	note G#, 2
	duty_cycle 3
	volume_envelope 12, 7
	octave 3
	note B_, 2
	octave 4
	note C#, 2
	note D_, 2
	sound_call .sub1
	note F#, 4
	note D#, 4
	octave 3
	note B_, 4
	octave 4
	note A_, 4
	note G#, 3
	note A_, 1
	note G#, 2
	note F#, 2
	note E_, 2
	octave 3
	note B_, 2
	octave 4
	note C#, 2
	note D_, 2
	sound_call .sub1
	note F#, 4
	note D#, 4
	note A_, 4
	note F#, 4
	note B_, 16
	sound_jump .mainloop

.sub1:
	note D#, 10
	octave 3
	note B_, 2
	octave 4
	note C#, 2
	note D#, 2
	note E_, 10
	octave 3
	note B_, 2
	octave 4
	note C#, 2
	note D#, 2
	sound_ret
CASINO_melo3:
	stereo_panning TRUE, TRUE
	octave 2
	note E_, 1
	rest 1
	stereo_panning FALSE, TRUE
	note B_, 1
	rest 1
	stereo_panning TRUE, TRUE
	octave 1
	note B_, 1
	rest 1
	stereo_panning FALSE, TRUE
	octave 2
	note B_, 1
	rest 1
	sound_ret
CASINO_melo6:
	stereo_panning TRUE, TRUE
	octave 1
	note B_, 1
	rest 1
	stereo_panning FALSE, TRUE
	octave 2
	note B_, 1
	rest 1
	stereo_panning TRUE, TRUE
	note F#, 1
	rest 1
	stereo_panning FALSE, TRUE
	note B_, 1
	rest 1
	sound_ret
	sound_ret

HRM_GameCorner_Ch3:
_chan = 3
	vibrato 10, 2, 3
	relative_pitch 1
	stereo_panning FALSE, TRUE
	note_type 12, 1, 4
	octave 3
	note F#, 4
	rest 2
	note F#, 1
	rest 1
	note A_, 1
	rest 1
	note A_, 1
	rest 1
	octave 4
	note C#, 1
	rest 1
	note E_, 1
	rest 1
	octave 3
	note B_, 1
	rest 15
.mainloop:
	relative_pitch 1
	stereo_panning TRUE, TRUE
	note_type 6, 1, 22
	octave 4
	note E_, 8
	octave 3
	note B_, 8
	octave 4
	note G#, 8
	note E_, 8
	octave 5
	note C_, 1
	note C#, 3
	note_type 12, 1, 22
	octave 4
	note B_, 12
	rest 2
	note_type 6, 1, 22
	octave 5
	note D#, 1
	note E_, 11
	note D#, 4
	note C#, 4
	octave 4
	note B_, 4
	note A_, 4
	note G#, 4
	note_type 12, 1, 22
	note A_, 14
	rest 2
	note_type 6, 1, 22
	note F#, 8
	note D#, 8
	note A_, 8
	note F#, 8
	octave 5
	note D_, 1
	note D#, 3
	note_type 12, 1, 22
	note C#, 12
	rest 2
	note_type 6, 1, 22
	note F_, 1
	note F#, 11
	note E_, 4
	note D#, 4
	note C#, 4
	octave 4
	note B_, 4
	note A#, 4
	note_type 12, 1, 22
	note B_, 14
	rest 2
	note_type 6, 1, 24
	octave 3
	note E_, 8
	octave 2
	note B_, 8
	octave 3
	note G#, 8
	note E_, 8
	octave 4
	note C_, 1
	note C#, 3
	note_type 12, 1, 24
	octave 3
	note B_, 12
	rest 2
	note_type 6, 1, 24
	octave 4
	note D#, 1
	note E_, 11
	note D#, 4
	note C#, 4
	octave 3
	note B_, 4
	note A_, 4
	note G#, 4
	note_type 12, 1, 24
	note A_, 14
	rest 2
	note_type 6, 1, 24
	note F#, 8
	note D#, 8
	note A_, 8
	note F#, 8
	octave 4
	note D_, 1
	note D#, 3
	note_type 12, 1, 24
	note C#, 12
	rest 2
	note_type 6, 1, 24
	note F_, 1
	note F#, 11
	note E_, 4
	note D#, 4
	note E_, 4
	note F#, 4
	note G#, 4
	note E_, 2
	rest 2
	note E_, 2
	note D#, 2
	note E_, 2
	note D#, 2
	note E_, 2
	note D#, 2
	note E_, 2
	rest 2
	relative_pitch 13
	note_type 12, 1, 11
	octave 1
	note G#, 1
	rest 1
	note A_, 1
	rest 1
	note A#, 1
	rest 1
.loop1:
	sound_call CASINO_melo6
	sound_call CASINO_melo6
	sound_call CASINO_melo3
	sound_call CASINO_melo3
	sound_loop 3, .loop1
	sound_call CASINO_melo6
	sound_call CASINO_melo6
	stereo_panning TRUE, TRUE
	note E_, 3
	note D#, 1
	note E_, 2
	octave 1
	note B_, 2
	note G#, 2
	note E_, 2
	note B_, 2
	octave 2
	note D#, 2
	sound_jump .mainloop

.sub1:
	sound_ret


