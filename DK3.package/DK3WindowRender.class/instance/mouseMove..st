event handling
mouseMove: anEvent

	| camera mouseOffset worldOffset |
	
	anEvent anyButtonPressed ifFalse: [ ^ self ].

	camera := gameRender camera.
	
	mouseOffset := anEvent cursorPoint - anEvent startPoint.
	
	worldOffset := (mouseOffset x negated  @ mouseOffset y negated ) / camera zoom.
	
	camera position: (camera position + worldOffset).
      camera clampPositionInExtent: self innerBounds extent.
      self changed.
