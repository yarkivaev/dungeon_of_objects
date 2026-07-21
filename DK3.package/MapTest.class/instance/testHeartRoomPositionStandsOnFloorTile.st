as yet unclassified
testHeartRoomPositionStandsOnFloorTile
    | rooms map heart |
    rooms := Rooms new.
    Room setGenerator: IdGenerator new setRooms: rooms.
    map := Map initializeWidth: 50 height: 50 player: User new.
    heart := rooms getDict values detect: [ :room | room class = HeartRoom ].
    self
        assert: (map atX: heart getPosition x y: heart getPosition y) class
        equals: FloorTile
        description: 'heart room did not stand on a floor tile'
