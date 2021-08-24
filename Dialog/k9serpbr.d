BEGIN k9serpbr

IF ~True()~ THEN BEGIN 0
SAY ~Howdy, friend. What can I get for ya?~
++ ~What do you have on tap?~ DO ~SetGlobal("k9HendernInnTalk","GLOBAL",1) StartStore("k9serpbr",LastTalkedToBy(Myself))~ EXIT
++ ~Maybe you can answer a few questions for us?~ GOTO k9questions


++ ~I'll be going now.~ EXIT
END


IF ~~ THEN BEGIN 1
SAY ~Weird fellow that one. I know enough about ye though to know you aren't asking about him to get to know us townsfolk any better. Maybe you buy some drink and maybe I'll tell you what I know.~ IF ~~ THEN DO ~SetGlobal("k9HendernInnTalk","GLOBAL",1) SetGlobal("k9HendernBarKnowledge","GLOBAL",1)~  GOTO k9people2
END

IF ~~ THEN BEGIN 2

SAY ~What can I get for ya?~
++ ~What do you have on tap?~ DO ~SetGlobal("k9HendernInnTalk","GLOBAL",1) StartStore("k9serpbr",LastTalkedToBy(Myself))~ EXIT
++ ~I'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 3
SAY ~Maybe if you were to buy some drink I'd tell ye what I know. But I'm not do yer dirty work for free.~ IF ~~ THEN DO ~SetGlobal("k9ShajaBarKnowledge","GLOBAL",1)~ GOTO k9people2
END

IF ~~ THEN BEGIN 4

SAY ~What can I get for ya?~
++ ~What do you have on tap?~ DO ~StartStore("k9serpbr",LastTalkedToBy(Myself))~ EXIT
++ ~Maybe you can answer a few questions for us?~ GOTO k9questions
++ ~I'll be going now.~ EXIT
END


IF ~~ THEN BEGIN k9questions
SAY ~What do you want to know?~
++ ~When did all this snow first appear anyways?~  GOTO k9snow
++ ~Any idea who is responsible for whats happened in town?~ GOTO k9responsible
++ ~Anything I should know about while I'm here?~ GOTO k9know
++ ~What can you tell me of the people of Serpent Hills?~ GOTO k9people
++ ~What do you know about the history of Serpent Hills?~ GOTO k9serpenthistory
+~Global("k9wardsserpent","GLOBAL",1)~+ ~You mentioned earlier about wards in the town?~ GOTO k9wardstalk
+~CheckStatGT(Player1,12,INT)~+ ~I remember reading that this village had almost a thousand people living in it. Yet, there seem to only be a few homes here. Was what I read not true?~  GOTO k9volo
++ ~I don't suppose you know what the inn is called The Dusty Dragon?~ GOTO k9dragon
 END
 
 IF ~~ THEN BEGIN k9snow
SAY ~A few weeks back I'd say. Never seen anything like it either. Wonder if it was wizarding myself, what with Hendern about. Can never be too sure around them folks.~ IF ~~ THEN GOTO k9questions2
END

 IF ~~ THEN BEGIN k9responsible
SAY ~Figured it to be the work of some wizard. Town is built on their work ye know. If it weren't for the wards, we wouldn't be here.~ IF ~~ THEN DO ~SetGlobal("k9wardsserpent","GLOBAL",1)~ GOTO k9questions2
END


 IF ~~ THEN BEGIN k9know
SAY ~Hmm...best not to wonder too far from town. Especially around night time. Dragons, wyverns, all sorts of beast live out in the forests. Not the kind of thing ye be wanting to be fighting.~ IF ~~ THEN GOTO k9questions2
END


 IF ~~ THEN BEGIN k9serpenthistory
SAY ~The history of town? Pretty sure someone penned a book on it at one point or another, might even find it in the mayor's house if ye look hard enough.

Town was settled a few hundred years back. Not much to be said really, we've mostly been a village of farmers and fishermen. Though there's always been a few trappers and woodcutters around as well.

Town got its name after the Yuan Ti. Place used to be full of the critters. They even had a temple here back in the day. Course when our ancestors arrived that was destroyed that right and quick. Mages they hired to do it didn't do that great a job from what I hear though. Supposedly, there is still some of it left underneath us. Gods hoping that's not true. No one here's about to dig to find out.~ IF ~~ THEN GOTO k9questions2
END

  IF ~~ THEN BEGIN k9wardstalk
SAY ~The ward? It'd be the thing keeping those damn dragons from attacking us. Mages put it here after the battle to take the place from the Yuan Ti. Said it would keep people from fumbling about, searching amongst the temple ruins. Don't know how true that was, but the dragons don't attack.~ IF ~~ THEN GOTO k9questions2
END

  IF ~~ THEN BEGIN k9volo
SAY ~Pfft...probably read such garbage from that Volo fellow. Came here some time ago and made up such tales bout the place. I tell ye friend, if I ever see that bastard round these parts again there'll be hell to pay.~ IF ~~ THEN GOTO k9questions2
END


IF ~~ THEN BEGIN k9dragon
SAY ~Wish I could tell ya of some far flung tale about that. Truth is that be the name of the place when I took her over some years back. Never asked why either.~ IF ~~ THEN GOTO k9questions2
END






 IF ~~ THEN BEGIN k9people
SAY ~We're a hearty folk, been through a lot as you can see. Used to fending for ourselves mostly, not very used to visitors this late in the season.

Take no insult from that either friend, we're just far enough from the Trade Way for few to pass by here. Many might find the life here rather dull. Me? I find it rather peaceful.~
++ ~What can you tell me about the mayor?~ GOTO k9mayor
++ ~What can you tell me about Aluena?~ GOTO k9aluena
++ ~What can you tell me about Delwyn?~ GOTO k9delwyn
++ ~What can you tell me about the ferryman?~ GOTO k9jeb
++ ~What can you tell me about Belladonna?~ GOTO k9Belladonna
++ ~What can you tell me about Venra?~ GOTO k9Venra
++ ~What can you tell me about Gord?~ GOTO k9Gord
++ ~What can you tell me about Red?~ GOTO k9Red
++ ~What can you tell me about Telar?~ GOTO k9Telar
++ ~What can you tell me about Atad?~ GOTO k9atad
+~Global("k9HendernBarKnowledge","GLOBAL",0)~+ ~What do you know about Hendern?~ GOTO 1
+~Global("k9ShajaBarKnowledge","GLOBAL",0)~+ ~Do you know anything about Shaja?~ GOTO 3
++ ~Actually I had other questions.~ GOTO k9questions2
++ ~Nevermind actually. I think I'll be going now.~ EXIT
END


 IF ~~ THEN BEGIN k9people2
SAY ~Anyone else ye want to know about?~
++ ~What can you tell me about the mayor?~ GOTO k9mayor
++ ~What can you tell me about Aluena?~ GOTO k9aluena
++ ~What can you tell me about Delwyn?~ GOTO k9delwyn
++ ~What can you tell me about the ferryman?~ GOTO k9jeb
++ ~What can you tell me about Belladonna?~ GOTO k9Belladonna
++ ~What can you tell me about Venra?~ GOTO k9Venra
++ ~What can you tell me about Gord?~ GOTO k9Gord
++ ~What can you tell me about Red?~ GOTO k9Red
++ ~What can you tell me about Telar?~ GOTO k9Telar
++ ~What can you tell me about Atad?~ GOTO k9atad
+~Global("k9HendernBarKnowledge","GLOBAL",0)~+ ~What do you know about Hendern?~ GOTO 1
+~Global("k9ShajaBarKnowledge","GLOBAL",0)~+ ~Do you know anything about Shaja?~ GOTO 3
++ ~I don't need to know about anyone else. What do you have on tap?~ DO ~SetGlobal("k9HendernInnTalk","GLOBAL",1) StartStore("k9serpbr",LastTalkedToBy(Myself))~ EXIT
++ ~Actually I had other questions.~ GOTO k9questions2
++ ~Nevermind actually. I think I'll be going now.~ EXIT
END


IF ~~ THEN BEGIN k9mayor
SAY ~Tomlin? Was an adventurer himself back in the day from what I understand. Helped him pay for that house of his.

Hmm...course now he's the mayor. Tough job to have too, though he does fine by it I think. Handles the affairs of justice and the like. Town normally is kept in well enough shape.~ IF ~~ THEN GOTO k9people2
END


IF ~~ THEN BEGIN k9aluena
SAY ~Aluena? She's a spellslinger and a damn good one at that. Used to run the town even, though she's been keeping to herself a lot lately up in that Heartwing place of hers. I suppose Tomlin now being around has something to do with that.~ IF ~~ THEN GOTO k9people2
END

IF ~~ THEN BEGIN k9delwyn
SAY ~What a piece of work. He's one of them hoity toity paladin types, probably stuck here by one of their orders. He keeps the guard in check, true, but Tomlin's the one to see for matters of justice. Don't even know why the fool is kept around. The wards keep the forest creatures in check and folks around here keep the calm well enough.~ IF ~~ THEN GOTO k9people2
END


IF ~~ THEN BEGIN k9jeb
SAY ~Ye want to know more about Jeb? Bit of a slow one if ye ask me. Ferryin people about though seems to be a job he can handle well enough. Not much more to be said.~ IF ~~ THEN GOTO k9people2
END

 IF ~~ THEN BEGIN k9Belladonna
SAY ~Don't have much to say about that one. She's one of our trappers. Most round here don't have the taste for meat, but days like these don't allow us to be picky.

Hmm...can't think of much else about her. Rarely see her about in here anyways. (The bartender shrugs) Guess she prefers the company of others.~ IF ~~ THEN GOTO k9people2
END

IF ~~ THEN BEGIN k9Venra
SAY ~That old coot? Been brewing potions since I can remember. Always seems to have a remedy for whatever ails ye. If ye can't afford the church, or want something ye can take with ya, you might want to pay that one a visit.~ IF ~~ THEN GOTO k9people2
END


IF ~~ THEN BEGIN k9Gord
SAY ~What a nutter...and ye can tell him I said that too. No chance he'll do anything about it. Probably won't even remember he was told.

Keeps to himself up there in that lookout tower. Not that it does the rest of the village any good, the wards held the dragons back for years.

I suppose someone should talk to him, see what he's been up to. Not about to go up there myself though.~ IF ~~ THEN GOTO k9people2
END

IF ~~ THEN BEGIN k9Red
SAY ~(The bartender turns his head towards Red) Hey Red, these folks want to know more about you. What do ye got to say to them?~ IF ~~ THEN EXTERN k9red 8
END

IF ~~ THEN BEGIN k9red2
SAY ~Think that about says enough don't you?~ IF ~~ THEN GOTO k9people2
END

IF ~~ THEN BEGIN k9Telar
SAY ~The priest? Came around these parts maybe 15 years back. Not sure where she's from really, but before her around these parts only Venra knew anything about healing. She seems to gotten along well enough with the rest of the people here. Gives folks some hope and something to pray towards. Not a bad thing about her if ye ask me.~ IF ~~ THEN GOTO k9people2
END


IF ~~ THEN BEGIN k9atad
SAY ~Can't say I've ever met him myself. I'm told he's a good guide, keeps to himself out there in the woods. People say he never shows them his face, least not willingly. Heard some strange things myself about him. Heard he's got the skin of the snakefolk, yellow eyes, and a forked tongue. Course that don't mean much. Tall tales abound of the creatures found outside the town limits. Round here folks are suspicious of anyone who lives out in the wilds.~ IF ~~ THEN GOTO k9people2
END

IF ~~ THEN BEGIN k9questions2
SAY ~What else do you want to know?~
++ ~When did all this snow first appear anyways?~  GOTO k9snow
++ ~Any idea who is responsible for whats happened in town?~ GOTO k9responsible
++ ~Anything I should know about while I'm here?~ GOTO k9know
++ ~What can you tell me of the people of Serpent Hills?~ GOTO k9people
++ ~What do you know about the history of Serpent Hills?~ GOTO k9serpenthistory
+~Global("k9wardsserpent","GLOBAL",1)~+ ~You mentioned earlier about wards in the town?~ GOTO k9wardstalk
+~CheckStatGT(Player1,12,INT)~+ ~I remember reading that this village had almost a thousand people living in it. Yet, there seem to only be a few homes here. Was what I read not true?~  GOTO k9volo
++ ~I don't suppose you know what the inn is called The Dusty Dragon?~ GOTO k9dragon
++ ~I think that is everything.~ GOTO 4
 END

