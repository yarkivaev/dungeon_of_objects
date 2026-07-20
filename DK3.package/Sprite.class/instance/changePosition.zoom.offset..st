as yet unclassified
changePosition: position zoom: aZoom offset: anOffset
	aZoom = currentZoom ifTrue: [
		morph position: ((position x negated) + anOffset x @ (position y negated) * aZoom + anOffset y)
	]