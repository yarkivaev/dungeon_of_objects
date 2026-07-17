as yet unclassified
initialize
	super initialize.
	
	self extent: (300 @ 200).
	self color: Color blue.
	self position: (250 @ 150).
	self hide.
	
	roomsPlacement := '/home/andrew/DungeonKeepers/dungeon_of_objects/sprites/Rooms/'.
	buttonsCollection := OrderedCollection new.
	xOffset := 0.
	yOffset := 0.
	
	Room getBuildableRoomsArray do: [ :roomName |
		roomPath := roomsPlacement , roomName.
		
		button := SimpleButtonMorph new.
		button color: Color gray.
		button position: self topLeft + (xOffset @ yOffset).
		button extent: 100 @ 100.
		button borderWidth: 1.
		button borderColor: Color black.
		
		button target: self.
		button actionSelector: #startBuilding:.
		button arguments: (Array with: roomName).

		icon := Sprite drawOn: button.
		
		(roomPath , '.png') asFileReference exists ifTrue: [
			icon := icon setForm: (roomPath , '.png') x: 100 y: 100 width: 100 height: 100.
		].
		
		 (FileDirectory on: roomPath) exists ifTrue: [
			roomPath := roomPath asFileReference files first fullName.
			icon := icon setForm: roomPath x: 100 y: 100 width: 100 height: 100.
		].
	
		icon := icon getMorph.
		icon position: button topLeft.
	
		button addMorph: icon.
		buttonsCollection add: button.
		self addMorph: button.
	
		xOffset := xOffset + 100.
		xOffset = 300 ifTrue: [
			yOffset := yOffset + 100.
			xOffset := 0.
		]
	 ].
