MACRO mon_cry
; index, pitch, length
	dw \1, \2, \3
ENDM

PokemonCries::
; entries correspond to constants/pokemon_constants.asm
	mon_cry CRY_GYAOON,       $080,  $081 ; BULBASAUR
	mon_cry CRY_GYAOON,       $020,  $100 ; IVYSAUR
	mon_cry CRY_GYAOON,       $000,  $140 ; VENUSAUR
	mon_cry CRY_RHYHORN,      $060,  $0c0 ; CHARMANDER
	mon_cry CRY_RHYHORN,      $020,  $0c0 ; CHARMELEON
	mon_cry CRY_RHYHORN,      $000,  $100 ; CHARIZARD
	mon_cry CRY_KARABATHEO,   $060,  $0c0 ; SQUIRTLE
	mon_cry CRY_KARABATHEO,   $020,  $0c0 ; WARTORTLE
	mon_cry CRY_BLASTOISE,    $000,  $100 ; BLASTOISE
	mon_cry CRY_SCYTHER,      $080,  $0a0 ; CATERPIE
	mon_cry CRY_GASTLY,       $0cc,  $081 ; METAPOD
	mon_cry CRY_SCYTHER,      $077,  $0c0 ; BUTTERFREE
	mon_cry CRY_ARCANINE,     $0ee,  $081 ; WEEDLE
	mon_cry CRY_BLASTOISE,    $0ff,  $081 ; KAKUNA
	mon_cry CRY_BLASTOISE,    $060,  $100 ; BEEDRILL
	mon_cry CRY_PIP,          $0df,  $084 ; PIDGEY
	mon_cry CRY_PINSIR,       $028,  $140 ; PIDGEOTTO
	mon_cry CRY_PINSIR,       $011,  $17f ; PIDGEOT
	mon_cry CRY_RATTATA,      $000,  $100 ; RATTATA
	mon_cry CRY_RATTATA,      $020,  $17f ; RATICATE
	mon_cry CRY_SPEAROW,      $000,  $100 ; SPEAROW
	mon_cry CRY_SHELLDER,     $040,  $120 ; FEAROW
	mon_cry CRY_GYARADOS,     $012,  $0c0 ; EKANS
	mon_cry CRY_GYARADOS,     $0e0,  $090 ; ARBOK
	mon_cry CRY_GYAOON,       $0ee,  $081 ; PIKACHU
	mon_cry CRY_NIDOKING,     $0ee,  $088 ; RAICHU
	mon_cry CRY_NIDORAN_M,    $020,  $0c0 ; SANDSHREW
	mon_cry CRY_NIDORAN_M,    $0ff,  $17f ; SANDSLASH
	mon_cry CRY_NIDORAN_F,    $000,  $100 ; NIDORAN_F
	mon_cry CRY_NIDORAN_F,    $02c,  $160 ; NIDORINA
	mon_cry CRY_NIDOQUEEN,    $000,  $100 ; NIDOQUEEN
	mon_cry CRY_NIDORAN_M,    $000,  $100 ; NIDORAN_M
	mon_cry CRY_NIDORAN_M,    $02c,  $140 ; NIDORINO
	mon_cry CRY_NIDOKING,     $000,  $100 ; NIDOKING
	mon_cry CRY_CUBONE,       $0cc,  $081 ; CLEFAIRY
	mon_cry CRY_CUBONE,       $0aa,  $0a0 ; CLEFABLE
	mon_cry CRY_GRAVELER,     $04f,  $090 ; VULPIX
	mon_cry CRY_GRAVELER,     $088,  $0e0 ; NINETALES
	mon_cry CRY_PIP,          $0ff,  $0b5 ; JIGGLYPUFF
	mon_cry CRY_PIP,          $068,  $0e0 ; WIGGLYTUFF
	mon_cry CRY_KARABATHEO,   $0e0,  $100 ; ZUBAT
	mon_cry CRY_KARABATHEO,   $0fa,  $100 ; GOLBAT
	mon_cry CRY_IVYSAUR_OLD,  $0dd,  $081 ; ODDISH
	mon_cry CRY_IVYSAUR_OLD,  $0aa,  $0c0 ; GLOOM
	mon_cry CRY_KINGSAURUS,   $022,  $17f ; VILEPLUME
	mon_cry CRY_STARMIE,      $020,  $160 ; PARAS
	mon_cry CRY_STARMIE,      $042,  $17f ; PARASECT
	mon_cry CRY_TENTACOOL,    $044,  $0c0 ; VENONAT
	mon_cry CRY_TENTACOOL,    $029,  $100 ; VENOMOTH
	mon_cry CRY_EXEGGCUTE,    $0aa,  $081 ; DIGLETT
	mon_cry CRY_EXEGGCUTE,    $02a,  $090 ; DUGTRIO
	mon_cry CRY_CUBONE,       $077,  $090 ; MEOWTH
	mon_cry CRY_CUBONE,       $099,  $17f ; PERSIAN
	mon_cry CRY_36,           $020,  $0e0 ; PSYDUCK
	mon_cry CRY_36,           $0ff,  $0c0 ; GOLDUCK
	mon_cry CRY_NIDOQUEEN,    $0dd,  $0e0 ; MANKEY
	mon_cry CRY_NIDOQUEEN,    $0af,  $0c0 ; PRIMEAPE
	mon_cry CRY_SLOWBRO,      $020,  $0c0 ; GROWLITHE
	mon_cry CRY_ARCANINE,     $000,  $100 ; ARCANINE
	mon_cry CRY_PIP,          $0ff,  $17f ; POLIWAG
	mon_cry CRY_PIP,          $077,  $0e0 ; POLIWHIRL
	mon_cry CRY_PIP,          $000,  $17f ; POLIWRATH
	mon_cry CRY_GASTLY,       $0c0,  $081 ; ABRA
	mon_cry CRY_GASTLY,       $0a8,  $140 ; KADABRA
	mon_cry CRY_GASTLY,       $098,  $17f ; ALAKAZAM
	mon_cry CRY_SLOWBRO,      $0ee,  $081 ; MACHOP
	mon_cry CRY_SLOWBRO,      $048,  $0e0 ; MACHOKE
	mon_cry CRY_SLOWBRO,      $008,  $140 ; MACHAMP
	mon_cry CRY_36,           $055,  $081 ; BELLSPROUT
	mon_cry CRY_PONYTA,       $044,  $0a0 ; WEEPINBELL
	mon_cry CRY_PONYTA,       $066,  $14c ; VICTREEBEL
	mon_cry CRY_TENTACOOL,    $000,  $100 ; TENTACOOL
	mon_cry CRY_TENTACOOL,    $0ee,  $17f ; TENTACRUEL
	mon_cry CRY_GRAVELER,     $0f0,  $090 ; GEODUDE
	mon_cry CRY_GRAVELER,     $000,  $100 ; GRAVELER
	mon_cry CRY_TANGELA,      $0e0,  $0c0 ; GOLEM
	mon_cry CRY_PONYTA,       $000,  $100 ; PONYTA
	mon_cry CRY_PONYTA,       $020,  $140 ; RAPIDASH
	mon_cry CRY_SLOWPOKE,     $000,  $100 ; SLOWPOKE
	mon_cry CRY_SLOWBRO,      $000,  $100 ; SLOWBRO
	mon_cry CRY_GASTLY,       $080,  $0e0 ; MAGNEMITE
	mon_cry CRY_GASTLY,       $020,  $140 ; MAGNETON
	mon_cry CRY_SPEAROW,      $0dd,  $081 ; FARFETCH_D
	mon_cry CRY_EXEGGCUTE,    $0bb,  $081 ; DODUO
	mon_cry CRY_EXEGGCUTE,    $099,  $0a0 ; DODRIO
	mon_cry CRY_LICKITUNG,    $088,  $140 ; SEEL
	mon_cry CRY_LICKITUNG,    $023,  $17f ; DEWGONG
	mon_cry CRY_GRIMER,       $000,  $100 ; GRIMER
	mon_cry CRY_GENGAR,       $0ef,  $17f ; MUK
	mon_cry CRY_SHELLDER,     $000,  $100 ; SHELLDER
	mon_cry CRY_SHELLDER,     $06f,  $160 ; CLOYSTER
	mon_cry CRY_GASTLY,       $000,  $100 ; GASTLY
	mon_cry CRY_GASTLY,       $030,  $0c0 ; HAUNTER
	mon_cry CRY_GENGAR,       $000,  $17f ; GENGAR
	mon_cry CRY_GYARADOS,     $0ff,  $140 ; ONIX
	mon_cry CRY_EXEGGCUTOR,   $088,  $0a0 ; DROWZEE
	mon_cry CRY_EXEGGCUTOR,   $0ee,  $0c0 ; HYPNO
	mon_cry CRY_34,           $020,  $160 ; KRABBY
	mon_cry CRY_34,           $0ee,  $160 ; KINGLER
	mon_cry CRY_VOLTORB,      $0ed,  $100 ; VOLTORB
	mon_cry CRY_VOLTORB,      $0a8,  $110 ; ELECTRODE
	mon_cry CRY_EXEGGCUTE,    $000,  $100 ; EXEGGCUTE
	mon_cry CRY_EXEGGCUTOR,   $000,  $100 ; EXEGGUTOR
	mon_cry CRY_CUBONE,       $000,  $100 ; CUBONE
	mon_cry CRY_IVYSAUR_OLD,  $04f,  $0e0 ; MAROWAK
	mon_cry CRY_TANGELA,      $080,  $140 ; HITMONLEE
	mon_cry CRY_LICKITUNG,    $0ee,  $140 ; HITMONCHAN
	mon_cry CRY_LICKITUNG,    $000,  $100 ; LICKITUNG
	mon_cry CRY_TANGELA,      $0e6,  $15d ; KOFFING
	mon_cry CRY_TANGELA,      $0ff,  $17f ; WEEZING
	mon_cry CRY_RHYHORN,      $000,  $100 ; RHYHORN
	mon_cry CRY_RHYDON,       $000,  $100 ; RHYDON
	mon_cry CRY_PINSIR,       $00a,  $140 ; CHANSEY
	mon_cry CRY_TANGELA,      $000,  $100 ; TANGELA
	mon_cry CRY_KANGASKHAN,   $000,  $100 ; KANGASKHAN
	mon_cry CRY_CUBONE,       $099,  $090 ; HORSEA
	mon_cry CRY_CUBONE,       $03c,  $081 ; SEADRA
	mon_cry CRY_SCYTHER,      $080,  $0c0 ; GOLDEEN
	mon_cry CRY_SCYTHER,      $010,  $17f ; SEAKING
	mon_cry CRY_STARMIE,      $002,  $0a0 ; STARYU
	mon_cry CRY_STARMIE,      $000,  $100 ; STARMIE
	mon_cry CRY_34,           $008,  $0c0 ; MR__MIME
	mon_cry CRY_SCYTHER,      $000,  $100 ; SCYTHER
	mon_cry CRY_EXEGGCUTOR,   $0ff,  $17f ; JYNX
	mon_cry CRY_VOLTORB,      $08f,  $17f ; ELECTABUZZ
	mon_cry CRY_RHYHORN,      $0ff,  $0b0 ; MAGMAR
	mon_cry CRY_PINSIR,       $000,  $100 ; PINSIR
	mon_cry CRY_KARABATHEO,   $011,  $0c0 ; TAUROS
	mon_cry CRY_GYARADOS,     $080,  $080 ; MAGIKARP
	mon_cry CRY_GYARADOS,     $000,  $100 ; GYARADOS
	mon_cry CRY_LAPRAS,       $000,  $100 ; LAPRAS
	mon_cry CRY_PIP,          $0ff,  $17f ; DITTO
	mon_cry CRY_TENTACOOL,    $088,  $0e0 ; EEVEE
	mon_cry CRY_TENTACOOL,    $0aa,  $17f ; VAPOREON
	mon_cry CRY_TENTACOOL,    $03d,  $100 ; JOLTEON
	mon_cry CRY_TENTACOOL,    $010,  $0a0 ; FLAREON
	mon_cry CRY_PONYTA,       $0aa,  $17f ; PORYGON
	mon_cry CRY_SLOWBRO,      $0f0,  $081 ; OMANYTE
	mon_cry CRY_SLOWBRO,      $0ff,  $0c0 ; OMASTAR
	mon_cry CRY_SCYTHER,      $0bb,  $0c0 ; KABUTO
	mon_cry CRY_SHELLDER,     $0ee,  $081 ; KABUTOPS
	mon_cry CRY_KINGSAURUS,   $020,  $170 ; AERODACTYL
	mon_cry CRY_GRIMER,       $055,  $081 ; SNORLAX
	mon_cry CRY_NIDOKING,     $080,  $0c0 ; ARTICUNO
	mon_cry CRY_SHELLDER,     $0ff,  $100 ; ZAPDOS
	mon_cry CRY_NIDOKING,     $0f8,  $0c0 ; MOLTRES
	mon_cry CRY_GYAOON,       $060,  $0c0 ; DRATINI
	mon_cry CRY_GYAOON,       $040,  $100 ; DRAGONAIR
	mon_cry CRY_GYAOON,       $03c,  $140 ; DRAGONITE
	mon_cry CRY_STARMIE,      $099,  $17f ; MEWTWO
	mon_cry CRY_STARMIE,      $0ee,  $17f ; MEW
; johto mons
	mon_cry CRY_CHIKORITA,   -$010,  $0b0 ; CHIKORITA
	mon_cry CRY_CHIKORITA,   -$022,  $120 ; BAYLEEF
	mon_cry CRY_CHIKORITA,   -$0b7,  $200 ; MEGANIUM
	mon_cry CRY_GROWL,        $347,  $080 ; CYNDAQUIL
	mon_cry CRY_GROWL,        $321,  $120 ; QUILAVA
	mon_cry CRY_LUGIA,        $f00,  $0d4 ; TYPHLOSION
	mon_cry CRY_ROAR_60,      $46c,  $0e8 ; TOTODILE
	mon_cry CRY_ROAR_60,      $440,  $110 ; CROCONAW
	mon_cry CRY_ROAR_60,      $3fc,  $180 ; FERALIGATR
	mon_cry CRY_PHANPY,       $08a,  $0b8 ; SENTRET
	mon_cry CRY_PHANPY,       $06b,  $102 ; FURRET
	mon_cry CRY_HOOTHOOT,     $091,  $0d8 ; HOOTHOOT
	mon_cry CRY_HOOTHOOT,     $000,  $1a0 ; NOCTOWL
	mon_cry CRY_LEDYBA,       $000,  $0de ; LEDYBA
	mon_cry CRY_LEDYBA,      -$096,  $138 ; LEDIAN
	mon_cry CRY_DERBLE_4,     $011,  $200 ; SPINARAK
	mon_cry CRY_DERBLE_4,    -$0ae,  $1e2 ; ARIADOS
	mon_cry CRY_KARABATHEO,  -$010,  $140 ; CROBAT
	mon_cry CRY_GROWL,        $3c9,  $140 ; CHINCHOU
	mon_cry CRY_GROWL,        $2d0,  $110 ; LANTURN
	mon_cry CRY_MOUSE,        $000,  $140 ; PICHU
	mon_cry CRY_COTTONCAT,    $061,  $091 ; CLEFFA
	mon_cry CRY_CHIKORITA,    $0e8,  $0e8 ; IGGLYBUFF
	mon_cry CRY_DERBLE_1,     $010,  $100 ; TOGEPI
	mon_cry CRY_DERBLE_2,     $03b,  $038 ; TOGETIC
	mon_cry CRY_MADAME,      -$067,  $100 ; NATU
	mon_cry CRY_MADAME,      -$0a7,  $168 ; XATU
	mon_cry CRY_BLEET_1,      $022,  $0d8 ; MAREEP
	mon_cry CRY_BLEET_1,     -$007,  $180 ; FLAAFFY
	mon_cry CRY_ROAR_50,     -$07c,  $0e8 ; AMPHAROS
	mon_cry CRY_COTTONCAT,    $084,  $150 ; BELLOSSOM
	mon_cry CRY_CROW,         $11b,  $120 ; MARILL
	mon_cry CRY_CROW,         $0b6,  $180 ; AZUMARILL
	mon_cry CRY_COTTONCAT,    $f40,  $180 ; SUDOWOODO
	mon_cry CRY_COTTONCAT,   -$2a3,  $1c8 ; POLITOED
	mon_cry CRY_COTTONCAT,    $03b,  $0c8 ; HOPPIP
	mon_cry CRY_COTTONCAT,    $027,  $138 ; SKIPLOOM
	mon_cry CRY_COTTONCAT,    $000,  $180 ; JUMPLUFF
	mon_cry CRY_HO_OH,       -$051,  $0e8 ; AIPOM
	mon_cry CRY_CROW,         $12b,  $0b8 ; SUNKERN
	mon_cry CRY_ROAR_40,     -$020,  $180 ; SUNFLORA
	mon_cry CRY_ROAR_60,      $031,  $0c8 ; YANMA
	mon_cry CRY_SNEASEL,      $093,  $0af ; WOOPER
	mon_cry CRY_SNEASEL,     -$0c6,  $140 ; QUAGSIRE
	mon_cry CRY_HO_OH,        $0a2,  $140 ; ESPEON
	mon_cry CRY_TENTACOOL,   -$0e9,  $0f0 ; UMBREON
	mon_cry CRY_CROW,        -$01f,  $180 ; MURKROW
	mon_cry CRY_SLOWKING,     $104,  $200 ; SLOWKING
	mon_cry CRY_HOOTHOOT,     $130,  $0e8 ; MISDREAVUS
	mon_cry CRY_HOOTHOOT,     $162,  $100 ; UNOWN
	mon_cry CRY_ROAR_50,      $27b,  $144 ; WOBBUFFET
	mon_cry CRY_FELINE,       $041,  $200 ; GIRAFARIG
	mon_cry CRY_SLOWKING,     $080,  $100 ; PINECO
	mon_cry CRY_SLOWKING,     $000,  $180 ; FORRETRESS
	mon_cry CRY_GRANBULL,     $1c4,  $100 ; DUNSPARCE
	mon_cry CRY_MILTANK,     -$102,  $100 ; GLIGAR
	mon_cry CRY_LUGIA,        $0ef,  $0f7 ; STEELIX
	mon_cry CRY_GRANBULL,     $112,  $0e8 ; SNUBBULL
	mon_cry CRY_GRANBULL,     $000,  $180 ; GRANBULL
	mon_cry CRY_SLOWKING,     $160,  $0e0 ; QWILFISH
	mon_cry CRY_ROAR_50,      $000,  $160 ; SCIZOR
	mon_cry CRY_GRANBULL,     $290,  $0a8 ; SHUCKLE
	mon_cry CRY_ROAR_50,      $035,  $0e0 ; HERACROSS
	mon_cry CRY_SNEASEL,      $053,  $0af ; SNEASEL
	mon_cry CRY_ROAR_30,      $7a2,  $06e ; TEDDIURSA
	mon_cry CRY_ROAR_30,      $640,  $0d8 ; URSARING
	mon_cry CRY_HITMONTOP,   -$1d8,  $140 ; SLUGMA
	mon_cry CRY_SUICUNE,     -$20d,  $1c0 ; MAGCARGO
	mon_cry CRY_GROWL,        $1fe,  $140 ; SWINUB
	mon_cry CRY_SUICUNE,     -$109,  $100 ; PILOSWINE
	mon_cry CRY_SUICUNE,      $0a1,  $0e8 ; CORSOLA
	mon_cry CRY_ROAR_40,      $00d,  $100 ; REMORAID
	mon_cry CRY_ROAR_60,      $000,  $180 ; OCTILLERY
	mon_cry CRY_ROAR_30,      $002,  $06a ; DELIBIRD
	mon_cry CRY_MANTINE,     -$0be,  $0f0 ; MANTINE
	mon_cry CRY_ROAR_50,      $8a9,  $180 ; SKARMORY
	mon_cry CRY_GROWL,        $039,  $140 ; HOUNDOUR
	mon_cry CRY_ROAR_60,     -$10a,  $100 ; HOUNDOOM
	mon_cry CRY_HITMONTOP,    $2fb,  $100 ; KINGDRA
	mon_cry CRY_PHANPY,       $048,  $230 ; PHANPY
	mon_cry CRY_DONPHAN,      $000,  $1a0 ; DONPHAN
	mon_cry CRY_FELINE,       $073,  $240 ; PORYGON2
	mon_cry CRY_HO_OH,       -$160,  $180 ; STANTLER
	mon_cry CRY_MOUSE,       -$21a,  $1f0 ; SMEARGLE
	mon_cry CRY_HO_OH,        $02c,  $108 ; TYROGUE
	mon_cry CRY_HITMONTOP,    $000,  $100 ; HITMONTOP
	mon_cry CRY_CROW,         $068,  $100 ; SMOOCHUM
	mon_cry CRY_ROAR_40,     -$2d8,  $0b4 ; ELEKID
	mon_cry CRY_ROAR_30,      $176,  $03a ; MAGBY
	mon_cry CRY_MILTANK,     -$1cd,  $1a0 ; MILTANK
	mon_cry CRY_SLOWKING,     $293,  $140 ; BLISSEY
	mon_cry CRY_TYRANITAR,    $22e,  $120 ; RAIKOU
	mon_cry CRY_TIGER,        $000,  $1a0 ; ENTEI
	mon_cry CRY_SUICUNE,      $000,  $180 ; SUICUNE
	mon_cry CRY_TYRANITAR,    $05f,  $0d0 ; LARVITAR
	mon_cry CRY_DERBLE_4,    -$1db,  $150 ; PUPITAR
	mon_cry CRY_TYRANITAR,   -$100,  $180 ; TYRANITAR
	mon_cry CRY_LUGIA,        $000,  $100 ; LUGIA
	mon_cry CRY_HO_OH,        $000,  $180 ; HO_OH
	mon_cry CRY_TIGER,        $14a,  $111 ; CELEBI
;	mon_cry CRY_NIDORAN_M,       0,     0 ; 252
;	mon_cry CRY_NIDORAN_M,       0,     0 ; 253
;	mon_cry CRY_NIDORAN_M,       0,     0 ; 254
;	mon_cry CRY_NIDORAN_M,       0,     0 ; 255
;	mon_cry CRY_NIDORAN_M,       0,     0 ; 0
; equinto mons
	mon_cry CRY_ORKID,         112,   160 ; ORKID
	mon_cry CRY_ORKID,          28,   192 ; SYNTIQUE
	mon_cry CRY_HOOTHOOT_OLD,  205,   256 ; PHOTORDEN
	mon_cry CRY_ROAR_30,        28,     0 ; FLAMBEAR	; TSK
	mon_cry CRY_ROAR_30,      1767,   128 ; VOLBEAR		; TSK
	mon_cry CRY_LUGIA,        3883,   212 ; DYNABEAR	; TSK
	mon_cry CRY_36,            560,   203 ; CRUZ		; TSK
	mon_cry CRY_36,            487,   272 ; AQUACENT	; TSK
	mon_cry CRY_ROAR_60,       802,   349 ; AQUARIA		; TSK
	mon_cry CRY_CROVEN,         35,    72 ; CROVEN
	mon_cry CRY_CROVEN,          0,   387 ; ASTROVEN
	mon_cry CRY_HOOTHOOT_OLD, -145,   616 ; NOCTGLIDE
	mon_cry CRY_YOSHI,          -8,   197 ; SNOBURI
	mon_cry CRY_YOSHI,        -123,   271 ; SNOBUSTER
	mon_cry CRY_SNEASEL_OLD,  -144,   288 ; ARBUGS
	mon_cry CRY_ORKID,        -122,   256 ; WILLOFUDD
	mon_cry CRY_GRAVELER,      162,   176 ; TRIFOX		; TSK
	mon_cry CRY_CROW,         3916,   272 ; BURGELA		; OVGG
	mon_cry CRY_EARTHTRON,    -511,   224 ; TENTACRIME
	mon_cry CRY_SLOWKING,     4046,   352 ; NUMPUFF		; OVGG
	mon_cry CRY_TIGER_OLD,     752,   135 ; MIGHTALEX
	mon_cry CRY_LEDIURY,      -458,   428 ; QUAGAMI
	mon_cry CRY_DUGQUINTET,     32,   382 ; QUAILTER
	mon_cry CRY_DUGQUINTET,     10,   511 ; STAFFBIRD
	mon_cry CRY_SCYTHER,       137,   208 ; ORSCHUL		; TSK
	mon_cry CRY_TOUFENSE,      -64,   384 ; MOUNDIVER
	mon_cry CRY_MANTINE,      1962,   234 ; MOLAMBINO	; TSK
	mon_cry CRY_TIGER_OLD,     144,   160 ; ANGORE
	mon_cry CRY_SLOWBRO,      1231,   373 ; GROTESS		; TSK
	mon_cry CRY_POUCHENT,      231,   192 ; SAILWING
	mon_cry CRY_STARMIE,        34,   251 ; PARABUD		; TSK
	mon_cry CRY_DERBLE_4_OLD, -255,   416 ; TIERACNID
	mon_cry CRY_DERBLE_4_OLD,   47,   549 ; METABEAK
	mon_cry CRY_CRANEST,        58,   256 ; CRANEST
	mon_cry CRY_PIP,           354,   288 ; LYKWYSE		; OVGG
	mon_cry CRY_EXEGGCUTE,     197,   226 ; DODAERIE	; TSK
	mon_cry CRY_CRANEST,       -40,   132 ; SUNTHESIA
	mon_cry CRY_TOUFENSE,       30,   304 ; TOUFENSE
	mon_cry CRY_FELINE,         48,   256 ; SIAMAIS		; GF
	mon_cry CRY_TIGER_OLD,     656,   196 ; RAKUKI
	mon_cry CRY_CUBONE,        140,   204 ; COINTEN		; TSK
	mon_cry CRY_COTTONCAT,      76,   320 ; GATOLL		; TSK
	mon_cry CRY_MILTANK,      2000,   533 ; BELLBOYANT	; TSK
	mon_cry CRY_CRANEST,       132,   208 ; STARELLO
	mon_cry CRY_ASSISDRA,     -321,   430 ; LIODEW
	mon_cry CRY_SNEASEL_OLD,    86,   171 ; UNILIGHT
	mon_cry CRY_ASSISDRA,       -2,   160 ; ALIDUSK
	mon_cry CRY_LEDIURY,      -300,   402 ; LEDIURY
	mon_cry CRY_PONYTA,         32,   192 ; FOLICORN	; TSK
	mon_cry CRY_CRANEST,       164,   240 ; WHISPEON
	mon_cry CRY_TOUFENSE,      224,   288 ; ASSEMBLEON
	mon_cry CRY_SLOWKING,      198,   448 ; TURBANN		; TSK
	mon_cry CRY_GRIMER,        284,   185 ; SMUJJ		; TSK
	mon_cry CRY_TIGER_OLD,     543,   302 ; DRAGONISCE
	mon_cry CRY_KICLOUD,       208,   170 ; KICLOUD
	mon_cry CRY_SLOWBRO,        88,   192 ; TIRUFF		; TSK
	mon_cry CRY_APPUCK,          0,   256 ; APPUCK
	mon_cry CRY_SELENUMIA,      64,   160 ; ALREM
	mon_cry CRY_MURPHELT,        0,   256 ; MURPHELT
	mon_cry CRY_POUCHENT,       82,   187 ; TIARANT
	mon_cry CRY_EARTHTRON,      40,   171 ; SILVEALTH
	mon_cry CRY_ANTLOG,        140,   195 ; SEARCHLE
	mon_cry CRY_SLOWKING,      572,   256 ; BELMITT		; GF
	mon_cry CRY_ORKID,        -205,   342 ; MILCALF
	mon_cry CRY_ROAR_60,      1920,   251 ; BOMOCA		; TSK
	mon_cry CRY_YOSHI,         -24,   208 ; DELFLAP
	mon_cry CRY_MOUSE,        1908,   576 ; KOTORA		; TSK
	mon_cry CRY_LAPRAS,       1834,   289 ; RAITORA		; TSK
	mon_cry CRY_MADAME,          0,   256 ; MADAME		; GF
	mon_cry CRY_PHANPY,        214,   384 ; KURSTRAW	; TSK
	mon_cry CRY_TANGELA,       523,   384 ; PANGSHI		; TSK
	mon_cry CRY_DERBLE_4_OLD,  -80,   308 ; SCAFAROW
	mon_cry CRY_RECLINAX,      556,   193 ; RECLINAX
	mon_cry CRY_MURPHELT,     -365,   336 ; MOSCARF
	mon_cry CRY_MURPHELT,     -621,   400 ; FLIDER
	mon_cry CRY_ROAR_50,       555,   336 ; PLUX		; GF
	mon_cry CRY_CRANEST,      -272,   256 ; HOUNDREAD
	mon_cry CRY_FELINE,         13,    96 ; WOLFMAN		; TSK
	mon_cry CRY_ROAR_30,       262,   192 ; WARWOLF		; TSK
	mon_cry CRY_BIG_YOSHI,    1320,   207 ; PORYSPHIA
	mon_cry CRY_DRISCORINA,    608,   160 ; RAVERMIN
	mon_cry CRY_FOSSLIX,         0,   256 ; FOSSLIX
	mon_cry CRY_SNEASEL_OLD,  -123,   443 ; MAGNEVEN
	mon_cry CRY_CROW_OLD,     -192,   480 ; DONKRANK
	mon_cry CRY_TIGER_OLD,      32,   420 ; CHOAKING
	mon_cry CRY_SANDSCOUR,     -24,   272 ; SANDSCOUR
	mon_cry CRY_TEAROW,        864,   192 ; TEAROW
	mon_cry CRY_TEAROW,        430,   208 ; NOHTYP
	mon_cry CRY_EARTHTRON,     128,   171 ; VENOKNIGHT
	mon_cry CRY_DUGQUINTET,    -48,   384 ; DUGQUINTET
	mon_cry CRY_SPEAROW_OLD,   192,   251 ; EMPEDUCK
	mon_cry CRY_POUCHENT,     2040,   224 ; ALPHAPE
	mon_cry CRY_GLABBIT,      -257,   384 ; PINCHLER
	mon_cry CRY_POUCHENT,     1856,   256 ; POUCHENT
	mon_cry CRY_DRISCORINA,    472,   208 ; OMANOVA
	mon_cry CRY_ASSISDRA,      144,   149 ; KABOULDER
	mon_cry CRY_GLABBIT,        38,   332 ; COATRET
	mon_cry CRY_WINDKITT,     -122,   296 ; SHUVEL
	mon_cry CRY_COAZIGOAST,      0,   256 ; COAZIGOAST
	mon_cry CRY_WINDKITT,       16,   240 ; WINDKITT
	mon_cry CRY_WINDKITT,      -64,   192 ; TODBRUSH
	mon_cry CRY_ASSISDRA,     -121,   352 ; SEWMA
	mon_cry CRY_SPEAROW_OLD,   496,   280 ; ANIMADISE
	mon_cry CRY_SPEAROW_OLD,   336,   304 ; MARLOON
	mon_cry CRY_ASSISDRA,       19,   208 ; ASSISDRA
	mon_cry CRY_FOSSLIX,      1918,   146 ; SCOOTEN
	mon_cry CRY_CROW_OLD,       78,   439 ; SWEOTE
	mon_cry CRY_APPUCK,        147,   274 ; GRIFLET
	mon_cry CRY_GLABBIT,       -40,   208 ; CIRRIFFON
	mon_cry CRY_COSMOREAS,     -33,   192 ; COSMOREAS
	mon_cry CRY_CRANEST,        86,   337 ; LAROON
	mon_cry CRY_EARTHTRON,     -16,   192 ; CADITIN
	mon_cry CRY_COAZIGOAST,   -333,   400 ; CHRYSALTY
	mon_cry CRY_SNEASEL_OLD,    64,   160 ; DRYTHON
	mon_cry CRY_ANTLOG,       1708,   243 ; ANTLOG
	mon_cry CRY_TOUFENSE,      120,    64 ; KOALIMB
	mon_cry CRY_HOOTHOOT_OLD, -352,   332 ; HIGHPO
	mon_cry CRY_GLABBIT,        72,   112 ; GLABBIT
	mon_cry CRY_COSMOREAS,     160,   240 ; CYCORPION
	mon_cry CRY_GUARNID,      -380,   272 ; GUARNID
	mon_cry CRY_WINDKITT,       55,   224 ; SQUIDRILL
	mon_cry CRY_COAZIGOAST,    -51,   230 ; PARROBRASS
	mon_cry CRY_GUARNID,       -20,   117 ; FLINJA
	mon_cry CRY_DRISCORINA,    531,   176 ; SHELLAPTOR
	mon_cry CRY_ROAR_60,      -544,   384 ; GOBELDORL
	mon_cry CRY_NIDOQUEEN,    -120,   314 ; CENTIR
	mon_cry CRY_DRISCORINA,     99,   336 ; DRISCORINA
	mon_cry CRY_SNEASEL_OLD,    96,   320 ; ARLURRY
	mon_cry CRY_KICLOUD,        96,   274 ; MAGENZA
	mon_cry CRY_ANTLOG,       -152,   254 ; ILLUSIRO
	mon_cry CRY_GUARNID,       268,   212 ; HELICELIA
	mon_cry CRY_SELENUMIA,       0,   256 ; SELENUMIA
	mon_cry CRY_LUGIA,         488,   195 ; PARBELL
