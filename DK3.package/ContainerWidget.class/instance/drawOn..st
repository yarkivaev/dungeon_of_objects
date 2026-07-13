as yet unclassified
drawOn: aCanvas
    aCanvas fillRectangle: (self bounds) color: Color lightBlue.
 
    super drawOn: aCanvas.
    children do: [ :each | each drawOn: aCanvas ].