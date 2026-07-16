as yet unclassified
addLog: aString
    | logEntry |
    logEntry := StringMorph contents: aString.
    
    logEntry position: consoleLog topLeft + (5 @ (consoleLog submorphs size * 20)).
    
    consoleLog addMorph: logEntry.