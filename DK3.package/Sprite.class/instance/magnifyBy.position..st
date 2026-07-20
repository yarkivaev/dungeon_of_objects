as yet unclassified
magnifyBy: factor position: aPosition
	| scaledForm |
	
	factor ~= currentZoom ifTrue: [
		scaledForm := Form fromFileNamed: formPath.
		scaledForm := scaledForm scaledToSize: (width * factor @ height * factor) smoothing: 3.
		morph image: scaledForm.
		currentZoom := factor.
	]