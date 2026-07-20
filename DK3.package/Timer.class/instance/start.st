timeChange
start
	[
		[ isRunning ] whileTrue: [
			self step.
	      	(Delay forSeconds: 0.016) wait.
		].
	] fork.
