as yet unclassified
update: deltaTime
	timeCounter := timeCounter + deltaTime.
	
	timeCounter >= frameDuration ifTrue: [
		timeCounter := 0.
		currentIndex := currentIndex + 1.
		
		currentIndex > frames size ifTrue: [
			currentIndex := 1.
		].		
		
		form := frames at: currentIndex.
	
		form := Form fromFileNamed: form.
		form := form scaledToSize: width@height.
	
		morph := morph newForm: form.
		
		self drawMorph.
	].