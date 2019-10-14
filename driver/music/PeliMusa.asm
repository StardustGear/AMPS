; ===========================================================================
; ---------------------------------------------------------------------------
; Wings - PeliMusa remixed for AMPS driver by Natusmi & Ozaleto
; ---------------------------------------------------------------------------

Pelimusa_Header:
	sHeaderInit
	sHeaderTempo	$01, $2C
	sHeaderCh	$05, $03
	sHeaderDAC	Pelimusa_DAC1, $00, dKaiku2
	sHeaderDAC	Pelimusa_DAC2, $00, dKaiku1
	sHeaderFM	Pelimusa_FM1, $00, $00
	sHeaderFM	Pelimusa_FM2, $00, $08
	sHeaderFM	Pelimusa_FM3, $00, $16
	sHeaderFM	Pelimusa_FM4, $00, $17
	sHeaderFM	Pelimusa_FM5, $00, $18
	sHeaderPSG	Pelimusa_PSG1, $0C, $50, $30, vRistar10
	sHeaderPSG	Pelimusa_PSG2, $0C, $40, $00, vCol3_02
	sHeaderPSG	Pelimusa_PSG3, $00, $40, $00, v00

	; Patch $00 - Syntikkabasso 1 and 2 (From Columns III)
	spAlgorithm	$02, Basso
	spFeedback	$07
	spDetune	$01, $03, $03, $07
	spMultiple	$03, $03, $07, $01
	spRateScale	$02, $00, $00, $00
	spAttackRt	$0F, $18, $17, $16
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0E, $08, $12, $10
	spSustainLv	$0C, $04, $0A, $0C
	spDecayRt	$17, $06, $1C, $04
	spReleaseRt	$0C, $0C, $0C, $0C
	spSSGEG		$00, $00, $00, $00
	spTotalLv	$24, $22, $1A, $00

	; Patch $01 - FM Low Kick (From Zaxxon Motherbase 2000)
	spAlgorithm	$04, LowKick
	spFeedback	$00
	spDetune	$03, $07, $04, $02
	spMultiple	$00, $00, $00, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$17, $00, $1F, $00
	spSustainLv	$00, $00, $00, $00
	spDecayRt	$10, $10, $10, $10
	spReleaseRt	$0F, $0F, $0F, $0F
	spSSGEG		$00, $00, $00, $00
	spTotalLv	$0A, $06, $00, $00

	; Patch $02 - FM Snare (From Zaxxon Motherbase 2000)
	spAlgorithm	$04, Snare
	spFeedback	$06
	spDetune	$05, $02, $05, $02
	spMultiple	$05, $01, $05, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$07, $16, $10, $1B
	spSustainLv	$00, $00, $00, $00
	spDecayRt	$00, $00, $0F, $15
	spReleaseRt	$0F, $0F, $0F, $0F
	spSSGEG		$00, $00, $00, $00
	spTotalLv	$01, $10, $07, $00

	; Patch $03 - FM Crash (From Zaxxon Motherbase 2000)
	spAlgorithm	$04, Crash
	spFeedback	$06
	spDetune	$05, $02, $05, $02
	spMultiple	$04, $01, $05, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$07, $16, $00, $1B
	spSustainLv	$00, $00, $00, $00
	spDecayRt	$00, $10, $0E, $15
	spReleaseRt	$0F, $0F, $0F, $0F
	spSSGEG		$00, $00, $00, $00
	spTotalLv	$03, $10, $00, $00

	; Patch $04 - Jousi (From Sonic 1)
	spAlgorithm	$04, Jousi
	spFeedback	$05
	spDetune	$07, $00, $07, $00
	spMultiple	$02, $04, $05, $04
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $12, $12
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $00, $0A, $0A
	spSustainLv	$00, $00, $01, $01
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$00, $00, $06, $06
	spSSGEG		$00, $00, $00, $00
	spTotalLv	$16, $17, $00, $00

	; Patch $05 - Melodia (From Sonic 1)
	spAlgorithm	$02, Melodia
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$01, $02, $00, $02
	spRateScale	$00, $00, $00, $00
	spAttackRt	$18, $18, $18, $18
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0C, $0C, $0C, $0C
	spSustainLv	$06, $06, $06, $06
	spDecayRt	$08, $08, $08, $08
	spReleaseRt	$0F, $0F, $0F, $0F
	spSSGEG		$00, $00, $00, $00
	spTotalLv	$18, $1C, $28, $07
; ===========================================================================
; ---------------------------------------------------------------------------
; DAC1: Kaiku (Channel 7)
; ---------------------------------------------------------------------------

Pelimusa_Kaiku	macro	note
	rept narg
		if \note<$80
			dc.b \note
		else
			dc.b \note-nA5+nC4
		endif
	shift
	endr
    endm

Pelimusa_Saro	macro	note
	rept narg
		if \note<$80
			dc.b \note
		else
			dc.b \note-nA5+nC4
		endif
	shift
	endr
    endm
; ---------------------------------------------------------------------------

Pelimusa_DAC1:
	sCall		Pelimusa_Delay1
	sVoice		dSarobasso

	; pattern 6
	sCall		.intro1
	sCall		.intro1
	saTranspose	-$04	; nFx
	sCall		.intro1

	Pelimusa_Saro	nA5, $06, $0C, $12
	ssVol		$04
	dc.b $18
	ssVol		$00
	dc.b $18, $0C
	saTranspose	$04	; nAx

	; pattern 7, 11 and 12
.loop	sCall		.track
	sCall		.patt8
	sCall		.track
	sCall		.track
	sCall		.patt8
	sCall		.track
	sCall		.patt8
	sJump		.loop
; ---------------------------------------------------------------------------

.intro1	Pelimusa_Saro	nA5, $06, $0C, $12
	ssVol		$04
	dc.b $18
	ssVol		$00
	dc.b $18, $06
	ssVol		$04
	dc.b $06
	ssVol		$00
	sRet
; ---------------------------------------------------------------------------

.patt8	sVoice		dSarobasso
.pat8x	sCall		.pat81

	Pelimusa_Saro	nC6, $0C, $06, $12
	ssVol		$04
	dc.b $18
	ssVol		$04
	Pelimusa_Saro	nG5, $18
	ssVol		$00
	dc.b $0C
	sCall		.pat81

	Pelimusa_Saro	nG5, $0C, $06, $12
	ssVol		$04
	dc.b $18
	ssVol		$02
	dc.b $18
	ssVol		$00
	dc.b $0C
	sLoop		$01, $02, .pat8x
	sRet

.pat81	Pelimusa_Saro	nA5, $0C, $06, $12
	ssVol		$04
	dc.b $18
	ssVol		$02
	Pelimusa_Saro	nF5, $18
	ssVol		$00
	dc.b $0C
	sRet
; ---------------------------------------------------------------------------

.track	dc.b nRst, $06
	sCall		Pelimusa_DAC12_Main

	Pelimusa_Kaiku nB5, $06
	sLoop		$01, $02, .track
;	sModOff
	sRet
; ===========================================================================
; ---------------------------------------------------------------------------
; DAC2: Kaiku (Channel 6)
; ---------------------------------------------------------------------------

Pelimusa_DAC2:
	sCall		Pelimusa_Delay2

	; pattern 7, 11 and 12
.loop	sCall		.track
	sCall		.patt8
	sCall		.track
	sCall		.track
	sCall		.patt8
	sCall		.track
	sCall		.patt8
	sJump		.loop
; ---------------------------------------------------------------------------

.track	sCall		Pelimusa_DAC12_Main

	Pelimusa_Kaiku nB5
	sLoop		$01, $02, .track
;	sModOff
	sRet
; ---------------------------------------------------------------------------

.patt8	sVoice		dKaikuL2
	dc.b nC4, $60, sHold, $60
	sVoice		dKaikuL3
	dc.b nC4, $60, sHold, $60
	sLoop		$01, $02, .patt8
	sRet
; ---------------------------------------------------------------------------

Pelimusa_DAC12_Main:
;	ssMod68k	$01, $02, $01, $05
	sCall		Pelimusa_SetDACNormal
	Pelimusa_Kaiku nA5, $0C
	sVoice		dKaiku5
	Pelimusa_Kaiku nC6
	sCall		Pelimusa_SetDACNormal
	Pelimusa_Kaiku nE6, nC6
	sCall		Pelimusa_SetDACLong
	Pelimusa_Kaiku nF5
	sCall		Pelimusa_SetDACNormal
	Pelimusa_Kaiku nA5, nC6, nA5, nC6
	sVoice		dKaiku5
	Pelimusa_Kaiku nE6
	sCall		Pelimusa_SetDACNormal
	Pelimusa_Kaiku nG6
	sVoice		dKaiku5
	Pelimusa_Kaiku nE6
	sCall		Pelimusa_SetDACLong
	Pelimusa_Kaiku nG5
	sCall		Pelimusa_SetDACNormal
	Pelimusa_Kaiku nB5, nD6, nB5, nA5
	sVoice		dKaiku5
	Pelimusa_Kaiku nC6
	sCall		Pelimusa_SetDACNormal
	Pelimusa_Kaiku nE6, nC6
	sCall		Pelimusa_SetDACLong
	Pelimusa_Kaiku nF5
	sCall		Pelimusa_SetDACNormal
	Pelimusa_Kaiku nA5, nC6, nA5, nG5
	sVoice		dKaiku5
	Pelimusa_Kaiku nB5
	sCall		Pelimusa_SetDACNormal
	Pelimusa_Kaiku nD6
	sVoice		dKaiku5
	Pelimusa_Kaiku nB5
	sCall		Pelimusa_SetDACLong
	Pelimusa_Kaiku nD6
	sCall		Pelimusa_SetDACNormal
	Pelimusa_Kaiku nB5, nG5
	sRet

Pelimusa_SetDACNormal:
	sCondReg	$F, dcoEQ, ctDAC2	; if this is DAC2
	sVoice		dKaiku1			; then Kaiku1
	sCondReg	$F, dcoEQ, ctDAC1	; if this is DAC1
	sVoice		dKaiku2			; then Kaiku2
	sCondOff
	sRet

Pelimusa_SetDACLong:
	sCondReg	$F, dcoEQ, ctDAC2	; if this is DAC2
	sVoice		dKaiku3			; then Kaiku3
	sCondReg	$F, dcoEQ, ctDAC1	; if this is DAC1
	sVoice		dKaiku4			; then Kaiku4
	sCondOff
	sRet
; ---------------------------------------------------------------------------

Pelimusa_Delay4:
	sCall		Pelimusa_Delay2

Pelimusa_Delay2:
	dc.b nRst, $60

Pelimusa_DelayShorter:
	dc.b nRst, $60, nRst, nRst, $60

Pelimusa_Delay1:
	dc.b nRst, $60, nRst, $60, nRst, nRst
	sRet
; ===========================================================================
; ---------------------------------------------------------------------------
; FM1: Drums (Channel 1)
; ---------------------------------------------------------------------------

Pelimusa_FM1:
	; pattern 5 and 6
	ssDetune	-$05
	sCall		Pelimusa_FM1_Intro
	sVoice		pLowKick
	dc.b $18
	sVoice		pSnare
	dc.b $12, $06

	sCall		Pelimusa_FM1_Intro
	sVoice		pLowKick
	dc.b $06
	sVoice		pSnare
	dc.b $12, $0C, $06, $06

	; pattern 7 and 8
.loop	sCall		Pelimusa_FM1_Main
	sCall		Pelimusa_DelayShorter

	sVoice		pCrash
	ssVol		$10
.volp	dc.b nC2, $06
	saVol		-$01
	sLoop		$00, $10, .volp

	sCall		Pelimusa_FM1_Main
	sJump		.loop
; ---------------------------------------------------------------------------

Pelimusa_FM1_Intro:
	sVoice		pLowKick
	dc.b nC2, $18
	sVoice		pSnare
	dc.b $18
	sVoice		pLowKick
	dc.b $18
	sVoice		pSnare
	dc.b $0C
	sVoice		pLowKick
	dc.b $24
	sVoice		pSnare
	dc.b $18
	sVoice		pLowKick
	dc.b $18
	sVoice		pSnare
	dc.b $18

	sVoice		pLowKick
	dc.b $18
	sVoice		pSnare
	dc.b $18
	sVoice		pLowKick
	dc.b $18
	sVoice		pSnare
	dc.b $0C
	sVoice		pLowKick
	dc.b $24
	sVoice		pSnare
	dc.b $18
	sRet

Pelimusa_FM1_Main:
	sCall		.long
	dc.b $12, $06
	sCall		.long
	dc.b $0C, $06, $06
	sLoop		$01, $06, Pelimusa_FM1_Main
	sRet

.long	sVoice		pLowKick
	dc.b $18
	sVoice		pSnare
	dc.b $18
	sVoice		pLowKick
	dc.b $18
	sVoice		pSnare
	dc.b $18
	sVoice		pLowKick
	dc.b $18
	sVoice		pSnare
	dc.b $18
	sVoice		pLowKick
	dc.b $18
	sVoice		pSnare
	sRet
; ===========================================================================
; ---------------------------------------------------------------------------
; FM2: Background (Channel 3)
; ---------------------------------------------------------------------------

Pelimusa_FM2:
	sVoice		pBasso

	; pattern 5 and 6
.intro	sCall		Pelimusa_FM2_Intro0
	sCall		Pelimusa_FM2_Intro2
	sCall		Pelimusa_FM2_Intro3
	sCall		Pelimusa_FM2_Intro5

	sCall		Pelimusa_FM2_Intro1
	sCall		Pelimusa_FM2_Intro2
	sCall		Pelimusa_FM2_Intro3
	sCall		Pelimusa_FM2_Intro4
	saTranspose	-$04		; first play Ax, then Fx
	sLoop		$00, $02, .intro
	saTranspose	$08
	sLoop		$01, $02, .intro

.main	sCall		Pelimusa_FM2_Main
	sCall		Pelimusa_Delay2
	sCall		Pelimusa_FM2_Main
	sJump		.main
; ---------------------------------------------------------------------------

Pelimusa_FM2_Main:
	; pattern 7 and 8
	sCall		Pelimusa_FM2_Intro0
	sCall		Pelimusa_FM2_Intro2

	saTranspose	-$04		; nFx
	sCall		Pelimusa_FM2_Intro3
	sCall		Pelimusa_FM2_Intro5

	saTranspose	$07		; nCx
	sCall		Pelimusa_FM2_Intro1
	sCall		Pelimusa_FM2_Intro2

	saTranspose	-$05		; nGx
	sCall		Pelimusa_FM2_Intro3
	sCall		Pelimusa_FM2_Intro4

	saTranspose	$02		; nAx
	sCall		Pelimusa_FM2_Intro0
	sCall		Pelimusa_FM2_Intro2

	saTranspose	-$04		; nFx
	sCall		Pelimusa_FM2_Intro3
	sCall		Pelimusa_FM2_Intro5

	saTranspose	$02		; nGx
.endbit	sCall		Pelimusa_FM2_Intro1
	sCall		Pelimusa_FM2_Intro2
	sLoop		$01, $02, .endbit

	saTranspose	$02		; nAx
	sLoop		$02, $06, Pelimusa_FM2_Main
	sRet
; ---------------------------------------------------------------------------

Pelimusa_FM2_Intro0:
	dc.b nA1, $06
	saVol		$0C
	dc.b nA1
	sRet

Pelimusa_FM2_Intro1:
	dc.b nA1, $06
	saVol		$0C
	dc.b nA0
	sRet

Pelimusa_FM2_Intro3:
	dc.b nA1, nA1
	saVol		$0C
	dc.b nA0
	saVol		-$0C
	dc.b nA2
	sRet

Pelimusa_FM2_Intro2:
	saVol		-$0C
	dc.b nA0, nA2
	saVol		$0C
	dc.b nA0
	saVol		-$0C
	dc.b nA1, nA1
	saVol		$0C
	dc.b nA0
	saVol		-$0C
	sRet

Pelimusa_FM2_Intro4:
	dc.b nA0
	saVol		$0C
	dc.b nA1
	saVol		-$0C
	dc.b nA1, nA1
	sRet

Pelimusa_FM2_Intro5:
	dc.b nA1
	saVol		$0C
	dc.b nA0
	saVol		-$0C
	dc.b nA1, nA1
	sRet
; ===========================================================================
; ---------------------------------------------------------------------------
; FM3: Jousi + Melodia
; ---------------------------------------------------------------------------

Pelimusa_FM3:
	sCall		Pelimusa_Delay2

.loop	sCall		Pelimusa_FM3_Pattern8
	sCall		.jousi
	sCall		Pelimusa_FM3_Pattern8
	sCall		Pelimusa_Delay2
	sCall		.jousi
	sCall		Pelimusa_FM3_Pattern8
	sCall		.jousi
	sJump		.loop
; ---------------------------------------------------------------------------

.jousi	ssVol		$16
	sVoice		pJousi
	ssMod68k	$06, $01, $04, $02
	ssPortamento	$00

.jousi2	dc.b nE5, $30
	ssPortamento	$0A
	dc.b nF5, nG4, nD5, nE5, nF5, nD5, $60
	sLoop		$00, $02, .jousi2
	sRet
; ---------------------------------------------------------------------------

Pelimusa_FM34_Volume	macro note, volume
	Pelimusa_FM34_Volume2	\volume
	dc.b \note, $06
	shift

	rept narg-2
		Pelimusa_FM34_Volume2	\volume
		dc.b $06
	shift
	endr
    endm

Pelimusa_FM34_Volume2	macro volume
	if \volume<=8
		ssVol		$7F

	elseif \volume=64
		ssVol		$00

	elseif \volume=48
		ssVol		$04

	elseif \volume=32
		ssVol		$08

	elseif \volume=24
		ssVol		$0A

	elseif \volume=16
		ssVol		$0C
	endif
    endm
; ---------------------------------------------------------------------------

Pelimusa_FM3_Pattern8:
	sVoice		pMelodia
	ssMod68k	$01, $01, -$02, $08
	ssPortamento	$00

.loop	Pelimusa_FM34_Volume nA4, 64, 8, 32, 8, 48, 8, 32, 8
	ssPortamento	$02
	Pelimusa_FM34_Volume nF4, 48, 8, 32, 8
	Pelimusa_FM34_Volume nA4, 48, 8
	Pelimusa_FM34_Volume nF4, 48, 8
	Pelimusa_FM34_Volume nC5, 64, 8, 32, 8, 32, 8
	Pelimusa_FM34_Volume nB4, 48, 8, 32, 8, 32, 8
	Pelimusa_FM34_Volume nC5, 48, 8
	Pelimusa_FM34_Volume nB4, 48, 8
	Pelimusa_FM34_Volume nA4, 64, 8, 64, 8, 64, 8, 64, 8
	Pelimusa_FM34_Volume nF4, 48, 8, 48, 8
	Pelimusa_FM34_Volume nA4, 48, 8
	Pelimusa_FM34_Volume nF4, 48, 8
	Pelimusa_FM34_Volume nG4, 64, 8, 32, 8, 32, 8
	Pelimusa_FM34_Volume nB4, 64, 8, 32, 8, 32, 8
	Pelimusa_FM34_Volume nC5, 48, 8, 48, 8
	sLoop		$01, $02, .loop
	sRet
; ===========================================================================
; ---------------------------------------------------------------------------
; FM4: Jousi + Melodia
; ---------------------------------------------------------------------------

Pelimusa_FM4:
	sCall		Pelimusa_Delay2

.loop	sCall		Pelimusa_FM4_Pattern8
	sCall		.jousi
	sCall		Pelimusa_FM4_Pattern8
	sCall		Pelimusa_Delay2
	sCall		.jousi
	sCall		Pelimusa_FM4_Pattern8
	sCall		.jousi
	sJump		.loop

.jousi	ssVol		$17
	sVoice		pJousi
	ssMod68k	$04, $01, $04, $03
	ssPortamento	$00

.jousi2	dc.b nA4, $60
	ssPortamento	$0A
	dc.b nC4, $30, nG4
	dc.b nA4, $60, nG4
	sLoop		$00, $02, .jousi2
	sModOff
	sRet
; ---------------------------------------------------------------------------

Pelimusa_FM4_Pattern8:
	sVoice		pMelodia
	ssMod68k	$02, $01, -$03, $08
	ssPortamento	$02

.loop	dc.b nRst, $06
	Pelimusa_FM34_Volume nA4, 32, 4, 16, 4, 24, 4, 16, 4
	Pelimusa_FM34_Volume nF4, 24, 4, 16, 4
	Pelimusa_FM34_Volume nA4, 24, 4
	Pelimusa_FM34_Volume nF4, 24, 4
	Pelimusa_FM34_Volume nC5, 32, 4, 16, 4, 16, 4
	Pelimusa_FM34_Volume nB4, 24, 4, 16, 4, 16, 4
	Pelimusa_FM34_Volume nC5, 24, 4
	Pelimusa_FM34_Volume nB4, 24, 4
	Pelimusa_FM34_Volume nA4, 24, 4, 24, 4, 24, 4, 24, 4
	Pelimusa_FM34_Volume nF4, 24, 4, 24, 4
	Pelimusa_FM34_Volume nA4, 24, 4
	Pelimusa_FM34_Volume nF4, 24, 4
	Pelimusa_FM34_Volume nG4, 24, 4, 24, 4, 24, 4
	Pelimusa_FM34_Volume nB4, 24, 4, 24, 4, 24, 4
	Pelimusa_FM34_Volume nC5, 24, 4, 24
	sLoop		$01, $02, .loop
	sRet
; ===========================================================================
; ---------------------------------------------------------------------------
; FM5: Jousi
; ---------------------------------------------------------------------------

Pelimusa_FM5:
	sCall		Pelimusa_Delay2
	sVoice		pJousi

.loop	sCall		Pelimusa_Delay2
	sCall		.jousi
	sCall		Pelimusa_Delay4
	sCall		.jousi
	sCall		Pelimusa_Delay2
	sCall		.jousi
	sJump		.loop
; ---------------------------------------------------------------------------

.jousi	ssMod68k	$03, $01, $03, $02
	ssPortamento	$0A

.jousi2	dc.b nC5, $60
	dc.b nE4, $30, nB4
	dc.b nC5, $60, nB4
	sLoop		$00, $02, .jousi2
	sModOff
	sRet
; ===========================================================================
; ---------------------------------------------------------------------------
; PSG1: Kurzweil K2000
; ---------------------------------------------------------------------------

Pelimusa_PSG1:
	dc.b nRst, $01
; ===========================================================================
; ---------------------------------------------------------------------------
; PSG2: Kurzweil K2000
; ---------------------------------------------------------------------------

Pelimusa_PSG2:
	; pattern 5 and 6
	dc.b nRst, $0C
	dc.b nE5, $18, $18, $18, $18, $18, $18, $0C, $0C, $06, $06
	sLoop		$01, $04, Pelimusa_PSG2

	; pattern 7 and 8
.loop	sCall		.main
	sCall		.alt
	sCall		.main
	sJump		.loop

.main	dc.b nRst, $0C
	dc.b nE5, $18, $18, $06, $12, $18, $18, $18, $0C, $12, $06
	sLoop		$01, $0C, .main
	sRet

.alt	dc.b $18
	sLoop		$01, $20, .alt
	sRet
; ===========================================================================
; ---------------------------------------------------------------------------
; PSG3: Kurzweil K2000 + 3HIHeAT.117
; ---------------------------------------------------------------------------

Pelimusa_PSG3_State =	-1
Pelimusa_PSG3_Hat	macro	len
	if Pelimusa_PSG3_State<>0
		sNoisePSG	$E7
		ssVol		$00

Pelimusa_PSG3_State = 0
	endif

	dc.b nHiHat
	rept narg
		dc.b \len
	shift
	endr
    endm

Pelimusa_PSG3_Bell	macro	len
	if Pelimusa_PSG3_State<>1
		sNoisePSG	$00
		ssVol		$30

Pelimusa_PSG3_State = 1
	endif

	dc.b nC6
	rept narg
		dc.b  \len
	shift
	endr
    endm
; ---------------------------------------------------------------------------

Pelimusa_PSG3:
	sVolEnv		vCol3_02
	; pattern 5 and 6
	Pelimusa_PSG3_Hat	$0C
	Pelimusa_PSG3_Bell
	Pelimusa_PSG3_Hat	$06, $06
	Pelimusa_PSG3_Bell	$0C
	Pelimusa_PSG3_Hat
	Pelimusa_PSG3_Bell	$06
	Pelimusa_PSG3_Hat	$0C, $06
	Pelimusa_PSG3_Bell	$0C
	Pelimusa_PSG3_Hat
	Pelimusa_PSG3_Bell
	Pelimusa_PSG3_Hat	$06, $06
	Pelimusa_PSG3_Bell	$0C
	Pelimusa_PSG3_Hat
	Pelimusa_PSG3_Bell	$0C, $0C, $06, $06
	sLoop		$01, $04, Pelimusa_PSG3

	; pattern 7 and 8
.loop	sCall		Pelimusa_PSG3_Main
	sCall		Pelimusa_PSG3_Alt
	sCall		Pelimusa_PSG3_Main
	sJump		.loop
; ---------------------------------------------------------------------------

Pelimusa_PSG3_Main:
	Pelimusa_PSG3_Hat	$0C
	Pelimusa_PSG3_Bell
	Pelimusa_PSG3_Hat
	Pelimusa_PSG3_Bell
	Pelimusa_PSG3_Hat
	Pelimusa_PSG3_Bell	$06, $06
	Pelimusa_PSG3_Hat	$0C
	Pelimusa_PSG3_Bell
	Pelimusa_PSG3_Hat
	Pelimusa_PSG3_Bell
	Pelimusa_PSG3_Hat
	Pelimusa_PSG3_Bell
	Pelimusa_PSG3_Hat
	Pelimusa_PSG3_Bell
	Pelimusa_PSG3_Bell
	Pelimusa_PSG3_Hat	$06
	Pelimusa_PSG3_Bell
	sLoop		$01, $0C, Pelimusa_PSG3_Main
	sRet
; ---------------------------------------------------------------------------

Pelimusa_PSG3_Alt:
	Pelimusa_PSG3_Bell	$18, $18, $18, $0C
	Pelimusa_PSG3_Hat
	Pelimusa_PSG3_Bell	$18, $18, $18, $18
	sLoop		$01, $04, Pelimusa_PSG3_Alt
	sRet
