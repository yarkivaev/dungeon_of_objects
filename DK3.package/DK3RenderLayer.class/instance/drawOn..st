drawing
drawOn: aCanvas
    | rect center roomSize step |
    rect := aCanvas clipRect.
    aCanvas fillRectangle: rect color: Color black.
    
    center := rect center.
    roomSize := 800.
    step := 16.
    
    (roomSize negated) to: roomSize by: step do: [ :x |
        | startPoint endPoint |
        startPoint := camera transformToScreen: (x @ roomSize negated) windowCenter: center.
        endPoint := camera transformToScreen: (x @ roomSize) windowCenter: center.
        aCanvas line: startPoint to: endPoint width: 1 color: Color gray.
    ].
    
    (roomSize negated) to: roomSize by: step do: [ :y |
        | startPoint endPoint |
        startPoint := camera transformToScreen: (roomSize negated @ y) windowCenter: center.
        endPoint := camera transformToScreen: (roomSize @ y) windowCenter: center.
        aCanvas line: startPoint to: endPoint width: 1 color: Color gray.
    ].
    
    aCanvas line: (camera transformToScreen: (-100 @ 0) windowCenter: center) 
        to: (camera transformToScreen: (100 @ 0) windowCenter: center) 
        width: 2 color: Color red.
    
    aCanvas line: (camera transformToScreen: (0 @ -100) windowCenter: center) 
        to: (camera transformToScreen: (0 @ 100) windowCenter: center) 
        width: 2 color: Color green.