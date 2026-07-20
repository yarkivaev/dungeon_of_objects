setters
setMorph
	morph := Sprite new form: (Form fromFileNamed: (path / roomPath) pathString) size: size * 16.
	