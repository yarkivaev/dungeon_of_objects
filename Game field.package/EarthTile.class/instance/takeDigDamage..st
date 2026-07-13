as yet unclassified
takeDigDamage: anAmount
	durability := durability - anAmount.
	durability <= 0 ifTrue: [ 
		self replaceWith: FloorTile
	]