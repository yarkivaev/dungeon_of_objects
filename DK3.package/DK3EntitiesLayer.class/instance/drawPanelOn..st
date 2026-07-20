ui components
drawPanelOn: aCanvas
    | panelBounds offset |
    offset := aCanvas clipRect origin.
    panelBounds := offset + uiBounds origin extent: uiBounds extent.
    aCanvas fillRectangle: panelBounds color: (Color black alpha: 0.6).
    aCanvas frameRectangle: panelBounds color: (Color white alpha: 0.3).