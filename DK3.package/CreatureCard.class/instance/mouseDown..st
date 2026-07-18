as yet unclassified
mouseDown: event
    | camera |
    camera := World activeHand camera.
    
    targetCreature ifNotNil: [
        camera position: (targetCreature position - (camera extent / 2)).
        Transcript show: 'Camera moved to: ', creatureName; cr.
    ].