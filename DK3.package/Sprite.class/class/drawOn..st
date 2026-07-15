as yet unclassified
drawOn: aCanvas
	| sprite |
	sprite := self new.
	
	sprite setCanvas: aCanvas.
	
	^sprite.