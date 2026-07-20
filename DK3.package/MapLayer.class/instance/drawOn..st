as yet unclassified
drawOn: aCanvas
	| offset xOffset yOffset morph rect center  scaleFactor  scaledExtent |
	
	offset := aCanvas clipRect origin.
	xOffset := -800.
	yOffset := -800.
	
	map do: [ :row |
		row do: [ :tile |
		     morph := tile morph getMorph.
		     transformer := tile transformer.

		    scaleFactor := camera zoom.
		    transformer scale: scaleFactor.
		    scaledExtent := (morph extent * scaleFactor) rounded.
		    transformer extent: scaledExtent.

		     rect := aCanvas clipRect.
		     center := rect center.
		     position := camera transformToScreen: ((tile position x * 16) @ (tile position y * 16) + (xOffset @ yOffset)) windowCenter: center.
		     transformer position: position.
		     transformer fullDrawOn: aCanvas.
		
		     tile transformer: transformer.
		
		     xOffset := xOffset + 16.
    		].
	
		xOffset := -800.
		yOffset := yOffset + 16.
	].