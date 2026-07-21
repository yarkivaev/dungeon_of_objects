as yet unclassified
stopBackgroundMusic
    musicProcess ifNotNil: [
        musicProcess terminate.
        musicProcess := nil.
    ].

    backgroundMusic ifNotNil: [
        backgroundMusic pause.
        backgroundMusic := nil.
    ].