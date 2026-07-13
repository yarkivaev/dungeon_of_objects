as yet unclassified
mineGold: anAmount
	| mined |
	mined := anAmount min: goldAmount.
	goldAmount := goldAmount - mined.
	durability := durability - anAmount.
	
	(goldAmount <= 0 or: [ durability <= 0 ]) ifTrue: [ 
		self replaceWith: FloorTile
	].
	^ mined