as yet unclassified
loadWav: filePath named: soundName
    | newSound |
    newSound := SampledSound fromWaveFileNamed: filePath.
    sounds at: soundName put: newSound.