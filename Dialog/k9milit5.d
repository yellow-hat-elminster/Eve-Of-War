BEGIN k9milit5


IF ~OR(2) NumTimesTalkedTo(0) NumTimesTalkedToGT(0)~ THEN
BEGIN k9militalk
      SAY ~Yea what you want?~
		++ ~Jovial Juggler doesn't sound all that busy. Any idea why that might be?~
 			GOTO k9commotion                                 
		+~Global("k9pints", "GLOBAL", 0)~+ ~So how are things in the watch?~
			GOTO k9militiathings
		+~GlobalGT("k9pints", "GLOBAL", 1)~+ ~So how are things in the watch?~
			GOTO k9militiathings2
		+~Global("k9pints", "GLOBAL", 2)~+ ~I managed to solve the taverns alcohol problems. You should find prices lower now.~
			GOTO k9militiathings3
		++ ~My apologies, I didn't mean to disturb you.~ EXIT
END



IF ~~ THEN
BEGIN k9commotion
	SAY ~Damn Fist showed up a few days back. Lot of folk don't wanna be around them. Specially when talkin about business.~ IF~~ EXIT
END

IF ~~ THEN
BEGIN k9militiathings
	SAY ~Hmm...well the bandits seem to have avoided the town. So there is that. Still, it could be better.

Went into Feldpost's the other day looking for a pint. The bastard wanted a days salary for the thing. We put our lives on hold to help out for a pitance of what we would get working on the field. The least the taverns in town could do is show some of us folks in the watch some respect.~
        ++ ~I'll see what I can do about that for you.~ DO ~ AddJournalEntry(@107,QUEST) SetGlobal("k9pints", "GLOBAL", 1) SetGlobal("k9militiapint", "GLOBAL", 1)~ EXIT
        ++ ~I don't care.~ EXIT
        ++ ~Good luck with that.~ EXIT
END

IF ~~ THEN
BEGIN k9militiathings2
	SAY ~Much better now that the taverns prices are a bit lower.~ IF ~~ EXIT
END


IF ~~ THEN
BEGIN k9militiathings3
	SAY ~Did ye now? Well much appreciated. I've not got much myself but you deserve a reward all the same. Its not much but take it.~ IF ~~ THEN DO
        ~SetGlobal("k9pints", "GLOBAL",3)     GiveGoldForce(2)
        AddexperienceParty(300)  AddJournalEntry(@1074,QUEST_DONE)~  EXIT
END

