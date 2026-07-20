drawing
drawOn: aCanvas
    offset := aCanvas clipRect origin.
    
  
    panel position: offset + (10 @ 10).
    
    panel fullDrawOn: aCanvas.