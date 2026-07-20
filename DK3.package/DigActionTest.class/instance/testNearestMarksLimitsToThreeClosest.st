as yet unclassified
testNearestMarksLimitsToThreeClosest
	| digger marks chosen |
	digger := Digger new.
	digger position: 5.0 @ 5.0.
	marks := OrderedCollection
		with: 20 @ 20
		with: 6 @ 5
		with: 15 @ 5
		with: 7 @ 5
		with: 8 @ 5.
	chosen := digger nearestMarks: marks limit: 3.
	self
		assert: chosen asSet
		equals: (Set with: 6 @ 5 with: 7 @ 5 with: 8 @ 5)
		description: 'nearestMarks did not keep the three closest marks'
