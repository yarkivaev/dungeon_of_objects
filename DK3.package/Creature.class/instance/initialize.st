initialize-release
initialize
	super initialize.
	
	ObjectInterface addObject: self.
	
	name := 'Unknown'.
	health := 100.
	attack := 10.
	hunger := 0.
	level := 1.
	position := 0@0.
	
	id := self class globalId.
	
	

