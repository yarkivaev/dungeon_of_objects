as yet unclassified
commitsAtScreen: aScreenPoint grid: aGridPoint
	"True only when release is still on the same grid cell and the pointer barely moved"
	^ grid = aGridPoint and: [ (aScreenPoint dist: screen) < 5 ]
