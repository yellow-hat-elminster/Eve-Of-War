BEGIN k9milif3


IF ~OR(2) NumTimesTalkedTo(0) NumTimesTalkedToGT(0)~ THEN
BEGIN k9militalk
      SAY ~How may I be of service?~
		++ ~The smithy seems like the last place you should need to guard. Have their been any thefts or troubles here?~
 			GOTO k9thefts
		+~Global("k9pints", "GLOBAL", 0)~+ ~How are you finding the watch?~
			GOTO k9militiathings
		+~GlobalGT("k9pints", "GLOBAL", 1)~+ ~How are you finding the watch?~
			GOTO k9militiathings2
		+~Global("k9pints", "GLOBAL", 2)~+ ~I managed to solve the taverns alcohol problems. You should find prices lower now.~
			GOTO k9militiathings3
		+ ~Global("k9supply", "GLOBAL", 1) OR(6) Alignment(Player1Fill,NEUTRAL_GOOD) Alignment(Player1Fill,CHAOTIC_GOOD) Alignment(Player1Fill,LAWFUL_NEUTRAL) Alignment(Player1Fill,LAWFUL_GOOD) Alignment(Player1Fill,CHAOTIC_NEUTRAL) Alignment(Player1Fill,NEUTRAL)~ + ~You seem poorly equipped. Is there anything I can buy for you?~
			GOTO k9fightermili
		+ ~Global("k9supply", "GLOBAL", 1) OR(3) Alignment(Player1Fill,NEUTRAL_EVIL) Alignment(Player1Fill,CHAOTIC_EVIL) Alignment(Player1Fill,LAWFUL_EVIL)~ + ~With what you are wearing those bandits will make short work of you. Not that I'd mind, but if you've got coin handy I'm always listening.~
			GOTO k9evilmili
                + ~Global("k9supply", "GLOBAL", 2)~ + ~How are you finding the new equipment?~
			GOTO k9equipment
                + ~Global("k9supply", "GLOBAL", 3)~ + ~How are you finding the new equipment?~
			GOTO k9equipment2
		++ ~My apologies, I didn't mean to disturb you.~ EXIT
END



IF ~~ THEN
BEGIN k9thefts
	SAY ~Word is a valuable sword found inside went missing, but that was quite some time ago. Could just be Taerom sold it off and forgot about it.~ IF ~~ EXIT
END


IF ~~ THEN
BEGIN k9militiathings
	SAY ~Could be better. What we really need is for some of these taverns to lay off a bit on the prices. A days salary for a pint just is asking too much.~ 
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

IF ~~ THEN
BEGIN k9fightermili
	SAY ~Not from Taerom no. His equipment is unreliable, especially his weapons. Damn tainted ore is everywhere.~ 
        + ~Alignment(Player1Fill,LAWFUL_GOOD)~ + ~Where would I go to find you better equipment? Surely all other merchants face the same issue.~ GOTO k9lawfultaint
        + ~!Alignment(Player1Fill,LAWFUL_GOOD)~ + ~Where would I go to find you better equipment? Surely all other merchants face the same issue.~ GOTO k9taint
END


IF ~~ THEN
BEGIN k9evilmili
	SAY ~Aye we could use better armor and weapons. Taerom's useless there, but I hear Janlynn's got decent stock.~
        + ~~ + ~Allow me to buy you some armor then. Its the least I can do. After a small deposit of 100 gold of course.~ GOTO k9taint2
         + ~~ + ~Ehh...I've changed my mind.~ EXIT
END

IF ~~ THEN
BEGIN k9lawfultaint
        SAY ~Ohh there are those that can get what we need, they just ain't the most reputable of folk. Not really the type you see a lot I reckon.~ 
        + ~~ + ~If it means lives saved then so be it. Tell me a source for these goods?~ GOTO k9taint
        + ~~ + ~Thieves and scoundrels no doubt. Very well, I shall have to find my another source for this equipment.~  EXIT

END



IF ~~ THEN
BEGIN k9taint
        SAY ~Janlynn's a bit north-west of here has plenty on stock already. Not sure how she does it, and she only shows up at night to deliver, but she'll be out in the garden if you want to find her. ~ IF ~~THEN DO ~ SetGlobal("k9supply", "GLOBAL", 2) AddJournalEntry(@108,QUEST)~ EXIT
END

IF ~~ THEN
BEGIN k9taint2
        SAY ~I ain't got no gold I'm afraid. Just this medallion. Passed down to me from my grams, a mage I think. Should sell fer some gold.~ IF ~~THEN DO ~ SetGlobal("k9supply", "GLOBAL", 2)  AddJournalEntry(@108,QUEST) GiveItem("k9medall", Player1Fill)~ EXIT
END

IF ~~ THEN
BEGIN k9equipment
        SAY ~Its much better. Don't have nothin t'give ya, but thank ye kindly stranger.~ IF ~~ EXIT
END

IF ~~ THEN
BEGIN k9equipment2
        SAY ~Don't know what ye were up to here, but this ain't no better than what we had before. Might even be worse.~ IF ~~ EXIT
END
