HRM_SSAnne:
	channel_count 3
	channel 1, HRM_SSAnne_Ch1
	channel 2, HRM_SSAnne_Ch2
	channel 3, HRM_SSAnne_Ch3

HRM_SSAnne2:
	channel_count 3
	channel 1, _HRM_SSAnne_Ch1
	channel 2, _HRM_SSAnne_Ch2
	channel 3, _HRM_SSAnne_Ch3

_HRM_SSAnne_Ch1:
_chan = 1
	tempo 180
	volume 7
	duty_cycle 0
	vibrato 8, 3, 4
	transpose 1, 4
	old_panning %1101, %1110
	sound_jump SANTO1_MAIN
HRM_SSAnne_Ch1:
_chan = 1
	tempo 180
	volume 7
	duty_cycle 0
	vibrato 8, 3, 4
	pitch_inc_switch
	transpose 1, 4
	old_panning %1110, %1101
SANTO1_MAIN:
	note_type 12, 11, 4
	rest 12
	octave 3
	note E_, 2
	note F#, 2
	note E_, 4
	note D_, 4
	note C#, 2
	note D_, 2
	note E_, 2
	rest 2
	note E_, 4
	note F#, 2
	note D_, 2
	note E_, 4
	note F#, 4
	note G#, 4
	rest 4
	note E_, 4
	note G#, 4
	rest 4
	note C#, 2
	note E_, 2
	note F#, 4
	note D_, 4
	note E_, 4
	note D_, 4
	note C#, 2
	note D_, 2
	note E_, 2
	rest 2
	note E_, 4
	note F#, 2
	note D_, 2
	note E_, 4
	note F#, 4
	note G#, 4
	note F#, 4
	note E_, 4
	note F#, 4
	rest 4
	note C#, 2
	note E_, 2
	note F#, 4
	note D_, 4
	note E_, 4
	note D_, 4
	note C#, 2
	note D_, 2
	note E_, 2
	rest 2
	note E_, 4
	note F#, 2
	note D_, 2
	note E_, 4
	note F#, 4
	note G#, 4
	note F#, 8
	note G#, 4
	note E_, 4
	rest 4
	note E_, 4
	note F#, 2
	note E_, 2
	note D_, 4
	rest 4
	note D_, 4
	note E_, 4
	note C#, 4
	rest 4
	note C#, 4
	note D_, 2
	note C#, 2
	octave 2
	note B_, 4
	note E_, 4
	note B_, 4
	octave 3
	note D_, 2
	octave 2
	note B_, 2
	note A_, 4
	rest 4
	note A_, 4
	note B_, 2
	note A_, 2
	note G#, 4
	rest 4
	note C#, 4
	note G#, 4
	note A_, 4
	rest 4
	note A_, 4
	note B_, 4
	note B_, 4
	rest 4
	octave 3
	note D_, 8
	sound_jump SANTO1_MAIN
_HRM_SSAnne_Ch2:
_chan = 2
	pitch_inc_switch
HRM_SSAnne_Ch2:
_chan = 2
	duty_cycle 0
	vibrato 23, 6, 5
.mainloop:
	note_type 12, 13, 7
	octave 2
	note C#, 8
	note C_, 8
	octave 1
	note A#, 8
	note G#, 4
	note F#, 4
	note F_, 8
	note F#, 8
	note G#, 4
	rest 4
	octave 2
	note C_, 4
	octave 1
	note G#, 4
	octave 2
	note C#, 8
	note C_, 8
	octave 1
	note A#, 8
	note G#, 4
	note F#, 4
	note F_, 8
	note F#, 8
	note G#, 8
	octave 2
	note C_, 8
	note C#, 8
	note C_, 8
	octave 1
	note A#, 8
	note G#, 4
	note F#, 4
	note F_, 8
	note F#, 8
	note G#, 8
	note G#, 8
	octave 2
	note C#, 16
	note C_, 16
	octave 1
	note A#, 16
	note G#, 16
	note F#, 16
	note F_, 16
	note D#, 16
	note G#, 8
	octave 2
	note C_, 2
	octave 1
	note A#, 2
	note G#, 2
	octave 2
	note C_, 2
	sound_jump .mainloop

HRM_SSAnne_Ch3:
_chan = 3
	vibrato 12, 2, 4
	transpose 0, 4
.mainloop:
	staccato 15
	note_type 12, 1, 25
	octave 3
	note A_, 2
	note E_, 2
	staccato 32
	note A_, 4
	note B_, 4
	octave 4
	note D_, 4
	staccato 10
	note_type 8, 1, 25
	note C#, 2
	note D_, 2
	note C#, 2
	staccato 15
	octave 3
	note B_, 3
	note A_, 3
	staccato 32
	note B_, 6
	note G#, 6
	staccato 15
	note A_, 3
	note B_, 3
	staccato 32
	octave 4
	note C#, 6
	note D_, 6
	staccato 15
	note C#, 3
	octave 3
	note B_, 3
	staccato 32
	octave 4
	note E_, 6
	staccato 15
	note D_, 3
	note C#, 3
	staccato 32
	octave 3
	note B_, 6
	staccato 15
	octave 4
	note C#, 3
	octave 3
	note B_, 3
	note A_, 3
	note E_, 3
	staccato 32
	note A_, 6
	note B_, 6
	octave 4
	note D_, 6
	staccato 10
	note C#, 2
	note D_, 2
	note C#, 2
	staccato 15
	octave 3
	note B_, 3
	note A_, 3
	staccato 32
	note B_, 6
	note G#, 6
	staccato 15
	note A_, 3
	note B_, 3
	staccato 32
	octave 4
	note C#, 6
	note D_, 6
	staccato 15
	note C#, 3
	octave 3
	note B_, 3
	staccato 32
	octave 4
	note E_, 6
	staccato 15
	note D_, 3
	note C#, 3
	staccato 49
	octave 3
	note B_, 12
	staccato 15
	note A_, 3
	note E_, 3
	staccato 32
	note A_, 6
	note B_, 6
	octave 4
	note D_, 6
	staccato 10
	note C#, 2
	note D_, 2
	note C#, 2
	staccato 15
	octave 3
	note B_, 3
	note A_, 3
	staccato 32
	note B_, 6
	note G#, 6
	staccato 15
	note A_, 3
	note B_, 3
	staccato 32
	octave 4
	note C#, 6
	note D_, 6
	staccato 15
	note C#, 3
	octave 3
	note B_, 3
	staccato 32
	octave 4
	note E_, 6
	staccato 15
	note D_, 3
	note C#, 3
	staccato 49
	octave 3
	note B_, 12
	rest 3
	staccato 15
	octave 4
	note C#, 3
	octave 3
	note B_, 3
	octave 4
	note C#, 3
	note C#, 3
	note D_, 3
	note C#, 3
	note D_, 3
	note E_, 3
	octave 3
	note B_, 3
	note G#, 3
	note F#, 3
	note E_, 3
	note F#, 3
	note G#, 3
	note B_, 3
	rest 3
	note A_, 3
	note G#, 3
	note A_, 3
	note A_, 3
	note B_, 3
	note A_, 3
	note B_, 3
	octave 4
	note C#, 3
	octave 3
	note G#, 3
	note F#, 3
	note E_, 3
	note E_, 3
	note F#, 3
	note G#, 3
	note B_, 3
	rest 3
	note F#, 3
	note E_, 3
	note F#, 3
	note F#, 3
	note G#, 3
	note F#, 3
	note G#, 3
	note A_, 3
	note E_, 3
	note C#, 3
	octave 2
	note B_, 3
	note A_, 3
	note B_, 3
	octave 3
	note C#, 3
	note E_, 3
	rest 3
	note F#, 3
	note E_, 3
	note F#, 3
	note F#, 3
	note G#, 3
	note A_, 3
	note B_, 3
	octave 4
	note C#, 3
	note D_, 3
	note C#, 3
	octave 3
	note B_, 3
	octave 4
	note E_, 3
	note D_, 3
	note C#, 3
	octave 3
	note B_, 3
	sound_jump .mainloop
_HRM_SSAnne_Ch3:
_chan = 3
	transpose 1, 4
	vibrato 28, 3, 3
.mainloop:
	note_type 12, 1, 26
	rest 16
	rest 12
	octave 4
	note B_, 2
	note G#, 2
	note A_, 8
	note F#, 8
	note G#, 4
	rest 4
	note B_, 8
	note A_, 8
	note B_, 8
	note A_, 8
	note G#, 8
	note A_, 8
	note F#, 8
	note G#, 8
	note B_, 8
	note A_, 4
	note E_, 4
	note B_, 4
	note E_, 4
	note A_, 4
	note E_, 4
	note G#, 4
	note E_, 4
	note A_, 4
	note E_, 4
	note F#, 4
	note G_, 4
	note G#, 4
	note A_, 4
	octave 5
	note D_, 8
	note C#, 16
	octave 4
	note B_, 16
	note A_, 16
	note G#, 16
	note F#, 16
	note E_, 16
	note F#, 16
	note G#, 8
	note B_, 8
	sound_jump .mainloop


