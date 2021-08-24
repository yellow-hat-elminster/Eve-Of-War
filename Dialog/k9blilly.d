BEGIN k9Blilly

IF ~True()~ THEN BEGIN 0
SAY ~Hey, I know what Alatos has ya up to and I have to say you'd being doing fools work if ye think this is a good idea. Could take the city down an even darker path. No tellin what the Amnians will figure once they see half the gate's leadership is dead. No telling what the Fist will do either.~
++ ~Then what would you have me do?~ GOTO 1
++ ~That's a bit of an odd view coming from a thief.~ GOTO 2
++ ~Leave me be. This really is none of your concern.~ GOTO 3
END

IF ~~ THEN BEGIN 1
SAY ~Take Eltan to the dockmaster east o'here. Then go take care of Sarevok. Leave Alatos to his scheming. Even if he is a bit of a soldierman, it's better for us all if ya let Eltan live. Killin him, specially with the mark o'them Shadow Thieves, could be disastrous for the city.~
++ ~I'll consider it.~ DO ~AddJournalEntry(@660460,QUEST) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 2
SAY ~Odd times lead to odd views; or so I reckon. Fars I'm concerned ya be best to listen to what I have to say either way.~ IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 3
SAY ~Aye it is. Fars I'm concerned ye be best to listen to what I have to say. Can't force yea to hear me out, but that doesn't mean I won't try.~ IF ~~ THEN GOTO 1
END