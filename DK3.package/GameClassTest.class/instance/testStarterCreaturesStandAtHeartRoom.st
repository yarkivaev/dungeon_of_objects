as yet unclassified
testStarterCreaturesStandAtHeartRoom
    | game hearts creature |
    game := Game new.
    hearts := game player getRooms getDict values select: [ :room | room class = HeartRoom ].
    creature := game player getCreatures getDict values asArray first.
    self
        assert: (hearts anySatisfy: [ :heart | heart getCenter = creature position ])
        description: 'starter creature did not stand in a heart room'
