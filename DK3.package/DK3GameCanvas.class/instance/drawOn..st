drawing
drawOn: aCanvas
    super drawOn: aCanvas.
    aCanvas clipBy: self innerBounds during: [ :clippedCanvas |
        layers do: [ :layer |
            layer drawOn: clippedCanvas.
        ].
    ].