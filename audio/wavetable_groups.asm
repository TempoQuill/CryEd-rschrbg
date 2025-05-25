WaveTableSequences:
; sets of wavetable ID's are read in order
; encountering $fe loops the sequences to the start
; encountering $ff cuts the note off entirely
	dw GenericWaveSequence
	dw GenericWaveSequence
	dw GenericWaveSequence
	dw GenericWaveSequence
	dw GenericWaveSequence
	dw GenericWaveSequence

GenericWaveSequence:
	wav_note RED_POKECENTER
	wav_note RED_PROFESSOR_OAK
	wav_note RED_PALLET_TOWN
	wav_note RED_CELADON_CITY
	wav_note RED_RIVAL_BLUE
	wav_note RED_CELADON_CITY
	wav_note RED_PALLET_TOWN
	wav_note RED_PROFESSOR_OAK
	env_loop
