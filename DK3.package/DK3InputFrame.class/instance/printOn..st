printing
printOn: aStream
    super printOn: aStream.
    aStream nextPut: $(.
    aStream nextPutAll: 'pos: ', mousePosition asString.
    aStream nextPutAll: '; btn: ', mouseButtons asString.
    aStream nextPutAll: '; scroll: ', mouseScroll asString.
    aStream nextPut: $).