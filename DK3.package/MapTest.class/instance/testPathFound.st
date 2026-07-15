as yet unclassified
testPathFound
    | map path expectedPath |
    map := Map initializeWidth: 6 height: 6.
    map atX: 1 y: 1 put: FloorTile new.
    map atX: 1 y: 2 put: FloorTile new.
    map atX: 2 y: 2 put: FloorTile new.
    path := map findPathFrom: 1@1 to: 2@2.
    expectedPath := OrderedCollection with: 1@1 with: 1@2 with: 2@2.
    self assert: path equals: expectedPath