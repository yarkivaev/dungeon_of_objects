timeChange
start
	isRunning := true.
	process := [
		[ isRunning ] whileTrue: [
			self step.
			(Delay forMilliseconds: 16) wait ] ] fork.
