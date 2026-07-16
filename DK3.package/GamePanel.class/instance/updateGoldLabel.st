as yet unclassified
updateGoldLabel
    | progressWidth |
    goldLabel contents: 'Gold: ', gold asString, '/10000'.
    
    progressWidth := (gold / 10000 * 180) floor.
    
    progressWidth := progressWidth min: 180.
    
    goldProgressFill extent: progressWidth @ 10.