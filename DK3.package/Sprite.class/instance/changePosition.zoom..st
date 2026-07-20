as yet unclassified
changePosition: position zoom: aZoom
	aZoom = currentZoom ifTrue: [
		morph position: ((position x negated) @ (position y negated) * aZoom)
	]