as yet unclassified
testCannotCommitWhenScreenDragKeepsSameGrid
	self
		deny: ((DK3MarkClick screen: 137 @ 241 grid: 8 @ 3)
			commitsAtScreen: 190 @ 255
			grid: 8 @ 3)
		description: 'pan that kept the same grid under the cursor was treated as a mark click'
