as yet unclassified
step
    | minutes seconds |
    gold ifNil: [ gold := 0 ].
    
    paydayTime > 0 ifTrue: [ paydayTime := paydayTime - 1 ].
    
    paydayTime <= 0 ifTrue: [
        gold := gold - 50.
        self addLog: 'Payday!'.
        self updateGoldLabel.
        paydayTime := 180.
    ].
    
    minutes := (paydayTime / 60) floor.
    seconds := (paydayTime \\ 60) floor.
    paydayLabel contents: 'Payday: ', minutes asString, ':', 
        (seconds < 10 ifTrue: ['0', seconds asString] ifFalse: [seconds asString]).