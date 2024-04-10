Music_MobileLinkBallad: ; MORIKAZU AOKI
; "Ballad" part comes from the Crystal Ponies Ballad
; wav, drum
	channel_count 4
	channel 1, Music_MobileLinkBallad_Ch1
	channel 2, Music_MobileLinkBallad_Ch2
	channel 3, Music_MobileLinkBallad_Ch3
	channel 4, Music_MobileLinkBallad_Ch4

Music_MobileLinkBallad_Ch1:
_chan = 1
	tempo 171
	volume 7
	stereo_panning TRUE, FALSE
	pitch_offset -1
	duty_cycle 1
	note_type 12, 13, 1
	rest 2
	rest 8
	octave 3
	note D_, 2
	note C_, 2
	octave 2
	note B_, 4
.mainloop:
	sound_call .sub1
	sound_call .sub2
	note_type 8, 13, 1
	octave 3
	note B_, 1
	volume_envelope 7, 1
	octave 4
	note D_, 1
	octave 3
	note B_, 1
	volume_envelope 8, 1
	octave 4
	note D_, 1
	octave 3
	note B_, 1
	octave 4
	note D_, 1
	volume_envelope 9, 1
	octave 3
	note A_, 1
	octave 4
	note C_, 1
	octave 3
	note A_, 1
	volume_envelope 10, 1
	octave 4
	note C_, 1
	octave 3
	note A_, 1
	octave 4
	note C_, 1
	volume_envelope 13, 1
	octave 3
	note G_, 1
	volume_envelope 7, 1
	note B_, 1
	note G_, 1
	volume_envelope 8, 1
	note B_, 1
	note G_, 1
	note B_, 1
	volume_envelope 9, 1
	note F_, 1
	note A_, 1
	note F_, 1
	volume_envelope 10, 1
	note A_, 1
	note F_, 1
	note A_, 1
	duty_cycle 2
	note_type 12, 11, 3
	note G_, 4
	note F_, 4
	note E_, 4
	note D_, 4
	sound_call .sub1
	sound_call .sub2
	note_type 8, 13, 1
	note D_, 1
	volume_envelope 7, 1
	note G_, 1
	note D_, 1
	volume_envelope 8, 1
	note G_, 1
	note D_, 1
	note G_, 1
	volume_envelope 9, 1
	octave 3
	note B_, 1
	octave 4
	note D_, 1
	octave 3
	note B_, 1
	volume_envelope 10, 1
	octave 4
	note D_, 1
	octave 3
	note B_, 1
	octave 4
	note D_, 1
	volume_envelope 13, 1
	note C_, 1
	volume_envelope 7, 1
	note G_, 1
	note C_, 1
	volume_envelope 8, 1
	note G_, 1
	note C_, 1
	note G_, 1
	volume_envelope 9, 1
	octave 3
	note B_, 1
	octave 4
	note F_, 1
	octave 3
	note B_, 1
	volume_envelope 10, 1
	octave 4
	note F_, 1
	octave 3
	note B_, 1
	octave 4
	note F_, 1
	duty_cycle 2
	note_type 12, 11, 3
	note E_, 4
	note D_, 4
	note C_, 4
	octave 3
	note G_, 2
	volume_envelope 13, 1
	octave 4
	note D_, 1
	note E_, 1
	note F_, 2
	note F_, 2
	note F_, 2
	volume_envelope 10, 3
	octave 3
	note B_, 4
	octave 4
	note C_, 2
	octave 3
	note B_, 2
	note A_, 2
	note G_, 2
	note D_, 4
	note D_, 4
	duty_cycle 3
	octave 2
	note A_, 2
	note B_, 2
	duty_cycle 2
	volume_envelope 13, 1
	octave 4
	note A_, 1
	note G_, 1
	note F_, 2
	note F_, 2
	note F_, 2
	volume_envelope 10, 3
	note D_, 6
	octave 3
	note B_, 2
	octave 4
	note C_, 2
	octave 3
	note B_, 2
	note D_, 4
	note D_, 4
	duty_cycle 3
	note F_, 2
	note G_, 2
	duty_cycle 2
	volume_envelope 13, 1
	octave 4
	note C_, 1
	note D_, 1
	note E_, 2
	note E_, 2
	note E_, 2
	volume_envelope 10, 3
	octave 3
	note A_, 4
	note G_, 2
	note F_, 4
	volume_envelope 13, 1
	note F_, 2
	note F_, 2
	note F_, 2
	volume_envelope 10, 3
	octave 4
	note D_, 4
	note C_, 2
	octave 3
	note B_, 2
	note A_, 2
	volume_envelope 10, 4
	note G_, 4
	note A_, 4
	note B_, 4
	note A_, 2
	note F_, 2
	note E_, 14
	note G_, 1
	octave 4
	note C_, 1
	sound_jump .mainloop

.sub1:
	duty_cycle 2
	volume_envelope 13, 1
	octave 4
	note E_, 2
	note E_, 2
	note E_, 2
	octave 3
	note G_, 2
	duty_cycle 1
	octave 4
	note C_, 1
	octave 3
	note G_, 1
	note A_, 1
	note B_, 1
	octave 4
	note C_, 1
	note D_, 1
	note E_, 1
	note G_, 1
	sound_ret

.sub2:
	volume_envelope 10, 2
	octave 4
	note F_, 2
	note E_, 1
	volume_envelope 13, 1
	note F_, 1
	volume_envelope 10, 2
	note E_, 1
	volume_envelope 13, 1
	note F_, 1
	note E_, 1
	note D_, 1
	note C_, 1
	note D_, 1
	note C_, 1
	octave 3
	note B_, 1
	note A_, 1
	note G_, 1
	note A_, 1
	octave 4
	note C_, 1
	sound_ret

Music_MobileLinkBallad_Ch2:
_chan = 2
	note_type 12, 13, 1
	rest 2
	sound_call .sub1
	sound_call .sub3
	stereo_panning TRUE, TRUE
	duty_cycle 2
	octave 2
	note G_, 2
	note D_, 2
	octave 1
	note G_, 2
	octave 2
	note D_, 2
.mainloop:
	sound_call .sub4
	sound_call .sub6
	sound_call .sub4
	sound_call .sub7
	sound_call .sub3
	sound_call .sub8
	sound_call .sub1
	sound_call .sub9
	sound_call .sub10
	sound_call .sub11
	sound_call .sub12
	sound_call .sub13
	sound_call .sub4
	sound_call .sub6
	sound_call .sub14
	sound_call .sub15
	sound_call .sub4
	sound_call .sub6
	sound_call .sub4
	sound_call .sub7
	sound_call .sub3
	sound_call .sub8
	sound_call .sub1
	sound_call .sub9
	sound_call .sub10
	sound_call .sub11
	sound_call .sub12
	sound_call .sub13
	sound_call .sub4
	sound_call .sub4
	sound_call .sub15
	sound_call .sub14
	sound_call .sub10
	sound_call .sub13
	sound_call .sub12
	sound_call .sub11
	sound_call .sub16
	sound_call .sub1
	sound_call .sub8
	sound_call .sub3
	sound_call .sub9
	sound_call .sub16
	sound_call .sub4
	stereo_panning TRUE, TRUE
	duty_cycle 2
	octave 1
	note E_, 2
	sound_call .sub5
	sound_call .sub1
	sound_call .sub8
	stereo_panning TRUE, TRUE
	duty_cycle 2
	octave 2
	note D_, 2
	sound_call .sub2
	stereo_panning TRUE, TRUE
	duty_cycle 2
	octave 2
	note E_, 2
	sound_call .sub2
	stereo_panning TRUE, TRUE
	duty_cycle 2
	octave 2
	note F_, 2
	stereo_panning FALSE, TRUE
	duty_cycle 1
	octave 3
	note C_, 1
	note F_, 1
	stereo_panning TRUE, TRUE
	duty_cycle 2
	octave 1
	note A_, 2
	stereo_panning FALSE, TRUE
	duty_cycle 1
	octave 3
	note C_, 1
	note F_, 1
	sound_call .sub10
	sound_call .sub11
	sound_call .sub12
	sound_call .sub13
	sound_call .sub4
	sound_call .sub6
	sound_call .sub14
	sound_call .sub15
	sound_jump .mainloop

.sub1:
	stereo_panning TRUE, TRUE
	duty_cycle 2
	octave 1
	note F_, 2
.sub2:
	stereo_panning FALSE, TRUE
	duty_cycle 1
	octave 2
	note A_, 1
	octave 3
	note F_, 1
	sound_ret

.sub3:
	stereo_panning TRUE, TRUE
	duty_cycle 2
	octave 2
	note F_, 2
	sound_jump .sub2

.sub4:
	stereo_panning TRUE, TRUE
	duty_cycle 2
	octave 2
	note C_, 2
.sub5:
	stereo_panning FALSE, TRUE
	duty_cycle 1
	octave 2
	note G_, 1
	octave 3
	note E_, 1
	sound_ret

.sub6:
	stereo_panning TRUE, TRUE
	duty_cycle 2
	octave 1
	note G_, 2
	sound_jump .sub5

.sub7:
	stereo_panning TRUE, TRUE
	duty_cycle 2
	octave 2
	note E_, 2
	sound_jump .sub5

.sub8:
	stereo_panning TRUE, TRUE
	duty_cycle 2
	octave 2
	note C_, 2
	sound_jump .sub2

.sub9:
	stereo_panning TRUE, TRUE
	duty_cycle 2
	octave 1
	note A_, 2
	sound_jump .sub2

.sub10:
	stereo_panning TRUE, TRUE
	duty_cycle 2
	octave 1
	note G_, 2
.sub10_f11_12_13:
	stereo_panning FALSE, TRUE
	duty_cycle 1
	octave 2
	note B_, 1
	octave 3
	note F_, 1
	sound_ret

.sub11:
	stereo_panning TRUE, TRUE
	duty_cycle 2
	octave 1
	note A_, 2
	sound_jump .sub10_f11_12_13

.sub12:
	stereo_panning TRUE, TRUE
	duty_cycle 2
	octave 1
	note B_, 2
	sound_jump .sub10_f11_12_13

.sub13:
	stereo_panning TRUE, TRUE
	duty_cycle 2
	octave 2
	note D_, 2
	sound_jump .sub10_f11_12_13

.sub14:
	stereo_panning TRUE, TRUE
	duty_cycle 2
	octave 1
	note A_, 2
	sound_jump .sub5

.sub15:
	stereo_panning TRUE, TRUE
	duty_cycle 2
	octave 1
	note B_, 2
	sound_jump .sub5

.sub16:
	stereo_panning TRUE, TRUE
	duty_cycle 2
	octave 1
	note G_, 2
	stereo_panning FALSE, TRUE
	duty_cycle 1
	octave 2
	note B_, 1
	octave 3
	note G_, 1
	stereo_panning TRUE, TRUE
	duty_cycle 2
	octave 1
	note A_, 2
	stereo_panning FALSE, TRUE
	duty_cycle 1
	octave 2
	note B_, 1
	octave 3
	note G_, 1
	stereo_panning TRUE, TRUE
	duty_cycle 2
	octave 1
	note B_, 2
	stereo_panning FALSE, TRUE
	duty_cycle 1
	octave 2
	note B_, 1
	octave 3
	note G_, 1
	stereo_panning TRUE, TRUE
	duty_cycle 2
	octave 2
	note D_, 2
	stereo_panning FALSE, TRUE
	duty_cycle 1
	octave 2
	note B_, 1
	octave 3
	note G_, 1
	sound_ret

Music_MobileLinkBallad_Ch3:
_chan = 3
	stereo_panning TRUE, TRUE
	vibrato 12, 1, 3
	note_type 6, 1, 13
	octave 4
	note F_, 2
	note A_, 2
	octave 5
	note C_, 2
	octave 4
	note B_, 2
	octave 5
	note C_, 2
	rest 2
	octave 4
	note A_, 2
	note F_, 2
	note A_, 2
	rest 2
	note B_, 2
	rest 2
	note A_, 2
	rest 2
	note G_, 2
	rest 2
	volume_envelope 1, 12
	octave 5
	note E_, 2
	note F_, 2
.mainloop:
	sound_call .sub1
	note G_, 8
	note F_, 8
	note G_, 8
	note D_, 8
	note E_, 16
	rest 12
	note E_, 2
	note F_, 2
	sound_call .sub1
	note B_, 8
	note G_, 8
	octave 6
	note D#, 1
	note E_, 5
	volume_envelope 2, 12
	note F_, 1
	note E_, 1
	volume_envelope 1, 12
	note D_, 8
	note C_, 16
	rest 12
	volume_envelope 2, 7
	octave 4
	note B_, 2
	octave 5
	note C_, 2
	note D_, 2
	rest 2
	note D_, 2
	rest 2
	note D_, 2
	rest 2
	note E_, 1
	note F_, 7
	note E_, 4
	note D_, 4
	note C_, 4
	octave 4
	note B_, 8
	rest 12
	volume_envelope 2, 5
	octave 3
	note F_, 4
	note G_, 4
	volume_envelope 2, 7
	octave 5
	note C_, 2
	octave 4
	note B_, 2
	note A_, 2
	rest 2
	note A_, 2
	rest 2
	note A_, 2
	rest 2
	note A#, 1
	note B_, 7
	octave 5
	note C_, 4
	note D_, 4
	note E_, 4
	note D_, 8
	rest 12
	volume_envelope 2, 5
	octave 3
	note A_, 4
	note B_, 4
	volume_envelope 1, 0
	octave 6
	note E_, 2
	note F_, 2
	note G_, 2
	rest 2
	note G_, 2
	rest 2
	note G_, 2
	rest 2
	note F_, 8
	note E_, 4
	note D_, 4
	note C_, 2
	octave 5
	note B_, 2
	note A_, 2
	rest 2
	note A_, 2
	rest 2
	note A_, 2
	rest 2
	octave 6
	note F_, 8
	note E_, 4
	note D_, 4
	octave 5
	note G_, 2
	note A_, 2
	note B_, 16
	rest 8
	octave 6
	note C#, 1
	note D_, 5
	volume_envelope 2, 0
	note E_, 1
	note D_, 1
	note_type 12, 1, 0
	note C_, 12
	rest 2
	note_type 6, 1, 12
	octave 5
	note C_, 2
	note E_, 2
	sound_jump .mainloop

.sub1:
	octave 5
	note G_, 2
	rest 2
	note G_, 2
	rest 2
	note G_, 2
	rest 2
	octave 6
	note C_, 8
	octave 5
	note B_, 4
	note A_, 4
	note F_, 2
	note G_, 2
	note A_, 2
	rest 2
	note A_, 2
	rest 2
	note A_, 2
	rest 2
	octave 6
	note D_, 8
	note C_, 4
	octave 5
	note B_, 4
	note A_, 4
	sound_ret

Music_MobileLinkBallad_Ch4:
_chan = 4
	toggle_noise 8
	stereo_panning TRUE, TRUE
	drum_speed 12
	rest 2
	rest 16
.mainloop:
	sound_call .sub1
	drum_note 1, 1
	drum_note 4, 1
	drum_note 9, 1
	drum_note 4, 1
	drum_note 2, 1
	drum_note 7, 1
	drum_note 8, 1
	drum_note 9, 1
	drum_note 1, 1
	drum_note 9, 1
	drum_note 4, 1
	drum_note 4, 1
	drum_note 3, 1
	drum_note 7, 1
	drum_note 1, 1
	drum_note 7, 1
	sound_call .sub1
	drum_note 1, 1
	drum_note 8, 1
	drum_note 8, 1
	drum_note 4, 1
	drum_note 2, 1
	drum_note 8, 1
	drum_note 1, 1
	drum_note 8, 1
	drum_note 1, 1
	drum_note 7, 1
	drum_note 9, 1
	drum_note 4, 1
	drum_note 3, 1
	rest 1
	drum_note 9, 1
	drum_note 10, 1
	sound_jump .mainloop

.sub1:
	drum_note 1, 1
	drum_note 4, 1
	drum_note 9, 1
	drum_note 4, 1
	drum_note 2, 1
	drum_note 9, 1
	drum_note 4, 1
	drum_note 4, 1
	drum_note 1, 1
	drum_note 7, 1
	drum_note 9, 1
	drum_note 4, 1
	drum_note 2, 1
	drum_note 8, 1
	drum_note 8, 1
	drum_note 4, 1
	sound_ret
