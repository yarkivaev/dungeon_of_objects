ui components
drawTextsOn: aCanvas
    | offset |
    offset := aCanvas clipRect origin.
    aCanvas drawString: 'Gold: 150'
        at: offset + (15 @ 50)
        font: nil
        color: Color yellow.
    aCanvas drawString: 'Time: 90s'
        at: offset + (15 @ 70)
        font: nil
        color: Color cyan.
    aCanvas drawString: 'Level: 3'
        at: offset + (15 @ 90)
        font: nil
        color: Color white.