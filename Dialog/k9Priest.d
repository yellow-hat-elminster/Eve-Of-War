BEGIN k9Priest


IF ~NumTimesTalkedTo(0)~ THEN
BEGIN k9cyricpriest
      SAY ~Hey...uhh...can I help you with something?~
		++ ~Not really no. I've just always felt the need to talk to anyone I come across.~
 			GOTO k9joking
		+~Global("k9pints", "GLOBAL", 0)~+ ~How are you finding the militia?~
			GOTO k9militiathings
		+~GlobalGT("k9pints", "GLOBAL", 1)~+ ~How are you finding the militia?~
			GOTO k9militiathings2
		+~Global("k9pints", "GLOBAL", 2)~+ ~I secured cheaper drinks for the militia.~
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
	SAY ~You should really get that checked out. It really doesn't seem very normal. You don't see anyone else in town going up to each other and chatting them up, now do you?~ IF ~~ EXIT
END

IF ~~ THEN
BEGIN k9militiathings
	SAY ~Could be better. What we really need is for some of these taverns to lay off a bit on the prices. A days salary for a pint just is asking too much.~ IF ~~THEN DO ~ AddJournalEntry(@107,QUEST) AddJournalEntry(@1071,QUEST) AddJournalEntry(@1072,QUEST) AddJournalEntry(@1073,QUEST) AddJournalEntry(@107,QUEST) SetGlobal("k9pints", "GLOBAL",1) SetGlobal("k9militiapint", "GLOBAL",1)~ EXIT
END

IF ~~ THEN
BEGIN k9militiathings2
	SAY ~Much better now that the taverns prices are a bit lower.~ IF ~~  EXIT
END

IF ~~ THEN
BEGIN k9militiathings3
	SAY ~Did ye now? Well much appreciated. I've not got much myself but you deserve a reward all the same. Its not much but take it.~ IF ~~ THEN DO
        ~SetGlobal("k9pints", "GLOBAL",3)     GivePartyGold(2)
        AddexperienceParty(2000)
        EraseJournalEntry(@107)
        EraseJournalEntry(@1071)
        EraseJournalEntry(@1072)
        EraseJournalEntry(@1073)
        EraseJournalEntry(@110)
        EraseJournalEntry(@111)
        EraseJournalEntry(@112)
        EraseJournalEntry(@113)
        EraseJournalEntry(@114)
        EraseJournalEntry(@115)
        EraseJournalEntry(@116)
        EraseJournalEntry(@117)
        EraseJournalEntry(@118)
        EraseJournalEntry(@119)
        EraseJournalEntry(@120)
        EraseJournalEntry(@121)
        EraseJournalEntry(@122)
        EraseJournalEntry(@123)
        EraseJournalEntry(@124)
        EraseJournalEntry(@125)
        EraseJournalEntry(@126)
        EraseJournalEntry(@127)
        EraseJournalEntry(@128)
        EraseJournalEntry(@129)
        EraseJournalEntry(@130)
        EraseJournalEntry(@131)
        EraseJournalEntry(@132)
        EraseJournalEntry(@133)~

SOLVED_JOURNAL @1074 EXIT
END


IF ~~ THEN
BEGIN k9clericmili
	SAY ~Ohh I'm fine. But thank you for your concern.~ IF ~~ EXIT
END
