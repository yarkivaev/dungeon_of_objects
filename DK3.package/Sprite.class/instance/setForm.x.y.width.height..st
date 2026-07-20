as yet unclassified
setForm: aForm x: posX y: posY width: aWidth height: aHeight
	form := Form fromFileNamed: aForm.
	formPath := aForm.
	x := posX.
	y := posY.
	width := aWidth.
	height := aHeight.
	form := form scaledToSize: width@height.
	
	morph := ImageMorph new.
	morph newForm: form.
	morph position: x@y.