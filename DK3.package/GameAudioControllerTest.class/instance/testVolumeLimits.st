as yet unclassified
testVolumeLimits
    audioController volume: -0.5.
    self assert: audioController volume equals: 0.0.
    audioController volume: 1.5.
    self assert: audioController volume equals: 1.0.
    audioController volume: 0.7.
    self assert: audioController volume equals: 0.7.