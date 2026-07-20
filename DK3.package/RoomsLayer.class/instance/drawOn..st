as yet unclassified
drawOn: aCanvas
     | morph rect center screenPoint transformer scaleFactor scaledExtent worldPoint |
     rooms getDict valuesDo: [ :room |
	     morph := room getMorph getMorph.
	     transformer := TransformMorph new.
	     transformer addMorph: morph.
	     transformer color: Color transparent.
	     transformer borderWidth: 0.
	    scaleFactor := camera zoom.
	    transformer scale: scaleFactor.
	    scaledExtent := (morph extent * scaleFactor) rounded.
	    transformer extent: scaledExtent.
	     rect := aCanvas clipRect.
	     center := rect center.
	     worldPoint := camera worldFromGrid: room getPosition.
	     screenPoint := camera transformToScreen: worldPoint windowCenter: center.
	     transformer position: screenPoint.
	     transformer fullDrawOn: aCanvas.
    ].
