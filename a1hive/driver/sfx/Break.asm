	sHeaderInit
	sHeaderPrio	$70
	sHeaderCh	$02
	sHeaderSFX	$80, $05, .FM5, $00, $00
	sHeaderSFX	$80, $C0, .PSG3, $00, $02

.FM5	ssMod68k	$03, $01, $72, $0B
	sVoice		$19
	dc.b nA4, $16
	sStop

.PSG3	sVoice		v01
	sNoisePSG	$E7
	dc.b nB3, $1B
	sStop
