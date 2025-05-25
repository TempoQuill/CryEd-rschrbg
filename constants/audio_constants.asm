; pitch
; FrequencyTable indexes (see audio/notes.asm)
	const_def 1
	const C_ ; 1
	const C# ; 2
	const D_ ; 3
	const D# ; 4
	const E_ ; 5
	const F_ ; 6
	const F# ; 7
	const G_ ; 8
	const G# ; 9
	const A_ ; a
	const A# ; b
	const B_ ; c
NUM_NOTES EQU const_value - 1

; channel
; ChannelPointers indexes (see audio/engine.asm)
	const_def
	const CHAN1 ; 0
	const CHAN2 ; 1
	const CHAN3 ; 2
	const CHAN4 ; 3
NUM_MUSIC_CHANS EQU const_value
	const CHAN5 ; 4
	const CHAN6 ; 5
	const CHAN7 ; 6
	const CHAN8 ; 7
NUM_NOISE_CHANS EQU const_value - NUM_MUSIC_CHANS
NUM_CHANNELS EQU const_value

; channel_struct members (see macros/wram.asm)
rsreset
CHANNEL_MUSIC_ID                    rw
CHANNEL_MUSIC_BANK                  rb
CHANNEL_FLAGS1                      rb
CHANNEL_FLAGS2                      rb
CHANNEL_FLAGS3                      rb
CHANNEL_MUSIC_ADDRESS               rw
CHANNEL_LAST_MUSIC_ADDRESS          rw
CHANNEL_DEEP_MUSIC_ADDRESS          rw
CHANNEL_NOTE_FLAGS                  rb
CHANNEL_CONDITION                   rb
CHANNEL_DUTY_CYCLE                  rb
CHANNEL_VOLUME_ENVELOPE             rb
CHANNEL_FREQUENCY                   rw
CHANNEL_PITCH                       rb
CHANNEL_OCTAVE                      rb
CHANNEL_TRANSPOSITION               rb
CHANNEL_NOTE_DURATION               rw
CHANNEL_PITCH_INC_SWITCH            rb
CHANNEL_LOOP_COUNT                  rb
CHANNEL_TEMPO                       rw
CHANNEL_TRACKS                      rb
CHANNEL_DUTY_CYCLE_PATTERN          rb
CHANNEL_VIBRATO_COUNTER             rb
CHANNEL_VIBRATO_PREAMBLE            rb
CHANNEL_VIBRATO_DEPTH               rb
CHANNEL_VIBRATO_TIMER               rb
CHANNEL_PITCH_SLIDE_TARGET          rw
CHANNEL_PITCH_SLIDE_AMOUNT          rb
CHANNEL_PITCH_SLIDE_FRACTION        rb
CHANNEL_PITCH_SLIDE_TEMPO           rb
CHANNEL_STACCATO_COUNTER            rb
CHANNEL_PITCH_OFFSET                rw
CHANNEL_RELATIVE_PITCH              rb
CHANNEL_ENV_SEQUENCE                rb
CHANNEL_ENV_SEQUENCE_OFFSET         rb
CHANNEL_STACCATO                    rb
CHANNEL_NOTE_LENGTH                 rb
CHANNEL_BACKUP_OCTAVE               rb
CHANNEL_DUTY_SEQUENCE               rb
CHANNEL_DUTY_SEQUENCE_OFFSET        rw
CHANNEL_STRUCT_LENGTH EQU _RS

NOISE_CHAN_F EQU 2 ; bit set in CHAN5-CHAN7

; Flags1
	const_def
	const SOUND_CHANNEL_ON       ; 0
	const SOUND_SUBROUTINE       ; 1
	const SOUND_LOOPING          ; 2
	const SOUND_READING_MODE     ; 3
	const SOUND_NOISE            ; 4
	const SOUND_CRY              ; 5
	const SOUND_PITCH_INC_SWITCH ; 6
	const SOUND_OCTAVE_PLUCK     ; 7

; Flags2
	const_def
	const SOUND_VIBRATO        ; 0
	const SOUND_PITCH_SLIDE    ; 1
	const SOUND_DUTY_LOOP      ; 2
	const SOUND_STACCATO       ; 3
	const SOUND_PITCH_OFFSET   ; 4
	const SOUND_ENV_SEQUENCE   ; 5
	const SOUND_RELATIVE_PITCH ; 6
	const SOUND_DUTY_SEQUENCE  ; 7

; Flags3
	const_def
	const SOUND_VIBRATO_DIR     ; 0
	const SOUND_PITCH_SLIDE_DIR ; 1
	const SOUND_REL_PITCH_FLAG  ; 2
	const SOUND_PLUCK_HANDLING  ; 3
	const SOUND_FIFTHS_PLUCK    ; 4
	const SOUND_TIE             ; 5
	const SOUND_RESTORE         ; 6

; NoteFlags
	const_def
	const NOTE_DUTY_OVERRIDE    ; 0
	const NOTE_FREQ_OVERRIDE    ; 1
	const NOTE_ENV_OVERRIDE     ; 2
	const NOTE_PITCH_SWEEP      ; 3
	const NOTE_NOISE_SAMPLING   ; 4
	const NOTE_REST             ; 5
	const NOTE_VIBRATO_OVERRIDE ; 6
NOTE_VOLUME_OVERRIDE EQU NOTE_PITCH_SWEEP

; wVolume
VOLUME_SO1_F     EQU 3
VOLUME_SO2_F     EQU 7
VOLUME_SO1_LEVEL EQU %00000111
VOLUME_SO2_LEVEL EQU %01110000
MAX_VOLUME       EQU $77

; wSoundInput
SOUND_INPUT_CH1_F    EQU 0
SOUND_INPUT_CH2_F    EQU 1
SOUND_INPUT_CH3_F    EQU 2
SOUND_INPUT_CH4_F    EQU 3
SOUND_INPUT_GLOBAL_F EQU 7

; wLowHealthAlarm
DANGER_PITCH_F EQU 4
DANGER_ON_F    EQU 7

; wSFXPriority
SOUND_PRIORITY_F EQU 0

; wSoundEventFlag
SOUND_EVENT_F EQU 0

; wMusicPlaying
MUSIC_ON_F EQU 0

; ch3 wavetable constants
	const_def
	const RED_POKECENTER     ; 0:  02468acefffeeddccba9876544332211
	const RED_PROFESSOR_OAK  ; 1:  02468aceeffffeeeddcba98765432211
	const RED_PALLET_TOWN    ; 2:  1369bdeeeeffffeddeffffeeeedb9631
	const RED_CELADON_CITY   ; 3:  02468acdeffedeffeedcba9876543210
	const RED_RIVAL_BLUE     ; 4:  012345678acdeef77feedca876543210
	const PINBALL_LOW        ; 5:  0011223344332211ffeeccaa88aaccee
	const GOLD_CHERRYGROVE   ; 6:  02468acecba98765fffeeddc44332211
	const GOLD_DARK_CAVE     ; 7:  c0a987f5fffeeddc443322f102468ace
	const GOLD_MT_MOON       ; 8:  4433221f00468acef8feeddccba98765
	const GOLD_VS_JOHTO_GYM  ; 9:  110000080013579ab4baa99887654321
	const RAY_TEAM_HAVOC     ; a:  012345678acdeeffffeedca876543210
	const YOSHI_NT_STARMAN   ; b:  bbffffffffffffbb4400000000000044
	const YOSHI_NT_MUSHROOM  ; c:  011234579bdffedcba98765443322111
	const RAY_CREDITS        ; d:  8899aabbccbbaa997766442200224466
	const RAY_NORGEO_TOWN    ; e:  aabbddeeffeeddbb9988553300335588
	const RAY_CASTLE_1       ; f:  04878cb77bfcaca548cbbfc85aca5851
	const RAY_CASTLE_2       ; 10: 9befe9532369a8531037985321257aa8
	const SPEEDYG_LGB_BASS   ; 11: 63001245555433334567678beffdba98
	const SPEEDYG_LGB_SYNTH  ; 12: adedccccb5017dfc524affb658dfec99
	const RSE_FLUTE          ; 13: 9dffda99974201369dffdb9997520136
	const RSE_ACCORDION      ; 14: 7778ba9984200253333487679aefffea
	const RSE_NYLON_GUITAR   ; 15: 11000123679abcdffffedbbbbba86422
	const SPEEDYG_LGB_ORGAN  ; 16: 7656606beefefcc8a756602553347564
	const SPEEDYG_LGB_SINE   ; 17: 75421100001124578abdeffffffedba8
	const RSE_TRUMPET        ; 18: fededc8039ffdefffeddec913affdeff
	const UTOPIA_COAN_PAD    ; 19: 5468aefdb87546665454434651012103
	const UTOPIA_COAN_VOX    ; 1a: 259dffdb988999888899999898875200
	const PANEL_DE_PON_PAD   ; 1b: 88a8aceefa853267855010578c863334
	const B303_HRII_BASS     ; 1c: 9975410147cfffecba99989999999889
	const AAOO_INSIDE_BASS   ; 1d: 78778765776522357aeffed853101256
	const RSE_ORGAN          ; 1e: 20037acceffda8898656775457875333
	const FRLG_DISTORTED_LOW ; 1f: 8993122a997203042367b89b5486bfff
NUM_WAVS EQU const_value

; ch3 masks
WAVE_TABLE_MASK EQU %00011111
WAVE_VOLUME_MASK EQU %11100000

; wMusicFade
MUSIC_FADE_IN_F EQU 7
