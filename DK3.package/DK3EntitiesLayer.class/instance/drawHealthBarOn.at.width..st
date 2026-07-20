ui components
drawHealthBarOn: aCanvas at: aPoint width: aWidth
    | barBounds fillBounds healthPercent offset |
    offset := aCanvas clipRect origin.
    barBounds := offset + aPoint extent: aWidth @ 20.
    aCanvas fillRectangle: barBounds color: (Color gray alpha: 0.5).
    aCanvas frameRectangle: barBounds color: Color white.
    healthPercent := 0.75.
    fillBounds := offset + aPoint extent: (aWidth * healthPercent) @ 20.
    aCanvas fillRectangle: fillBounds color: (Color green alpha: 0.8).
    aCanvas drawString: 'HP: 75/100'
        at: offset + aPoint + (5 @ 3)
        font: nil
        color: Color white.