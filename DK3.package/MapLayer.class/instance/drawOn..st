as yet unclassified
drawOn: aCanvas
	| morph rect center scaleFactor scaledExtent worldPoint screenPoint tileSize overlayColor |
	lastCenter := aCanvas clipRect center.
	map withIndexDo: [ :row :rowIndex |
		row withIndexDo: [ :tile :colIndex |
		     morph := tile morph getMorph.
		     transformer := tile transformer.
		    scaleFactor := camera zoom.
		    transformer scale: scaleFactor.
		    scaledExtent := (morph extent * scaleFactor) rounded.
		    transformer extent: scaledExtent.
		     rect := aCanvas clipRect.
		     center := rect center.
		     worldPoint := camera worldFromGrid: colIndex @ rowIndex.
		     screenPoint := camera transformToScreen: worldPoint windowCenter: center.
		     transformer position: screenPoint.
		     transformer fullDrawOn: aCanvas.
		     tile transformer: transformer.
    		].
	].
	worldMap ifNil: [ ^ self ].
	worldMap pruneMarks.
	tileSize := (16 * camera zoom) rounded.
	overlayColor := Color magenta muchLighter alpha: 0.4.
	worldMap markedPoints do: [ :point |
		worldPoint := camera worldFromGrid: point.
		screenPoint := camera transformToScreen: worldPoint windowCenter: lastCenter.
		aCanvas fillRectangle: (screenPoint extent: tileSize @ tileSize) color: overlayColor ].
