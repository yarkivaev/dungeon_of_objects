ui components
drawHealthBarOn: aCanvas
    | barBounds fillBounds |
    barBounds := 10 @ 20 extent: 150 @ 20.
    aCanvas fillRectangle: barBounds color: (Color gray alpha: 0.5).
    aCanvas frameRectangle: barBounds color: Color white.
    fillBounds := 10 @ 20 extent: 112 @ 20.  "75%"
    aCanvas fillRectangle: fillBounds color: (Color green alpha: 0.8).
    aCanvas drawString: 'HP: 75/100'
        at: 15 @ 23
        font: nil
        color: Color white.