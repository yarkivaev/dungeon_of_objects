adding
addObject: anObject
    objects ifNil: [ objects := OrderedCollection new ].
    objects add: anObject.