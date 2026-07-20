as yet unclassified
worldFromGrid: aPoint
    | half |
    half := (worldExtent x // 2) @ (worldExtent y // 2).
    ^ ((((aPoint x) - 1) * 16) - half x) @ ((((aPoint y) - 1) * 16) - half y)
