as yet unclassified
update: deltaTime
	timeCounter := timeCounter + deltaTime.
	
	[timeCounter >= frameDuration] whileTrue: [
		timeCounter := timeCounter - frameDuration.
		currentIndex := currentIndex + 1.
		
		form := frames at: currentIndex.
	
		form := Form fromFileNamed: form.
		form := form scaledToSize: width @ height.
		
		currentIndex > frames size ifTrue: [
			currentIndex := 1.
		].
	].