as yet unclassified
addGold: anAmount
    gold ifNil: [ gold := 0 ].
    gold := gold + anAmount.
    self updateGoldLabel.