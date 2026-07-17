drawing
drawOn: aCanvas
    self drawPanelOn: aCanvas.
    self drawHealthBarOn: aCanvas at: 10 @ 20 width: 150.
    self drawTextsOn: aCanvas.
    self drawButtonOn: aCanvas.