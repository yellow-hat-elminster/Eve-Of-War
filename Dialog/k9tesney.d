BEGIN k9Blilly

IF ~~ THEN BEGIN 0
SAY ~Hey, I know what Alatos be having ye do. Ye being doing fools work if ye think this be a good thing. Could take the city down an even darker path. No tellin what the Amnians will figure once they see half the gate's leadership is dead. No telling what the Fist will do neither.~
++ ~Then what would you have me do?~ GOTO 1
++ ~That's a bit of an odd view coming from a thief.~ GOTO 2
++ ~Leave me be. This really is none of your concern.~ GOTO 3
END

IF ~~ THEN BEGIN 1
SAY ~Take Eltan to the dockmaster east o'here. Then go take care o'Sarevok. Leave Alatos to his scheming. Even if he be a soldierman, better fer us all if ye let Eltan live. Killin him, specially with the mark o'them Shadow Thieves, could make fools do more fooling things.~
++ ~I'll consider it.~ DO ~AddJournalEntry(@66046,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 2
SAY ~Odd times lead to odd views; or so I reckon. Fars I'm concerned ye be best to listen to what I have to say either way.~ IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 3
SAY ~Aye it is. Fars I'm concerned ye be best to listen to what I have to say. Can't force ya to hear me out, but that don't mean I won't try.~ IF ~~ THEN GOTO 1
END