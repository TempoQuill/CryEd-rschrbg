Music_SuccessfulCapture:
	channel_count 3
	channel 1, Music_SuccessfulCapture_Ch1
	channel 2, Music_SuccessfulCapture_Ch2
	channel 3, Music_SuccessfulCapture_Ch3

Music_SuccessfulCapture_Ch1:
_chan = 1
	tempo 126
	volume 7
	duty_cycle 3
	pitch_inc_switch
	note_type 12, 10, 1
	sound_jump Music_WildPokemonVictory_Ch1.body

Music_SuccessfulCapture_Ch2:
_chan = 2
	vibrato 18, 2, 4
	note_type 12, 12, 1
	duty_cycle 2
	sound_jump Music_WildPokemonVictory_Ch2.body

Music_SuccessfulCapture_Ch3:
_chan = 3
	note_type 12, 2, 5
	sound_jump Music_WildPokemonVictory_Ch3.mainloop
