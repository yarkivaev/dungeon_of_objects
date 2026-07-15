as yet unclassified
goldCheck
	gold > 0 ifTrue: [
		gold := gold - foodPrice.
		player foodAdd: 50.
	].

	gold <= 0 ifTrue: [
		player getGold > foodPrice ifTrue: [
			player goldDiscard: foodPrice.	
		]
	]
	