	sHeaderInit
	sHeaderPrio	$80
	sHeaderCh	$01
	sHeaderSFX	$80, ctFM5, .FM5, $00, $05

.FM5	sPan	spRight
	sVoice	pRings
	sJump	SFX_Ring1
