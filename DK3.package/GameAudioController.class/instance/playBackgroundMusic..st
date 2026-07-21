as yet unclassified
playBackgroundMusic: aFilePath
    self stopBackgroundMusic.

    musicProcess := [
        [ true ] whileTrue: [
            backgroundMusic := SampledSound fromWaveFileNamed: aFilePath.
            backgroundMusic ifNotNil: [
                backgroundMusic play.
                [ backgroundMusic isPlaying ] whileTrue: [
                    (Delay forMilliseconds: 200) wait.
                ].
            ].
        ]
    ] fork.