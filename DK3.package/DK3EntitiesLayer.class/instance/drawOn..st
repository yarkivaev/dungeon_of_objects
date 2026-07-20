drawing
drawOn: aCanvas
     | offset morph rect center position  transformer  scaleFactor  scaledExtent |
     offset := aCanvas clipRect origin.

     creatures getDict do: [ :creature |
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
	     position := camera transformToScreen: ((creature position x * 16) @ (creature position y * 16) - (0@4)) windowCenter: center.
	     transformer position: position.
	     transformer fullDrawOn: aCanvas.
    ].