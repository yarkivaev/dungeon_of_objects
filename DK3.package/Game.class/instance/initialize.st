initialize-release
initialize
    super initialize.

    isRunning := false.
    renderer := nil.
    audio := GameAudioController new.
