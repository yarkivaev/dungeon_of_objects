running
stop
    isRunning := false.
    timer ifNotNil: [ timer stop ].
