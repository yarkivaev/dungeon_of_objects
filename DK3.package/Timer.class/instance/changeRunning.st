helperMethods
changeRunning
	| bool |

	isRunning ifTrue: [
		bool := false.
	].
	isRunning ifFalse: [
		bool := true.	
	].

	isRunning := bool.