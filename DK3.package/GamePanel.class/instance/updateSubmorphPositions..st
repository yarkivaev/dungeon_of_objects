as yet unclassified
updateSubmorphPositions: viewBounds
    | w h |
    w := viewBounds width.
    h := viewBounds height.
    
    headerLeft extent: (w * 0.25) @ (h * 0.15).
    headerLeft position: viewBounds origin.
    
    headerRight extent: (w * 0.25) @ (h * 0.15).
    headerRight position: viewBounds topRight - (headerRight width @ 0).
    
    consoleLog extent: (w * 0.3) @ (h * 0.3).
    consoleLog position: viewBounds bottomRight - (consoleLog width @ consoleLog height).
    
    bottomBar extent: (w * 0.6) @ (h * 0.3).
    bottomBar position: viewBounds bottomLeft - (0 @ bottomBar height).