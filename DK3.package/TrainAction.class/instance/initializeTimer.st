as yet unclassified
initializeTimer
	ticksLeft := [ room instVarNamed: 'trainingTime' ] on: Error do: [ 40 ].
	ticksLeft ifNil: [ ticksLeft := 40 ].
	^ self
