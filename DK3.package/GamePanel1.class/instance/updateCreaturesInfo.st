as yet unclassified
updateCreaturesInfo
    | yOffset |
    bottomBar submorphs do: [ :each | 
        (each isKindOf: CreatureCard) ifTrue: [ each delete ] 
    ].
    
    yOffset := 10.
    creatureList do: [ :creatureName |
        | card |
        card := CreatureCard new initializeWithCreature: creatureName.
        card targetCreature: (self findCreatureObject: creatureName).
        card position: bottomBar topLeft + (10 @ yOffset).
        
        card position: bottomBar topLeft + (10 @ yOffset).
        bottomBar addMorph: card.
        yOffset := yOffset + 60.
    ].