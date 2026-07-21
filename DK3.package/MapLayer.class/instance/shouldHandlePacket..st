as yet unclassified
shouldHandlePacket: anInputFrame
	^ anInputFrame isMouseDown or: [ anInputFrame isMouseUp ]
