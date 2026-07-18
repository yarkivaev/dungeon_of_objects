as yet unclassified
initializeWithCreature: aCreatureName
    super initialize.
    self extent: 150 @ 50.
    self color: Color lightGray.
    self borderWidth: 1.

    self on: #mouseDown send: #mouseDown: to: self.
    
    creatureName := aCreatureName.
    level := 1.
    mood := #happy.
    
    actionLabel := StringMorph contents: creatureName, ' (Lvl: ', level asString, ')'.
    actionLabel position: self topLeft + (5 @ 5).
    self addMorph: actionLabel.