Music_BugCatchingContestExt:
	channel_count 4
	channel 1, Music_BugCatchingContestExt_Ch1
	channel 2, Music_BugCatchingContestExt_Ch2
	channel 3, Music_BugCatchingContestExt_Ch3
	channel 4, Music_BugCatchingContestExt_Ch4

Music_BugCatchingContestExt_Ch1:
_chan = 1
	tempo 144
	volume 7
	stereo_panning FALSE, TRUE
	vibrato 8, 2, 4
	duty_cycle 2
	note_type 12, 11, 7
	rest 8
.mainloop:
	octave 4
	note C#, 1
	rest 1
	note C#, 3
	rest 1
	note C#, 1
	note C#, 1
	note D_, 1
	rest 1
	note D_, 3
	rest 1
	note D_, 1
	note D_, 1
	note D#, 1
	rest 1
	note D#, 3
	rest 1
	note D#, 1
	note D#, 1
	note E_, 1
	rest 1
	note E_, 3
	rest 1
	note E_, 1
	note E_, 1
	note_type 12, 11, 1
.loop1:
	rest 2
	octave 2
	note A_, 2
	sound_loop 4, .loop1
.loop2:
	rest 2
	note B_, 2
	sound_loop 8, .loop2
	volume_envelope 11, 4
	duty_cycle 1
	octave 3
	note B_, 6
	note A_, 1
	note B_, 1
	note A_, 6
	octave 4
	note D_, 1
	note E_, 1
	volume_envelope 11, 1
	duty_cycle 2
.loop3:
	rest 2
	octave 2
	note A_, 2
	sound_loop 4, .loop3
	rest 2
	note B_, 2
	rest 2
	note B_, 2
	note_type 6, 11, 7
	octave 4
	note E_, 4
	rest 1
	octave 3
	note B_, 1
	octave 4
	note E_, 1
	note G_, 1
	note B_, 8
	octave 5
	note E_, 8
	volume_envelope 11, 1
	rest 4
	octave 2
	note B_, 4
	rest 4
	octave 3
	note E_, 4
	rest 4
	note E_, 4
.loop4:
	rest 4
	octave 2
	note A_, 4
	sound_loop 3, .loop4
	volume_envelope 10, 7
	octave 4
	note F#, 4
	note A_, 4
	rest 4
	octave 3
	note G_, 2
	note B_, 2
	octave 4
	note D_, 2
	rest 2
	octave 3
	note B_, 2
	note G_, 2
	octave 4
	note G_, 1
	note A_, 1
	note G_, 1
	note A_, 1
	note G_, 1
	note A_, 1
	note G_, 1
	note A_, 1
	note G_, 8
	rest 4
	octave 3
	note F#, 2
	note A_, 2
	octave 4
	note D_, 2
	rest 2
	octave 3
	note A_, 2
	note F#, 2
	octave 4
	note F#, 1
	note G_, 1
	note F#, 1
	note G_, 1
	note F#, 1
	note G_, 1
	note F#, 1
	note G_, 1
	note F#, 8
	note D_, 2
	rest 2
	octave 3
	note B_, 2
	note G_, 2
	octave 4
	note G_, 2
	rest 2
	note D_, 2
	octave 3
	note B_, 2
	octave 4
	note B_, 2
	rest 2
	note G#, 2
	note D_, 2
	octave 3
	note B_, 2
	octave 4
	note D_, 2
	note G#, 2
	note B_, 2
	note C#, 2
	rest 2
	note C#, 6
	rest 2
	note C#, 2
	note C#, 2
	note D_, 2
	rest 2
	note D_, 6
	rest 2
	note D_, 2
	note D_, 2
	note D#, 2
	rest 2
	note D#, 6
	rest 2
	note D#, 2
	note D#, 2
	note E_, 2
	rest 2
	note E_, 6
	rest 2
	note E_, 2
	note E_, 2
	note_type 12, 11, 1
.loop5:
	rest 2
	octave 3
	note D_, 2
	sound_loop 15, .loop5
	rest 2
	note_type 6, 11, 1
	duty_cycle 0
	octave 4
	note G_, 1
	note A_, 1
	note B_, 1
	octave 5
	note C#, 1
	note_type 6, 11, 7
	duty_cycle 2
	octave 4
	note G_, 2
	note D_, 2
	octave 3
	note B_, 2
	note G_, 2
	octave 4
	note D_, 2
	rest 2
	note G_, 2
	rest 2
	note A_, 1
	note B_, 1
	note A_, 1
	note B_, 1
	note A_, 1
	note B_, 1
	note A_, 1
	note B_, 1
	note G_, 2
	note D_, 2
	octave 3
	note B_, 2
	note G_, 2
	octave 4
	note F#, 2
	rest 2
	note D_, 4
	note F#, 2
	rest 2
	note G_, 2
	rest 2
	note F#, 4
	note D#, 4
	note C_, 2
	note D#, 2
	note C_, 2
	octave 3
	note A_, 2
	rest 4
	note D_, 2
	note G_, 2
.loop6:
	octave 3
	note B_, 1
	octave 4
	note C#, 1
	sound_loop 4, .loop6
	rest 4
	octave 3
	note A_, 2
	octave 4
	note C#, 2
	note E_, 1
	note F#, 1
	note E_, 1
	note F#, 1
	note E_, 1
	note F#, 1
	note E_, 1
	note F#, 1
	rest 4
	octave 3
	note B_, 2
	octave 4
	note D_, 2
	note G_, 1
	note A_, 1
	note G_, 1
	note A_, 1
	note G_, 1
	note A_, 1
	note G_, 1
	note A_, 1
	octave 5
	note C#, 2
	octave 4
	note A_, 2
	note G#, 2
	note F#, 2
	note E_, 2
	note D_, 2
	note C#, 2
	octave 3
	note B_, 2
	note_type 12, 11, 7
	sound_jump .mainloop

Music_BugCatchingContestExt_Ch2:
_chan = 2
	stereo_panning TRUE, FALSE
	vibrato 8, 2, 3
	duty_cycle 1
	note_type 12, 12, 7
	rest 8
	octave 4
	note A_, 1
	rest 1
	note A_, 3
	rest 1
	note A_, 1
	note A_, 1
.mainloop:
	octave 4
	note A_, 1
	rest 1
	note A_, 3
	rest 1
	note A_, 1
	note A_, 1
	sound_loop 3, .mainloop
	duty_cycle 0
	sound_call .sub1
	octave 2
	note E_, 2
	octave 3
	note G_, 1
	rest 1
	octave 1
	note B_, 2
	octave 3
	note G_, 1
	rest 1
	octave 2
	note E_, 2
	octave 3
	note G_, 1
	rest 1
	octave 2
	note G_, 2
	octave 3
	note G_, 1
	rest 1
	octave 2
	note A_, 2
	octave 3
	note A_, 1
	rest 1
	octave 2
	note G#, 2
	octave 3
	note G#, 1
	rest 1
	octave 2
	note G_, 2
	octave 3
	note G_, 1
	rest 1
	octave 2
	note E_, 2
	octave 3
	note E_, 1
	rest 1
	sound_call .sub1
	octave 2
	note E_, 2
	octave 3
	note G_, 1
	rest 1
	octave 1
	note B_, 2
	octave 3
	note G_, 1
	rest 1
	octave 2
	note A_, 2
	octave 4
	note C#, 1
	rest 1
	octave 2
	note E_, 2
	octave 4
	note C#, 1
	rest 1
	octave 2
	note D_, 2
	octave 3
	note F#, 1
	rest 1
	octave 1
	note A_, 2
	octave 3
	note F#, 1
	rest 1
	octave 1
	note B_, 2
	octave 3
	note F#, 1
	rest 1
	octave 2
	note D#, 2
	octave 3
	note A_, 1
	rest 1
	duty_cycle 0
	rest 2
	octave 5
	note D_, 1
	rest 1
	note C#, 2
	note D_, 1
	rest 1
	octave 4
	note B_, 8
	rest 2
	octave 5
	note D_, 1
	rest 1
	note C#, 2
	note D_, 1
	rest 1
	octave 4
	note A_, 8
	rest 2
	octave 5
	note D_, 4
	note F#, 2
	note E_, 2
	note D_, 1
	rest 1
	note C#, 2
	note D_, 1
	rest 1
	note E_, 1
	rest 1
	note E_, 1
	rest 3
	note E_, 10
	note A_, 1
	rest 1
	note A_, 1
	rest 3
	note A_, 10
.loop1:
	octave 2
	note G_, 2
	octave 3
	note B_, 1
	rest 1
	octave 2
	note D_, 2
	octave 3
	note B_, 1
	rest 1
	octave 2
	note F#, 2
	octave 3
	note A_, 1
	rest 1
	octave 2
	note E_, 2
	octave 3
	note G_, 1
	rest 1
	octave 2
	note D_, 2
	octave 3
	note A_, 1
	rest 1
	octave 2
	note F#, 2
	octave 3
	note A_, 1
	rest 1
	octave 2
	note D_, 2
	octave 3
	note A_, 1
	rest 1
	octave 1
	note A_, 2
	octave 3
	note F#, 1
	rest 1
	sound_loop 2, .loop1
	octave 5
	note D_, 1
	rest 1
	note C#, 1
	rest 1
	octave 4
	note B_, 2
	octave 5
	note D_, 1
	rest 1
	note C#, 4
	octave 4
	note B_, 4
	note A_, 1
	rest 1
	octave 5
	note C_, 4
	octave 4
	note B_, 1
	rest 1
	note A_, 4
	note G_, 1
	rest 1
	note F#, 1
	rest 1
	note_type 8, 12, 7
	note B_, 2
	rest 2
	note A_, 2
	rest 2
	note G_, 2
	rest 2
	octave 5
	note C#, 2
	rest 2
	octave 4
	note B_, 2
	rest 2
	note A_, 2
	rest 2
	octave 5
	note D_, 2
	rest 2
	note C#, 2
	rest 2
	octave 4
	note B_, 2
	rest 2
	octave 5
	note E_, 2
	rest 2
	note F#, 2
	rest 2
	note D_, 2
	rest 2
	note_type 12, 12, 7
	note E_, 8
	duty_cycle 1
	sound_jump .mainloop

.sub1:
	octave 2
	note D_, 2
	octave 3
	note F#, 1
	rest 1
	octave 1
	note A_, 2
	octave 3
	note F#, 1
	rest 1
	octave 1
	note B_, 2
	octave 3
	note F#, 1
	rest 1
	octave 2
	note C#, 2
	octave 3
	note F#, 1
	rest 1
	octave 2
	note E_, 2
	octave 3
	note G_, 1
	rest 1
	octave 1
	note B_, 2
	octave 3
	note G_, 1
	rest 1
	octave 2
	note C#, 2
	octave 3
	note G_, 1
	rest 1
	octave 2
	note D#, 2
	octave 3
	note G_, 1
	rest 1
	sound_ret

Music_BugCatchingContestExt_Ch3:
_chan = 3
	stereo_panning TRUE, TRUE
	vibrato 16, 2, 3
	note_type 12, 1, 4
	rest 8
.mainloop:
	octave 3
	note A_, 1
	rest 1
	note A_, 3
	rest 1
	note A_, 1
	note A_, 1
	note B_, 1
	rest 1
	note B_, 3
	rest 1
	note B_, 1
	note B_, 1
	octave 4
	note C_, 1
	rest 1
	note C_, 3
	rest 1
	note C_, 1
	note C_, 1
	note C#, 1
	rest 1
	note C#, 3
	rest 1
	note C#, 1
	note C#, 1
	note_type 12, 1, 4
	note F#, 5
	rest 1
	note F#, 1
	note G_, 1
	note A_, 4
	octave 5
	note D_, 4
	note C#, 2
	volume_envelope 1, 0
	note E_, 1
	note G_, 1
	note B_, 1
	rest 1
	note G_, 1
	note E_, 1
	note_type 6, 2, 0
	octave 6
	note E_, 1
	note F#, 1
	note E_, 1
	note F#, 1
	note E_, 1
	note F#, 1
	note E_, 1
	note F#, 1
	note E_, 8
	volume_envelope 1, 4
	octave 4
	note E_, 10
	rest 2
	note E_, 2
	note F#, 2
	note G_, 8
	octave 5
	note C#, 8
	rest 4
	volume_envelope 1, 0
	note E_, 2
	note G_, 2
	note A_, 2
	rest 2
	note E_, 2
	note C_, 2
	octave 6
	note C#, 1
	note D_, 1
	note C#, 1
	note D_, 1
	note C#, 1
	note D_, 1
	note C#, 1
	note D_, 1
	note C#, 8
	volume_envelope 1, 5
	octave 5
	note F#, 4
	rest 4
	note G_, 4
	rest 4
	note A_, 4
	rest 4
	octave 6
	note D_, 4
	rest 4
	note C#, 12
	octave 5
	note B_, 2
	octave 6
	note C#, 2
	octave 5
	note B_, 4
	rest 4
	octave 6
	note G_, 4
	note F#, 4
	rest 4
	octave 5
	note G_, 4
	note A_, 4
	note B_, 4
	octave 6
	note E_, 4
	note D_, 4
	note C#, 4
	octave 5
	note B_, 2
	octave 6
	note C#, 2
	note D_, 4
	rest 8
	octave 5
	note B_, 4
	note A_, 4
	rest 1
	note D#, 1
	note F#, 1
	note A_, 1
	octave 6
	note C_, 8
	octave 3
	note G_, 2
	rest 2
	note B_, 2
	rest 2
	note D_, 2
	rest 2
	note B_, 2
	rest 2
	note E_, 2
	rest 2
	note B_, 2
	rest 2
	note G_, 2
	rest 2
	note B_, 2
	rest 2
	note D_, 2
	rest 2
	note F#, 2
	rest 2
	octave 2
	note A_, 2
	rest 2
	octave 3
	note F#, 2
	rest 2
	note D#, 2
	rest 2
	octave 4
	note C_, 2
	rest 2
	octave 3
	note A_, 2
	rest 2
	octave 4
	note C_, 2
	rest 2
	octave 3
	note G_, 2
	rest 2
	note B_, 2
	rest 2
	note D_, 2
	rest 2
	note B_, 2
	rest 2
	note G#, 2
	rest 2
	note B_, 2
	rest 2
	note E_, 2
	rest 2
	note B_, 2
	rest 2
	note A_, 2
	rest 2
	note A_, 6
	rest 2
	note A_, 2
	note A_, 2
	note B_, 2
	rest 2
	note B_, 6
	rest 2
	note B_, 2
	note B_, 2
	octave 4
	note C_, 2
	rest 2
	note C_, 6
	rest 2
	note C_, 2
	note C_, 2
	note C#, 2
	rest 2
	note C#, 6
	rest 2
	note C#, 2
	note C#, 2
	volume_envelope 1, 2
	octave 5
	note G_, 8
	rest 4
	note G_, 4
	note A_, 4
	note G_, 4
	note F#, 4
	note E_, 4
	note F#, 2
	rest 2
	note F#, 6
	rest 2
	note F#, 2
	rest 2
	note G_, 4
	note F#, 4
	note E_, 4
	note D_, 4
	note G_, 4
	note F#, 4
	note E_, 4
	note G_, 4
	note A_, 6
	rest 2
	note B_, 4
	note G_, 4
	note F#, 4
	note A_, 6
	rest 2
	note G_, 4
	note F#, 2
	volume_envelope 1, 0
	note A_, 2
	note B_, 2
	octave 6
	note C#, 2
	note D_, 1
	note E_, 1
	note D_, 1
	note E_, 1
	note D_, 1
	note E_, 1
	note D_, 1
	note E_, 1
	volume_envelope 1, 5
	octave 3
	note G_, 2
	rest 2
	note B_, 2
	rest 2
	note D_, 2
	rest 2
	note B_, 2
	rest 2
	note E_, 2
	rest 2
	note B_, 2
	rest 2
	note G_, 2
	rest 2
	note B_, 2
	rest 2
	note D_, 2
	rest 2
	note F#, 2
	rest 2
	octave 2
	note A_, 2
	rest 2
	octave 3
	note F#, 2
	rest 2
	note D#, 2
	rest 2
	octave 4
	note C_, 2
	rest 2
	octave 3
	note A_, 2
	rest 2
	octave 4
	note C_, 2
	rest 2
	octave 3
	note G_, 2
	rest 2
	note B_, 2
	rest 2
	note D_, 2
	rest 2
	note B_, 2
	rest 2
	note A_, 2
	rest 2
	octave 4
	note C#, 2
	rest 2
	octave 3
	note E_, 2
	rest 2
	octave 4
	note C#, 2
	rest 2
	octave 3
	note G_, 2
	rest 2
	octave 4
	note D_, 2
	rest 2
	octave 3
	note D_, 2
	rest 2
	octave 4
	note D_, 2
	rest 2
	octave 3
	note G#, 2
	rest 2
	octave 4
	note D_, 2
	rest 2
	octave 3
	note E_, 2
	rest 2
	octave 4
	note D_, 2
	rest 2
	note_type 12, 1, 5
	sound_jump .mainloop

Music_BugCatchingContestExt_Ch4:
_chan = 4
	toggle_noise 4
	drum_speed 6
.loop1:
	drum_note 2, 1
	sound_loop 12, .loop1
	drum_note 5, 2
	drum_note 5, 2
.mainloop:
	sound_call .sub1
	sound_call .sub2
	sound_call .sub2
	sound_call .sub2
	sound_call .sub2
	sound_call .sub2
.loop2:
	drum_note 3, 4
	drum_note 3, 4
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	sound_loop 2, .loop2
	sound_call .sub1
	sound_call .sub2
	sound_call .sub2
	sound_call .sub2
	sound_call .sub2
	sound_jump .mainloop

.sub1:
	drum_note 3, 4
	drum_note 12, 8
	drum_note 3, 2
	drum_note 3, 2
	sound_loop 4, .sub1
	sound_ret

.sub2:
	drum_note 3, 4
	drum_note 3, 4
	drum_note 3, 2
	drum_note 2, 2
	drum_note 3, 2
	drum_note 2, 2
	sound_loop 3, .sub2
	drum_note 3, 4
	drum_note 3, 4
.sub2loop1:
	drum_note 2, 1
	sound_loop 8, .sub2loop1
	sound_ret
