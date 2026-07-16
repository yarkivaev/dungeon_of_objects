as yet unclassified
goldCheck
	foodPerPayday := 15

	gold < foodPrice ifTrue: [
		player getGold < foodPrice ifTrue: [
			foodPerPayday := 5.
		].
		
		player getGold >= foodPrice ifTrue: [
			player goldDiscard: foodPrice.
			gold := gold + foodPrice.
		].
	].

	gold >= foodPrice ifTrue: [
		gold := gold - foodPrice.	
	].