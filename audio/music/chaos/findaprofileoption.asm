Music_FindAProfileOption: ; MORIKAZU AOKI
; Mobile adaptor menu theme in the style of Find a Pet
; engine
	channel_count 3
	channel 1, Music_FindAProfileOption_Ch1
	channel 2, Music_FindAProfileOption_Ch2
	channel 3, Music_FindAProfileOption_Ch3

Music_FindAProfileOption_Ch1:
_chan = 1
	tempo 235
	volume 7
	old_panning %1101, %1110
	duty_cycle 2
	note_type 12, 11, 1
	rest 2
.mainloop:
	sound_call .sub1
	sound_call .sub2
	sound_call .sub1
	sound_call .sub3
.loop1:
	rest 2
	octave 4
	note A#, 1
	volume_envelope 10, 2
	octave 5
	note C#, 2
	volume_envelope 11, 1
	octave 4
	note A#, 3
	note A#, 1
	volume_envelope 10, 2
	octave 5
	note C#, 2
	volume_envelope 11, 1
	octave 4
	note A#, 1
	rest 2
	octave 5
	note C_, 1
	volume_envelope 10, 2
	note D#, 2
	volume_envelope 11, 1
	note C_, 3
	note C_, 1
	note D#, 1
	note C_, 1
	octave 4
	note G#, 1
	sound_loop 2, .loop1
	sound_call .sub1
	sound_call .sub2
	sound_call .sub1
	sound_call .sub3
	sound_jump .mainloop

.sub1:
	rest 2
	octave 4
	note G#, 1
	volume_envelope 10, 2
	octave 5
	note C#, 2
	volume_envelope 11, 1
	octave 4
	note G#, 3
	note G#, 1
	volume_envelope 10, 2
	octave 5
	note C_, 2
	volume_envelope 11, 1
	octave 4
	note G#, 1
	sound_ret

.sub2:
	rest 2
	note G#, 1
	octave 5
	note C#, 1
	note D#, 1
	note F_, 1
	volume_envelope 10, 2
	note D#, 2
	volume_envelope 11, 1
	octave 4
	note G#, 1
	octave 5
	note C_, 1
	octave 4
	note G#, 1
	note F#, 1
	sound_ret

.sub3:
	rest 2
	note G#, 1
	octave 5
	note D#, 1
	note C_, 1
	octave 4
	note G#, 1
	octave 5
	note C#, 1
	octave 4
	note F_, 1
	note G#, 1
	octave 5
	note C#, 3
	sound_ret

Music_FindAProfileOption_Ch2:
_chan = 2
	duty_cycle 3
	vibrato 6, 3, 2
	note_type 12, 11, 1
	octave 4
	note C#, 1
	note F_, 1
.mainloop:
	sound_call .sub1
	sound_call .sub2
	sound_call .sub1
	sound_call .sub3
	volume_envelope 13, 3
	note C#, 6
	sound_call .sub4
	volume_envelope 13, 1
	octave 4
	note C_, 1
	note C_, 1
	octave 3
	note A#, 1
	volume_envelope 11, 2
	octave 4
	note C_, 2
	volume_envelope 13, 1
	note C#, 1
	volume_envelope 13, 3
	note D#, 6
	sound_call .sub4
	volume_envelope 13, 1
	octave 4
	note C_, 1
	note C_, 1
	note C#, 1
	volume_envelope 11, 2
	note D#, 2
	volume_envelope 13, 1
	note F_, 1
	volume_envelope 13, 2
	note D#, 4
	volume_envelope 11, 1
	note C#, 1
	note F_, 1
	sound_call .sub1
	sound_call .sub2
	sound_call .sub1
	sound_call .sub3
	volume_envelope 13, 2
	note C#, 4
	volume_envelope 11, 1
	note C#, 1
	note F_, 1
	sound_jump .mainloop

.sub1:
	volume_envelope 13, 1
	note G#, 1
	note G#, 1
	note G#, 1
	volume_envelope 11, 2
	note F#, 2
	volume_envelope 13, 1
	note F_, 1
	volume_envelope 11, 2
	note D#, 2
	volume_envelope 13, 1
	note C_, 1
	volume_envelope 12, 2
	octave 3
	note G#, 3
	sound_ret

.sub2:
	volume_envelope 13, 1
	note A#, 1
	octave 4
	note C_, 1
	note C#, 1
	volume_envelope 11, 2
	note D#, 2
	volume_envelope 13, 1
	note F_, 1
	volume_envelope 13, 2
	note D#, 4
	volume_envelope 11, 1
	note F_, 1
	note F#, 1
	sound_ret

.sub3:
	volume_envelope 13, 1
	note A#, 1
	note A#, 1
	note G#, 1
	volume_envelope 11, 2
	note A#, 2
	volume_envelope 13, 1
	octave 4
	note C_, 1
	sound_ret

.sub4:
	volume_envelope 13, 1
	note F#, 1
	note F#, 1
	note F#, 1
	volume_envelope 11, 2
	note F_, 2
	volume_envelope 13, 1
	note D#, 1
	volume_envelope 11, 2
	note C#, 2
	volume_envelope 13, 1
	note F#, 1
	volume_envelope 12, 2
	octave 3
	note A#, 3
	sound_ret

Music_FindAProfileOption_Ch3:
_chan = 3
	note_type 3, 2, 2
	rest 8
.mainloop:
	sound_call .sub1
	sound_call .sub2
	sound_call .sub1
	sound_call .sub3
.loop1:
	octave 2
	note F#, 5
	sound_call .sub4
	octave 2
	note A#, 5
	sound_call .sub4
	octave 2
	note G#, 5
	rest 3
	octave 4
	note D#, 1
	octave 5
	note C_, 1
	rest 2
	octave 3
	note D#, 5
	rest 3
	octave 4
	note D#, 1
	octave 5
	note C_, 1
	rest 2
	octave 3
	note C_, 5
	rest 3
	octave 4
	note D#, 1
	note G#, 1
	rest 2
	octave 3
	note D#, 5
	rest 3
	octave 4
	note D#, 1
	note G#, 1
	rest 2
	sound_loop 2, .loop1
	sound_call .sub1
	sound_call .sub2
	sound_call .sub1
	sound_call .sub3
	sound_jump .mainloop

.sub1:
	octave 3
	note C#, 5
	rest 3
	octave 4
	note C#, 1
	note F_, 1
	rest 2
	octave 3
	note C_, 5
	rest 3
	octave 4
	note D#, 1
	note F#, 1
	rest 2
	octave 2
	note A#, 5
	rest 3
	octave 4
	note C#, 1
	note F_, 1
	rest 2
	octave 2
	note G#, 5
	rest 3
	octave 4
	note C#, 1
	note G#, 1
	rest 2
	sound_ret

.sub2:
	octave 2
	note F#, 5
	rest 3
	octave 4
	note C#, 1
	note A#, 1
	rest 2
	octave 2
	note G_, 5
	rest 3
	octave 4
	note C#, 1
	note A#, 1
	rest 2
	octave 2
	note G#, 5
	rest 3
	octave 4
	note C#, 1
	note G#, 1
	rest 2
	octave 2
	note G#, 5
	rest 3
	octave 4
	note C_, 1
	note G#, 1
	rest 2
	sound_ret

.sub3:
	octave 2
	note F#, 5
	rest 3
	octave 4
	note C#, 1
	note A#, 1
	rest 2
	octave 2
	note G#, 5
	rest 3
	octave 4
	note C_, 1
	note G#, 1
	rest 2
	octave 3
	note C#, 5
	rest 3
	octave 4
	note C#, 1
	note G#, 1
	rest 2
	octave 3
	note C#, 5
	rest 3
	octave 4
	note C#, 1
	note G#, 1
	rest 2
	sound_ret

.sub4:
	rest 3
	octave 4
	note C#, 1
	note A#, 1
	rest 2
	octave 3
	note C#, 5
	rest 3
	octave 4
	note C#, 1
	note A#, 1
	rest 2
	sound_ret
