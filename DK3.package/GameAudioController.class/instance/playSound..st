as yet unclassified
playSound: soundName
    | originalSound playingSound |
    originalSound := sounds at: soundName ifAbsent: [ 
        Transcript show: 'Sound not found: ', soundName; cr.
        ^ self ].
    playingSound := originalSound copy.
    playingSound loudness: masterVolume.
    playingSound play.