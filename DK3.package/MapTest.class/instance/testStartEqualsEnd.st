as yet unclassified
testStartEqualsEnd
    | map path |
    map := Map initializeWidth: 6 height: 6.
    map atX: 1 y: 1 put: FloorTile new.
    path := map findPathFrom: 1@1 to: 1@1.
    self assert: path size equals: 1.
    self assert: path first equals: 1@1