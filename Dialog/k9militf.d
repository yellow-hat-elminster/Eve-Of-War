BEGIN k9militf


IF ~ OR(2) NumTimesTalkedTo(0) NumTimesTalkedToGT(0)~ THEN
BEGIN k9militftalk
      SAY ~Hey ya stranger. You passin by or do need some help?~
		++ ~What's with all these watch everywhere?~
 			GOTO k9everywheremilitia
		+~Global("k9pints", "GLOBAL", 0)~+ ~So how are things in the watch?~
			GOTO k9militiathings
		+~GlobalGT("k9pints", "GLOBAL", 1)~+ ~So how are things in the watch?~
			GOTO k9militiathings2
		+~Global("k9pints", "GLOBAL", 2)~+ ~I managed to solve the taverns alcohol problems. You should find prices lower now.~
			GOTO k9militiathings3
		+ ~Class(Player1Fill,Cleric)
                OR(2) 
                Alignment(Player1Fill,MASK_GOOD)
                Alignment(Player1Fill,MASK_GENEUTRAL)~ + ~Are you in need of water or food? A place to rest? It seems like you've been out here for ages.~
			GOTO k9clericmili
		++ ~My apologies, I didn't mean to disturb you.~ EXIT
END



IF ~~ THEN
BEGIN k9everywheremilitia
	SAY ~Concern over the bandit situation mostly. Bunch of caravans got attacked awhile back while heading south from Baldur's Gate. If ye ask me caravans that have no escort in these parts are asking for trouble.~ IF ~~ EXIT
END

IF ~~ THEN
BEGIN k9militiathings
	SAY ~Could be better. What we really need is for some of these taverns to lay off a bit on the prices. A days salary for a pint just is asking too much.~ 
        ++ ~I'll see what I can do about that for you.~ DO ~ AddJournalEntry(@107,QUEST) AddJournalEntry(@1071,QUEST) AddJournalEntry(@1072,QUEST) AddJournalEntry(@1073,QUEST) SetGlobal("k9pints", "GLOBAL", 1) SetGlobal("k9militiapint", "GLOBAL", 1)~ EXIT
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
	SAY ~I am fine, though some extra water would be appreciated.~ IF ~~ EXIT
END


