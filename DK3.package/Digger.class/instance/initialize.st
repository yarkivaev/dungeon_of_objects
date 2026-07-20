initialize-release
initialize
	super initialize.
	name := 'Digger'.
	health := 110.
	
	sprite := Sprite new form: (Form fromFileNamed: 'C:\T\Squeak6.0-22156-64bit-202606270913-Windows-x64\Dungeon\sprites\Creatures\Worker\Digger\Action\1.png').
	"sprite x: 0 y: 0 width: 64 height: 64."
	