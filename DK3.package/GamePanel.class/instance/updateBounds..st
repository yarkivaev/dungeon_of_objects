as yet unclassified
updateBounds: viewBounds
    self extent: viewBounds extent.
    self position: viewBounds origin.
    
    self updateSubmorphPositions: viewBounds.