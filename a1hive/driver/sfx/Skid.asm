	sHeaderInit
	sHeaderPrio	$70
	sHeaderCh	$02
	sHeaderSFX	$80, $A0, .PSG2, $F4, $00
	sHeaderSFX	$80, $C0, .PSG3, $F4, $00

.PSG2	sVoice		v00
	dc.b nBb3, $01, nRst, nBb3, nRst, $03

.Loop2	dc.b nBb3, $01, nRst, $01
	sLoop		$00, $0B, .Loop2
	sStop

.PSG3	sVoice		v00
	dc.b nRst, $01, nAb3, nRst, nAb3, nRst, $03

.Loop1	dc.b nAb3, $01, nRst, $01
	sLoop		$00, $0B, .Loop1
	sStop
