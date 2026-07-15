logic
transformToScreen: aWorldPoint windowCenter: aCenterPoint

	| offset rotatedX rotatedY |

	offset := (aWorldPoint - position) * zoom.
	
	rotatedX := (offset x * angle cos) - (offset y * angle sin).
	rotatedY := (offset x * angle sin) + (offset y * angle cos).
	
	^ (rotatedX @ rotatedY) + aCenterPoint
