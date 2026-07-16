as yet unclassified
testPlayMissingSoundDoesNotCrash
    self shouldnt: [ audioController playSound: 'nonExistentSound' ] raise: Error.