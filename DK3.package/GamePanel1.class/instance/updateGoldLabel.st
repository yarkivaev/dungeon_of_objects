as yet unclassified
updateGoldLabel
    | progressWidth |
    (gold < 0) 
        ifTrue: [ goldLabel color: Color red ] 
        ifFalse: [ goldLabel color: Color black ].

    goldLabel contents: 'Gold: ', gold asString, '/10000'.

    progressWidth := (gold max: 0) / 10000 * 180.
    progressWidth := progressWidth min: 180.
    goldProgressFill extent: progressWidth asInteger @ 10.