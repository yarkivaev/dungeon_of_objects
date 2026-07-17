as yet unclassified
stopBackgroundMusic
    backgroundMusic ifNotNil: [
        backgroundMusic stop.
        backgroundMusic := nil ].