initialize-release
initialize
    | heart digger |
    super initialize.
    isRunning := false.
    renderer := nil.
    player := User new.
    creaturesIdGenerator := IdGenerator new.
    roomsIdGenerator := IdGenerator new.
    rooms := Rooms new.
    creatures := Creatures new.

    Room setGenerator: roomsIdGenerator setRooms: rooms.
    Creature setGenerator: creaturesIdGenerator setCreatures: creatures.
    map := Map initializeWidth: 50 height: 50 player: player.
    heart := (player getRooms getDict associations asSortedCollection: [ :left :right | left key < right key ]) first value.

    1 to: 3 do: [ :index |
        digger := Digger spawn: heart getCenter player: player game: self.
        digger currentAction: (IdleAction new actor: digger).
    ].
