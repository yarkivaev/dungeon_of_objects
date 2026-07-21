as yet unclassified
testHeartRoomCreateAfterRoomGeneratorSetup
    | rooms |
    rooms := Rooms new.
    Room setGenerator: IdGenerator new setRooms: rooms.
    self
        assert: (HeartRoom create: User new) class
        equals: HeartRoom
        description: 'heart room could not be created after room generator setup'
