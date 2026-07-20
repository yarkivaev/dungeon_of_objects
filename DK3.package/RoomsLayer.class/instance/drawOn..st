as yet unclassified
drawOn: aCanvas
     | offset morph rect center position  transformer  scaleFactor  scaledExtent |
	
     offset := aCanvas clipRect origin.

     rooms getDict do: [ :room |
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
	     position := camera transformToScreen: ((room getPosition x * 16) @ (room getPosition y * 16)) windowCenter: center.
	     transformer position: position.
	     transformer fullDrawOn: aCanvas.
    ].
