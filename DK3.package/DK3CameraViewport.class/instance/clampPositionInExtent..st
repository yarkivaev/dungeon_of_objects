navigation
clampPositionInExtent: windowExtent
    | maxWorldCoord halfWindowInWorld clampedX clampedY |
    worldExtent ifNil: [ ^ self ].
    maxWorldCoord := worldExtent x / 2.
    halfWindowInWorld := (windowExtent / 2.0) / zoom.
    
    (halfWindowInWorld x >= maxWorldCoord) 
        ifTrue: [ clampedX := 0 ]
        ifFalse: [ 
            clampedX := (position x 
                max: (maxWorldCoord negated + halfWindowInWorld x)) 
                min: (maxWorldCoord - halfWindowInWorld x).
        ].
        
    (halfWindowInWorld y >= maxWorldCoord) 
        ifTrue: [ clampedY := 0 ]
        ifFalse: [ 
            clampedY := (position y 
                max: (maxWorldCoord negated + halfWindowInWorld y)) 
                min: (maxWorldCoord - halfWindowInWorld y).
        ].
    
    position := clampedX @ clampedY.