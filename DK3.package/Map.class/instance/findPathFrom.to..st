as yet unclassified
findPathFrom: startPoint to: endPoint
    | queue parents current neighbors path |
    queue := OrderedCollection new.
    parents := Dictionary new.
    
    queue addLast: startPoint.
    parents at: startPoint put: nil.
    
    [ queue isEmpty ] whileFalse: [
        current := queue removeFirst.
        current = endPoint ifTrue: [
            path := OrderedCollection new.
            [ current notNil ] whileTrue: [
                path addFirst: current.
                current := parents at: current ].
            ^ path ].
            
        neighbors := current fourNeighbors.
        neighbors do: [ :neighbor |
            ((self isValidX: neighbor x y: neighbor y) and: [
                (self isWalkableAtX: neighbor x y: neighbor y) and: [
                    (parents includesKey: neighbor) not ]]) ifTrue: [
                        parents at: neighbor put: current.
                        queue addLast: neighbor ].
        ].
    ].
    
    ^ #()