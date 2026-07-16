as yet unclassified
testGameEventCollector

	| mockGame mockUpdate mockFighter mockPlayer events levelUpEvent actionEvent |
	
	mockGame := Game new.
	mockUpdate := GameUpdate new.
	mockUpdate game: mockGame.
	
	mockPlayer := User new. 
	
	mockFighter := Fighter new.
	mockFighter setPlayer: mockPlayer.
	mockUpdate addObject: mockFighter.
	
	mockFighter game: mockGame. 
	mockFighter gainLevel: 1.
	
	events := mockGame getEvents.
	self assert: events notEmpty.
	
	levelUpEvent := events last.
	self assert: (levelUpEvent at: #type) equals: #levelUp.
	self assert: (levelUpEvent at: #actor) equals: mockFighter.
	self assert: (levelUpEvent at: #oldLevel) equals: 1.
	self assert: (levelUpEvent at: #newLevel) equals: 2.
	
	mockGame flushEvents. 
	
	mockUpdate update: 1.
	
	events := mockGame getEvents.
	self assert: events notEmpty.
	
	actionEvent := events detect: [ :each | (each at: #type) = #actionChanged ] ifNone: [ nil ].
	self assert: actionEvent notNil.
	self assert: (actionEvent at: #actor) equals: mockFighter.
	self assert: (actionEvent at: #oldAction) equals: #none. 
	self assert: (actionEvent at: #newAction) ~= #none.
