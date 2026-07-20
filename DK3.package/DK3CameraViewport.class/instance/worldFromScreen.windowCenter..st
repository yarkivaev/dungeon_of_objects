as yet unclassified
worldFromScreen: aScreenPoint windowCenter: aCenterPoint
	^ ((aScreenPoint - aCenterPoint) / zoom) + position
