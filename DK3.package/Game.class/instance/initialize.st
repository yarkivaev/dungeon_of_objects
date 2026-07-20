initialize-release
initialize
    | heart digger |
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
    digger := Digger spawn: heart getCenter player: player.
    digger game: self.
    digger currentAction: (GoAction new actor: digger).
    creatures add: digger id: 1.
