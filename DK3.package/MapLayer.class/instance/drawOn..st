as yet unclassified
drawOn: aCanvas
	| morph rect center scaleFactor scaledExtent worldPoint screenPoint |
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
