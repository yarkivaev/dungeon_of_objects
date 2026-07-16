as yet unclassified
addLog: aString
    | logEntry |

    logEntry := StringMorph contents: aString.
    

    consoleLog submorphs size >= 7 ifTrue: [ 
        consoleLog submorphs last delete. 
    ].
    

    consoleLog submorphs do: [:each | 
        each position: each position + (0 @ 20) 
    ].
    

    logEntry position: consoleLog topLeft + (5 @ 0).
    
    consoleLog addMorph: logEntry.