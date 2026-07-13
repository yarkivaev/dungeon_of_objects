as yet unclassified
takeDamage: damage
	health := health - damage.
	health <= 0 ifTrue: [ self die ]
