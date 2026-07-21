as yet unclassified
initializePath: path player: aPlayer
    super initialize.

    self extent: 800 @ 600.	
    self color: Color transparent.

    self borderColor: Color black.
    self borderWidth: 5.
    self unlock.

    player := aPlayer.
    creatureCount := 0.

    roomPanel := RoomPanel new.
    roomPanel initializeRooms: path.
    self addMorph: roomPanel.
    
    "--------Left_Block--------"
    headerLeft := BorderedMorph new extent: 200 @ 70; color: Color white; borderWidth: 2.
    headerLeft position: self topLeft + (10 @ 10).
    self addMorph: headerLeft.
    goldLabel := StringMorph contents: 'Gold: 0/10000'.
    headerLeft addMorph: goldLabel.
    goldProgressBar := Morph new extent: 192 @ 6; color: Color lightGray.
    headerLeft addMorph: goldProgressBar.
    goldProgressFill := Morph new extent: 0 @ 6; color: Color green.
    goldProgressBar addMorph: goldProgressFill.
    foodLabel := StringMorph contents: 'Food'.
    headerLeft addMorph: foodLabel.
    
    "--------Right_Block--------"
    headerRight := BorderedMorph new extent: 200 @ 70; color: Color white; borderWidth: 2.
    headerRight position: self position + (590 @ 10).
    self addMorph: headerRight.
    creaturesLabel := StringMorph contents: 'Creatures: 0/25'.
    headerRight addMorph: creaturesLabel.
    creatureCount := 0.
    paydayTime := 180.
    self startStepping.
    paydayLabel := StringMorph contents: 'Payday: 3:15'.
    headerRight addMorph: paydayLabel.
    self layoutHeaderContents.

    "--------Console--------"
    consoleLog := BorderedMorph new extent: 250 @ 75; color: Color white; borderWidth: 2.
    consoleLog position: self bottomRight - (consoleLog width + 5 @ consoleLog height + 10).
    consoleLog clipSubmorphs: true. 
    self addMorph: consoleLog.

    "--------Lower_Block--------"
    bottomBar := BorderedMorph new extent: self width - consoleLog width - 30 @ 75; 
												 color: Color white; borderWidth: 2.
    bottomBar position: self bottomLeft - (-20 @ bottomBar height + 10).
    self addMorph: bottomBar.
    creaturesInfoLabel := TextMorph new contents: 'Creatures: None yet'.
    creaturesInfoLabel position: bottomBar topLeft + (10 @ 10).
    creaturesInfoLabel extent: 300 @ 65.
    bottomBar addMorph: creaturesInfoLabel.

   "--------Button--------"
 
    myButton := SimpleButtonMorph new.
    myButton extent: 100 @ 30.
    myButton position: self position + (10 @ 200). 
    myButton label: 'aa'.
    myButton target: self.
    myButton actionSelector: #gold:.
    myButton arguments: (Array with: 10).
    self addMorph: myButton.


   createRoomButton := SimpleButtonMorph new.
   createRoomButton label: 'Create a room.'.
   createRoomButton position: bottomBar topLeft + (bottomBar width - createRoomButton width - 20 @ 20).
   createRoomButton target: self.
   createRoomButton actionSelector: #openRoomPanel.
   bottomBar addMorph: createRoomButton.
    
