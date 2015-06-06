"Death's Door" by Taylor Owen-Milner and Ethan Lie

[Rooms]
The Front porch is a room."The manor looms in front of you, an almost shapeless, grey behemoth lying in wait. It's almost certainly occupied by unearthly evils, and as you stand on the front porch, a feeling of anxiety washes over you. Curiosity has brought you this far. Will it bring you furthur? [line break][line break] To your north lies the entrance to the house.".
The Living Room is a room. "You enter Living Room of the manor. There are doors to the east, north, west, and south.".
The West Corridor is a room. "You enter the a corridor with doors to the north and south. It continues eastward.".The printed name of The West Corridor is "The Corridor".
The Center Corridor is a room. "You are in a corridor with doors to the north and south. It runs eastward and westward.".The printed name of The Center Corridor is "The Corridor".
The East Corridor is a room. "You find yourself at the end of the corridor with doors to the north and south. It runs westward.".The printed name of The East Corridor is "The Corridor".
The Bedroom is a room. "You are in a regular looking bedroom. There are exits to the north and to the east." The printed name of The Bedroom is "A Bedroom".
The Master Bedroom is a room. "You are in a grand master bedroom. It looks like there is a bathroom to the east. There are doors leading south, west, and north as well. You can see a bright, silver light coming from that direction.".
The Servant's Quarters is a room. "This bedroom seems minimilistic. There are 2 rough looking, twin sized beds there. There is a door to the south that leads to The Corridor, and there is a door to the east."
The Family Room is a room. "This room looks like a smaller living room area. There are doors in all 4 directions.".
The South Bathroom is a room. "This dingy bathroom still has the stink of ages past. There are doors to the north, east, and west.".
The Guest Bedroom is a room. "This bedroom is moderately furnished, with a double bed and some rudimentary furniture. There are exits northward and westward.".
The East Bathroom is a room. "This bathroom is well lit and there's a bathtub. Very nice. Too bad the only exit is to the west."
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
playerIsHidden is a truth state that varies. playerIsHidden is usually false.

A servant bell is a thing. A servant bell is in the Antechamber.
A dining table is a thing. A dining table is in the Big Dining Room.

Inhiding is an action applying to one thing.
Underhiding is an action applying to one thing.
Ringing is an action applying to one thing.

Understand "ring [something]" as ringing.
Understand "hide under [something]" as underhiding. 
Understand "hide in [something]" as inhiding.
Understand "hide inside [something]" as inhiding.

Carry out ringing:
	say "You can't ring that. Besides, what good would making noise do?".
Carry out underhiding:
	say "There is no way you'll be able to hide under that.".
	
Instead of underhiding the dining table:
	say "You duck under the dining table. You feel like you're well concealed now.";
	now playerIsHidden is true.
	

Instead of ringing the servant bell:
	if the location of the player is the Big Dining Room:
		if playerIsHidden is false:
			say "You ring the servant's bell... Wait, why are you trying to draw the monster toward you?! It will see you!";
			now monsterC is in Big Dining Room;
		otherwise:
			say "You ring the servant's bell, trusting in the shadow of the table to hide you from the monster";
			now monsterC is in Big Dining Room;
	otherwise:
		say "Ringing the bell right now probably isn't a good idea.";
		stop.
	
Every turn:
	if the location of the player is the location of monsterC and playerIsHidden is false:
		end the story saying "you ded taylor plz fix this".
	

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