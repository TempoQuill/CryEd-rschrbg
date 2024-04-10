Music_AtTheBattleTower: ; MORIKAZU AOKI, DANIEL INGRAM (INTRO)
; "At the" part of the song title comes from At the Gala
; engine, drum
	channel_count 4
	channel 1, Music_AtTheBattleTower_Ch1
	channel 2, Music_AtTheBattleTower_Ch2
	channel 3, Music_AtTheBattleTower_Ch3
	channel 4, Music_AtTheBattleTower_Ch4

Music_AtTheBattleTower_Ch1:
_chan = 1
	tempo 167
	volume 7
	stereo_panning TRUE, TRUE
	pitch_offset 2
	duty_cycle 1
	note_type 12, 6, 5
	rest 2
	rest 16
	rest 16
	octave 1
	note F#, 4
	note F#, 4
	volume_envelope 7, 5
	note F#, 4
	note F#, 4
	volume_envelope 8, 5
	note F#, 4
	note F#, 4
	volume_envelope 9, 5
	note F#, 4
	note F#, 4
.mainloop:
	stereo_panning TRUE, FALSE
	note_type 6, 10, 1
	sound_call .sub1
	note B_, 4
	note F#, 4
	octave 4
	note C#, 4
	octave 3
	note B_, 4
	note A#, 4
	note B_, 4
	octave 4
	note C#, 4
	octave 3
	note B_, 2
	note A#, 2
	note G#, 4
	note F#, 4
	note G#, 4
	note F#, 4
	sound_call .sub1
	note A#, 8
	note G#, 4
	note F#, 4
	note G#, 6
	note E_, 2
	note F#, 4
	note A#, 2
	note G#, 2
	note F#, 4
	note F#, 8
	note B_, 4
.loop1:
	octave 2
	note B_, 2
	note G#, 2
	note B_, 2
	octave 3
	note E_, 2
	octave 2
	note B_, 2
	octave 3
	note E_, 2
	note G#, 2
	note E_, 2
	sound_loop 2, .loop1
	sound_call .sub2
	sound_call .sub2
	sound_call .sub3
	sound_call .sub3
	sound_call .sub2
	sound_call .sub3
	vibrato 10, 4, 3
	sound_call .sub4
	note B_, 2
	note A#, 2
	note B_, 2
	note A#, 2
	volume_envelope 11, 3
	note G#, 8
	volume_envelope 10, 1
	note G#, 2
	note E_, 2
	octave 2
	note B_, 2
	octave 3
	note G#, 2
	note B_, 2
	note G#, 2
	note E_, 2
	note B_, 2
	octave 4
	note E_, 2
	octave 3
	note B_, 2
	note G#, 2
	note E_, 2
	volume_envelope 10, 3
	note G#, 12
	volume_envelope 10, 1
	note E_, 2
	note F#, 2
	note G#, 2
	note E_, 2
	note C#, 2
	note E_, 2
	note A#, 2
	note F#, 2
	note C#, 2
	note E_, 2
	volume_envelope 11, 3
	note F#, 8
	volume_envelope 10, 1
	note B_, 2
	note F#, 2
	note D#, 2
	note F#, 2
	volume_envelope 11, 3
	note A#, 8
	volume_envelope 10, 1
	note F#, 2
	note E_, 2
	note F#, 2
	note A#, 2
	sound_call .sub4
	note G#, 2
	note B_, 2
	octave 4
	note E_, 2
	octave 3
	note G#, 2
	volume_envelope 11, 3
	note B_, 8
	vibrato 0, 0, 0
	volume_envelope 10, 1
	note G#, 2
	note E_, 2
	note A_, 2
	note E_, 2
	note G#, 2
	note E_, 2
	octave 2
	note B_, 2
	octave 3
	note E_, 2
	note G#, 2
	note E_, 2
	note G#, 2
	note E_, 2
	volume_envelope 10, 3
	note B_, 8
	volume_envelope 11, 1
	octave 2
	note B_, 2
	octave 3
	note D_, 2
	note G_, 2
	note D_, 2
	note B_, 4
	note G_, 4
	note D_, 4
	note G_, 4
	octave 2
	note B_, 2
	octave 3
	note C#, 2
	note F#, 2
	note C#, 2
	note B_, 2
	note C#, 2
	note B_, 2
	note B_, 2
	note A#, 16
	sound_jump .mainloop

.sub1:
	octave 3
	note F#, 2
	note D#, 2
	note F#, 2
	note G#, 2
	note F#, 4
	note D#, 2
	note F#, 2
	sound_ret

.sub2:
	octave 2
	note B_, 2
	note F#, 2
	note B_, 2
	octave 3
	note D#, 2
	octave 2
	note B_, 2
	octave 3
	note D#, 2
	note F#, 2
	note D#, 2
	sound_ret

.sub3:
	note C#, 2
	octave 2
	note F#, 2
	octave 3
	note C#, 2
	note E_, 2
	note C#, 2
	note E_, 2
	note F#, 2
	note E_, 2
	sound_ret

.sub4:
	volume_envelope 10, 4
	note F#, 12
	volume_envelope 10, 1
	note B_, 2
	note F#, 2
	volume_envelope 10, 2
	note D#, 8
	volume_envelope 13, 1
	sound_ret

Music_AtTheBattleTower_Ch2:
_chan = 2
	stereo_panning TRUE, FALSE
	pitch_inc_switch
	duty_cycle 1
	note_type 6, 13, 1
	rest 4
.loop1:
	sound_call .sub1
	note E_, 4
	sound_call .sub1
	note F#, 4
	sound_loop 2, .loop1
.mainloop:
	sound_call .sub2
	note E_, 6
	octave 3
	note B_, 2
	note F#, 4
	sound_call .sub3
	octave 2
	note B_, 4
	note A#, 8
	octave 3
	note C#, 4
	sound_call .sub2
	note E_, 6
	note C#, 2
	note D#, 4
	sound_call .sub3
	note D#, 4
	octave 2
	note B_, 8
	octave 3
	note D#, 4
	stereo_panning TRUE, TRUE
	duty_cycle 2
	vibrato 10, 3, 3
	volume_envelope 13, 1
	octave 4
	note E_, 4
	volume_envelope 10, 3
	note E_, 8
	volume_envelope 13, 1
	note C#, 2
	note D#, 2
	volume_envelope 10, 7
	note E_, 16
	volume_envelope 13, 1
	note D#, 4
	volume_envelope 10, 3
	note D#, 8
	volume_envelope 13, 1
	note C#, 2
	note D#, 2
	volume_envelope 10, 7
	octave 3
	note B_, 16
	volume_envelope 13, 1
	octave 4
	note C#, 4
	volume_envelope 10, 3
	note C#, 8
	volume_envelope 13, 1
	note E_, 2
	note D#, 2
	volume_envelope 10, 7
	note E_, 8
	octave 3
	note A#, 8
	volume_envelope 13, 1
	note B_, 4
	volume_envelope 10, 3
	note B_, 8
	volume_envelope 13, 1
	octave 4
	note C#, 2
	octave 3
	note B_, 2
	volume_envelope 10, 7
	note A#, 16
	sound_call .sub4
	note E_, 4
	note D#, 4
	note_type 12, 11, 7
	note E_, 16
	volume_envelope 10, 5
	note E_, 6
	volume_envelope 13, 1
	note C#, 1
	note D#, 1
	volume_envelope 10, 3
	note E_, 4
	note F#, 2
	note E_, 2
	volume_envelope 11, 5
	note D#, 6
	volume_envelope 13, 1
	note C#, 1
	note D#, 1
	note_type 6, 11, 5
	note C#, 16
	sound_call .sub4
	note G#, 4
	note A_, 4
	volume_envelope 11, 5
	note G#, 12
	note F#, 4
	volume_envelope 11, 7
	note E_, 16
	volume_envelope 10, 5
	note G_, 12
	volume_envelope 11, 3
	note F#, 4
	note E_, 4
	note D_, 4
	octave 3
	note B_, 4
	octave 4
	note D_, 4
	volume_envelope 10, 5
	note C#, 12
	volume_envelope 13, 1
	note C#, 2
	note C#, 2
	note C#, 16
	sound_jump .mainloop

.sub1:
	octave 1
	note F#, 4
	octave 3
	note F#, 4
	note B_, 4
	octave 4
	note C#, 6
	octave 3
	note F#, 2
	note B_, 4
	octave 4
	note C#, 4
	sound_ret

.sub2:
	stereo_panning TRUE, TRUE
	vibrato 10, 3, 3
	duty_cycle 2
	volume_envelope 10, 3
	octave 3
	note B_, 4
	note B_, 8
	volume_envelope 13, 1
	note F#, 2
	note B_, 2
	volume_envelope 10, 3
	octave 4
	note F_, 1
	note F#, 7
	note E_, 4
	note D#, 4
	sound_ret

.sub3:
	stereo_panning TRUE, FALSE
	vibrato 0, 0, 0
	duty_cycle 3
	volume_envelope 10, 1
	octave 3
	note C#, 2
	note C#, 2
	sound_ret

.sub4:
	volume_envelope 10, 5
	octave 3
	note B_, 12
	volume_envelope 13, 1
	octave 4
	note D#, 2
	note E_, 2
	volume_envelope 10, 3
	note F_, 1
	note F#, 7
	sound_ret

Music_AtTheBattleTower_Ch3:
_chan = 3
	stereo_panning FALSE, TRUE
	vibrato 10, 6, 4
	note_type 6, 1, 4
	octave 2
	note F#, 1
	rest 1
	note F#, 1
	rest 1
.loop1:
	note_type 12, 1, 4
	note F#, 12
	rest 2
	note_type 6, 1, 4
	note F#, 1
	rest 1
	note F#, 1
	rest 1
	sound_loop 4, .loop1
.mainloop:
	note B_, 3
	rest 1
	note B_, 6
	rest 2
	note B_, 1
	rest 1
	note B_, 1
	rest 1
	note E_, 3
	rest 1
	note E_, 6
	rest 2
	note G#, 4
	note F#, 3
	rest 1
	note F#, 6
	rest 2
	octave 3
	note C#, 1
	rest 1
	note E_, 1
	rest 1
	note F#, 3
	rest 1
	note C#, 6
	rest 2
	octave 2
	note A#, 4
	note B_, 3
	rest 1
	note B_, 6
	rest 2
	note B_, 1
	rest 1
	note G#, 1
	rest 1
	note F#, 3
	rest 1
	note F#, 6
	rest 2
	note A#, 4
	note B_, 3
	rest 1
	note B_, 6
	rest 2
	note F#, 1
	rest 1
	note A#, 1
	rest 1
	note B_, 3
	rest 1
	note F#, 6
	rest 2
	note D#, 4
	note E_, 3
	rest 1
	note B_, 6
	rest 2
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	note E_, 3
	rest 1
	note B_, 6
	rest 2
	octave 3
	note C#, 4
	octave 2
	note B_, 3
	rest 1
	note B_, 6
	rest 2
	note F#, 1
	rest 1
	note F#, 1
	rest 1
	note B_, 3
	rest 1
	note B_, 6
	rest 2
	note G#, 4
	note F#, 3
	rest 1
	octave 3
	note C#, 6
	rest 2
	octave 2
	note F#, 1
	rest 1
	note F#, 1
	rest 1
	note F#, 3
	rest 1
	octave 3
	note C#, 6
	rest 2
	octave 2
	note A#, 4
	sound_call .sub1
	note G#, 6
	rest 2
	note A#, 4
	sound_call .sub2
	note D#, 4
	note C#, 10
	rest 2
	octave 2
	note G#, 1
	rest 1
	note G#, 1
	rest 1
	octave 3
	note C#, 3
	rest 1
	octave 2
	note G#, 6
	rest 2
	note A#, 4
	sound_call .sub1
	note A#, 6
	rest 2
	octave 3
	note C#, 4
	sound_call .sub2
	octave 2
	note B_, 4
	note G_, 3
	rest 1
	octave 3
	note D_, 6
	rest 2
	note D_, 1
	rest 1
	note D_, 1
	rest 1
	octave 2
	note G_, 3
	rest 1
	octave 3
	note D_, 6
	rest 2
	note G_, 4
	note F#, 3
	rest 1
	note F#, 6
	rest 2
	note F#, 1
	rest 1
	note F#, 1
	rest 1
	octave 2
	note F#, 3
	rest 13
	sound_jump .mainloop

.sub1:
	note B_, 3
	rest 1
	note B_, 6
	rest 2
	note A#, 1
	rest 1
	note G#, 1
	rest 1
	note F#, 3
	rest 1
	sound_ret

.sub2:
	octave 2
	note B_, 3
	rest 1
	note B_, 6
	rest 2
	octave 3
	note F#, 1
	rest 1
	note F#, 1
	rest 1
	octave 2
	note B_, 3
	rest 1
	octave 3
	note C#, 6
	rest 2
	note D#, 4
	note E_, 3
	rest 1
	octave 2
	note B_, 6
	rest 2
	octave 3
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	octave 2
	note B_, 3
	rest 1
	octave 3
	note E_, 6
	rest 2
	sound_ret

Music_AtTheBattleTower_Ch4:
_chan = 4
	toggle_noise 8
	stereo_panning TRUE, FALSE
	drum_speed 6
	rest 4
.loop1:
	drum_note 5, 16
	drum_note 6, 4
	drum_note 6, 4
	drum_note 9, 2
	drum_note 9, 2
	drum_note 9, 2
	drum_note 9, 2
	sound_loop 4, .loop1
.mainloop:
	drum_note 5, 16
	rest 16
	rest 12
	drum_note 7, 1
	drum_note 8, 1
	drum_note 9, 1
	drum_note 10, 1
	drum_note 6, 4
	drum_note 6, 4
	drum_note 6, 2
	drum_note 6, 2
	drum_note 6, 2
	drum_note 6, 2
	sound_loop 2, .mainloop
.loop2:
	sound_call .sub1
	drum_note 9, 2
	drum_note 9, 2
	sound_loop 3, .loop2
	sound_call .sub1
	drum_note 9, 1
	drum_note 9, 1
	drum_note 9, 1
	drum_note 9, 1
.loop3:
	drum_note 6, 4
	drum_note 6, 4
	drum_note 6, 2
	drum_note 9, 2
	drum_note 9, 2
	drum_note 9, 2
	drum_note 6, 4
	drum_note 6, 4
	drum_note 9, 1
	drum_note 9, 1
	drum_note 9, 1
	drum_note 9, 1
	drum_note 9, 1
	drum_note 9, 1
	drum_note 9, 1
	drum_note 9, 1
	sound_loop 8, .loop3
	sound_jump .mainloop

.sub1:
	drum_note 5, 8
	drum_note 9, 2
	drum_note 9, 2
	drum_note 9, 2
	drum_note 9, 2
	drum_note 6, 4
	drum_note 6, 4
	drum_note 6, 2
	drum_note 9, 2
	sound_ret
