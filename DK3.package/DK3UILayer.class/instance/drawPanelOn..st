ui components
drawPanelOn: aCanvas
    | panelBounds |
    panelBounds := uiBounds. 
    aCanvas fillRectangle: panelBounds color: (Color black alpha: 0.6).
    aCanvas frameRectangle: panelBounds color: (Color white alpha: 0.5).