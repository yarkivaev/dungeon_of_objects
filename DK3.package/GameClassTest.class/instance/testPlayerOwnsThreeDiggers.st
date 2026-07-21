as yet unclassified
testPlayerOwnsThreeDiggers
    | game |
    game := Game new.
    self
        assert: (game player getCreatures getDict values count: [ :creature | creature class = Digger ])
        equals: 3
        description: 'player did not own three starter diggers'
