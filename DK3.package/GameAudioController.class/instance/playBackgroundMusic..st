as yet unclassified
playBackgroundMusic: aFilePath
    self stopBackgroundMusic.

    Transcript show: (path / aFilePath).

    musicProcess := [
        [ true ] whileTrue: [
            backgroundMusic := SampledSound fromWaveFileNamed: (path / aFilePath) pathString.
            backgroundMusic ifNotNil: [
                backgroundMusic play.
                [ backgroundMusic isPlaying ] whileTrue: [
                    (Delay forMilliseconds: 200) wait.
                ].
            ].
        ]
    ] fork.