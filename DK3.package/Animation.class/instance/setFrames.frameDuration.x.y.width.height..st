as yet unclassified
setFrames: framesPath frameDuration: time x: posX y: posY width: aWidth height: aHeight
	frames := framesPath asFileReference.
	frameDuration := time.
	x := posX.
	y := posY.
	width := aWidth.
	height := aHeight.
	
	frames := frames files.
	frames := frames asOrderedCollection.
	frames := frames sorted.