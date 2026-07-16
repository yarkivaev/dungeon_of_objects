as yet unclassified
testCreateCreature
    | game |
    game := GamePanel new.
    game gold: 100.        
    game creaturesCount: 0.

    game createCreature.

    self assert: game creaturesCount = 1.
    self assert: game gold = 50.