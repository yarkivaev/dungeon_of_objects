as yet unclassified
takeDamage: damage from: anAttacker
	health := health - damage.
	health <= 0 ifTrue: [ self die: anAttacker ]
