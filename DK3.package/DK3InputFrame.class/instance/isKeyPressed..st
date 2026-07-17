testing
isKeyPressed: aSymbol
    ^ keyboardState at: aSymbol ifAbsent: [false]