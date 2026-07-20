drawing
drawOn: aCanvas
     | morph rect center screenPoint transformer scaleFactor scaledExtent worldPoint |
     creatures getDict valuesDo: [ :creature |
	     morph := creature sprite getMorph.
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
	     worldPoint := (camera worldFromGrid: creature position) - (0 @ 4).
	     screenPoint := camera transformToScreen: worldPoint windowCenter: center.
	     transformer position: screenPoint.
	     transformer fullDrawOn: aCanvas.
    ].
