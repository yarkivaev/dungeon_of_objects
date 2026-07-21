as yet unclassified
testCannotCommitWhenReleaseLandsOnOtherTile
	self
		deny: ((DK3MarkClick screen: 137 @ 241 grid: 8 @ 3)
			commitsAtScreen: 138 @ 241
			grid: 9 @ 3)
		description: 'release on another tile was treated as a mark click'
