as yet unclassified
drawOn: aCanvas
	room drawOn: canvas.
	
	room changePosition: camera position zoom: camera zoom.
	room changeSize: camera zoom position: camera position.

