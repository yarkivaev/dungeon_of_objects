Remembers a dig-mark mouse press so release commits only as a click.

A pan keeps the same grid cell under the cursor while the screen point moves;
comparing grids alone would mark on every drag. This object rejects releases
whose screen delta exceeds a small click threshold (5 px).

Usage:
	click := DK3MarkClick screen: 10@20 grid: 3@4.
	(click commitsAtScreen: 12@21 grid: 3@4) ifTrue: [ map toggleMarkAtX: 3 y: 4 ].
