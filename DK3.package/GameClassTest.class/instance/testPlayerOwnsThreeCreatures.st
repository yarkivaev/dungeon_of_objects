as yet unclassified
testPlayerOwnsThreeCreatures
    | game |
    game := Game new.
    self
        assert: game player getCreatures getDict size
        equals: 3
        description: 'player did not own three starter creatures'
