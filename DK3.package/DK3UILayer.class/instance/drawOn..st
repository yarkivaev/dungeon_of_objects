drawing
drawOn: aCanvas
    | offset |
    offset := uiBounds origin.
    aCanvas fillRectangle: uiBounds color: (Color black alpha: 0.8).
    aCanvas frameRectangle: uiBounds color: Color white.
    
    aCanvas drawString: 'Gold: ', (gamePanel gold ifNil: [0]) asString
        at: offset + (15 @ 20) font: nil color: Color yellow.
        
    aCanvas drawString: 'Creatures: ', (gamePanel creatureCount ifNil: [0]) asString
        at: offset + (15 @ 40) font: nil color: Color white.
        
    aCanvas fillRectangle: (offset + (15 @ 70) extent: 100 @ 30) 
        color: Color blue.
    aCanvas drawString: 'Create' at: offset + (40 @ 78) 
        font: nil color: Color white.