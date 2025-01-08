section "Audio stubs",rom0
; Audio interfaces.

InitSound::
	push hl
	push de
	push bc
	push af

	ldh a, [hROMBank]
	push af
	ld a, BANK(_InitSound)
	ldh [hROMBank], a
	ld [MBC3RomBank], a

	call _InitSound

	pop af
	ldh [hROMBank], a
	ld [MBC3RomBank], a

	pop af
	pop bc
	pop de
	pop hl
	ret

UpdateSound::
	push hl
	push de
	push bc
	push af

	ldh a, [hROMBank]
	push af
	ld a, BANK(_UpdateSound)
	ldh [hROMBank], a
	ld [MBC3RomBank], a

	call _UpdateSound

	pop af
	ldh [hROMBank], a
	ld [MBC3RomBank], a

	pop af
	pop bc
	pop de
	pop hl
	ret

_LoadMusicByte::
; [wCurMusicByte] = [a:de]
	ldh [hROMBank], a
	ld [MBC3RomBank], a

	ld a, [de]
	ld [wCurMusicByte], a
	ld a, BANK(LoadMusicByte)

	ldh [hROMBank], a
	ld [MBC3RomBank], a
	ret

PlayMusic::
; Play music de.

	push hl
	push de
	push bc
	push af

	ldh a, [hROMBank]
	push af
	ld a, BANK(_PlayMusic) ; aka BANK(_InitSound)
	ldh [hROMBank], a
	ld [MBC3RomBank], a

	ld a, e
	and a
	jr z, .nomusic

	call _PlayMusic
	jr .end

.nomusic
	call _InitSound

.end
	pop af
	ldh [hROMBank], a
	ld [MBC3RomBank], a
	pop af
	pop bc
	pop de
	pop hl
	ret

PlayCry::
; Play cry de.

	push hl
	push de
	push bc
	push af

	ldh a, [hROMBank]
	push af

	; Cries are stuck in one bank.
	ld a, BANK(PokemonCries)
	ldh [hROMBank], a
	ld [MBC3RomBank], a

	ld hl, PokemonCries
rept 6
	add hl, de
endr

	ld e, [hl]
	inc hl
	ld d, [hl]
	inc hl

	ld a, [hli]
	ld [wCryPitch], a
	ld a, [hli]
	ld [wCryPitch + 1], a
	ld a, [hli]
	ld [wCryLength], a
	ld a, [hl]
	ld [wCryLength + 1], a

	ld a, BANK(_PlayCry)
	ldh [hROMBank], a
	ld [MBC3RomBank], a

	call _PlayCry

	pop af
	ldh [hROMBank], a
	ld [MBC3RomBank], a

	pop af
	pop bc
	pop de
	pop hl
	ret

PlaySFX::
; Play sound effect de.
; Sound effects are ordered by priority (highest to lowest)

	push hl
	push de
	push bc
	push af


	; Is something already playing?
	call CheckSFX
	jr nc, .play


	; Does it have priority?
	ld a, [wCurSFX]
	cp e
	jr c, .done

.play

	ldh a, [hROMBank]
	push af
	ld a, BANK(_PlaySFX)
	ldh [hROMBank], a
	ld [MBC3RomBank], a

	ld a, e
	ld [wCurSFX], a
	call _PlaySFX

	pop af
	ldh [hROMBank], a
	ld [MBC3RomBank], a

.done
	pop af
	pop bc
	pop de
	pop hl
	ret

WaitPlaySFX::
	call WaitSFX
	call PlaySFX
	ret

WaitSFX::
; infinite loop until sfx is done playing

	push hl

.wait
	ld hl, wChannel5Flags1
	bit 0, [hl]
	jr nz, .wait
	ld hl, wChannel6Flags1
	bit 0, [hl]
	jr nz, .wait
	ld hl, wChannel7Flags1
	bit 0, [hl]
	jr nz, .wait
	ld hl, wChannel8Flags1
	bit 0, [hl]
	jr nz, .wait

	pop hl
	ret

IsSFXPlaying::
; Return carry if no sound effect is playing.
; The inverse of CheckSFX.
	push hl
	ld hl, wChannel5Flags1
	bit 0, [hl]
	jr nz, .playing
	ld hl, wChannel6Flags1
	bit 0, [hl]
	jr nz, .playing
	ld hl, wChannel7Flags1
	bit 0, [hl]
	jr nz, .playing
	ld hl, wChannel8Flags1
	bit 0, [hl]
	jr nz, .playing
	pop hl
	scf
	ret

.playing
	pop hl
	and a
	ret

MaxVolume::
	ld a, MAX_VOLUME
	ld [wVolume], a
	ret

LowVolume::
	ld a, $33 ; 50%
	ld [wVolume], a
	ret

MinVolume::
	xor a
	ld [wVolume], a
	ret

FadeOutToMusic:: ; unreferenced
	ld a, 4
	ld [wMusicFade], a
	ret

FadeInToMusic::
	ld a, 4 | (1 << MUSIC_FADE_IN_F)
	ld [wMusicFade], a
	ret

CheckSFX::
; Return carry if any SFX channels are active.
	ld a, [wChannel5Flags1]
	bit 0, a
	jr nz, .playing
	ld a, [wChannel6Flags1]
	bit 0, a
	jr nz, .playing
	ld a, [wChannel7Flags1]
	bit 0, a
	jr nz, .playing
	ld a, [wChannel8Flags1]
	bit 0, a
	jr nz, .playing
	and a
	ret
.playing
	scf
	ret

TerminateExpBarSound::
	xor a
	ld [wChannel5Flags1], a
	ld [wPitchSweep], a
	ldh [rNR10], a
	ldh [rNR11], a
	ldh [rNR12], a
	ldh [rNR13], a
	ldh [rNR14], a
	ret

ChannelsOff::
; Quickly turn off music channels
	xor a
	ld [wChannel1Flags1], a
	ld [wChannel2Flags1], a
	ld [wChannel3Flags1], a
	ld [wChannel4Flags1], a
	ld [wPitchSweep], a
	ret

SFXChannelsOff::
; Quickly turn off sound effect channels
	xor a
	ld [wChannel5Flags1], a
	ld [wChannel6Flags1], a
	ld [wChannel7Flags1], a
	ld [wChannel8Flags1], a
	ld [wPitchSweep], a
	ret


SECTION "Audio", ROMX[$4000],bank[2]

INCLUDE "audio/engine.asm"
INCLUDE "audio/notes.asm"
INCLUDE "audio/wave_samples.asm"
INCLUDE "audio/volume_envelope_groups.asm"
INCLUDE "audio/wavetable_groups.asm"
INCLUDE "audio/duty_sequences.asm"
INCLUDE "audio/drumkits.asm"
INCLUDE "audio/music_pointers.asm"
INCLUDE "audio/music/nothing.asm"
INCLUDE "audio/cry_pointers.asm"
INCLUDE "audio/sfx_pointers.asm"

SECTION "Songs 1", ROMX,bank[4]

INCLUDE "audio/music/stereo/route55.asm"
INCLUDE "audio/music/stereo/partyhostbattle.asm"
INCLUDE "audio/music/stereo/shaggybattle.asm"
INCLUDE "audio/music/stereo/larch.asm"
INCLUDE "audio/music/stereo/lanaweforest.asm"
INCLUDE "audio/music/stereo/gymbattle.asm"
INCLUDE "audio/music/stereo/parkerbattle.asm"
INCLUDE "audio/music/stereo/ssvapor.asm"
INCLUDE "audio/music/stereo/cottagetown.asm"
INCLUDE "audio/music/stereo/portitecity.asm"
INCLUDE "audio/music/stereo/titlescreen.asm"
INCLUDE "audio/music/stereo/dilappokecenter.asm"
INCLUDE "audio/music/stereo/trainervictory.asm"
INCLUDE "audio/music/stereo/watchinovermejingle.asm"
INCLUDE "audio/music/stereo/timecapsulemenu.asm"
INCLUDE "audio/music/stereo/pokeflutemedley.asm"
INCLUDE "audio/music/stereo/bestfriendslullaby.asm"
INCLUDE "audio/music/stereo/morninginequintomarch.asm"

SECTION "Songs 2", ROMX,bank[5]

INCLUDE "audio/music/stereo/pokecenter.asm"
INCLUDE "audio/music/stereo/lookgirl.asm"
INCLUDE "audio/music/stereo/lookwarden.asm"
INCLUDE "audio/music/stereo/eastcoaststop.asm"
INCLUDE "audio/music/stereo/mtvacuum.asm"
INCLUDE "audio/music/stereo/hurryalong.asm"
INCLUDE "audio/music/stereo/gamecorner.asm"
INCLUDE "audio/music/stereo/bicycle.asm"
INCLUDE "audio/music/stereo/lighthouse.asm"
INCLUDE "audio/music/stereo/equintoleague.asm"
INCLUDE "audio/music/stereo/hideout.asm"
INCLUDE "audio/music/stereo/lookwoman.asm"
INCLUDE "audio/music/stereo/route61.asm"
INCLUDE "audio/music/stereo/lookartist.asm"
INCLUDE "audio/music/stereo/healalternate.asm"
INCLUDE "audio/music/stereo/houseenroute.asm"
INCLUDE "audio/music/stereo/lookpartyhost.asm"
INCLUDE "audio/music/stereo/route53.asm"

SECTION "Songs 3", ROMX,bank[2]

INCLUDE "audio/music/stereo/stamptown.asm"
INCLUDE "audio/music/stereo/route49.asm"
INCLUDE "audio/music/stereo/halloffame.asm"
INCLUDE "audio/music/healpokemon.asm"
INCLUDE "audio/music/stereo/event.asm"
INCLUDE "audio/music/stereo/printer.asm"
INCLUDE "audio/music/stereo/staffroll.asm"
INCLUDE "audio/music/stereo/theend.asm"

SECTION "Songs 4", ROMX,bank[6]

INCLUDE "audio/music/stereo/hypercoincity.asm"
INCLUDE "audio/music/stereo/wildvictory.asm"
INCLUDE "audio/music/stereo/gymvictory.asm"
INCLUDE "audio/music/stereo/looksibs.asm"
INCLUDE "audio/music/stereo/gym.asm"
INCLUDE "audio/music/stereo/oddishfarm.asm"
INCLUDE "audio/music/stereo/rival.asm"
INCLUDE "audio/music/stereo/surf.asm"
INCLUDE "audio/music/stereo/golempalace.asm"
INCLUDE "audio/music/stereo/norgeotown.asm"
INCLUDE "audio/music/stereo/traversalcity.asm"
INCLUDE "audio/music/stereo/sunkernswamp.asm"
INCLUDE "audio/music/stereo/wildbattle.asm"
INCLUDE "audio/music/stereo/trainerbattle.asm"
INCLUDE "audio/music/stereo/lookyouth.asm"
INCLUDE "audio/music/stereo/mom.asm"
INCLUDE "audio/music/stereo/trademenu.asm"
INCLUDE "audio/music/stereo/departure.asm"
INCLUDE "audio/music/stereo/rayshadeopening1.asm"
INCLUDE "audio/music/stereo/rayshadeopening2.asm"
INCLUDE "audio/music/stereo/lookmaniac.asm"
INCLUDE "audio/music/stereo/lookhavoc.asm"
INCLUDE "audio/music/stereo/teamhavoctheme.asm"
INCLUDE "audio/music/stereo/mainmenu.asm"

SECTION "Sound Effects", ROMX,bank[3]

INCLUDE "audio/sfx.asm"
INCLUDE "audio/cries.asm"
INCLUDE "audio/cries_proto.asm"


SECTION "Crydata", ROMX, bank[1]

INCLUDE "crydata.asm"
INCLUDE "protocrydata.asm"

SECTION "New Sound Effects", ROMX, bank[7]

INCLUDE "audio/sfx_crystal.asm"
INCLUDE "audio/fanfares.asm"
INCLUDE "audio/sfx_yoshi.asm"

Sfx_UnusedE8:
	channel_count 1
	channel 5, Sfx_UnusedE8_Ch5

Sfx_UnusedE9:
	channel_count 1
	channel 7, Sfx_UnusedE9_Ch7


SECTION "Chaos Audio", ROMX, bank[5]

INCLUDE "audio/music/chaos/mobilelinkballad.asm"
INCLUDE "audio/music/chaos/atthebattletower.asm"
INCLUDE "audio/music/chaos/findaprofileoption.asm"
INCLUDE "audio/music/chaos/pokecomcenter.asm"
INCLUDE "audio/music/chaos/chaosintro.asm"
INCLUDE "audio/music/chaos/pilottegere.asm"
INCLUDE "audio/music/chaos/battletowerlobby.asm"
INCLUDE "audio/music/chaos/lookzach.asm"
INCLUDE "audio/music/chaos/equinetriobattle.asm"
INCLUDE "audio/music/chaos/marloonencounter.asm"
INCLUDE "audio/sfx_chaos.asm"

SECTION "Heatred Music 1", ROMX, bank[8]

INCLUDE "audio/music/heatred/heal.asm"
INCLUDE "audio/music/heatred/route1.asm"
INCLUDE "audio/music/heatred/route24.asm"
INCLUDE "audio/music/heatred/route3.asm"
INCLUDE "audio/music/heatred/route11.asm"
INCLUDE "audio/music/heatred/indigoplateau.asm"
INCLUDE "audio/music/heatred/pallettown.asm"
INCLUDE "audio/music/heatred/trade.asm"
INCLUDE "audio/music/heatred/viridiancity.asm"
INCLUDE "audio/music/heatred/obtainitem0c.asm" ; sfx
INCLUDE "audio/music/heatred/followme.asm"
INCLUDE "audio/music/heatred/meetoak.asm"
INCLUDE "audio/music/heatred/meetrival.asm"
INCLUDE "audio/music/heatred/dexrating0c.asm" ; sfx
INCLUDE "audio/music/heatred/obtainhiddenitem0c.asm" ; sfx
INCLUDE "audio/music/heatred/keyitem0c.asm" ; sfx
INCLUDE "audio/music/heatred/ssanne.asm"
INCLUDE "audio/music/heatred/ceruleancity.asm"
INCLUDE "audio/music/heatred/celadoncity.asm"
INCLUDE "audio/music/heatred/cinnabarisland.asm"
INCLUDE "audio/music/heatred/vermillioncity.asm"
INCLUDE "audio/music/heatred/lavendertown.asm"
INCLUDE "audio/music/heatred/event.asm"
INCLUDE "audio/music/heatred/gym.asm"
INCLUDE "audio/music/heatred/pokecenter.asm"

SECTION "Heatred Music 2", ROMX, bank[9]

INCLUDE "audio/music/heatred/pokeflute0d.asm" ; sfx
INCLUDE "audio/music/heatred/entrustment.asm" ; sfx
INCLUDE "audio/music/heatred/gymfight.asm"
INCLUDE "audio/music/heatred/trainerfight.asm"
INCLUDE "audio/music/heatred/wildfight.asm"
INCLUDE "audio/music/heatred/finalbattle.asm"
INCLUDE "audio/music/heatred/newlevel.asm" ; sfx
INCLUDE "audio/music/heatred/obtainhiddenitem0d.asm" ; sfx
INCLUDE "audio/music/heatred/caughtnewmon.asm" ; sfx
INCLUDE "audio/music/heatred/trainervictory.asm"
INCLUDE "audio/music/heatred/wildvictory.asm"
INCLUDE "audio/music/heatred/gymvictory.asm"

SECTION "Sevii Islands", ROMX, bank[9]

INCLUDE "audio/music/heatred/seviiroute.asm"
INCLUDE "audio/music/heatred/island45.asm"
INCLUDE "audio/music/heatred/island67.asm"

SECTION "Heatred Music 3", ROMX, bank[10]

INCLUDE "audio/music/heatred/bikeriding.asm"
INCLUDE "audio/music/heatred/hideout.asm"
INCLUDE "audio/music/heatred/gamecorner.asm"
INCLUDE "audio/music/heatred/titlescreen.asm"
INCLUDE "audio/music/heatred/obtainitem0e.asm" ; sfx
INCLUDE "audio/music/heatred/viridianforest.asm"
INCLUDE "audio/music/heatred/mtmoon.asm"
INCLUDE "audio/music/heatred/mansion.asm"
INCLUDE "audio/music/heatred/dexrating0e.asm" ; sfx
INCLUDE "audio/music/heatred/obtainhiddenitem0e.asm" ; sfx
INCLUDE "audio/music/heatred/keyitem0e.asm" ; sfx
INCLUDE "audio/music/heatred/lab.asm"
INCLUDE "audio/music/heatred/pokemontower.asm"
INCLUDE "audio/music/heatred/silphco.asm"
INCLUDE "audio/music/heatred/badguy.asm"
INCLUDE "audio/music/heatred/girl.asm"
INCLUDE "audio/music/heatred/boy.asm"
INCLUDE "audio/music/heatred/intro.asm"
INCLUDE "audio/music/heatred/surfing.asm"
INCLUDE "audio/music/heatred/jigglypuffsong.asm"
INCLUDE "audio/music/heatred/halloffame.asm"
INCLUDE "audio/music/heatred/credits.asm"

SECTION "Anicom Music 1", ROMX, bank[11]

INCLUDE "audio/music/anicom/hedgetown.asm"
INCLUDE "audio/music/anicom/aquatown.asm"
INCLUDE "audio/music/anicom/angelcity.asm"
INCLUDE "audio/music/anicom/celltown.asm"
INCLUDE "audio/music/anicom/routes1.asm"
INCLUDE "audio/music/anicom/unionstation.asm"
INCLUDE "audio/music/anicom/gamingandtheater.asm"
INCLUDE "audio/music/chaos/lookzachog.asm"
INCLUDE "audio/music/anicom/credits.asm"
