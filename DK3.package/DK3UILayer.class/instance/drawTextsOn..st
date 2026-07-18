ui components
drawTextsOn: aCanvas
    | offset |
    offset := aCanvas clipRect origin.
    aCanvas drawString: 'Gold: ', (gamePanel ifNil: [0] ifNotNil: [gamePanel gold]) asString
        at: offset + (15 @ 50)
        font: nil
        color: Color yellow.
    aCanvas drawString: 'Creatures: ', gamePanel creatureCount asString
        at: offset + (15 @ 110)
        font: nil
        color: Color white.