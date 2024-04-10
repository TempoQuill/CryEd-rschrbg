HRM_CinnabarIsland:
	channel_count 3
	channel 1, HRM_CinnabarIsland_Ch1
	channel 2, HRM_CinnabarIsland_Ch2
	channel 3, HRM_CinnabarIsland_Ch3

HRM_CinnabarIsland_Ch1:
_chan = 1
	tempo 152
	volume 7
	duty_cycle 2
	old_panning %1101, %1110
	vibrato 5, 4, 2
	pitch_offset -1
.mainloop:
	note_type 12, 9, 4
	octave 2
	note B_, 4
	octave 3
	note D_, 4
	note E_, 6
	note C_, 2
	octave 2
	note B_, 4
	octave 3
	note B_, 4
	octave 4
	note C_, 6
	octave 3
	note A_, 2
	note B_, 4
	note G_, 4
	note F#, 4
	note E_, 2
	note F#, 2
	note G_, 4
	note G_, 4
	note F#, 4
	note E_, 4
	note D_, 4
	note E_, 4
	note F#, 6
	note A_, 2
	note G_, 4
	note B_, 4
	octave 4
	note C_, 6
	octave 3
	note A_, 2
	note B_, 4
	note G_, 4
	note F#, 3
	note E_, 1
	note F#, 2
	note A_, 2
	note G_, 4
	octave 4
	note D_, 1
	note E_, 1
	note D_, 4
	note D_, 1
	note E_, 1
	note D_, 4
	octave 3
	note B_, 6
	note G_, 2
	note E_, 2
	note D_, 1
	note F#, 1
	note E_, 2
	note D_, 2
	octave 4
	note C_, 6
	octave 3
	note A_, 2
	note F#, 2
	note E_, 1
	note G_, 1
	note F#, 2
	note E_, 2
	note F#, 6
	note D_, 2
	octave 2
	note A_, 2
	octave 3
	note D_, 2
	note F#, 2
	note A_, 2
	note D_, 4
	note G_, 2
	note B_, 2
	note G_, 2
	note F#, 2
	note E_, 2
	note C_, 2
	sound_jump .mainloop

HRM_CinnabarIsland_Ch2:
_chan = 2
	duty_cycle 1
.mainloop:
	note_type 6, 11, 3
	sound_call .sub1
	sound_call .sub2
	sound_call .sub1
	note G_, 8
	octave 2
	note D_, 4
	octave 1
	note G_, 2
	rest 2
	note A_, 4
	octave 2
	note C_, 2
	rest 2
	note D_, 4
	note F#, 4
	sound_call .sub1
	sound_call .sub2
	sound_call .sub1
	note G_, 8
	octave 2
	note D_, 8
	octave 1
	note B_, 8
	note A_, 4
	note D_, 4
	note G_, 4
	note D_, 4
	note A_, 4
	note D_, 4
	note B_, 8
	note G_, 8
	note A_, 4
	note E_, 4
	note B_, 4
	note E_, 4
	octave 2
	note C_, 8
	octave 1
	note A_, 8
	octave 2
	note D_, 4
	octave 1
	note D_, 4
	note A_, 4
	note D_, 4
	note F#, 4
	note A_, 4
	octave 2
	note D_, 4
	note F#, 4
	note G_, 4
	octave 1
	note G_, 4
	rest 7
	octave 2
	note C#, 1
	note D_, 4
	octave 1
	note A_, 4
	octave 2
	note D_, 4
	note F#, 4
	sound_jump .mainloop

.sub1:
	octave 2
	note G_, 8
	octave 1
	note B_, 4
	note A_, 1
	rest 1
	note G_, 1
	rest 1
	note A_, 4
	octave 2
	note E_, 2
	rest 2
	note D_, 4
	octave 1
	note D_, 2
	rest 2
	sound_ret

.sub2:
	note G_, 8
	note B_, 4
	note D_, 1
	rest 1
	note G_, 1
	rest 1
	note A_, 4
	octave 2
	note E_, 2
	rest 2
	note D_, 4
	note F#, 2
	rest 2
	sound_ret

HRM_CinnabarIsland_Ch3:
_chan = 3
	vibrato 18, 2, 3
.mainloop:
	note_type 6, 1, 13
	sound_call .sub1
	note D_, 2
	rest 5
	volume_envelope 2, 14
	note C_, 1
	volume_envelope 1, 13
	octave 4
	note B_, 14
	rest 2
	note A_, 8
	sound_call .sub1
	note D_, 2
	rest 6
	volume_envelope 1, 1
	octave 4
	note A_, 8
	note G_, 8
	note F#, 7
	octave 5
	note C#, 1
	note D_, 12
	octave 4
	note B_, 4
	note G_, 15
	octave 5
	note D#, 1
	note E_, 12
	note C_, 4
	octave 4
	note A_, 15
	octave 5
	note G#, 1
	note A_, 12
	note F#, 4
	note D_, 2
	rest 2
	note D_, 2
	rest 2
	note D_, 4
	note C_, 4
	octave 4
	note B_, 7
	octave 5
	note C#, 1
	note D_, 8
	octave 4
	note B_, 4
	note A_, 10
	rest 2
	sound_jump .mainloop

.sub1:
	octave 4
	note G_, 12
	note A_, 2
	note B_, 2
	octave 5
	note C_, 12
	note D_, 2
	note E_, 2
	note D_, 2
	rest 5
	volume_envelope 2, 14
	note F#, 1
	volume_envelope 1, 13
	note G_, 8
	note A_, 10
	rest 2
	note G_, 2
	note F#, 2
	note E_, 6
	rest 2
	note D_, 8
	note C_, 6
	octave 4
	note B_, 2
	octave 5
	note C_, 4
	note D_, 2
	note E_, 2
	sound_ret


