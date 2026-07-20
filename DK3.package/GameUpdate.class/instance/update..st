updating
update: deltaTime
    objects ifNil: [ ^ self ].
    "
    objects do: [ :object |
        (object respondsTo: #update:) 
            ifTrue: [ object update: deltaTime ].
    ]."

    creatures getDict values do: [:creature | creature currentAction do: deltaTime]
