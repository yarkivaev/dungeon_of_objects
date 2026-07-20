as yet unclassified
testPlayerOwnsHeartRooms
    | game |
    game := Game new.
    self
        assert: (game player getRooms getDict values select: [ :room | room class = HeartRoom ]) size
        equals: 2
        description: 'player did not own both heart rooms'
