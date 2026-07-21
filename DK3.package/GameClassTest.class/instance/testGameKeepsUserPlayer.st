as yet unclassified
testGameKeepsUserPlayer
    | game |
    game := Game new.
    self
        assert: game player class
        equals: User
        description: 'game did not keep a user player'
