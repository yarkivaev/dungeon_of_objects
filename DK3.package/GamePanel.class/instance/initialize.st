as yet unclassified
initialize
    super initialize.
    gold := 0.
    creatureCount := 0.
    creatureList := OrderedCollection new.
    paydayTime := 180.
    self startStepping.
