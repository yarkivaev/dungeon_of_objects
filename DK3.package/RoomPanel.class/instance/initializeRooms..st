as yet unclassified
initializeRooms: path
	super initialize.
	
	self extent: (300 @ 200).
	self color: Color blue.
	self position: (250 @ 150).
	self hide.
	
	roomsPlacement := path / 'sprites/Rooms'.
	buttonsCollection := OrderedCollection new.
	xOffset := 0.
	yOffset := 0.
	
	Room getBuildableRoomsArray do: [ :roomName |
		roomPath := roomsPlacement / roomName.
		
		button := SimpleButtonMorph new.
		button color: Color gray.
		button position: self topLeft + (xOffset @ yOffset).
		button extent: 100 @ 100.
		button borderWidth: 1.
		button borderColor: Color black.
		
		(roomPath , 'png') asFileReference exists ifTrue: [
			icon := Sprite new form: (Form fromFileNamed: (roomPath , 'png') pathString) size: 100.
		].
		
		 (FileDirectory on: (roomPath asString)) exists ifTrue: [
			roomPath := roomPath asFileReference files first fullName.
			icon :=  Sprite new form: (Form fromFileNamed: roomPath) size: 100.
		].
	
		icon := icon getMorph.
		icon position: button topLeft.
		
		button target: self.
		button actionSelector: #startBuilding:icon:.
		button arguments: (Array with: roomName with: icon).
	
		button addMorph: icon.
		buttonsCollection add: button.
		self addMorph: button.
	
		xOffset := xOffset + 100.
		xOffset = 300 ifTrue: [
			yOffset := yOffset + 100.
			xOffset := 0.
		]
	 ].
