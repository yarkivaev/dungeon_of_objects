initialization
initialize
    super initialize.
    mousePosition := 0 @ 0.
    mouseButtons := #none.
    mouseScroll := 0.
    keyboardState := Dictionary new.
    consumed := false.