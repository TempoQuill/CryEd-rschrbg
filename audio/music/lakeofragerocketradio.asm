Music_LakeOfRageRocketRadio:
	channel_count 3
	channel 1, Music_LakeOfRageRocketRadio_Ch1
	channel 2, Music_LakeOfRageRocketRadio_Ch2
	channel 3, Music_LakeOfRageRocketRadio_Ch3

Music_LakeOfRageRocketRadio_Ch1:
_chan = 1
	tempo 160
	volume 7
	duty_cycle 1
	pitch_offset 4376
	vibrato 0, 15, 0
	stereo_panning TRUE, FALSE
.mainloop:
	note_type 12, 10, 7
	octave 7
	note G_, 4
	note F#, 4
	note G_, 4
	note F#, 4
	rest 16
	sound_jump .mainloop

Music_LakeOfRageRocketRadio_Ch2:
_chan = 2
	duty_cycle 1
	vibrato 19, 14, 8
	note_type 12, 10, 7
	rest 2
	stereo_panning FALSE, TRUE
	sound_jump Music_LakeOfRageRocketRadio_Ch1.mainloop

Music_LakeOfRageRocketRadio_Ch3:
_chan = 3
	note_type 12, 2, 6
	vibrato 16, 4, 4
	rest 4
	sound_jump Music_LakeOfRageRocketRadio_Ch1.mainloop
