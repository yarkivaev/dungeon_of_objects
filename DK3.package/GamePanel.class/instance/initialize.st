as yet unclassified
initialize
    | createCreatureBtn createRoomBtn |
    super initialize.
    self extent: 800 @ 600.
    self color: Color white.
    creatureCount := 0.
    
    
    "--------Left_Block--------"
    headerLeft := BorderedMorph new extent: 200 @ 100; color: Color white; borderWidth: 2.
    headerLeft position: self position + (10 @ 10).
    self addMorph: headerLeft.
    
    goldLabel := StringMorph contents: 'Gold: 0/10000'.
    goldLabel position: headerLeft topLeft + (10 @ 10).
    headerLeft addMorph: goldLabel.
    
    goldProgressBar := Morph new extent: 180 @ 10; color: Color lightGray.
    goldProgressBar position: headerLeft topLeft + (10 @ 30).
    headerLeft addMorph: goldProgressBar.


   goldProgressFill := Morph new extent: 0 @ 10; color: Color green.
   goldProgressBar addMorph: goldProgressFill.

    healthLabel := StringMorph contents: 'Health: 30/30'.
    healthLabel position: headerLeft topLeft + (10 @ 50).
    headerLeft addMorph: healthLabel.
    
    "--------Right_Block--------"
    headerRight := BorderedMorph new extent: 200 @ 100; color: Color white; borderWidth: 2.
    headerRight position: self position + (590 @ 10).
    self addMorph: headerRight.

    creaturesLabel := StringMorph contents: 'Creatures: 0/25'.
    creaturesLabel position: headerRight topLeft + (10 @ 10).
    headerRight addMorph: creaturesLabel.
    creatureCount := 0.
    
    paydayTime := 180. 
    self startStepping.

    paydayLabel := StringMorph contents: 'Payday: 3:15'.
    paydayLabel position: headerRight topLeft + (10 @ 50).
    headerRight addMorph: paydayLabel.

    "--------Console--------"
    consoleLog := BorderedMorph new extent: 250 @ 150; color: Color white; borderWidth: 2.
    consoleLog position: self position + (540 @ 440).
    consoleLog clipSubmorphs: true. 
    self addMorph: consoleLog.

    "--------Lower_Block--------"
    bottomBar := BorderedMorph new extent: 540 @ 150; color: Color white; borderWidth: 2.
    bottomBar position: self position + (0 @ 450).
    self addMorph: bottomBar.
    creaturesInfoLabel := TextMorph new contents: 'Creatures: None yet'.
    creaturesInfoLabel position: bottomBar topLeft + (10 @ 10).
    creaturesInfoLabel extent: 300 @ 130.
    bottomBar addMorph: creaturesInfoLabel.

   "--------Button--------"
 
    myButton := GameButton new.
    myButton extent: 100 @ 30.
    myButton position: self position + (10 @ 200). 
    myButton actionBlock: [ 
        gold := gold + 10.      "Прибавляем золото"
        self updateGoldLabel.   "Обновляем цифры и прогресс-бар"
        self addLog: 'Gold +10'. "Пишем в лог"
    ].
    self addMorph: myButton.
    createCreatureBtn := SimpleButtonMorph new.
    createCreatureBtn label: 'Create Creature'.
    createCreatureBtn position: bottomBar topLeft + (350 @ 20).

     createCreatureBtn target: self.          
     createCreatureBtn actionSelector: #createCreature. 

bottomBar addMorph: createCreatureBtn.


   createRoomBtn := SimpleButtonMorph new.
   createRoomBtn label: 'Create a room.'.
   createRoomBtn position: bottomBar topLeft + (350 @ 70).
   createRoomBtn target: self.
   createRoomBtn actionSelector: #createRoom.
   bottomBar addMorph: createRoomBtn.
    
