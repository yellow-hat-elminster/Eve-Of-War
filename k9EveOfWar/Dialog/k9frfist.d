BEGIN k9frFist

IF ~True()~ THEN BEGIN 0

SAY ~What do you want citizen?~
++ ~Looks like the flaming fist have their hands full here.~ GOTO 1
++ ~Your men don't really seem all that ready.~ GOTO 2

++ ~I think I'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 1

SAY ~It's bad enough the commander sent me to this lawless outpost to die at the hands of Amn. I don't need some loudmouth in my face. Understand?~
++ ~Your men don't really seem all that ready.~ GOTO 2
++ ~I think I'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 2

SAY ~Figured that out did ya? That damn commander sent me incompetents to hold the damn inn. Should have been sending our finest this way.~
+~GlobalLT("Chapter","GLOBAL",7) Global("k9fistcommandertalk","GLOBAL",0)~+ ~Which commander?~ DO ~SetGlobal("k9fistcommandertalk","GLOBAL",1)~ GOTO 3
+~Global("Chapter","GLOBAL",7) Global("k9fistcommandertalk","GLOBAL",0)~+ ~Which commander?~ DO ~SetGlobal("k9fistcommandertalk","GLOBAL",1)~ GOTO 4
++ ~I think I'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 3

SAY ~Angelo of course. He's the one tasked by Eltan to handle this mess. Not that he's done much of a job of it.~
++ ~Thanks for the information. I think I'll be going now.~ EXIT
END

 IF ~~ THEN BEGIN 4

SAY ~Angelo of course. Not many officers left with Scar and Eltan dead.~
++ ~Thanks for the information. I think I'll be going now.~ EXIT
END




