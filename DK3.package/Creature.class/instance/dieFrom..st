as yet unclassified
dieFrom: anAttacker
	health := 0.
	
	self game ifNotNil: [
		self game addEvent: (Dictionary new
			at: #type put: #kill;
			at: #tick put: self game getTimer;
			at: #position put: (self position ifNotNil: [ self position copy ] ifNil: [ 0@0 ]);
			at: #victim put: self;
			at: #killer put: (anAttacker ifNil: [ #unknown ]);
			yourself)
	]
