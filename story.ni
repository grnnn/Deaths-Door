"Death's Door" by Taylor Owen-Milner and Ethan Lie

[Rooms]
The Front porch is a room."The manor looms in front of you, an almost shapeless, grey behemoth lying in wait. It's almost certainly occupied by unearthly evils, and as you stand on the front porch, a feeling of anxiety washes over you. Curiosity has brought you this far. Will it bring you furthur? [line break][line break] To your north lies the entrance to the house.".
The Living Room is a room. "You find yourself in the Living Room of the manor.".
The West Corridor is a room.
The Center Corridor is a room.
The East Corridor is a room.
The Bedroom is a room.
The Master Bedroom is a room.
The Servant's Quarters is a room.
The Family Room is a room.
The South Bathroom is a room.
The Guest Bedroom is a room.
The East Bathroom is a room.
The North Corridor is a room.
The Study is a room.
The Library is a room.
The Ballroom is a room.
The Antechamber is a room.
The Big Dining Room is a room.
The Abyss is a room.
The Laboratory is a room.
The Cellar is a room.
The Kitchen is a room.
The Family Dining Room is a room.
The Ballroom Balcony is a room.

The player is in the Front Porch.

[Room linking]
The front door is a door.
The front door is north of the Front Porch.
The front door is south of the Living Room.
The hall door is a door.
The hall door is west of the West Corridor.
The hall door is east of the Living Room.

The West Corridor is west of the Center Corridor and south of the Servant's Quarters and north of the Bedroom.
The Center Corridor is south of the Family Room and north of the South Bathroom and west of the East Corridor.
The East Corridor is south of the Master Bedroom and north of the Guest Bedroom.
The South Bathroom is east of the Bedroom and west of the Guest Bedroom.
The Family Room is west of the Master Bedroom and east of the Servant's Quarters.
The East Bathroom is east of the Master Bedroom.
The Study is north of the Master Bedroom and east of the Library.
The North Corridor is north of the Family Room and south of the Library.
The Antechamber is south of the Ballroom and west of the North Corridor.
The Big Dining Room is west of the Ballroom and north of the Kitchen.
The Family Dining Room is south of the kitchen.
The Ballroom Balcony is west of the Library.
The Ballroom is below the Ballroom Balcony.

The Laboratory is north of the Cellar and south of the Abyss.
The Cellar is below the Kitchen.

The grand door is a closed locked door.
The grand door is north of the Living Room.
The grand door is south of the Antechamber.

The guest door is a closed locked door.
The guest door is west of the Living Room.
The guest door is east of the Family Dining Room.

[Wife Monster Event]
A monsterB is a thing. A monsterB is in the Ballroom.
monsterBisAlive is a truth state that varies. monsterBisAlive is usually true.

A chandelier support is a thing. A chandelier support is in the Ballroom Balcony.
A knife is a thing. A knife is in the Study.

instead of cutting chandelier support:
	say "You cut the chandelier  support and the chandelier comes crashing down onto the monster on the ballroom floor! It seems safe to progress down to the Ballroom now.";
	now monsterBisAlive is false.
	
every turn:
	if the location of the player is the location of monsterB and monsterBisAlive is true:
		end the story saying "you ded from monsterB".
	
[Butler Monster event]
A monsterC is a thing. A monsterC is in the Kitchen.

A servent bell is a thing. A servent bell is in the Antechamber.

[Understand hiding as something new.]

[Daugther Monster Pathfinding/event code]
A monster is a thing. A monster is in the East Corridor.

startChase is a truth state that varies. startChase is usually false.

every turn:
	if player is in the west corridor and startChase is false:
		now startChase is true;
		now the hall door is locked.

every turn:
	if the location of the player is not the location of the monster and startChase is true:
		let the way be the best route from the location of the monster to the location of the player, using doors;
		try the monster going the way;
		say "You hear the monster in [the location of the monster]."

every turn:
	if the location of the player is the location of the monster and startChase is true:
		end the story saying "you ded from monsterA";

every turn:
	if the location of the player is the north corridor or the location of the player is the study:
		now startChase is false.