ui components
drawButtonOn: aCanvas
    | buttonBounds offset |
    offset := aCanvas clipRect origin.
    buttonBounds := offset + (150 @ 80) extent: 60 @ 30.
    aCanvas fillRectangle: buttonBounds color: (Color blue alpha: 0.7).
    aCanvas frameRectangle: buttonBounds color: Color white.
    aCanvas drawString: 'Action'
        at: buttonBounds center - (20 @ 8)
        font: nil
        color: Color white.