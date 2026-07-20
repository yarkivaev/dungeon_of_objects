as yet unclassified
exit
    isRunning := false.
    timer ifNotNil: [ timer stop ].
    audio ifNotNil: [ audio stopBackgroundMusic ].
