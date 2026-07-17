as yet unclassified
playBackgroundMusic: filePath
    | baseSound |
    self stopBackgroundMusic.
    baseSound := SampledSound fromWaveFileNamed: filePath.
    backgroundMusic := RepeatingSound on: baseSound.
    backgroundMusic loudness: 0.2. 
    backgroundMusic play.