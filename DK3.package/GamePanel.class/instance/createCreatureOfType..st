as yet unclassified
createCreatureOfType: typeName
    (gold >= 50) ifTrue: [
        gold := gold - 50.
        creatureList add: typeName. 
        creatureCount := creatureCount + 1.
        self addLog: 'Hired', typeName, '!'.
        self updateCreaturesInfo.
    ] ifFalse: [ self addLog: 'not enough gold' ].