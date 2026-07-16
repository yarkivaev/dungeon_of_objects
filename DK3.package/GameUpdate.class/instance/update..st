as yet unclassified
update: deltaTime
	objects := ObjectInterface getObjects.

	objects do: [ :object | 
		object update: deltaTime.	
	]
