as yet unclassified
isPassableAtX: x y: y
    (self isValidX: x y: y) ifFalse: [ ^ false ].
    ^ (self atX: x y: y) isPassable
