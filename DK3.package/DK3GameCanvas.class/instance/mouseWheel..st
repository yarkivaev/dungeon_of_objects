event handling
mouseWheel: anEvent
    | windowExtent minZoomX minZoomY minZoom zoomFactor newZoom |
    windowExtent := self innerBounds extent.
    minZoomX := windowExtent x / 400.0.
    minZoomY := windowExtent y / 400.0.
    minZoom := minZoomX max: minZoomY.
    zoomFactor := 1.02.
    newZoom := camera zoom.
    
    anEvent isWheelUp ifTrue: [ newZoom := camera zoom * zoomFactor ].
    anEvent isWheelDown ifTrue: [ newZoom := camera zoom / zoomFactor ].
    
    newZoom := (newZoom max: minZoom) min: 32.0.
    camera zoom: newZoom.
    camera clampPositionInExtent: windowExtent.
    self processInputFrame: (DK3InputFrame createFromEvent: anEvent).
    self changed.