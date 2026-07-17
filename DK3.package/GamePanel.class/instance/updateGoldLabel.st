as yet unclassified
updateGoldLabel
    | progressWidth |
    goldLabel contents: 'Gold: ', self gold asString, '/', player getMaxGold asString.
    
    progressWidth := (self gold / player getMaxGold * 180) floor.
    
    progressWidth := progressWidth min: 180.
    
    goldProgressFill extent: progressWidth @ 10.
