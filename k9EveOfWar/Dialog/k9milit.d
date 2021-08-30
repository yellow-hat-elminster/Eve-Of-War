BEGIN k9milit


IF ~OR(2) NumTimesTalkedTo(0) NumTimesTalkedToGT(0)~ THEN
BEGIN k9militalk
      SAY ~Hey...uhh...welcome to...uhh...Feldpost? As fine a place as you'll find in these parts.~
		++ ~Are you alright friend? You seem rather new at this.~
 			GOTO k9joking
		+~Global("k9pints", "GLOBAL", 0)~+ ~So how are things in the watch?~
			GOTO k9militiathings
		+~GlobalGT("k9pints", "GLOBAL", 1)~+ ~So how are things in the watch?~
			GOTO k9militiathings2
		+~Global("k9pints", "GLOBAL", 2)~+ ~I managed to solve the taverns alcohol problems. You should find prices lower now.~
			GOTO k9militiathings3
		+ ~Class(Player1Fill,Cleric)
                OR(2) 
                Alignment(Player1Fill,MASK_GOOD)
                Alignment(Player1Fill,MASK_GENEUTRAL)~ + ~You seem like you have been out here for hours, days even. Are you in need of water or food? A place to rest?~
			GOTO k9clericmili
		++ ~My apologies, I didn't mean to disturb you.~ EXIT
END



IF ~~ THEN
BEGIN k9joking
	SAY ~Bah, I'm no greeter. We've been out here for days now protecting this place. Guess I've grown a bit tired of it all. Anyways, if ye've got any business in Feldpost come on in. Otherwise, off with ye.~ IF ~~ EXIT
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
	SAY ~The men seem like they've haven a good time of it. Just my luck too. Just as I kick me drinkin habit the prices drop.~ IF ~~ EXIT
END


IF ~~ THEN
BEGIN k9militiathings3
	SAY ~Did ye now? Well much appreciated. I've not got much myself but you deserve a reward all the same. Its not much but take it.~ IF ~~ THEN DO
        ~SetGlobal("k9pints", "GLOBAL",3)     GiveGoldForce(2)
        AddexperienceParty(300)  AddJournalEntry(@1074,QUEST_DONE)~  EXIT
END




IF ~~ THEN
BEGIN k9clericmili
	SAY ~Ugh, as if a temple full of the lot of you wasn't enough to deal with. You cleric types really need to learn when to piss off.~ IF ~~ EXIT
END
