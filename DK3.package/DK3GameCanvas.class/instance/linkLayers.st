private
linkLayers
    | previous |
    previous := nil.
    layers do: [ :layer |
        previous ifNotNil: [ previous nextLayer: layer ].
        previous := layer.
    ].
