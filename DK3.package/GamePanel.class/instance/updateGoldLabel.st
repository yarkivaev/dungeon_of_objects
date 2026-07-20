as yet unclassified
updateGoldLabel
    | progressWidth barWidth |
    goldLabel contents: 'Gold: ', self gold asString, '/', player getMaxGold asString.
    self layoutHeaderContents.
    barWidth := goldProgressBar width.
    progressWidth := (self gold / player getMaxGold * barWidth) floor.
    progressWidth := progressWidth min: barWidth.
    goldProgressFill extent: progressWidth @ goldProgressBar height.
    goldProgressFill position: goldProgressBar topLeft.
