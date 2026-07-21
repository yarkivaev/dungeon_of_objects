timeChange
stop
	isRunning := false.
	process ifNotNil: [
		process terminate.
		process := nil ].
