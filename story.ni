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
The East Bathroom is a room. "This bathroom is well lit by the moonlight streaming in from the window and there's even a large bathtub. Very nice. Too bad the only exit is to the west."
The North Corridor is a room. "You find yourself in another dark corridor. There are doors to the east, south and north.".
The Study is a room. "You are in a study. The fireplace hasn't been cleaned in years. You can see the charred remains of papers in the fireplace. The rich mahogany desk is rotting in disrepair. There are doors to the south and west.".
The Library is a room. "This manor's library looks well stocked, though many of the books have probably been ruined from rot and disrepair. You can see doors leading south, west, and east.".
The Ballroom is a room. "This ballroom looks like it could hold over 100 people! This house must have been really something back in the day. . . You can see a way up to the balcony, as well as exits to the south and west.".
The Antechamber is a room. "This room looks as if it were meant to receive guests. The old owners of this place must have had large parties. You can see an entrance to a large room to the north, as well as another exit to the east.".
The Big Dining Room is a room. "This must have been where the guests ate. Each of the tables could easily fit 10 people. What happened to this place? There doors leading south and east.".
The Abyss is a room. "The dark, deeper than the blackest part of your soul. In the ground, you see it. A great abyss lies before you. How far does it go? What have you become?[line break][line break] Do you see it? In the darkness. There lies secrets. There lies ruin. Worst of all, there lies nothing. What will you do? [line break][line break] This is where the game would end if it were done. It is not right now. Yay, congrats.".
The Laboratory is a room. "Somehow, there's a rudimentary labarotory down here. What was the owner studying? What was he doing down here? There is a door to the south and the north.".
The Cellar is a room. "This is where the wines and food were stored. Here, you could see bottles of wine that were worth more than your house. There is an exit to the north, as well as a way back up to the kitchen.".
The Kitchen is a room. "You enter a large kitchen. There are exits to the north and south.".
The Family Dining Room is a room. "This is where the family would dine if they didn't have visitors. Quaintly, you imagine the small family that used to live here eating at the table in the center of the room. There are doors to the north and the east.".
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
monsterADed is a truth state that varies. monsterADed is usually false.

every turn:
	if player is in the west corridor and startChase is false and monsterADed is false:
		now startChase is true;
		say "A grosteque. . . thing lurches toward you in the corridor. It looks misformed, wrong, covered in irregular protrusions. With a sickening crack, it lurches toward you. The monster's sickening movements bring down part of the roof, and now the exit behind you is closed off. Quick, you need to escape!";
		now the hall door is closed;
		now the hall door is locked.

every turn:
	if the location of the player is not the location of the monster and startChase is true:	
		if a random chance of 1 in 16 succeeds:
			try the monster going west;
		otherwise if the location of the player is the South Bathroom and a random chance of 1 in 2 succeeds:
			try the monster going west;
		otherwise if a random chance of 1 in 16 succeeds: 
			try the monster going east;
		otherwise if the location of the player is the South Bathroom and a random chance of 1 in 2 succeeds:
			try the monster going east;
		otherwise if a random chance of 1 in 16 succeeds:
			try the monster going north;
		otherwise if the location of the player is the South Bathroom and a random chance of 1 in 2 succeeds:
			try the monster going north;
		otherwise if a random chance of 1 in 16 succeeds:
			try the monster going south;
		otherwise if the location of the player is the South Bathroom and a random chance of 1 in 2 succeeds:
			try the monster going south;
		otherwise:
			let the way be the best route from the location of the monster to the location of the player, using doors;
			try the monster going the way;

every turn:
	if the location of the player is not the location of the monster and startChase is true:	
		if the monster is in an adjacent room:
			let the way2 be the best route from the location of the player to the location of the monster;
			say "You hear the monster in the next room to the [way2]!";
		otherwise if the location of the player is not the location of the monster:
			say "You've lost track of the monster. . . for now.".
			

every turn:
	if the location of the player is the location of the monster and startChase is true:
		say "You try to get away, but the monster grabs you and you fall. Your vision leaves you. Oh God the light, the blinding light!";
		end the story saying "The End".

every turn:
	if the location of the player is the north corridor and startChase is true:
		say "The monster enters the room. It moves slowly toward you, the cracking growing louder. As you watch in horror, the monster wheezes, then collapses in front of you, decomposing and deflating before your very eyes. With one final, sickening crack, the monster lies still, dead.";
		now the monster is in the north corridor;
		now monsterADed is false;
		now startChase is false.
		
every turn:
	if the location of the player is the study and startChase is true:
		say "The monster enters the room. It moves slowly toward you, the cracking growing louder. As you watch in horror, the monster wheezes, then collapses in front of you, decomposing and deflating before your very eyes. With one final, sickening crack, the monster lies still, dead.";
		now the monster is in the study;
		now monsterADed is false;
		now startChase is false.