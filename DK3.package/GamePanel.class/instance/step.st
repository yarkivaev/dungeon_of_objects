as yet unclassified
step
    paydayTime := paydayTime - 1.
    paydayTime <= 0 ifTrue: [ 
        paydayTime := 10. 
        self addLog: 'Salary accrued'.
    ].
    self updatePaydayLabel. 