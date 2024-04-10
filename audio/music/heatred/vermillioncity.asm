HRM_VermillionCity:
	channel_count 4
	channel 1, HRM_VermillionCity_Ch1
	channel 2, HRM_VermillionCity_Ch2
	channel 3, HRM_VermillionCity_Ch3
	channel 4, HRM_VermillionCity_Ch4

HRM_VermillionCity_Ch1:
_chan = 1
	tempo 176
	volume 7
	duty_cycle 3
	stereo_panning FALSE, TRUE
	note_type 12, 10, 7
	octave 4
	note A#, 4
	note G#, 4
	note E_, 4
	note C#, 4
	octave 3
	note B_, 4
	note A#, 2
	note G#, 2
	note E_, 2
	note C#, 2
	note E_, 2
	note F#, 2
.mainloop:
	sound_call .sub1
	note F#, 1
	note E_, 1
	sound_call .sub1
	note F#, 2
	note E_, 4
	note F#, 4
	note G#, 4
	note E_, 2
	note D#, 2
	note C#, 4
	note D#, 4
	note E_, 2
	note F#, 2
	note B_, 2
	note A#, 2
	note G#, 2
	note D#, 6
	note C#, 2
	octave 2
	note B_, 2
	note A#, 2
	note B_, 2
	octave 3
	note E_, 2
	note B_, 4
	octave 4
	note C#, 1
	octave 3
	note B_, 1
	note A#, 8
	sound_jump .mainloop

.sub1:
	note D#, 8
	note G#, 2
	note B_, 2
	note F#, 2
	note G#, 2
	note A#, 4
	note F#, 2
	note G#, 1
	note A#, 1
	note B_, 4
	note F#, 1
	note G#, 1
	note F#, 1
	note E_, 1
	note D#, 4
	note F#, 2
	note D#, 2
	note G#, 4
	note F#, 4
	note E_, 2
	note F#, 2
	note G#, 2
	note F#, 1
	note E_, 1
	note D#, 2
	note C#, 2
	note D#, 2
	sound_ret

HRM_VermillionCity_Ch2:
_chan = 2
	duty_cycle 2
	stereo_panning TRUE, TRUE
	vibrato 21, 4, 4
	note_type 12, 6, 8
	octave 2
	note F#, 2
	octave 3
	note F#, 1
	rest 3
	note F#, 1
	note C#, 1
	octave 2
	note F#, 2
	octave 3
	note C#, 2
	note E_, 2
	note D#, 1
	note E_, 1
	note F#, 8
	octave 2
	note F#, 8
.mainloop:
	duty_cycle 3
	octave_pluck_on
	stereo_panning TRUE, FALSE
	volume_envelope 13, 7
	sound_call .sub1
	note C#, 6
	note D#, 1
	note C#, 1
	octave 3
	note B_, 6
	note F#, 1
	note A#, 1
	sound_call .sub1
	note C#, 6
	note D#, 1
	note C#, 1
	octave 3
	note B_, 8
	duty_cycle 2
	plucks_off
	stereo_panning TRUE, TRUE
	volume_envelope 6, 8
	octave 2
	note F#, 2
	octave 1
	note A#, 2
	octave 2
	note F#, 2
	octave 1
	note B_, 2
	octave 2
	note F#, 2
	note C#, 2
	note F#, 2
	note D#, 2
	note G#, 2
	note E_, 2
	note B_, 2
	note E_, 2
	note A#, 2
	note E_, 2
	note F#, 2
	note E_, 2
	octave 1
	note G#, 2
	octave 2
	note G#, 2
	octave 1
	note G#, 2
	octave 2
	note F#, 2
	note C#, 2
	note E_, 2
	note A#, 2
	octave 3
	note C#, 2
	octave 2
	note E_, 2
	octave 3
	note C#, 4
	note E_, 1
	note F#, 1
	octave 2
	note F#, 2
	octave 3
	note E_, 2
	octave 1
	note F#, 2
	octave 2
	note A#, 2
	sound_jump .mainloop

.sub1:
	octave 3
	note B_, 8
	octave 4
	note E_, 4
	note D#, 4
	note C#, 6
	octave 3
	note B_, 1
	octave 4
	note C#, 1
	note D#, 8
	octave 3
	note B_, 8
	octave 4
	note E_, 4
	note D#, 4
	sound_ret

HRM_VermillionCity_Ch3:
_chan = 3
	stereo_panning TRUE, FALSE
	vibrato 13, 2, 3
	note_type 12, 1, 30
	octave 5
	note F#, 4
	note E_, 4
	note C#, 4
	octave 4
	note A#, 4
	note G#, 4
	note F#, 4
	note G#, 4
	note A#, 4
.mainloop:
.loop1:
	stereo_panning TRUE, TRUE
	volume_envelope 2, 5
	octave 2
	note B_, 2
	octave 3
	note F#, 2
	note B_, 2
	note F#, 2
	octave 4
	note C#, 2
	octave 3
	note F#, 2
	note B_, 2
	note F#, 2
	note A#, 2
	note F#, 2
	note C#, 2
	note F#, 2
	octave 2
	note B_, 2
	octave 3
	note F#, 2
	note G#, 2
	note A#, 2
	note B_, 2
	octave 2
	note B_, 2
	octave 3
	note D#, 2
	note F#, 2
	octave 4
	note C#, 2
	octave 3
	note F#, 2
	note B_, 2
	note F#, 2
	note A#, 2
	note F#, 2
	note C#, 2
	note F#, 2
	octave 2
	note B_, 2
	octave 3
	note D#, 2
	note F#, 2
	note A#, 2
	sound_loop 2, .loop1
	stereo_panning TRUE, FALSE
	volume_envelope 1, 20
	octave 5
	note C#, 4
	note D#, 4
	note E_, 4
	note F#, 4
	note G#, 8
	octave 6
	note C#, 8
	octave 5
	note B_, 4
	note A#, 4
	note G#, 4
	note F#, 4
	note G#, 6
	note A#, 1
	note G#, 1
	note F#, 8
	sound_jump .mainloop

HRM_VermillionCity_Ch4:
_chan = 4
	toggle_noise 7
	drum_speed 6
	drum_note 5, 16
	rest 8
	drum_note 9, 2
	drum_note 9, 2
	drum_note 9, 2
	drum_note 9, 2
	drum_note 5, 16
	rest 8
	sound_call .sub1
.mainloop:
	sound_call .sub2
	sound_call .sub5
	sound_call .sub6
	sound_call .sub4
	sound_call .sub3
	sound_call .sub5
	sound_call .sub1
	sound_call .sub2
	sound_call .sub5
	sound_call .sub1
	sound_jump .mainloop

.sub1:
	drum_note 7, 1
	drum_note 8, 1
	drum_note 9, 1
	drum_note 10, 1
	drum_note 11, 1
	drum_note 12, 1
	drum_note 12, 1
	drum_note 12, 1
	sound_ret

.sub2:
	drum_note 5, 8
	drum_note 1, 4
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 4
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 4
	drum_note 1, 2
	drum_note 1, 2
.sub3:
	drum_note 1, 4
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 4
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 4
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
.sub4:
	drum_note 1, 4
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 4
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 4
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 4
	drum_note 1, 2
	drum_note 1, 2
	sound_ret

.sub5:
	drum_note 1, 4
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 4
	drum_note 1, 2
	drum_note 1, 2
.sub6:
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	sound_ret


