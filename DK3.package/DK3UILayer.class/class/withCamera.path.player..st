instance creation
withCamera: aCamera path: globalPath player: aPlayer
    | instance |
    instance := self new.
    instance globalPath: globalPath.
    instance initializeWithCamera: aCamera player: aPlayer.
    ^ instance
