initialize-release
initialize
    | heart builder monk digger |
    super initialize.
    isRunning := false.
    renderer := nil.
    audio := GameAudioController new.
    player := User new.
    creaturesIdGenerator := IdGenerator new.
    roomsIdGenerator := IdGenerator new.
    rooms := Rooms new.
    Room setGenerator: roomsIdGenerator setRooms: rooms.
    map := Map initializeWidth: 50 height: 50 player: player.
    creatures := Creatures new.
    heart := (player getRooms getDict associations asSortedCollection: [ :left :right | left key < right key ]) first value.
    builder := Builder spawn: heart getCenter player: player.
    builder game: self.
    builder currentAction: (GoAction new actor: builder).
    creatures add: builder id: 1.
    monk := Monk spawn: heart getCenter player: player.
    monk game: self.
    monk currentAction: (GoAction new actor: monk).
    creatures add: monk id: 2.
    digger := Digger spawn: heart getCenter player: player.
    digger game: self.
    digger currentAction: (GoAction new actor: digger).
    creatures add: digger id: 3.
