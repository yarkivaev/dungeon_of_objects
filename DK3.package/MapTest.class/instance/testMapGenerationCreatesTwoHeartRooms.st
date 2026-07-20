as yet unclassified
testMapGenerationCreatesTwoHeartRooms
    | rooms hearts |
    rooms := Rooms new.
    Room setGenerator: IdGenerator new setRooms: rooms.
    Map initializeWidth: 50 height: 50.
    hearts := rooms getDict values select: [ :room | room class = HeartRoom ].
    self
        assert: hearts size
        equals: 2
        description: 'map generation did not create two heart rooms'
