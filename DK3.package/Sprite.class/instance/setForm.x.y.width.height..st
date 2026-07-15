as yet unclassified
setForm: aForm x: posX y: posY width: aWidth height: aHeight
	form := aForm.
	x := posX.
	y := posY.
	width := aWidth.
	height := aHeight.
	
	form := form scaledToSize: width @ height.