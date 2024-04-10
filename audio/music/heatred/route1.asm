HRM_Route1:
	channel_count 4
	channel 1, HRM_Route1_Ch1
	channel 2, HRM_Route1_Ch2
	channel 3, HRM_Route1_Ch3
	channel 4, HRM_Route1_Ch4

HRM_Route1_Ch1:
_chan = 1
	tempo 168
	volume 7
	fifths_pluck_on
	duty_cycle 0
	stereo_panning TRUE, FALSE
	note_type 12, 10, 2
	rest 2
.mainloop:
	rest 2
	octave 3
	note D_, 2
	note D_, 4
	rest 2
	note D_, 2
	note D_, 4
	rest 2
	note D_, 2
	note D_, 1
	note C#, 1
	octave 2
	note B_, 1
	octave 3
	note C#, 1
	octave 2
	note A_, 2
	note A_, 2
	note A_, 4
	rest 2
	octave 3
	note C#, 2
	note C#, 4
	rest 2
	note C#, 2
	note C#, 4
	octave 2
	note A_, 2
	octave 3
	note C#, 2
	octave 2
	note B_, 2
	octave 3
	note C#, 2
	note D_, 2
	octave 2
	note A_, 2
	note A_, 4
	rest 2
	octave 3
	note D_, 2
	note D_, 4
	rest 2
	note D_, 2
	note D_, 4
	rest 2
	note D_, 2
	note D_, 1
	note E_, 1
	note D_, 1
	note C#, 1
	octave 2
	note B_, 2
	note A_, 2
	note A_, 4
	rest 2
	octave 3
	note C#, 2
	note C#, 4
	rest 2
	octave 2
	note A_, 2
	octave 3
	note E_, 2
	octave 2
	note A_, 2
	octave 3
	note G_, 4
	note E_, 4
	note F#, 2
	octave 2
	note A_, 2
	note A_, 4
	rest 2
	note A_, 2
	note F#, 2
	note A_, 2
	rest 2
	note B_, 2
	octave 3
	note C#, 2
	octave 2
	note B_, 2
	rest 2
	note A_, 2
	note F#, 2
	note A_, 2
	rest 2
	note G_, 2
	note E_, 2
	note C#, 2
	rest 2
	note A_, 2
	octave 3
	note D_, 2
	octave 2
	note A_, 2
	rest 2
	note B_, 2
	note G_, 2
	note B_, 2
	rest 2
	octave 3
	note D_, 2
	note E_, 2
	note C#, 2
	note D_, 2
	note D_, 1
	rest 1
	note D_, 1
	rest 3
	sound_jump .mainloop

HRM_Route1_Ch2:
_chan = 2
	duty_cycle 3
	vibrato 11, 6, 3
	stereo_panning TRUE, TRUE
	note_type 12, 12, 3
	rest 2
.mainloop:
	volume_envelope 13, 3
	sound_call .sub1
	octave 2
	note C#, 4
	octave 1
	note A_, 4
	note B_, 4
	octave 2
	note C_, 4
	note C#, 4
	octave 1
	note A_, 4
	octave 2
	note D_, 4
	octave 1
	note A_, 4
	sound_call .sub1
	octave 2
	note C#, 4
	octave 1
	note B_, 4
	note A_, 4
	note B_, 4
	octave 2
	note C#, 4
	octave 1
	note A_, 4
	octave 2
	note D_, 4
	octave 1
	note A_, 4
	volume_envelope 13, 4
	octave 2
	note D_, 8
	octave 1
	note G_, 8
	note A_, 8
	octave 2
	note C#, 8
	octave 2
	note D_, 8
	octave 1
	note G_, 8
	note A_, 8
	octave 2
	note D_, 6
	rest 2
	sound_jump .mainloop

.sub1:
	octave 2
	note D_, 4
	note C#, 4
	octave 1
	note B_, 4
	note A_, 4
	octave 2
	note D_, 4
	octave 1
	note A_, 4
	note B_, 4
	note A_, 4
	sound_ret

HRM_Route1_Ch3:
_chan = 3
	stereo_panning TRUE, TRUE
	note_type 6, 1, 25
	octave 4
	note D_, 2
	note E_, 2
.mainloop:
	sound_call .sub1
	sound_call .sub2
	note D_, 4
	rest 4
	volume_envelope 2, 25
	note F#, 2
	rest 2
	volume_envelope 1, 25
	note D_, 2
	note E_, 2
	sound_call .sub1
	note E_, 2
	rest 2
	note G_, 2
	rest 2
	note F#, 2
	rest 2
	note E_, 2
	rest 2
	note D_, 2
	rest 2
	note C#, 2
	rest 2
	octave 3
	note B_, 2
	rest 2
	octave 4
	note C#, 2
	rest 2
	note B_, 6
	rest 2
	octave 3
	note B_, 1
	octave 4
	note C#, 1
	octave 3
	note B_, 2
	note A_, 2
	octave 4
	note C#, 2
	sound_call .sub3
	sound_call .sub4
	stereo_panning TRUE, TRUE
	volume_envelope 1, 19
	octave 5
	note D_, 2
	note E_, 2
	sound_call .sub5
	sound_call .sub2
	note D_, 4
	rest 4
	volume_envelope 2, 19
	note F#, 2
	rest 2
	volume_envelope 1, 19
	note D_, 2
	note E_, 2
	sound_call .sub5
	note E_, 2
	rest 2
	note G_, 2
	rest 2
	note F#, 2
	rest 2
	note E_, 2
	rest 2
	note D_, 2
	rest 2
	note C#, 2
	rest 2
	octave 4
	note B_, 2
	rest 2
	octave 5
	note C#, 2
	rest 2
	note B_, 6
	rest 2
	octave 4
	note B_, 1
	octave 5
	note C#, 1
	octave 4
	note B_, 2
	note A_, 2
	octave 5
	note C#, 2
	sound_call .sub3
	sound_call .sub4
	stereo_panning TRUE, TRUE
	volume_envelope 1, 25
	octave 4
	note D_, 2
	note E_, 2
	sound_jump .mainloop

.sub1:
.sub1loop1:
	note F#, 2
	rest 2
	note F#, 2
	rest 2
	note F#, 2
	rest 2
	note D_, 2
	note E_, 2
	sound_loop 2, .sub1loop1
	note F#, 2
	rest 2
	note F#, 2
	rest 2
	note G_, 5
	rest 1
	note F#, 2
	note E_, 4
	stereo_panning FALSE, TRUE
	volume_envelope 2, 7
	octave 3
	note A_, 2
	rest 2
	note A_, 2
	rest 2
	stereo_panning TRUE, TRUE
	volume_envelope 1, 25
	octave 4
	note C#, 2
	note D_, 2
	sound_ret

.sub2:
.sub2loop1:
	note E_, 2
	rest 2
	note E_, 2
	rest 2
	note E_, 2
	rest 2
	note C#, 2
	note D_, 2
	sound_loop 2, .sub2loop1
	note E_, 2
	rest 2
	note E_, 2
	rest 2
	note F#, 2
	note E_, 2
	note E_, 2
	note F#, 2
	sound_ret

.sub3:
	note D_, 2
	rest 2
	stereo_panning FALSE, TRUE
	volume_envelope 2, 7
	octave 4
	note D_, 2
	rest 2
	note D_, 2
	rest 2
	stereo_panning TRUE, TRUE
	volume_envelope 1, 19
	octave 5
	note F#, 2
	note G_, 2
	note A_, 2
	rest 2
	note A_, 2
	rest 2
	note F#, 2
	rest 2
	note D_, 2
	rest 2
	octave 6
	note D_, 2
	rest 2
	note C#, 2
	rest 2
	octave 5
	note B_, 2
	rest 2
	octave 6
	note C#, 2
	rest 2
	octave 5
	note A_, 2
	rest 2
	note F#, 2
	rest 2
	note D_, 4
	rest 2
	note F#, 2
	note E_, 6
	rest 6
	note F#, 2
	note G_, 2
	note A_, 2
	rest 2
	note A_, 2
	rest 2
	note F#, 2
	rest 2
	note A_, 2
	rest 2
	octave 6
	note D_, 2
	rest 2
	note C#, 2
	rest 2
	octave 5
	note B_, 4
	rest 2
	note G_, 2
	note A_, 2
	rest 2
	octave 6
	note D_, 2
	rest 2
	note C#, 2
	rest 2
	note E_, 2
	rest 2
	sound_ret

.sub4:
	note D_, 2
	rest 2
	stereo_panning FALSE, TRUE
	volume_envelope 2, 7
	octave 3
	note A_, 2
	rest 2
	note A_, 2
	rest 2
	sound_ret

.sub5:
.sub5loop1:
	note F#, 2
	rest 2
	note F#, 2
	rest 2
	note F#, 2
	rest 2
	note D_, 2
	note E_, 2
	sound_loop 2, .sub5loop1
	note F#, 2
	rest 2
	note F#, 2
	rest 2
	note G_, 5
	rest 1
	note F#, 2
	note E_, 4
	stereo_panning FALSE, TRUE
	volume_envelope 2, 7
	octave 3
	note A_, 2
	rest 2
	note A_, 2
	rest 2
	stereo_panning TRUE, TRUE
	volume_envelope 1, 19
	octave 5
	note C#, 2
	note D_, 2
	sound_ret

HRM_Route1_Ch4:
_chan = 4
	toggle_noise 7
	stereo_panning FALSE, TRUE
	drum_speed 12
	rest 2
.mainloop:
	sound_call .sub1
	rest 2
	drum_note 3, 4
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 4
	sound_call .sub1
	rest 2
	drum_note 3, 4
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
.loop1:
	rest 2
	drum_note 3, 2
	drum_note 3, 6
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	sound_loop 3, .loop1
	rest 2
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 4
	drum_note 3, 2
	drum_note 3, 4
	sound_jump .mainloop

.sub1:
	rest 2
	drum_note 3, 4
	drum_note 3, 4
	drum_note 3, 4
	drum_note 3, 2
	rest 2
	drum_note 3, 4
	drum_note 3, 4
	drum_note 3, 2
	drum_note 3, 4
	rest 2
	drum_note 3, 4
	drum_note 3, 4
	drum_note 3, 4
	drum_note 3, 2
	sound_ret
