initialize-release
initialize
    | builder monk goblin |
    super initialize.
    isRunning := false.
    renderer := nil.
    audio := GameAudioController new.
    creaturesIdGenerator := IdGenerator new.
    roomsIdGenerator := IdGenerator new.
    rooms := Rooms new.
    Room setGenerator: roomsIdGenerator setRooms: rooms.
    map := Map initializeWidth: 50 height: 50.
    builder := Builder new.
    builder position: (3@5).
    builder game: self.
    builder currentAction: (GoAction new actor: builder).
    monk := Monk new.
    monk position: (5@10).
    monk game: self.
    monk currentAction: (GoAction new actor: monk).
    goblin := Goblin new.
    goblin position: (2@2).
    goblin game: self.
    goblin currentAction: (GoAction new actor: goblin).
    creatures := Creatures new.
    creatures add: goblin id: 1.
    creatures add: monk id: 2.
    creatures add: builder id: 3.
