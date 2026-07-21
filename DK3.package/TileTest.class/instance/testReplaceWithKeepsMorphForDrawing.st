as yet unclassified
testReplaceWithKeepsMorphForDrawing
	| map oldTile newTile host |
	map := Map initializeWidth: 3 height: 3.
	oldTile := EarthTile new setMap: map x: 2 y: 2.
	map atX: 2 y: 2 put: oldTile.
	oldTile paint: (Form extent: 16 @ 16 depth: 32).
	host := TransformMorph new.
	host addMorph: oldTile morph getMorph.
	host color: Color transparent.
	host borderWidth: 0.
	oldTile transformer: host.
	newTile := oldTile replaceWith: FloorTile.
	self
		assert: newTile morph notNil
		description: 'dug tile replacement had no morph for drawing'
