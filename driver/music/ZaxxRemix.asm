Zaxx_Header:
	sHeaderInit						; Z80 offset is $DD5A
	sHeaderTempo	$01, $00
	sHeaderCh	$05, $03
	sHeaderDAC	Zaxx_DAC1
	sHeaderDAC	Zaxx_DAC2
	sHeaderFM	Zaxx_FM1, $00, $00
	sHeaderFM	Zaxx_FM2, $00, $11
	sHeaderFM	Zaxx_FM3, $00, $10
	sHeaderFM	Zaxx_FM4, $00, $0B
	sHeaderFM	Zaxx_FM5, $00, $04
	sHeaderPSG	Zaxx_PSG1, $00, $18, $00, vZaxx04
	sHeaderPSG	Zaxx_PSG2, $00, $18, $00, vZaxx04
	sHeaderPSG	Zaxx_PSG3, $00, $00, $00, vZaxx04

	; Patch $00
	; $04
	; $30, $40, $70, $20,	$1F, $1F, $1F, $1F
	; $17, $1F, $00, $00,	$10, $10, $10, $10
	; $0F, $0F, $0F, $0F,	$10, $80, $06, $80
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
	spTotalLv	$10, $06, $00, $00

	; Patch $01
	; $34
	; $55, $55, $21, $21,	$1F, $1F, $1F, $1F
	; $07, $10, $16, $1B,	$00, $0F, $00, $15
	; $0F, $0F, $0F, $0F,	$03, $90, $10, $80
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
	spTotalLv	$03, $10, $10, $00

	; Patch $02
	; $0B
	; $2C, $30, $21, $31,	$1F, $14, $1F, $1F
	; $1F, $10, $1F, $1F,	$0F, $0E, $09, $0B
	; $0F, $1F, $1F, $1F,	$30, $10, $10, $80
	spAlgorithm	$03
	spFeedback	$01
	spDetune	$02, $02, $03, $03
	spMultiple	$0C, $01, $00, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $14, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$1F, $1F, $10, $1F
	spSustainLv	$00, $01, $01, $01
	spDecayRt	$0F, $09, $0E, $0B
	spReleaseRt	$0F, $0F, $0F, $0F
	spSSGEG		$00, $00, $00, $00
	spTotalLv	$30, $10, $10, $00

	; Patch $03
	; $3C
	; $20, $21, $53, $52,	$13, $10, $11, $13
	; $10, $00, $10, $10,	$10, $00, $00, $00
	; $1F, $1F, $1F, $1F,	$1D, $85, $00, $85
	spAlgorithm	$04
	spFeedback	$07
	spDetune	$02, $05, $02, $05
	spMultiple	$00, $03, $01, $02
	spRateScale	$00, $00, $00, $00
	spAttackRt	$13, $11, $10, $13
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$10, $10, $00, $10
	spSustainLv	$01, $01, $01, $01
	spDecayRt	$10, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spSSGEG		$00, $00, $00, $00
	spTotalLv	$1D, $00, $05, $05

	; Patch $04
	; $3C
	; $43, $74, $53, $74,	$1F, $1F, $1F, $1D
	; $1F, $1F, $1F, $1F,	$00, $00, $00, $00
	; $0F, $0F, $0F, $0F,	$10, $86, $10, $86
	spAlgorithm	$04
	spFeedback	$07
	spDetune	$04, $05, $07, $07
	spMultiple	$03, $03, $04, $04
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1D
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$1F, $1F, $1F, $1F
	spSustainLv	$00, $00, $00, $00
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spSSGEG		$00, $00, $00, $00
	spTotalLv	$10, $10, $06, $06

	; Patch $05
	; $22
	; $34, $14, $08, $1C,	$1E, $1F, $1F, $1F
	; $13, $1F, $0B, $1D,	$00, $0E, $00, $10
	; $1C, $1A, $1B, $19,	$10, $04, $00, $80
	spAlgorithm	$02
	spFeedback	$04
	spDetune	$03, $00, $01, $01
	spMultiple	$04, $08, $04, $0C
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1E, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$13, $0B, $1F, $1D
	spSustainLv	$01, $01, $01, $01
	spDecayRt	$00, $00, $0E, $10
	spReleaseRt	$0C, $0B, $0A, $09
	spSSGEG		$00, $00, $00, $00
	spTotalLv	$10, $00, $04, $00

	; Patch $06
	; $04
	; $23, $28, $53, $58,	$1E, $1F, $1F, $1F
	; $13, $1F, $0B, $1D,	$00, $08, $00, $08
	; $1C, $1A, $1B, $19,	$00, $86, $10, $86
	spAlgorithm	$04
	spFeedback	$00
	spDetune	$02, $05, $02, $05
	spMultiple	$03, $03, $08, $08
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1E, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$13, $0B, $1F, $1D
	spSustainLv	$01, $01, $01, $01
	spDecayRt	$00, $00, $08, $08
	spReleaseRt	$0C, $0B, $0A, $09
	spSSGEG		$00, $00, $00, $00
	spTotalLv	$00, $10, $06, $06

	; Patch $07
	; $34
	; $54, $55, $21, $21,	$1F, $1F, $1F, $1F
	; $07, $00, $16, $1B,	$00, $0E, $10, $15
	; $0F, $0F, $0F, $0F,	$03, $80, $10, $80
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

	; Patch $08
	; $34
	; $56, $54, $20, $20,	$1F, $1F, $1F, $1F
	; $07, $00, $16, $1B,	$00, $0F, $10, $15
	; $0F, $0F, $0F, $0E,	$05, $80, $00, $80
	spAlgorithm	$04
	spFeedback	$06
	spDetune	$05, $02, $05, $02
	spMultiple	$06, $00, $04, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$07, $16, $00, $1B
	spSustainLv	$00, $00, $00, $00
	spDecayRt	$00, $10, $0F, $15
	spReleaseRt	$0F, $0F, $0F, $0E
	spSSGEG		$00, $00, $00, $00
	spTotalLv	$05, $00, $00, $00
; ===========================================================================
; ---------------------------------------------------------------------------
; FM5 data - Used for type of drums and clarinet?
; ---------------------------------------------------------------------------

Zaxx_FM5:
	sVoice		$05
	ssDetune	$FB
	;sJump		.out1

.drumsi	dc.b nCs6, $0C
	saVol		$0A
	dc.b $0C
	saVol		$F6
	sLoop		$00, $0C, .drumsi
	dc.b nRst, $60
; ---------------------------------------------------------------------------
; Main loop point

.loopj
; ---------------------------------------------------------------------------
; versus section

	saVol		$0A
.ver1	dc.b nRst, $0C
	dc.b nCs6, $0C
	sLoop		$00, $06, .ver1

	saVol		-$0A
	dc.b $18, $18
	saVol		$0A
	sLoop		$01, $03, .ver1
	saVol		-$0A

; ---------------------------------------------------------------------------
; double section

	sCall		Zaxx_FM5_DblOut1
; ---------------------------------------------------------------------------
; light and dark section drums

.lirk1	dc.b nCs6, $06
	saVol		$0A
	dc.b $06
	saVol		$F6
	sLoop		$00, $C0, .lirk1
; ---------------------------------------------------------------------------
; out section

.out1	saVol		$0A
	dc.b nCs6, $0C, $0C, $0C
	saVol		-$0A
	dc.b nD6, $06, $06
	sLoop		$00, $04, .out1

	dc.b $0C, $0C
	sLoop		$01, $02, .out1
	saVol		$08

	dc.b nRst, $60
	sCall		Zaxx_FM5_DblOut1

	;sStop
	sJump		.loopj
; ---------------------------------------------------------------------------
; subroutines

Zaxx_FM5_DblOut1:
	saVol		$0F
	sVoice		$04

.loop	dc.b nE3, $06, nG2, nA2, nBb2
	sLoop		$00, $20, .loop
	saVol		$F1
	sVoice		$05
	sRet
; ===========================================================================
; ---------------------------------------------------------------------------
; FM 1 data - Used for drums and hi-hat
; ---------------------------------------------------------------------------

Zaxx_FM1:
	;sJump		.out1
	sVoice		pLowKick
	dc.b nC2, $18
	sLoop		$00, $0C, Zaxx_FM1
	sVoice		pLowKick
	dc.b $18, nRst, $0C, nC2, $18, nRst, $0C, nC2, $18
; ---------------------------------------------------------------------------
; Main loop point

.loopj
; ---------------------------------------------------------------------------
; versus section

.ver1	sVoice		pLowKick
	dc.b nC2, $0C
	sVoice		pSnare
	dc.b $0C
	sLoop		$00, $06, .ver1
	dc.b nRst, $30
	sLoop		$01, $03, .ver1
; ---------------------------------------------------------------------------
; double section

	sCall		Zaxx_FM1_Dbl2
; ---------------------------------------------------------------------------
; light and dark section

.lirk1	sVoice		pLowKick
	dc.b $06
	saVol		$0A
	dc.b $06
	saVol		$F6
	sVoice		pSnare
	dc.b $0C
	sVoice		pLowKick
	dc.b $06
	saVol		$0A
	dc.b $06
	saVol		$F6
	sVoice		pSnare
	dc.b $0C
	sVoice		pLowKick
	dc.b $0C
	sVoice		pSnare
	dc.b $0C
	sVoice		pLowKick
	dc.b $0C
	sVoice		pSnare
	dc.b $06
	sVoice		pLowKick
	dc.b $06
	sLoop		$00, $07, .lirk1
	sVoice		pLowKick
	dc.b $06
	saVol		$0A
	dc.b $06
	saVol		$F6
	sVoice		pSnare
	dc.b $0C
	sVoice		pLowKick
	dc.b $06
	saVol		$0A
	dc.b $06
	saVol		$F6
	sVoice		pSnare
	dc.b $0C
	sVoice		pCrash

.lirk2	dc.b $06
	saVol		$05
	dc.b $06
	saVol		$FB
	sLoop		$00, $04, .lirk2
	sLoop		$01, $03, .lirk1
; ---------------------------------------------------------------------------
; out section

.out1	sVoice		pLowKick
	dc.b nC2, $0C
	sVoice		pSnare
	dc.b $0C
	sVoice		pCrash
	dc.b $0C
	sVoice		pSnare
	saVol		$05
	dc.b $0C
	saVol		-$04
	sLoop		$00, $04, .out1

	sVoice		pCrash
	dc.b $0C
	sVoice		pSnare
	dc.b $0C
	sLoop		$01, $02, .out1
	saVol		-$08

	dc.b nRst, $60, $60
	sCall		Zaxx_FM1_Dbl3
	;sStop
	sJump		.loopj
; ---------------------------------------------------------------------------
; subroutines

Zaxx_FM1_Dbl2:
	sCall		Zaxx_FM1_Dbl1
	dc.b $0C, $0C

Zaxx_FM1_Dbl3:
	sCall		Zaxx_FM1_Dbl1
	dc.b $06
	saVol		$0A
	dc.b $06
	saVol		$F6
	dc.b $06, $06
	sLoop		$00, $04, Zaxx_FM1_Dbl2
	sRet

Zaxx_FM1_Dbl1:
	sVoice		pSnare
	dc.b nC2, $0C
	saVol		$05
	dc.b $06
	saVol		$FB
	dc.b $0C
	saVol		$05
	dc.b $06
	saVol		$FB
	dc.b $0C
	saVol		$05
	dc.b $06
	saVol		$FB
	dc.b $0C
	saVol		$05
	dc.b $06
	saVol		$FB
	sRet
; ===========================================================================
; ---------------------------------------------------------------------------
; FM2 data - Used for main instrumentation with FM4
; ---------------------------------------------------------------------------

Zaxx_FM2:
	;sJump		.out1
	ssMod68k	$03, $01, $0A, $08
	sVoice		$02
	sCall		Zaxx_FM23_Intro1
	saVol		$FB
; ---------------------------------------------------------------------------
; Main loop point

.loopj
; ---------------------------------------------------------------------------
; versus section

	sCall		Zaxx_FM24_Ver1
; ---------------------------------------------------------------------------
; double section

	sVoice		$03
.dbl1	sCall		Zaxx_FM23_DblDark1
	sLoop		$01, $04, .dbl1
; ---------------------------------------------------------------------------
; light section

.lite1	sCall		Zaxx_FM24_Lite1
	sLoop		$00, $04, .lite1
	saTranspose	$01
	sLoop		$01, $02, .lite1
	saTranspose	$FE
; ---------------------------------------------------------------------------
; dark section

	sVoice		$03
	sPan		spCenter, $00
	saVol		$FD

.dark1	sCall		Zaxx_FM23_DblDark1
	sLoop		$01, $04, .dark1
	saVol		$03
; ---------------------------------------------------------------------------
; out section

.out1	sCall		Zaxx_FM24_Out1

	dc.b nRst, $60, $60, $60

	sVoice		$03
.out2	sCall		Zaxx_FM23_DblDark1
	sLoop		$01, $03, .out2
	;sStop
	sJump		.loopj
; ---------------------------------------------------------------------------
; subroutines

Zaxx_FM24_Ver1:
	sVoice		$03
.ver2	ssMod68k	$00, $01, -$14, $FF

.ver1	dc.b nE2, $08
	saVol		$08
	dc.b sHold, nF2
	saVol		$08
	dc.b sHold, nA2
	saVol		-$10
	saDetune	-$08
	sLoop		$00, $06, .ver1

	saDetune	$08*$06
	ssMod68k	$00, $01, -$20, $18

	ssLFO		$F8,1,2, spLeft
	dc.b nD3, $03
	ssLFO		$FA,1,4, spLeft
	dc.b sHold, nD3
	ssLFO		$FD,1,5, spLeft
	dc.b sHold, nD3
	ssLFO		$FF,1,7, spLeft
	dc.b sHold, nD3

	ssLFO		$F8,1,2, spCenter
	dc.b sHold, nE3
	ssLFO		$FA,1,4, spCenter
	dc.b sHold, nE3
	ssLFO		$FD,1,5, spCenter
	dc.b sHold, nE3
	ssLFO		$FF,1,7, spCenter
	dc.b sHold, nE3

	ssLFO		$F8,1,2, spRight
	dc.b sHold, nB3
	ssLFO		$FA,1,4, spRight
	dc.b sHold, nB3
	ssLFO		$FD,1,5, spRight
	dc.b sHold, nB3
	ssLFO		$FF,1,7, spRight
	dc.b sHold, nB3

	ssLFO		$F8,1,2, spCenter
	dc.b sHold, nE3
	ssLFO		$FA,1,4, spCenter
	dc.b sHold, nE3
	ssLFO		$FD,1,5, spCenter
	dc.b sHold, nE3
	ssLFO		$FF,1,7, spCenter
	dc.b sHold, nE3

	ssLFO		$00,spCenter
	sLoop		$01, $03, .ver2

	ssMod68k	$03, $01, $0A, $08
	sRet

Zaxx_FM24_Out1:
	sVoice		$03
	ssMod68k	$00, $01, -$20, $18

.loop	ssLFO		$F8,1,2, spCentre
	dc.b nC3, $0C
	ssLFO		$FA,1,4, spCentre
	dc.b sHold, nD3
	ssLFO		$FC,2,5, spCentre
	dc.b sHold, nE3
	ssLFO		$FE,2,7, spLeft
	dc.b sHold, nF3
	saVol		$01

	ssLFO		$F8,1,2, spCentre
	dc.b nCs2, $0C
	ssLFO		$FA,1,4, spCentre
	dc.b sHold, nEb2
	ssLFO		$FC,2,5, spCentre
	dc.b sHold, nF2
	ssLFO		$FE,2,7, spRight
	dc.b sHold, nFs2
	saVol		$01

	sLoop		$00, $02, .loop
	ssLFO		$FD,3,7, spCentre
	sModOff
	dc.b nG3, $18
	sModOn
	sLoop		$01, $02, .loop

	ssLFO		$00,spCenter
	ssMod68k	$03, $01, $0A, $08
	saVol		-$08
	sRet

Zaxx_FM24_Lite1:
	sVoice		$06
	sPan		spLeft, $00
	dc.b nE2, $0C
	sPan		spCenter, $00
	dc.b nE2
	sPan		spRight, $00
	dc.b nE3
	sPan		spCenter, $00
	dc.b nE2
	sPan		spLeft, $00
	dc.b nD3
	sPan		spCenter, $00
	dc.b nE2, $06
	sPan		spRight, $00
	dc.b nB2, $12
	sPan		spCenter, $00
	dc.b nE2, $0C
	sPan		spLeft, $00
	dc.b nE2, $0C
	sPan		spCenter, $00
	dc.b nE2
	sPan		spRight, $00
	dc.b nE3
	sPan		spCenter, $00
	dc.b nE2
	sPan		spLeft, $00
	dc.b nG3
	sPan		spCenter, $00
	dc.b nE2, $06
	sPan		spRight, $00
	dc.b nD3, $12
	sPan		spCenter, $00
	dc.b nE3, $0C
	sPan		spLeft, $00
	sRet
; ===========================================================================
; ---------------------------------------------------------------------------
; FM4 data - Used for main instrumentation with FM2
; ---------------------------------------------------------------------------

Zaxx_FM4:
	;sJump		.out1
	ssMod68k	$03, $01, $0A, $08
	sVoice		$03
	ssDetune	$FB
	dc.b nRst, $60, $60, $60, $60
; ---------------------------------------------------------------------------
; Main loop point

.loopj
; ---------------------------------------------------------------------------
; versus section

	saTranspose	$0C
	sCall		Zaxx_FM24_Ver1
	saTranspose	-$0C
; ---------------------------------------------------------------------------
; double section

.dbl1	sCall		Zaxx_FM4_DblDark
	sLoop		$01, $04, .dbl1
; ---------------------------------------------------------------------------
; light section

	sVoice		$06
	saTranspose	$0C

.lite1	sCall		Zaxx_FM24_Lite1
	sLoop		$00, $04, .lite1
	saTranspose	$01
	sLoop		$01, $02, .lite1
	saTranspose	$F2
; ---------------------------------------------------------------------------
; dark section

	sVoice		$03
	sPan		spCenter, $00

.dark1	sCall		Zaxx_FM4_DblDark
	sLoop		$01, $04, .dark1
; ---------------------------------------------------------------------------
; out section

.out1	saTranspose	$0C
	sCall		Zaxx_FM24_Out1
	saTranspose	-$0C
	dc.b nRst, $60, $60, $60

.out2	sCall		Zaxx_FM4_DblDark
	sLoop		$01, $03, .out2
	;sStop
	sJump		.loopj

Zaxx_FM4_DblDark:
	dc.b nBb2, $02, sHold, nB2, $0A, nA2, $06
	sLoop		$00, $04, Zaxx_FM4_DblDark
	sPan		spLeft, $00
	dc.b nF3, $0C, sHold
	sPan		spRight, $00
	dc.b nE3
	sPan		spCenter, $00
	dc.b nB2, $0C, nA2, $06, nB2, $0C, nA2, $06
	dc.b nBb2, $02, sHold, nB2, $0A, nA2, $06, nB2
	dc.b $0C, nG2, $06, nAb2, $02, sHold, nA2, $0A
	dc.b nBb2, $0C
	sRet
; ===========================================================================
; ---------------------------------------------------------------------------
; PSG1 and PSG2 data - Used for boosting FM2 and FM4, or proving bg noise
; ---------------------------------------------------------------------------

Zaxx_PSG2:
	ssDetune	$FB
	dc.b nRst, $03

Zaxx_PSG1:
	;sJump		.out1
.wait	dc.b nRst, $60
	sLoop		$00, $04, .wait
; ---------------------------------------------------------------------------
; Main loop point

.loopj
; ---------------------------------------------------------------------------
; versus section

.ver2	ssMod68k	$00, $01, -$06, $FF

.ver1	dc.b nE2, $08
	saVol		$18
	dc.b sHold, nF2
	saVol		$18
	dc.b sHold, nA2
	saVol		-$30
	saDetune	-$08
	sLoop		$00, $06, .ver1

	saDetune	$08*$06
	dc.b nRst, $30
	sLoop		$01, $03, .ver2
; ---------------------------------------------------------------------------
; double section

	sCall		Zaxx_PSG12_DblOut1
; ---------------------------------------------------------------------------
; light section

.lite1	sCall		Zaxx_PSG12_Lite1
	sLoop		$00, $04, .lite1
	saTranspose	$01
	sLoop		$01, $02, .lite1
	saTranspose	$FE
; ---------------------------------------------------------------------------
; dark section

.dark1	dc.b nRst, $60
	sLoop		$00, $08, .dark1
; ---------------------------------------------------------------------------
; out section

.out1	dc.b nRst, $60, $60
	dc.b nC3, $0C, nCs2
	saVol		$20
	sLoop		$00, $02, .out1
	saVol		-$40

	dc.b nRst, $60
	sCall		Zaxx_PSG12_DblOut1
	;sStop
	sJump		.loopj
; ---------------------------------------------------------------------------
; subroutines

Zaxx_PSG12_DblOut1:
	ssMod68k	$01, $01, $FF, $01
.loop	dc.b nE1, $60, sHold, $60
	sLoop		$00, $04, .loop

	ssMod68k	$03, $01, $02, $03
	sRet

Zaxx_PSG12_Lite1:	; <- actually same as Zaxx_FM24_Lite1
	dc.b nE2, $0C, nE2, nE3, nE2, nD3, nE2, $06, nB2, $12
	dc.b nE2, $0C, nE2, nE2, nE3, nE2, nG3, nE2, $06, nD3, $12
	dc.b nE3, $0C
	sRet
; ===========================================================================
; ---------------------------------------------------------------------------
; FM 3 data - Used for background low pitch effect
; ---------------------------------------------------------------------------

Zaxx_FM3:
	sVoice		$02
	ssMod68k	$10, $01, $10, $07
	;sJump		.out1
	sCall		Zaxx_FM23_Intro1
	saVol		$FB
; ---------------------------------------------------------------------------
; Main loop point

.loopj
; ---------------------------------------------------------------------------
; versus section

.ver1	dc.b nE2, $0C, nD2, nEb2, nE2
	sLoop		$00, $03, .ver1

	dc.b nD3, nF3, nG3, nF3
	saTranspose	$01
	sLoop		$01, $03, .ver1
	saTranspose	-$03
; ---------------------------------------------------------------------------
; double section

.dbl1	sCall		Zaxx_FM23_DblDark1
	sLoop		$01, $04, .dbl1
; ---------------------------------------------------------------------------
; dark section

.dark1	dc.b nE2, $0C, nD2, nEb2, $02, sHold, nE2, $10
	dc.b nG2, $06, nA2, $06, nRst, $06, nBb2, $06
	dc.b nRst, $06, nA2, $06, nG2, $0C, nEb2, $02
	dc.b sHold, nE2, $04, sHold, nE2, $0C, nD2, nE2
	dc.b nG2, nA2, $06, nRst, $06, nBb2, $06, nRst
	dc.b $06, nG2, $06, nA2, $0A, sHold, nAb2, $01
	dc.b sHold, nG2, nEb2, $02, sHold, nE2, $04
	sLoop		$00, $04, .dark1
	saTranspose	$01
	sLoop		$01, $02, .dark1
	saTranspose	$FE
; ---------------------------------------------------------------------------
; light section

.lite1	sCall		Zaxx_FM23_DblDark1
	sLoop		$01, $04, .lite1
; ---------------------------------------------------------------------------
; out section

.out1	sCall		Zaxx_FM3_Out1
	dc.b nC3, $0C, nD3
	sCall		Zaxx_FM3_Out1
	dc.b nRst, $78, $60, $60

.out2	sCall		Zaxx_FM23_DblDark1
	sLoop		$01, $03, .out2
	sJump		.loopj
; ---------------------------------------------------------------------------
; subroutines

Zaxx_FM3_Out1:
	dc.b nD2, $0C, nC2, nCs2, $02, sHold, nD2, $10
	dc.b nF2, $06, nG2, nRst, nD2, nRst, nG2
	dc.b nB2, $02, sHold, nFs2, $10
	sLoop		$00, $02, Zaxx_FM3_Out1
	sRet

Zaxx_FM23_Intro1:
	dc.b nD2, $02, sHold, nEb2, sHold, nE2, $08, nE2
	dc.b $0C, nD2, nE2, nE2, nBb2, nA2, nG2, nE2
	dc.b nE2, nD2, nE2, nE2, nG2, nAb2, $02, sHold
	dc.b nA2, $16
	dc.b nE2, $0C, nE2, nD2, nE2, nE2, nG2, nAb2
	dc.b nA2, nBb2, $24, nA2, nAb2, $18
	sRet

Zaxx_FM23_DblDark1:
	dc.b nEb2, $02, sHold, nE2, $0A, nD2, $06
	sLoop		$00, $04, Zaxx_FM23_DblDark1
	dc.b nBb2, $0C, nA2, nE2, $0C, nD2, $06, nE2
	dc.b $0C, nD2, $06, nEb2, $02, sHold, nE2, $0A
	dc.b nD2, $06, nE2, $0C, nC2, $06, nCs2, $02
	dc.b sHold, nD2, $0A, nEb2, $0C
	sRet
; ===========================================================================
; ---------------------------------------------------------------------------
; PSG3 data
; ---------------------------------------------------------------------------

Zaxx_PSG3:
	;sJump		.out1
	dc.b nRst, $60, $60, $60, $60
; ---------------------------------------------------------------------------
; Main loop point, and loop from 2pvs

.loopj
; ---------------------------------------------------------------------------
; versus section
	dc.b nRst, $60, $60, $60, $60, $60, $60

; ---------------------------------------------------------------------------
; double section

	sNoisePSG	$E7
	sCall		Zaxx_PSG3_DblDark1
; ---------------------------------------------------------------------------
; light section

.lite1	sCall		Zaxx_PSG3_LiteOut1
	sLoop		$00, $10, .lite1
; ---------------------------------------------------------------------------
; dark section

	sCall		Zaxx_PSG3_DblDark1
; ---------------------------------------------------------------------------
; out section


.out1	sCall		Zaxx_PSG3_LiteOut1
	sLoop		$00, $04, .out1

	ssMod68k	$08, $04, $01, $04
	sVolEnv		vZaxx04
	dc.b nRst, $30
	dc.b nAb6, $60
	ssMod68k	$00, $01, $01, $04

.out2	dc.b sHold, $06
	saVol		$08
	sLoop		$00, $08, .out2
	saVol		-$40

	dc.b nRst, $60, $60, $30
	ssMod68k	$08, $04, $01, $04

.out3	dc.b nAb6, $60
	sLoop		$00, $05, .out3
	sJump		.loopj
; ---------------------------------------------------------------------------
; subroutines

Zaxx_PSG3_DblDark1:
	sVolEnv		vS3K_01
	dc.b nA6, $06, $06
	sVolEnv		vS3K_08
	dc.b $06
	sVolEnv		vS3K_01
	dc.b $06, $06
	sVolEnv		vS3K_08
	dc.b $06
	sVolEnv		vS3K_01
	dc.b $06, $06, $06, $06, $06, $06, $06, $06
	dc.b $06, $06
	sLoop		$00, $08, Zaxx_PSG3_DblDark1
	sRet

Zaxx_PSG3_LiteOut1:
	sVolEnv		vS3K_01
	dc.b nA6, $0C
	sVolEnv		vS3K_08
	dc.b $0C
	sVolEnv		vS3K_01
	dc.b $0C
	sVolEnv		vS3K_08
	dc.b $0C
	sVolEnv		vS3K_01
	dc.b $0C
	sVolEnv		vS3K_08
	dc.b $0C
	sVolEnv		vS3K_01
	dc.b $0C
	sVolEnv		vS3K_08
	dc.b $0C
	sRet
; ===========================================================================
; ---------------------------------------------------------------------------
; DAC1 data
; ---------------------------------------------------------------------------

Zaxx_DAC1:
	;sJump		.out1
	sPan		spLeft, $00
	dc.b dZaxxEYO, $18
	sPan		spRight, $00
	dc.b dZaxxIT
	sLoop		$00, $06, Zaxx_DAC1
	dc.b dZaxxDIS, $60
; ---------------------------------------------------------------------------
; Main loop point

.loopj
; ---------------------------------------------------------------------------
; versus section

.ver1	sPan		spCenter, $00
	dc.b dZaxxGO, $18
	sLoop		$00, $06, .ver1
	sPan		spRight, $00
	dc.b dZaxxOOH
	sPan		spLeft, $00
	dc.b dZaxxOOH
	sLoop		$01, $03, .ver1
; ---------------------------------------------------------------------------
; double section

.dbl1	sPan		spCenter, $00
	dc.b nRst, $48
	dc.b dZaxxOOH, $17, nRst, $01, nRst, $48
	sPan		spRight, $00
	dc.b dZaxxOOH, $0C
	sPan		spLeft, $00
	dc.b dZaxxOOH, $0B, nRst, $01
	sLoop		$00, $04, .dbl1
; ---------------------------------------------------------------------------
; light section

.lite1	sPan		spLeft, $00
	dc.b dZaxxLoOOH, $0C
	sPan		spRight, $00
	dc.b dZaxxLoOOH
	sPan		spLeft, $00
	dc.b dZaxxLoOOH
	sPan		spRight, $00
	dc.b dZaxxLoOOH, $06
	sPan		spLeft, $00
	dc.b dZaxxLoOOH
	sLoop		$00, $20, .lite1
; ---------------------------------------------------------------------------
; dark section

.dark1	sPan		spLeft, $00
	dc.b dZaxxOOH, $12
	sPan		spRight, $00
	dc.b dZaxxOOH
	sPan		spLeft, $00
	dc.b dZaxxOOH
	sPan		spRight, $00
	dc.b dZaxxOOH
	sPan		spLeft, $00
	dc.b dZaxxOOH, $0C, $0C
	sLoop		$00, $08, .dark1
; ---------------------------------------------------------------------------
; out section

.out1	sPan		spCenter, $00
	dc.b dZaxxOOH, $17, nRst, $19
	sPan		spRight, $00
	dc.b dZaxxOOH, $0C
	sPan		spLeft, $00
	dc.b dZaxxOOH, $0B, nRst, $19
	sLoop		$00, $02, .out1

	sPan		spCentre, $00
	ssMod68k	$01, $01, $10, $FF
	dc.b dZaxxEYO, $18
	sModOff
	sLoop		$01, $02, .out1

	sPan		spRight, $00
	dc.b dZaxxDIS, $60
	sPan		spCenter, $00
	dc.b dZaxxGO, $60, $60, $60
	dc.b dZaxxGO, $18, $18, $18, nRst

.out2	sPan		spLeft, $00
	dc.b dZaxxOOH, $12
	sPan		spRight, $00
	dc.b dZaxxOOH
	sPan		spLeft, $00
	dc.b dZaxxOOH
	sPan		spRight, $00
	dc.b dZaxxOOH
	sPan		spLeft, $00
	dc.b dZaxxOOH, $0C, $0C
	sLoop		$00, $04, .out2
	;sStop
	sJump		.loopj

; ===========================================================================
; ---------------------------------------------------------------------------
; DAC2 data
; ---------------------------------------------------------------------------

Zaxx_DAC2:
	sPan		spNone		; Allow DAC1 to control panning

	;sJump		.out1
.drumsi	dc.b dLowKick, $0C
	saVol		$05
	dc.b dClap, $0C
	saVol		-$05
	sLoop		$00, $0C, .drumsi
	dc.b dClap, $24, $24, $18

; ---------------------------------------------------------------------------
; Main loop point, and loop from 2pvs

.loopj
; ---------------------------------------------------------------------------
; versus section
	ssVol		$0C

.ver1	dc.b nRst, $60, $30
	dc.b dSnare, $18, dSnare
	sLoop		$01, $03, .ver1
; ---------------------------------------------------------------------------
; double section

.dbl1	dc.b dClap, $18, nRst, $30
	dc.b dClap, $18, dClap, nRst, $30
	dc.b dClap, $18
	sLoop		$00, $04, .dbl1
; ---------------------------------------------------------------------------
; light section

.lite1	dc.b nRst, $60
	sLoop		$00, $10, .lite1
; ---------------------------------------------------------------------------
; dark section

.dark1	dc.b nRst, $60
	sLoop		$00, $08, .dark1
; ---------------------------------------------------------------------------
; out section

.out1	dc.b dClap, $18, nRst, $18
	saVol		$01
	sLoop		$00, $04, .out1

	ssFreqNote	$3F	; -$285
	dc.b dTom, $18
	ssFreqNote	nC4	; $100
	sLoop		$01, $02, .out1
	saVol		-$08
	dc.b nRst, $60, $60, $60, $60

.out2	dc.b dClap, $18, dSnare, dClap, nRst
	sLoop		$00, $05, .out2

	;sStop
	sJump		.loopj
