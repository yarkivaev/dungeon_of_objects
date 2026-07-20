as yet unclassified
testStarterCreaturesStandAtHeartRoom
    | game hearts |
    game := Game new.
    hearts := game player getRooms getDict values select: [ :room | room class = HeartRoom ].
    self
        assert: (game player getCreatures getDict values allSatisfy: [ :creature |
            hearts anySatisfy: [ :heart | heart getCenter = creature position ] ])
        description: 'a starter creature did not stand in a heart room'
