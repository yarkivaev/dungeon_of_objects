as yet unclassified
updatePaydayLabel
    | minutes seconds |
    minutes := (paydayTime // 60) asString.
    seconds := (paydayTime \\ 60) asString.
    seconds size = 1 ifTrue: [ seconds := '0', seconds ].
    paydayLabel contents: 'Payday: ', minutes, ':', seconds.