as yet unclassified
setGenerator: idGen setCreatures: creaturesDict
	globalId := idGen.
	creatures := creaturesDict.
	self subclassesDo: [ :cls |
		cls setGenerator: idGen setCreatures: creaturesDict.
	].
