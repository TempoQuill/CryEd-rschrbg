HRM_PalletTownFame:
	channel_count 3
	channel 1, HRM_PalletTownFame_Ch1
	channel 2, HRM_PalletTownFame_Ch2
	channel 3, HRM_PalletTownFame_Ch3

HRM_PalletTown:
	channel_count 3
	channel 1, HRM_PalletTown_Ch1
	channel 2, HRM_PalletTown_Ch2
	channel 3, HRM_PalletTown_Ch3

HRM_PalletTownFame_Ch1:
_chan = 1
	tempo 264
	volume 7
	relative_pitch 3
	sound_jump HRM_PalletTown_Ch1_MAIN
HRM_PalletTown_Ch1:
_chan = 1
	tempo 176
	volume 7
HRM_PalletTown_Ch1_MAIN:
	duty_cycle 3
	pitch_offset -1
	old_panning %1110, %1011
.mainloop:
	note_type 12, 10, 2
	sound_call .sub1
	note D_, 2
	note C#, 2
	rest 2
	octave 2
	note D_, 1
	note F#, 1
	note A_, 1
	note D_, 1
	note F#, 1
	note A_, 1
	octave 3
	note D_, 2
	note E_, 2
	note F#, 2
	note D_, 2
	note E_, 2
	note F#, 2
	note G#, 2
	note A_, 2
	note G#, 2
	note F#, 2
	note E_, 2
	note D_, 2
	sound_call .sub1
	note A_, 2
	note G#, 2
	note F#, 4
	note E_, 2
	note D_, 4
	octave 2
	note B_, 2
	octave 3
	note C#, 2
	note D_, 2
	note E_, 2
	note D_, 2
	note C#, 2
	octave 2
	note B_, 2
	note A_, 2
	octave 3
	note C#, 2
	note D_, 2
	note E_, 2
.loop1:
	sound_call .sub2
	sound_call .sub3
	note A_, 2
	note E_, 2
	note C#, 2
	note E_, 2
	note A_, 2
	note E_, 2
	note C#, 2
	note E_, 2
	sound_loop 2, .loop1
.loop2:
	sound_call .sub2
	sound_call .sub2
	sound_loop 2, .loop2
	note F#, 2
	note D_, 2
	octave 2
	note B_, 2
	octave 3
	note D_, 2
	sound_call .sub3
	note F#, 2
	note E_, 2
	note C#, 2
	note E_, 2
	sound_call .sub3
	sound_jump .mainloop

.sub1:
	octave 3
	note C#, 4
	note D_, 2
	note E_, 4
	note A_, 2
	note E_, 2
	note D_, 2
	note C#, 4
	octave 2
	note A_, 2
	octave 3
	note E_, 4
	note E_, 2
	sound_ret

.sub2:
	note F#, 2
	note D_, 2
	octave 2
	note A_, 2
	octave 3
	note D_, 2
	sound_ret

.sub3:
	note G#, 2
	note E_, 2
	octave 2
	note B_, 2
	octave 3
	note E_, 2
	sound_ret

HRM_PalletTownFame_Ch2:
_chan = 2
	relative_pitch 3
HRM_PalletTown_Ch2:
_chan = 2
	duty_cycle 2
.mainloop:
	note_type 12, 10, 3
	sound_call .sub1
	octave 2
	note F#, 4
	note D_, 2
	note F#, 4
	note E_, 2
	note F#, 2
	note G#, 2
	note A_, 2
	note E_, 2
	note C#, 2
	octave 1
	note A_, 2
	octave 2
	note E_, 2
	note D_, 2
	note C#, 2
	octave 1
	note B_, 2
	sound_call .sub1
	octave 2
	note D_, 2
	note F#, 2
	note A_, 2
	note E_, 4
	octave 1
	note B_, 4
	note G#, 2
	note A_, 4
	note B_, 4
	octave 2
	note C#, 2
	octave 1
	note A_, 2
	octave 2
	note E_, 2
	note A_, 2
.loop1:
	volume_envelope 13, 1
	note D_, 2
	octave 1
	note D_, 2
	octave 2
	note D_, 2
	octave 1
	note D_, 2
	octave 2
	note E_, 2
	octave 1
	note E_, 2
	octave 2
	note G#, 2
	octave 1
	note G#, 2
	octave 2
	note A_, 2
	octave 1
	note A_, 2
	octave 2
	note A_, 2
	octave 1
	note A_, 2
	octave 2
	note A_, 2
	note C#, 2
	note E_, 2
	note A_, 2
	sound_loop 2, .loop1
	sound_call .sub2
	octave 2
	note F#, 2
	octave 1
	note B_, 2
	sound_call .sub2
	octave 2
	note D_, 2
	note F#, 2
	note B_, 2
	octave 1
	note E_, 2
	sound_call .sub3
	octave 2
	note D_, 2
	octave 1
	note E_, 2
	sound_call .sub3
	octave 2
	note E_, 2
	octave 1
	note E_, 2
	octave 2
	note E_, 2
	octave 1
	note E_, 2
	sound_jump .mainloop

.sub1:
	octave 1
	note A_, 2
	octave 2
	note E_, 2
	note A_, 2
	note D_, 4
	note B_, 2
	note A_, 2
	note G#, 2
	note A_, 4
	note E_, 2
	note C#, 4
	note C#, 2
	note E_, 2
	octave 1
	note A_, 2
	sound_ret

.sub2:
	octave 2
	note B_, 2
	octave 1
	note B_, 2
	octave 2
	note F#, 2
	octave 1
	note B_, 2
	octave 2
	note D_, 2
	octave 1
	note B_, 2
	sound_ret

.sub3:
	octave 2
	note G#, 2
	octave 1
	note E_, 2
	octave 2
	note F#, 2
	octave 1
	note E_, 2
	sound_ret

HRM_PalletTownFame_Ch3:
_chan = 3
	relative_pitch 3
HRM_PalletTown_Ch3:
_chan = 3
.mainloop:
	vibrato 20, 2, 3
	note_type 6, 1, 20
	octave 5
	note D#, 1
	note E_, 3
	note D_, 4
	note C#, 4
	octave 4
	note B_, 4
	octave 5
	note A_, 2
	rest 2
	note F#, 4
	note G#, 4
	note F#, 4
	note E_, 12
	note C#, 4
	octave 4
	note A_, 2
	rest 2
	note A_, 4
	note B_, 4
	octave 5
	note C#, 4
	note_type 12, 1, 20
	note D_, 9
	rest 1
	octave 4
	note G#, 2
	note A_, 2
	note B_, 2
	octave 5
	note C#, 6
	note D_, 1
	note C#, 1
	octave 4
	note B_, 7
	rest 1
	note_type 6, 1, 20
	octave 5
	note D#, 1
	note E_, 3
	note D_, 4
	note C#, 4
	note E_, 4
	note A_, 2
	rest 2
	note G#, 4
	note G#, 4
	note A_, 4
	note F#, 12
	note E_, 2
	rest 2
	note E_, 14
	rest 2
	note C#, 1
	note D_, 3
	note C#, 4
	octave 4
	note B_, 4
	note A_, 4
	octave 5
	note E_, 4
	note D_, 4
	note C#, 4
	octave 4
	note B_, 4
	note A_, 14
	rest 6
	vibrato 20, 1, 3
	volume_envelope 1, 23
	octave 5
	note A_, 4
	note B_, 4
	octave 6
	note C#, 4
	note D_, 16
	note D#, 1
	note E_, 11
	note D_, 4
	note C#, 14
	rest 6
	octave 5
	note A_, 4
	note B_, 4
	octave 6
	note C#, 4
	note D_, 8
	note D_, 8
	note D#, 1
	note E_, 11
	note D_, 2
	note E_, 2
	note C#, 14
	rest 6
	volume_envelope 1, 19
	note C#, 4
	octave 5
	note B_, 4
	note A_, 4
	note B_, 16
	note F#, 8
	octave 6
	note C_, 1
	note C#, 7
	octave 5
	note B_, 16
	note A_, 8
	note F#, 8
	note G#, 16
	note A_, 8
	octave 6
	note C#, 8
	note C#, 16
	octave 5
	note B_, 16
	sound_jump .mainloop


