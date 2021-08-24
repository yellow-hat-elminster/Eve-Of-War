BEGIN k9milif4


IF ~OR(2) NumTimesTalkedTo(0) NumTimesTalkedToGT(0)~ THEN
BEGIN k9militalk
      SAY ~What do you want?~
		+~Global("k9buildingdec", "GLOBAL", 0)~+ ~I was looking for the watch headquarters. Is this it?~
 			GOTO k9headquarters
		+~GlobalGT("Chapter","GLOBAL",1) Global("k9pints", "GLOBAL", 0)~+ ~How are you finding the watch?~
			GOTO k9militiathings
		+~GlobalGT("k9pints", "GLOBAL", 1)~+ ~How are you finding the watch?~
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
BEGIN k9headquarters
	SAY ~Yes. You'll find Commander Darren inside.~ 
         ++ ~This building looks rather decrement.~ GOTO k9building
         ++ ~What a sorry excuse for a building.~ GOTO k9building
END

IF ~~ THEN
BEGIN k9building
	SAY ~The town council ordered it seized after the owners fled. Smugglers and other detestable sorts took up residence here shortly after that. Once we cleared them out it seemed like as good a spot as any for our headquarters.~
        ++ ~Smugglers in Beregost? What could they be here for?~ GOTO k9building2
         ++ ~The situation here seems to be only getting worse.~ GOTO k9building2
         ++ ~Did the town not have any watch headquarters before then?~ GOTO k9building3
END


IF ~~ THEN BEGIN k9building2
SAY ~Fear of war will make anyone desperate. Especially with workable iron being so scarce. Will be some time before we see any good iron up here I reckon.~ IF ~~ THEN DO ~SetGlobal("k9buildingdec", "GLOBAL", 1)~ EXIT
END

IF ~~ THEN BEGIN k9building3
SAY ~In any normal year the members of the temple under his command would act as the town watch. With troubled times like these, Kelddath felt the watch needed a more active presence in town.~ IF ~~ THEN  EXIT
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
BEGIN k9clericmili
	SAY ~Thank you for asking but I'm fine.~ IF ~~ EXIT
END

