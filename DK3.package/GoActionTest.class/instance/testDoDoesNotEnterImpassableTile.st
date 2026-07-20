as yet unclassified
testDoDoesNotEnterImpassableTile
    | game creature action start |
    game := Game new.
    creature := Goblin new.
    creature position: 2 @ 2.
    creature game: game.
    game map atX: 2 y: 2 put: (FloorTile new setMap: game map x: 2 y: 2).
    game map atX: 3 y: 2 put: (BedrockTile new setMap: game map x: 3 y: 2).
    action := GoAction new actor: creature.
    start := creature position.
    action do: 10.
    self
        assert: creature position
        equals: start
        description: 'GoAction moved actor into impassable tile'
