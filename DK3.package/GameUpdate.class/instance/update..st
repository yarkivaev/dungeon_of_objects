updating
update: deltaTime
    | world |
    objects ifNil: [ ^ self ].
    world := creatures getDict values asArray.
    creatures getDict valuesDo: [ :creature |
        creature currentAction: (creature decideAction: world).
        creature currentAction do: deltaTime ].
