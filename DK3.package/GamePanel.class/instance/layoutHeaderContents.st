as yet unclassified
layoutHeaderContents
    | gap barWidth |
    gap := 4.
    goldLabel position: headerLeft topLeft + (4 @ 2).
    barWidth := (headerLeft width - 8) max: 1.
    goldProgressBar extent: barWidth @ 6.
    goldProgressBar position: (headerLeft left + 4) @ (goldLabel bottom + gap).
    goldProgressFill position: goldProgressBar topLeft.
    foodLabel position: (headerLeft left + 4) @ (goldProgressBar bottom + gap).
    creaturesLabel position: headerRight topLeft + (4 @ 2).
    paydayLabel position: (headerRight left + 4) @ (creaturesLabel bottom + gap).
    headerLeft extent: headerLeft width @ ((foodLabel bottom - headerLeft top) + gap).
    headerRight extent: headerRight width @ ((paydayLabel bottom - headerRight top) + gap).
