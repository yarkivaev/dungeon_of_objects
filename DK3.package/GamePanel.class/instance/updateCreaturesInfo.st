as yet unclassified
updateCreaturesInfo
    | text |
    text := 'total number of creatures: ', creatureCount asString, String cr,
            'Compound: ', creatureList asString. 
    creaturesInfoLabel contents: text.