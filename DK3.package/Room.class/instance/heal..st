actions
heal: hpAmount
	hp := hp + hpAmount.
	
	hp > maxHp ifTrue: [
		hp := maxHp.	
	]