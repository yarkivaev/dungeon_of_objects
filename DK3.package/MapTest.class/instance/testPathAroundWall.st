as yet unclassified
testPathAroundWall
    | map path |
    map := Map initializeWidth: 6 height: 6.
    1 to: 6 do: [ :x |
        1 to: 6 do: [ :y |
            map atX: x y: y put: FloorTile new.
        ].
    ].
    map atX: 3 y: 2 put: BedrockTile new.
    map atX: 3 y: 3 put: BedrockTile new.
    map atX: 3 y: 4 put: BedrockTile new.
    path := map findPathFrom: 2@2 to: 5@4.
    self deny: path isEmpty.
    self assert: path first equals: 2@2. 
    self assert: path last equals: 5@4.  
    self deny: (path includes: 3@2).
    self deny: (path includes: 3@3).
    self deny: (path includes: 3@4).
    self assert: path size equals: 8.
    1 to: path size - 1 do: [ :i |
        self assert: ((path at: i) fourNeighbors includes: (path at: i + 1)) ].