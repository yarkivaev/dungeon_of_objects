drawing
drawOn: aCanvas
    | viewBounds |
    viewBounds := aCanvas clipRect.
    panel updateBounds: viewBounds.
    panel fullDrawOn: aCanvas.