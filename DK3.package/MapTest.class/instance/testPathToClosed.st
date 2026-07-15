as yet unclassified
testPathToClosed
    | map path |
    map := Map initializeWidth: 6 height: 6.
    1 to: 6 do: [ :x |
        1 to: 6 do: [ :y |
            map atX: x y: y put: FloorTile new.
        ].
    ].
    map atX: 5 y: 3 put: BedrockTile new.
    map atX: 4 y: 4 put: BedrockTile new.
    map atX: 5 y: 5 put: BedrockTile new.
    path := map findPathFrom: 2@2 to: 5@4.
    self deny: path isEmpty.
    self assert: path first equals: 2@2. 
    self assert: path last equals: 5@4. 
    self assert: path size equals: 8.
    1 to: path size - 1 do: [ :i |
        self assert: ((path at: i) fourNeighbors includes: (path at: i + 1)) ].