as yet unclassified
openRoomPanel
    | isVisible |
    isVisible := roomPanel visible.

    isVisible  ifTrue: [
        roomPanel hide.
    ].

    isVisible ifFalse: [
        roomPanel show.
    ]