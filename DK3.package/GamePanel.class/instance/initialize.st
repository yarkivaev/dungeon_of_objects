as yet unclassified
initialize
    super initialize.
    self extent: 800 @ 600.
    self color: Color white.
    
    paydayTime := 10. 
    self startStepping.

    headerLeft := BorderedMorph new extent: 200 @ 100; color: Color white; borderWidth: 2.
    headerLeft position: self position + (10 @ 10).
    self addMorph: headerLeft.
    
    goldLabel := StringMorph contents: 'Gold: 0/10000'.
    goldLabel position: headerLeft topLeft + (10 @ 10).
    headerLeft addMorph: goldLabel.

    healthLabel := StringMorph contents: 'Health: 30/30'.
    healthLabel position: headerLeft topLeft + (10 @ 50).
    headerLeft addMorph: healthLabel.

    headerRight := BorderedMorph new extent: 200 @ 100; color: Color white; borderWidth: 2.
    headerRight position: self position + (590 @ 10).
    self addMorph: headerRight.

    creaturesLabel := StringMorph contents: 'Creatures: 0/25'.
    creaturesLabel position: headerRight topLeft + (10 @ 10).
    headerRight addMorph: creaturesLabel.
    
    paydayLabel := StringMorph contents: 'Payday: 3:15'.
    paydayLabel position: headerRight topLeft + (10 @ 50).
    headerRight addMorph: paydayLabel.


    consoleLog := BorderedMorph new extent: 250 @ 150; color: Color white; borderWidth: 2.
    consoleLog position: self position + (540 @ 440).
    consoleLog clipSubmorphs: true. 
    self addMorph: consoleLog.


    myButton := GameButton new.
    myButton extent: 100 @ 30.
    myButton position: self position + (10 @ 200). 
    myButton actionBlock: [ 
        self addLog: 'Gold +10'.
    ].
    self addMorph: myButton.