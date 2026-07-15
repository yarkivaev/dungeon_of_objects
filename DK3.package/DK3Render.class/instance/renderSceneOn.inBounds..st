rendering
renderSceneOn: aCanvas inBounds: displayBounds


	| center pX pY roomSize step |

	aCanvas fillRectangle: displayBounds color: Color black.
	center := displayBounds center.


	roomSize := 800. 
	step := 16.    

	(roomSize negated) to: roomSize by: step do: [ :x |

		| startPoint endPoint |
		startPoint := camera transformToScreen: (x @ roomSize negated) windowCenter: center.
		endPoint := camera transformToScreen: (x @ roomSize) windowCenter: center.
		aCanvas line: startPoint to: endPoint width: 1 color: Color gray.
	].

	(roomSize negated) to: roomSize by: step do: [ :y |

		| startPoint endPoint |
		startPoint := camera transformToScreen: (roomSize negated @ y) windowCenter: center.
		endPoint := camera transformToScreen: (roomSize @ y) windowCenter: center.
		aCanvas line: startPoint to: endPoint width: 1 color: Color gray.
	].


	pX := camera transformToScreen: (100 @ 0) windowCenter: center.
	aCanvas line: (camera transformToScreen: (-100 @ 0) windowCenter: center) to: pX width: 2 color: Color red.


	pY := camera transformToScreen: (0 @ 100) windowCenter: center.
	aCanvas line: (camera transformToScreen: (0 @ -100) windowCenter: center) to: pY width: 2 color: Color green.
