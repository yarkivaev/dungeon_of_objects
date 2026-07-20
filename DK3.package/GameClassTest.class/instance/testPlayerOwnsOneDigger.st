as yet unclassified
testPlayerOwnsOneDigger
    | game |
    game := Game new.
    self
        assert: (game player getCreatures getDict values collect: [ :creature | creature class ]) asArray
        equals: (Array with: Digger)
        description: 'player did not own one starter digger'
