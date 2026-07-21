as yet unclassified
testCommitsWhenReleaseStaysOnSameTileWithoutDrag
	self
		assert: ((DK3MarkClick screen: 137 @ 241 grid: 8 @ 3)
			commitsAtScreen: 139 @ 242
			grid: 8 @ 3)
		description: 'short click on same tile was rejected'
