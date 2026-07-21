as yet unclassified
initializeWithCamera: aCamera
	| morph |

	super initializeWithCamera: aCamera.
	layerName := 'Rooms Layer'.
	
	map do: [ :row |
		row do: [ :tile |
		     morph := tile morph getMorph.
		     transformer := TransformMorph new.
		     transformer addMorph: morph.
		     transformer color: Color transparent.
		     transformer borderWidth: 0. 
		
		     tile transformer: transformer.
		].
	].
