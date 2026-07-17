as yet unclassified
step
    | minutes seconds |
    Transcript show: 'Step is running!'; cr.

    paydayTime := paydayTime - 1.
    
paydayTime <= 0 ifTrue: [
    gold ifNil: [ gold := 0 ].
    
    gold := gold + 50.
    paydayTime := 180.
    self addLog: 'Payday!'.
].
    

    minutes := (paydayTime / 60) floor.
    seconds := (paydayTime \\ 60) floor.
    paydayLabel contents: 'Payday: ', minutes asString, ':', 
    (seconds < 10 ifTrue: ['0', seconds asString] ifFalse: [seconds asString]).