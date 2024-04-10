Music_BattleTowerLobby: ; MORIKAZU AOKI
; wav
	channel_count 3
	channel 1, Music_BattleTowerLobby_Ch1
	channel 2, Music_BattleTowerLobby_Ch2
	channel 3, Music_BattleTowerLobby_Ch3
	channel 4 ; from placeholder

Music_BattleTowerLobby_Ch1:
_chan = 1
	tempo 145
	volume 7
	stereo_panning FALSE, TRUE
.mainloop:
	note_type 12, 6, 4
	sound_call .sub1
	sound_call .sub3
	sound_call .sub1
	rest 2
	sound_call .sub2
	duty_cycle 1
	vibrato 4, 2, 2
	volume_envelope 5, 2
	note G#, 1
	octave 4
	note C#, 1
	note F_, 1
	note F#, 1
	note G#, 1
	note C#, 1
	note G#, 1
	octave 5
	note C_, 1
	volume_envelope 4, 7
	note C#, 6
	duty_cycle 0
	vibrato 0, 0, 0
	volume_envelope 6, 4
	octave 3
	note C_, 1
	rest 3
	note C#, 1
	rest 1
	note C#, 3
	rest 1
	rest 2
	octave 2
	note G#, 1
	rest 3
	octave 3
	note C_, 1
	rest 3
	note C#, 1
	rest 1
	note C#, 3
	rest 1
	sound_call .sub3
	rest 2
	note C#, 1
	rest 3
	note C#, 1
	rest 3
	note D#, 1
	rest 1
	note D#, 2
	rest 2
	sound_jump .mainloop

.sub1:
	rest 2
	octave 3
	note F_, 1
	rest 3
	note F_, 1
	rest 3
.sub2:
	note D#, 1
	rest 3
	note C#, 1
	rest 1
	sound_ret

.sub3:
	rest 2
	note C#, 1
	rest 3
	note C_, 1
	rest 3
	note C#, 1
	rest 3
	note D#, 1
	rest 1
	sound_ret

Music_BattleTowerLobby_Ch2:
_chan = 2
	note_type 12, 5, 13
	sound_call .sub1
	stereo_panning TRUE, TRUE
	octave 1
	note A#, 2
	stereo_panning TRUE, FALSE
	octave 2
	note G#, 1
	rest 1
	sound_call .sub3
	sound_call .sub1
	stereo_panning TRUE, TRUE
	octave 1
	note A#, 2
	stereo_panning TRUE, FALSE
	octave 2
	note G#, 1
	rest 1
	stereo_panning TRUE, TRUE
	octave 1
	note B_, 2
	stereo_panning TRUE, FALSE
	octave 2
	note G#, 1
	rest 1
	sound_call .sub1
	stereo_panning TRUE, TRUE
	octave 1
	note F#, 2
	stereo_panning TRUE, FALSE
	octave 2
	note A#, 1
	rest 1
	stereo_panning TRUE, TRUE
	octave 1
	note A#, 2
	stereo_panning TRUE, FALSE
	octave 2
	note G#, 1
	rest 1
	stereo_panning TRUE, TRUE
	note C#, 2
	stereo_panning TRUE, FALSE
	note A#, 1
	rest 1
	volume_envelope 4, 15
	note A#, 3
	rest 1
	stereo_panning TRUE, TRUE
	volume_envelope 5, 13
	note C#, 2
	stereo_panning TRUE, FALSE
	note F_, 1
	rest 1
	stereo_panning TRUE, TRUE
	octave 1
	note G#, 2
	stereo_panning TRUE, FALSE
	octave 2
	note F#, 1
	sound_call .sub2
	volume_envelope 4, 15
	note G#, 3
	rest 1
	volume_envelope 5, 13
	sound_call .sub3
	stereo_panning TRUE, TRUE
	octave 2
	note C#, 2
	stereo_panning TRUE, FALSE
	note F_, 1
	rest 1
	stereo_panning TRUE, TRUE
	octave 1
	note A#, 2
	stereo_panning TRUE, FALSE
	octave 2
	note F#, 1
	rest 1
	stereo_panning TRUE, TRUE
	octave 1
	note G#, 2
	stereo_panning TRUE, FALSE
	octave 2
	note G#, 1
	rest 1
	volume_envelope 4, 15
	note G#, 2
	stereo_panning TRUE, TRUE
	volume_envelope 5, 13
	octave 1
	note A#, 1
	octave 2
	note C_, 1
	sound_jump Music_BattleTowerLobby_Ch2

.sub1:
	stereo_panning TRUE, TRUE
	octave 2
	note C#, 2
	stereo_panning TRUE, FALSE
	note G#, 1
	rest 1
	stereo_panning TRUE, TRUE
	octave 1
	note G#, 2
	stereo_panning TRUE, FALSE
	octave 2
	note G#, 1
.sub2:
	rest 1
	stereo_panning TRUE, TRUE
	note C#, 2
	stereo_panning TRUE, FALSE
	note G#, 1
	rest 1
	sound_ret

.sub3:
	stereo_panning TRUE, TRUE
	octave 1
	note G#, 2
	stereo_panning TRUE, FALSE
	octave 2
	note G#, 1
	rest 1
	sound_loop 2, .sub3
	stereo_panning TRUE, TRUE
	octave 1
	note A#, 2
	stereo_panning TRUE, FALSE
	octave 2
	note G#, 1
	rest 1
	stereo_panning TRUE, TRUE
	note C_, 2
	stereo_panning TRUE, FALSE
	note G#, 1
	rest 1
	sound_ret

Music_BattleTowerLobby_Ch3:
_chan = 3
	sound_call .sub1
	note F#, 4
	rest 2
	note C#, 2
	octave 4
	note G#, 6
	rest 2
	stereo_panning FALSE, TRUE
	volume_envelope 3, 6
	note G#, 2
	note A#, 2
	octave 5
	note C_, 2
	note C#, 2
	note D#, 2
	note C#, 2
	note C_, 2
	note D#, 2
	sound_call .sub1
	note F#, 4
	rest 2
	note D#, 2
	note F_, 6
	rest 6
	stereo_panning FALSE, TRUE
	volume_envelope 3, 4
	octave 4
	note F_, 2
	rest 6
	note F_, 2
	rest 2
	stereo_panning TRUE, TRUE
	volume_envelope 1, 13
	octave 5
	note F#, 2
	rest 2
	note F#, 6
	sound_call .sub3
	note F_, 2
	note F#, 4
	volume_envelope 3, 4
	octave 4
	note F#, 2
	rest 2
	note F#, 6
	rest 2
	volume_envelope 1, 13
	octave 5
	note F_, 2
	rest 2
	note F_, 6
	sound_call .sub3
	note F_, 2
	note C#, 4
	volume_envelope 3, 4
	octave 4
	note F_, 2
	rest 2
	note F_, 6
	rest 2
	volume_envelope 1, 13
	octave 5
	note D#, 2
	rest 2
	note D#, 6
	rest 1
	volume_envelope 2, 14
	note F_, 1
	volume_envelope 1, 13
	note F#, 2
	note F_, 2
	note F#, 6
	rest 2
	note C_, 6
	rest 2
	volume_envelope 1, 13
	note C#, 2
	rest 2
	note C#, 6
	sound_call .sub3
	note C#, 2
	note C_, 4
	volume_envelope 3, 4
	octave 4
	note F#, 2
	rest 2
	note F#, 4
	rest 4
	sound_jump Music_BattleTowerLobby_Ch3

.sub1:
	stereo_panning TRUE, TRUE
	note_type 6, 1, 13
	octave 5
	note C#, 2
	rest 2
	note C#, 6
	rest 2
	octave 4
	note G#, 2
	octave 5
	note C#, 2
	note G#, 6
	rest 2
	note F#, 2
	rest 2
	note F_, 2
	rest 2
	sound_ret

.sub3:
	rest 1
	volume_envelope 2, 14
	note D_, 1
	volume_envelope 1, 13
	note D#, 2
	sound_ret
