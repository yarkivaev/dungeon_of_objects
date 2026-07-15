drawing
drawOn: aCanvas
	super drawOn: aCanvas.
	
	aCanvas clipBy: self innerBounds during: [ :clippedCanvas |
		gameRender renderSceneOn: clippedCanvas inBounds: self innerBounds.
	].
