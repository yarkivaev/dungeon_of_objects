as yet unclassified
testInitialize
    self assert: controller notNil.
    self shouldnt: [ controller stopBackgroundMusic ] raise: Error.