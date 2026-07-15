as yet unclassified
update: deltaTime
	| heartRoom |

	paydayAmount := creaturesDict size * 20.
	paydayTimer := paydayTimer + deltaTime.
	
	paydayTimer > paydayDelay ifTrue: [
		paydayTimer := 0.
		goldAmount := goldAmount - paydayAmount.	
	].

	heartRoom := (roomsDict values) select: [ :each | each isKindOf: HeartRoom].
	
	heartRoom getHp <= 0 ifTrue: [
		self defeat.
	].