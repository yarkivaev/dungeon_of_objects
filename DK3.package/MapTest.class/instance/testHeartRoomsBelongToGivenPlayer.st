as yet unclassified
testHeartRoomsBelongToGivenPlayer
    | rooms player |
    player := User new.
    rooms := Rooms new.
    Room setGenerator: IdGenerator new setRooms: rooms.
    Map initializeWidth: 50 height: 50 player: player.
    self
        assert: (rooms getDict values allSatisfy: [ :room | room getUser == player ])
        description: 'heart rooms did not belong to the given player'
