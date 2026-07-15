timeChange
start
	[
		[ isRunning ] whileTrue: [
			self step.
			world update: dt.
	      	(Delay forSeconds: 0.016) wait.
		].
	] fork.
