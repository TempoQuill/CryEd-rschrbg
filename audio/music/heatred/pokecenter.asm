HRM_Pokecenter:
	channel_count 3
	channel 1, HRM_Pokecenter_Ch1
	channel 2, HRM_Pokecenter_Ch2
	channel 3, HRM_Pokecenter_Ch3

HRM_Pokecenter_Ch1:
_chan = 1
	tempo 163
	volume 7
	duty_cycle 2
	vibrato 10, 2, 2
	transpose 0, 15
	stereo_panning %1110, %1101
.mainloop:
	note_type 12, 4, 7
	octave 3
	note F#, 2
	note F_, 2
	note F#, 2
	octave 4
	note D_, 4
	note C#, 2
	octave 3
	note B_, 2
	note A_, 2
	note B_, 2
	note A_, 2
	note G_, 2
	note F#, 2
	note E_, 2
	note F#, 2
	note G_, 2
	note A_, 2
	note A_, 2
	note E_, 2
	note A_, 2
	octave 4
	note C#, 4
	octave 3
	note B_, 2
	note A_, 2
	note G_, 2
	note F#, 2
	note A_, 2
	note B_, 2
	octave 4
	note C#, 2
	note D_, 2
	note C#, 2
	octave 3
	note B_, 2
	note A_, 2
	note F#, 2
	note F_, 2
	note F#, 2
	octave 4
	note D_, 4
	note C#, 2
	octave 3
	note B_, 2
	note A_, 2
	note B_, 2
	note A_, 2
	note G_, 2
	note F#, 2
	note E_, 2
	note F#, 2
	note G_, 2
	note A_, 2
	note A_, 2
	note E_, 2
	note A_, 2
	octave 4
	note C#, 4
	octave 3
	note B_, 2
	note A_, 2
	note G_, 2
	note F#, 2
	note E_, 2
	note D_, 2
	note E_, 2
	note F#, 2
	note G_, 2
	note A_, 2
	note B_, 2
	note F#, 2
	note E_, 2
	note D_, 4
	note E_, 2
	note F#, 2
	note G_, 2
	note A_, 2
	note B_, 2
	note A_, 2
	note G_, 4
	note E_, 2
	note F#, 2
	note G_, 2
	note A_, 2
	note G_, 2
	note F#, 2
	note E_, 4
	note C#, 2
	note D_, 2
	note E_, 2
	note G_, 2
	note F#, 2
	note G_, 2
	note A_, 2
	note B_, 2
	note A_, 8
	octave 4
	note D_, 2
	note C#, 2
	octave 3
	note B_, 4
	note A_, 2
	note B_, 2
	octave 4
	note C#, 2
	note D_, 2
	note E_, 2
	note D_, 2
	note C#, 4
	octave 3
	note B_, 2
	octave 4
	note C#, 2
	note D_, 2
	note E_, 2
	note C#, 2
	octave 3
	note B_, 2
	note A_, 4
	note G_, 2
	note A_, 2
	note B_, 2
	note G_, 2
	note A_, 2
	note G_, 2
	note F#, 2
	note E_, 2
	note D_, 2
	note E_, 2
	note F#, 2
	note G_, 2
	sound_jump .mainloop

HRM_Pokecenter_Ch2:
_chan = 2
	vibrato 8, 2, 5
	transpose 0, 3
.mainloop:
	sound_call .sub1
	duty_cycle 3
	transpose 0, 15
	volume_envelope 5, 7
	octave 3
	note A_, 3
	pitch_slide 1, 3, E_
	note A_, 1
	note E_, 4
	transpose 0, 3
	sound_call .sub2
	note D_, 2
	note F#, 6
	duty_cycle 3
	transpose 0, 15
	volume_envelope 5, 7
	octave 3
	note A_, 3
	pitch_slide 1, 3, E_
	note A_, 1
	note E_, 4
	transpose 0, 3
	sound_call .sub1
	duty_cycle 3
	transpose 0, 15
	volume_envelope 5, 7
	octave 3
	note A_, 3
	pitch_slide 1, 3, E_
	note A_, 1
	note E_, 4
	transpose 0, 3
	sound_call .sub2
	note D_, 8
	duty_cycle 3
	transpose 0, 15
	note_type 12, 5, 7
	octave 3
	note D_, 4
	note E_, 4
	transpose 0, 3
	note_type 12, 7, 7
	octave 4
	note F#, 8
	note A_, 8
	note G_, 2
	note A_, 2
	note G_, 2
	note F#, 2
	note E_, 8
	note C#, 8
	note E_, 8
	note F#, 2
	note G_, 2
	note F#, 2
	note E_, 2
	note D_, 8
	note F#, 8
	note A_, 8
	note G_, 2
	note F#, 2
	note G_, 2
	note A_, 2
	note B_, 8
	note A_, 4
	note G_, 2
	note F#, 2
	note G_, 8
	note F#, 2
	note G_, 2
	note F#, 2
	note E_, 2
	note D_, 8
	sound_jump .mainloop

.sub1:
	duty_cycle 2
	note_type 12, 10, 3
	octave 4
	note D_, 2
	octave 3
	note A_, 2
	octave 4
	note D_, 2
	note A_, 4
	note G_, 4
	note F#, 2
	note E_, 2
	note C#, 6
	sound_ret

.sub2:
	duty_cycle 2
	note_type 12, 10, 3
	octave 4
	note C#, 2
	octave 3
	note A_, 2
	octave 4
	note C#, 2
	note F#, 4
	note E_, 4
	note C#, 2
	sound_ret


HRM_Pokecenter_Ch3:
_chan = 3
	note_type 12, 2, 25
	transpose 1, 3
	staccato 14
.mainloop:
	octave 4
	note D_, 2
	note F#, 2
	note D_, 2
	note F#, 2
	note D_, 2
	note F#, 2
	note G_, 2
	note F#, 2
	sound_call .sub1
	sound_call .sub2
	note F#, 2
	note A_, 2
	note F#, 2
	note A_, 2
	note F#, 2
	note A_, 2
	note G_, 2
	note A_, 2
	note D_, 2
	note F#, 2
	note D_, 2
	note F#, 2
	note D_, 2
	note F#, 2
	note G_, 2
	note F#, 2
	sound_call .sub1
	sound_call .sub2
	note D_, 2
	note F#, 2
	note D_, 2
	note F#, 2
	note D_, 2
	note B_, 2
	note A_, 2
	note G_, 2
	sound_call .sub3
	note G_, 2
	note B_, 2
	note G_, 2
	note B_, 2
	note G_, 2
	note B_, 2
	note G_, 2
	note B_, 2
	note E_, 2
	note G_, 2
	note E_, 2
	note G_, 2
	note E_, 2
	note G_, 2
	note E_, 2
	note G_, 2
	note F#, 2
	note A_, 2
	note F#, 2
	note A_, 2
	note F#, 2
	note A_, 2
	note G#, 2
	note A_, 2
	sound_call .sub3
	note G_, 2
	note B_, 2
	note G_, 2
	note B_, 2
	note G_, 2
	note B_, 2
	note G_, 2
	note B_, 2
	note E_, 2
	note G_, 2
	note E_, 2
	note G_, 2
	note E_, 2
	note G_, 2
	note E_, 2
	note G_, 2
	note F#, 2
	note A_, 2
	note F#, 2
	note A_, 2
	note F#, 2
	note G_, 2
	note F#, 2
	note E_, 2
	sound_jump .mainloop

.sub1:
	note E_, 2
	note A_, 2
	note E_, 2
	note A_, 2
	note E_, 2
	note A_, 2
	note E_, 2
	note A_, 2
	sound_ret

.sub2:
	note E_, 2
	note A_, 2
	note E_, 2
	note A_, 2
	note E_, 2
	note A_, 2
	note G_, 2
	note A_, 2
	sound_ret

.sub3:
	note F#, 2
	note A_, 2
	note F#, 2
	note A_, 2
	note F#, 2
	note A_, 2
	note F#, 2
	note A_, 2
	sound_ret
