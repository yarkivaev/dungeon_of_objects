as yet unclassified
update: deltaTime
	timeCounter := timeCounter + deltaTime.
	
	timeCounter >= frameDuration ifTrue: [
		timeCounter := 0.
		currentIndex := currentIndex + 1.
		
		currentIndex > frames size ifTrue: [
			currentIndex := 1.
		].
		
		form := (frames at: currentIndex) asString.
	
		form := Form fromFileNamed: form.
		form := form scaledToSize: width@height.
	
		morph newForm: form.
		morph position: x@y.
	].