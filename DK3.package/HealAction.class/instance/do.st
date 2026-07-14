as yet unclassified
do

	| healPower |
	healPower := actor level * 10.
	patient health: (patient health + healPower)