as yet unclassified
createCreature
    (gold >= 50 and: [creatureCount < 25]) ifTrue: [
        gold := gold - 50.
        creatureCount := creatureCount + 1.
        self updateCreaturesInfo.
        self updateGoldLabel.
    ] ifFalse: [
        creatureCount >= 25 
            ifTrue: [ self addLog: 'Лимит существ достигнут!' ]
            ifFalse: [ self addLog: 'Недостаточно золота!' ].
    ].