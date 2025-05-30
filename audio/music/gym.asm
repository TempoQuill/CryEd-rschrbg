Music_Gym:
	channel_count 4
	channel 1, Music_Gym_Ch1
	channel 2, Music_Gym_Ch2
	channel 3, Music_Gym_Ch3
	channel 4, Music_Gym_Ch4

Music_Gym_Ch1:
_chan = 1
	tempo 156
	volume 7
	stereo_panning FALSE, TRUE
	vibrato 18, 2, 4
	duty_cycle 1
	note_type 12, 11, 7
.mainloop:
	octave 4
	note F#, 2
	octave 2
	note A_, 1
	note A_, 1
	note A_, 1
	rest 3
	octave 4
	note E_, 2
	octave 2
	note G_, 1
	note G_, 1
	note G_, 1
	rest 3
	octave 4
	note D_, 2
	octave 2
	note D_, 1
	note D_, 1
	note D_, 1
	rest 1
	octave 3
	note D_, 1
	note D_, 1
	note B_, 1
	note G_, 1
	note D_, 1
	note B_, 1
	octave 4
	note C#, 1
	octave 3
	note A_, 1
	note E_, 1
	octave 4
	note E_, 1
	octave 3
	note A_, 12
	note F#, 2
	note A_, 2
	note G_, 1
	rest 2
	note E_, 1
	note E_, 2
	note C_, 2
	octave 4
	note C_, 2
	octave 3
	note B_, 2
	note A_, 2
	note G_, 2
	note F#, 8
	note A_, 4
	note F#, 2
	note A_, 2
	note E_, 1
	rest 1
	note E_, 1
	note F#, 1
	note G_, 4
	octave 4
	note C_, 2
	octave 3
	note B_, 2
	note A_, 2
	octave 4
	note C_, 2
	note D_, 6
	octave 3
	note A_, 2
	note F#, 2
	note E_, 2
	note G_, 2
	note A_, 2
	note B_, 1
	rest 2
	note G_, 1
	note G_, 4
	octave 4
	note E_, 1
	rest 2
	note C_, 1
	note C_, 2
	octave 3
	note B_, 1
	note A#, 1
	note A_, 12
	note F#, 2
	note A_, 2
	octave 4
	note C_, 2
	octave 3
	note G_, 1
	octave 4
	note C_, 1
	note E_, 2
	note C_, 2
	note E_, 2
	note C_, 1
	note E_, 1
	note G_, 4
	note D_, 6
	octave 3
	note A_, 1
	rest 3
	note A_, 1
	rest 1
	note A_, 1
	octave 4
	note F#, 3
	note G_, 4
	note F#, 4
	note E_, 4
	note C_, 4
	note D_, 1
	rest 1
	note D_, 1
	note E_, 1
	rest 2
	octave 3
	note B_, 4
	note F#, 2
	note D_, 2
	note F#, 2
	note A#, 1
	note A_, 1
	note G_, 1
	note F_, 1
	octave 4
	note D_, 4
	note C_, 1
	octave 3
	note A#, 1
	note A_, 1
	note G_, 1
	octave 4
	note E_, 4
	note F#, 6
	octave 3
	note A_, 1
	rest 3
	note A_, 1
	rest 1
	note A_, 1
	octave 4
	note F#, 3
	note A_, 4
	note G_, 4
	note F#, 4
	note E_, 4
	note D_, 1
	octave 3
	note B_, 1
	note F#, 1
	octave 4
	note E_, 1
	note F#, 4
	note E_, 1
	note C_, 1
	octave 3
	note G_, 1
	octave 4
	note F#, 1
	note G_, 4
	note A_, 1
	note G_, 1
	note F#, 1
	note E_, 1
	note A_, 4
	octave 5
	note D_, 4
	octave 4
	note A_, 1
	note G_, 1
	note F#, 1
	note E_, 1
	sound_jump .mainloop

Music_Gym_Ch2:
_chan = 2
	duty_cycle 1
	stereo_panning TRUE, FALSE
.mainloop:
	note_type 12, 12, 3
	octave 2
	note D_, 2
	octave 1
	note D_, 1
	note D_, 1
	note D_, 2
	note A_, 1
	octave 2
	note F#, 1
	note C_, 2
	octave 1
	note C_, 1
	note C_, 1
	note C_, 2
	octave 2
	note G_, 1
	note E_, 1
	octave 1
	note G_, 2
	octave 1
	note G_, 1
	note G_, 1
	note G_, 2
	octave 1
	note G_, 1
	note G_, 1
	note A_, 4
	octave 2
	note A_, 2
	octave 3
	note C_, 1
	note C#, 1
	sound_call .sub1
	octave 3
	note E_, 2
	note C_, 1
	note C#, 1
	sound_call .sub1
	octave 3
	note C_, 1
	note E_, 1
	note G_, 1
	octave 4
	note C_, 1
	volume_envelope 13, 2
	sound_call .sub2
	octave 1
	note F#, 1
	note B_, 1
	note F#, 2
	octave 2
	note F#, 2
	octave 1
	note B_, 2
	note A#, 4
	note A#, 2
	note F_, 1
	note F_, 1
	note G_, 1
	octave 2
	note C_, 1
	octave 1
	note G_, 2
	octave 2
	note G_, 2
	note E_, 2
	sound_call .sub2
	octave 1
	note G_, 1
	octave 2
	note C_, 1
	octave 1
	note G_, 2
	octave 2
	note E_, 2
	note C_, 2
	note D_, 4
	note D_, 2
	octave 1
	note A_, 1
	note A_, 1
	note A_, 1
	octave 2
	note D_, 1
	octave 1
	note A_, 2
	octave 2
	note F#, 2
	note D_, 2
	sound_jump .mainloop

.sub1:
	octave 3
	note D_, 3
	octave 2
	note D_, 3
	note D_, 2
	note D_, 1
	note D_, 1
	note D_, 2
	octave 3
	note D_, 2
	octave 2
	note A_, 2
	octave 3
	note C_, 3
	octave 2
	note C_, 3
	note C_, 2
	note C_, 1
	note C_, 1
	note C_, 2
	octave 3
	note E_, 2
	note C_, 1
	note C#, 1
	note D_, 3
	octave 2
	note D_, 3
	note D_, 2
	note D_, 1
	note D_, 1
	note D_, 2
	octave 3
	note D_, 2
	octave 2
	note A_, 2
	octave 3
	note C_, 3
	octave 2
	note C_, 3
	note C_, 2
	note C_, 1
	note C_, 1
	note C_, 2
	sound_ret

.sub2:
	octave 2
	note D_, 4
	note D_, 2
	octave 1
	note A_, 1
	note A_, 1
	note A_, 1
	octave 2
	note D_, 1
	octave 1
	note A_, 2
	octave 2
	note A_, 2
	note D_, 2
	note C_, 4
	note C_, 2
	octave 1
	note G_, 1
	note G_, 1
	note G_, 1
	octave 2
	note C_, 1
	octave 1
	note G_, 2
	octave 2
	note G_, 2
	note C_, 2
	octave 1
	note B_, 2
	rest 2
	note B_, 2
	note F#, 1
	note F#, 1
	sound_ret

Music_Gym_Ch3:
_chan = 3
	vibrato 20, 2, 3
	stereo_panning TRUE, TRUE
.mainloop:
	note_type 12, 1, 4
	octave 6
	note D_, 2
	octave 4
	note D_, 1
	note D_, 1
	note D_, 1
	rest 1
	octave 5
	note A_, 1
	octave 6
	note D_, 1
	note C_, 2
	octave 4
	note C_, 1
	note C_, 1
	note C_, 1
	rest 1
	octave 5
	note A_, 1
	octave 6
	note C_, 1
	octave 5
	note B_, 2
	octave 3
	note G_, 1
	note G_, 1
	note G_, 1
	rest 1
	octave 5
	note B_, 1
	note B_, 1
	note B_, 4
	octave 6
	note C#, 4
	octave 5
	note D_, 12
	octave 4
	note A_, 2
	octave 5
	note D_, 2
	note E_, 1
	rest 2
	note C_, 1
	note C_, 4
	note G_, 4
	note E_, 4
	note D_, 12
	octave 4
	note A_, 2
	octave 5
	note D_, 2
	note C_, 1
	rest 1
	note C_, 1
	note D_, 1
	note E_, 8
	rest 4
	note F#, 12
	note E_, 2
	note F#, 2
	note G_, 1
	rest 2
	note E_, 1
	note E_, 4
	octave 6
	note C_, 1
	rest 2
	octave 5
	note G_, 1
	note G_, 4
	note F#, 12
	note E_, 2
	note F#, 2
	note G_, 2
	note E_, 1
	note G_, 1
	octave 6
	note C_, 8
	octave 5
	note B_, 4
	volume_envelope 1, 3
	sound_call .sub1
	rest 2
	note A_, 2
	octave 6
	note D_, 2
	octave 5
	note A_, 2
	octave 6
	note C_, 4
	octave 5
	note A#, 4
	note A_, 4
	note G_, 4
	sound_call .sub1
	note A_, 1
	rest 1
	note A_, 1
	note B_, 1
	octave 6
	note C_, 4
	note D_, 1
	rest 1
	note D_, 1
	note E_, 1
	note F#, 8
	note E_, 4
	sound_jump .mainloop

.sub1:
	octave 5
	note A_, 6
	octave 6
	note D_, 6
	octave 5
	note A_, 4
	octave 6
	note C_, 4
	octave 5
	note B_, 4
	note A_, 4
	note G_, 4
	note F#, 1
	rest 1
	note F#, 1
	note G_, 1
	note A_, 4
	sound_ret

Music_Gym_Ch4:
_chan = 4
	toggle_noise 4
.mainloop:
	drum_speed 12
	drum_note 3, 2
	drum_note 2, 1
	drum_note 2, 1
	drum_note 12, 4
	drum_note 3, 2
	drum_note 2, 1
	drum_note 2, 1
	drum_note 12, 4
	drum_note 3, 2
	drum_note 2, 1
	drum_note 2, 1
	drum_note 3, 2
	drum_note 2, 1
	drum_note 2, 1
	drum_note 11, 1
	drum_note 4, 1
	drum_note 4, 1
	drum_note 4, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_speed 6
.loop1:
	drum_note 3, 6
	drum_note 3, 6
	drum_note 3, 4
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 4
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 3, 6
	drum_note 3, 6
	drum_note 3, 4
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 4
	drum_note 12, 8
	sound_loop 4, .loop1
.loop2:
	drum_note 4, 4
	drum_note 7, 4
	drum_note 3, 4
	drum_note 4, 2
	drum_note 3, 2
	drum_note 4, 2
	drum_note 3, 2
	drum_note 4, 4
	drum_note 3, 4
	drum_note 7, 4
	sound_loop 8, .loop2
	sound_jump .mainloop
