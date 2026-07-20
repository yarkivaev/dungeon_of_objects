as yet unclassified
form: aForm size: aSize
    form := aForm scaledToSize: aSize@aSize.
    morph := ImageMorph new.
    morph := morph newForm: form.
    ^self.