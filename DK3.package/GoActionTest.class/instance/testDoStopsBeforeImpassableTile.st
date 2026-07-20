as yet unclassified
testDoStopsBeforeImpassableTile
    | game creature action |
    game := Game new.
    creature := Goblin new.
    creature position: 2.0 @ 2.0.
    creature game: game.
    game map atX: 2 y: 2 put: (FloorTile new setMap: game map x: 2 y: 2).
    game map atX: 3 y: 2 put: (BedrockTile new setMap: game map x: 3 y: 2).
    action := GoAction new actor: creature.
    action do: 10.
    self
        assert: creature position
        equals: 2 @ 2
        description: 'GoAction did not stop on last passable tile'
