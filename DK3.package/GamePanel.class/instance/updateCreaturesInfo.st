as yet unclassified
updateCreaturesInfo
    | text |
    text := 'total number of creatures: ', self creatureCount asString, String cr,
            'Compound: ', self creatures asString. 
    creaturesInfoLabel contents: text.