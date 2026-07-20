initialize-release
initialize
	super initialize.
	name := 'Monk'.
	health := 80.
	attack := 0.
	
	sprite := Sprite new form: (Form fromFileNamed: 'C:\T\Squeak6.0-22156-64bit-202606270913-Windows-x64\Dungeon\sprites\Creatures\Healer\Monk\Action\1.png').
	"sprite x: 0 y: 0 width: 64 height: 64."