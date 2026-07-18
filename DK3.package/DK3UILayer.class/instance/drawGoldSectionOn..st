as yet unclassified
drawGoldSectionOn: aCanvas
    | offset |
    offset := uiBounds origin.
    aCanvas frameRectangle: (offset + (10@10) extent: 200@100) color: Color white.
    aCanvas drawString: 'Gold: ', gamePanel gold asString 
        at: offset + (20@20) font: nil color: Color yellow.
    aCanvas fillRectangle: (offset + (20@40) extent: 180@10) color: Color lightGray.
    aCanvas fillRectangle: (offset + (20@40) extent: (gamePanel gold min: 10000) / 10000 * 180 @ 10) color: Color green.