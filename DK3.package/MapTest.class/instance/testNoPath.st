as yet unclassified
testNoPath
    | map path |
    map := Map initializeWidth: 6 height: 6. 
    path := map findPathFrom: 1@1 to: 3@3.
    self assert: path isEmpty