Music_MtMoon:
	channel_count 4
	channel 1, Music_MtMoon_Ch1
	channel 2, Music_MtMoon_Ch2
	channel 3, Music_MtMoon_Ch3
	channel 4, Music_MtMoon_Ch4

Music_MtMoon_Ch1:
_chan = 1
	tempo 208
	volume 7
	duty_cycle 2
	pitch_inc_switch
	vibrato 8, 1, 4
	stereo_panning TRUE, FALSE
	note_type 12, 4, 5
	rest 2
	sound_jump Music_MtMoon_Ch2.mainloop

Music_MtMoon_Ch2:
_chan = 2
	vibrato 11, 1, 5
	duty_cycle 2
	note_type 12, 8, 4
	stereo_panning FALSE, TRUE
.mainloop:
	octave 4
	note D#, 6
	note C#, 6
	octave 3
	note B_, 2
	octave 4
	note C#, 2
	note D#, 2
	note G_, 2
	note D#, 2
	note C#, 6
	octave 3
	note B_, 2
	octave 4
	note C#, 2
	note D#, 2
	note G_, 2
	note D#, 2
	note C#, 6
	octave 3
	note B_, 2
	note A#, 2
	note B_, 6
	octave 4
	note C#, 10
	note G#, 6
	note F#, 6
	note E_, 2
	note F#, 2
	note G#, 2
	octave 5
	note C_, 2
	octave 4
	note G#, 2
	note F#, 6
	note E_, 2
	note F#, 2
	note G#, 2
	octave 5
	note C_, 2
	octave 4
	note G#, 2
	note F#, 6
	note E_, 2
	note D#, 2
	note E_, 6
	note F#, 6
	note E_, 4
	sound_jump .mainloop

Music_MtMoon_Ch3:
_chan = 3
	note_type 12, 2, 8
.loop1:
	octave 2
	note B_, 2
	octave 3
	note D#, 2
	note G_, 2
	octave 2
	note B_, 2
	octave 3
	note D#, 2
	note G_, 2
	octave 2
	note B_, 2
	octave 3
	note D#, 2
	sound_loop 3, .loop1
	octave 2
	note B_, 2
	octave 3
	note D#, 2
	note G_, 2
	octave 2
	note B_, 2
	octave 3
	note D#, 2
	note G_, 2
	note D#, 2
	note E_, 2
.loop2:
	note E_, 2
	note G#, 2
	octave 4
	note C_, 2
	octave 3
	note E_, 2
	note G#, 2
	octave 4
	note C_, 2
	octave 3
	note E_, 2
	note G#, 2
	sound_loop 4, .loop2
	sound_jump Music_MtMoon_Ch3

Music_MtMoon_Ch4:
_chan = 4
	toggle_noise 5
	drum_speed 12
.mainloop:
	stereo_panning FALSE, TRUE
	drum_note 11, 4
	drum_note 11, 8
	drum_note 11, 4
	stereo_panning TRUE, FALSE
	drum_note 11, 4
	drum_note 11, 4
	drum_note 11, 4
	stereo_panning FALSE, TRUE
	drum_note 11, 4
	drum_note 11, 4
	stereo_panning TRUE, FALSE
	drum_note 11, 8
	sound_jump .mainloop
