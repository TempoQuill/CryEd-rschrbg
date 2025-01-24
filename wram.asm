SECTION "Audio RAM", WRAM0[$c000] ; Gold/Silver/Ray
;SECTION "Audio RAM", WRAM0[$c100] ; Crystal
;SECTION "Audio RAM", sram[$b858]  ; CrysAudio

; nonzero if playing
wMusicPlaying:: db

wChannels::
	table_width CHANNEL_STRUCT_LENGTH, wChannels
wChannel1:: channel_struct wChannel1
wChannel2:: channel_struct wChannel2
wChannel3:: channel_struct wChannel3
wChannel4:: channel_struct wChannel4
	assert_table_length NUM_MUSIC_CHANS
wChannel5:: channel_struct wChannel5
wChannel6:: channel_struct wChannel6
wChannel7:: channel_struct wChannel7
wChannel8:: channel_struct wChannel8
	assert_table_length NUM_CHANNELS

wFrameSwap:: db

wCurTrackDuty:: db
wCurTrackVolumeEnvelope:: db
wCurTrackFrequency:: dw

	ds 1

wCurNoteDuration:: db ; used in MusicE0 and LoadNote
wCurMusicByte:: db
wCurChannel:: db

wVolume::
; corresponds to rNR50
; Channel control / ON-OFF / Volume (R/W)
;   bit 7 - Vin->SO2 ON/OFF
;   bit 6-4 - SO2 output level (volume) (# 0-7)
;   bit 3 - Vin->SO1 ON/OFF
;   bit 2-0 - SO1 output level (volume) (# 0-7)
	db
wSoundOutput::
; corresponds to rNR51
; bit 4-7: ch1-4 so2 on/off
; bit 0-3: ch1-4 so1 on/off
	db
wPitchSweep::
; corresponds to rNR10
; bit 7:   unused
; bit 4-6: sweep time
; bit 3:   sweep direction
; but 0-2: sweep shift
	db

wMusicID:: dw
wMusicBank:: db
wNoiseSampleAddress:: dw
wNoiseSampleDelay:: db
	ds 1
wMusicNoiseSampleSet:: db
wSFXNoiseSampleSet:: db

wLowHealthAlarm::
; bit 7: on/off
; bit 4: pitch
; bit 0-3: counter
	db

wMusicFade::
; fades volume over x frames
; bit 7: fade in/out
; bit 0-5: number of frames for each volume level
; $00 = none (default)
	db
wMusicFadeCount:: db
wMusicFadeID:: dw

wSavedPitch:: ds 4
	ds 1

wCryPitch:: dw
wCryLength:: dw

wLastVolume:: db
wSoundEventFlag:: db
	ds 1
; if nonzero, turn off music when playing sfx
wSFXPriority:: db


wChannel1JumpCondition:: db
wChannel2JumpCondition:: db
wChannel3JumpCondition:: db
wChannel4JumpCondition:: db

wStereoPanningMask:: db

wSFXTracks::
; plays only in left or right track depending on what side the monster is on
; both tracks active outside of battle
	db

wSFXDuration:: db
wCurSFX::
; id of sfx currently playing
	db

wChannelsEnd::

wMapMusic:: db
	ds 3

wDontPlayMapMusicOnReload:: db
wMusicEnd::

; wOptions EQU $ba19 ; CrysAudio
wOptions EQU $d199 ; Ray
; wOptions EQU $d18f ; Gold/Silver

; wPlayerState EQU $ba1b ; CrysAudio
wPlayerState EQU $d682 ; Ray
; wPlayerState EQU $d6c8 ; Gold/Silver

section	"Variables",wram0[$c400]

SpriteBuffer:			ds	40*4	; 40 sprites, 4 bytes each

sys_GBType:			ds	1
sys_Errno:			ds	1
sys_CurrentFrame:		ds	1
sys_ResetTimer:			ds	1
sys_btnPress:			ds	1
sys_btnHold:			ds	1
sys_VBlankFlag:			ds	1
sys_TimerFlag:			ds	1
sys_LCDCFlag:			ds	1
sys_MenuPos:			ds	1
sys_MenuMax:			ds	1
sys_VBlankID:			ds	1
sys_StatID:			ds	1
sys_TimerID:			ds	1
sys_ImportPos:			ds	2

CryEdit_CryBase:		ds	2
CryEdit_CryPitch:		ds	2
CryEdit_CryLength:		ds	2

SelectedSaveSlot:		ds	1
CryEdit_SoundEffect:		ds	1
CryEdit_Music:			ds	2

wCryDisplayData::		ds	6

wMusicViewerArea::
wDisplaySquare1::		sq_struct wDisplaySquare1
wDisplaySquare2::		sq_struct wDisplaySquare2
wDisplayWAV::			wav_struct wDisplayWAV
wDisplayNoise::			drum_struct wDisplayNoise
wMusicViewerAreaEnd::

wDisplayScriptID::

section "audio script area", WRAM0[$c500]

; 00 - endscript
; f2 - music off
; f3 - music on
; f4 - wait for sfx
; f5 - skip frames
; f6 - silence
; f7 - music
; f8 - cry
; f9 - sfx
; fa - extend script
; fb - restart script
; fc - new script
; fd - offset jump
; fe - loop
; ff - loop_end
wAudioScript_WorkArea:
wAudioScript_Delay:
	db
wAudioScript_Pointer:
	dw
wAudioScript_Offset:
	db
wAudioScript_LoopOffset:
	db
wAudioScript_LoopCounter:
	db
wAudioScript_WorkAreaEnd:
wAudioScript_Cue:
	db
wAudioScript_ScriptArea:
	ds 256
wAudioScript_ScriptAreaEnd:

section	"Hram", HRAM[$FF80]

INCLUDE "hram.asm"
