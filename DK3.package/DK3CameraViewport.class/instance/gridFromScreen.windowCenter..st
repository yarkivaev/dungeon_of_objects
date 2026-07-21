as yet unclassified
gridFromScreen: aScreenPoint windowCenter: aCenterPoint
	| world half gridX gridY |
	world := self worldFromScreen: aScreenPoint windowCenter: aCenterPoint.
	half := (worldExtent x // 2) @ (worldExtent y // 2).
	gridX := (((world x + half x) / 16) + 1) floor asInteger.
	gridY := (((world y + half y) / 16) + 1) floor asInteger.
	^ gridX @ gridY
