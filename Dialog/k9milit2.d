BEGIN k9milit2


IF ~OR(2) NumTimesTalkedTo(0) NumTimesTalkedToGT(0)~ THEN
BEGIN k9militalk
      SAY ~Ohh uhh hey. Burning Wizard is a bit full right now. You might want to check other taverns to see how they are doing.~
		++ ~What is with all the commotion?~
 			GOTO k9commotion
		++ ~How is the lodging in town? Am I better resting here? or is it safe to make my way to Baldur's Gate?~
 			GOTO k9lodging
		+~Global("k9pints", "GLOBAL", 0)~+ ~So how are things in the watch?~
			GOTO k9militiathings
		+~GlobalGT("k9pints", "GLOBAL", 1)~+ ~So how are things in the watch?~
			GOTO k9militiathings2
		+~Global("k9pints", "GLOBAL", 2)~+ ~I managed to solve the taverns alcohol problems. You should find prices lower now.~
			GOTO k9militiathings3
		+ ~OR(2) Class(Player1,Mage) Class(Player1,Sorcerer)
                OR(2)
                Alignment(Player1Fill,MASK_EVIL)
                Alignment(Player1Fill,CHAOTIC_NEUTRAL)~ + ~A bit of fire and lightning should liven things up. Might even clear a table or two.~
			GOTO k9evilmagic
		++ ~My apologies, I didn't mean to disturb you.~ EXIT
END



IF ~~ THEN
BEGIN k9commotion
	SAY ~Lots of watchmen and women blowing off steam no doubt. Another patrol goes out in a day or so. Nobody knows if they'll make it back.~ IF~~ EXIT
END

IF ~~ THEN
BEGIN k9lodging
	SAY ~I advise you to seek lodging here in Beregost, friend. The roads out are treacherous at best, but the bandits make travel suicide.~ IF~~ EXIT
END

IF ~~ THEN
BEGIN k9militiathings
	SAY ~Hmm...well the bandits seem to have avoided the town. So there is that. Still, it could be better.

Went into Feldpost's the other day looking for a pint. The bastard wanted a days salary for the thing. We put our lives on hold to help out for a pitance of what we would get working on the field. The least the taverns in town could do is show some of us folks in the watch some respect.~ 
        ++ ~I'll see what I can do about that for you.~ DO ~ AddJournalEntry(@107,QUEST)  SetGlobal("k9pints", "GLOBAL", 1) SetGlobal("k9militiapint", "GLOBAL", 1)~ EXIT
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

IF ~~ THEN
BEGIN k9evilmagic
	SAY ~Hey, no funny business in there understood? Town doesn't need more renegades. Not in times like these.~ IF ~~ EXIT
END
