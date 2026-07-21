as yet unclassified
testBorderCellsAreBedrock
    | map |
    map := Map initializeWidth: 7 height: 9.
    self
        assert: (map atX: 1 y: 5) class
        equals: BedrockTile
        description: 'map border was not bedrock'
