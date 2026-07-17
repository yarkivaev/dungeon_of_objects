printing
printOn: aStream
    super printOn: aStream.
    aStream nextPut: $(.
    aStream nextPutAll: 'name: ', layerName.
    aStream nextPutAll: '; active: ', isActive asString.
    aStream nextPutAll: '; hasNext: ', (nextLayer notNil) asString.
    aStream nextPut: $).