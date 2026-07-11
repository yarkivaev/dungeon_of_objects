as yet unclassified
start
	[
		[ isRunning ] whileTrue: [
			self step.
	      	(Delay forMilliseconds: dt) wait.
		].
	] forkAt: Processor userBackgroundPriority.
