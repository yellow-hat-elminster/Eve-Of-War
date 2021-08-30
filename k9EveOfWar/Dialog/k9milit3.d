BEGIN k9milit3


IF ~OR(2) NumTimesTalkedTo(0) NumTimesTalkedToGT(0)~ THEN
BEGIN k9militalk
      SAY ~How may I be of service?~
		++ ~How have your patrols gone? Seen many bandits?~
 			GOTO k9attack
		+~Global("k9pints", "GLOBAL", 0)~+ ~How are you finding the watch?~
			GOTO k9militiathings
		+~GlobalGT("k9pints", "GLOBAL", 1)~+ ~How are you finding the watch?~
			GOTO k9militiathings2
		+~Global("k9pints", "GLOBAL", 2)~+ ~I managed to solve the taverns alcohol problems. You should find prices lower now.~
			GOTO k9militiathings3
		+~Global("k9supply", "GLOBAL", 0) GlobalLT("chapter", "GLOBAL", 3)~+ ~How is the watch's equipment? You seem to be the only one with a sword around here.~
			GOTO k9militiasupply
		+~Global("k9supply", "GLOBAL", 0) GlobalGT("chapter", "GLOBAL", 2)~+ ~How is the watch's equipment? You seem to be the only one with a sword around here.~
			GOTO k9militiasupply2
		+ ~Global("k9supply", "GLOBAL", 1) OR(6) Alignment(Player1,NEUTRAL_GOOD) Alignment(Player1,CHAOTIC_GOOD) Alignment(Player1,LAWFUL_NEUTRAL) Alignment(Player1,LAWFUL_GOOD) Alignment(Player1,CHAOTIC_NEUTRAL) Alignment(Player1,NEUTRAL)~ + ~You seem poorly equipped. Is there anything I can buy for you?~
			GOTO k9fightermili
		+ ~Global("k9supply", "GLOBAL", 1) OR(3) Alignment(Player1,NEUTRAL_EVIL) Alignment(Player1,CHAOTIC_EVIL) Alignment(Player1,LAWFUL_EVIL)~ + ~With what you are wearing those bandits will make short work of you. Not that I'd mind, but if you've got coin handy I'm always listening.~
			GOTO k9evilmili
                + ~Global("k9supply", "GLOBAL", 3)~ + ~How are you finding the new equipment?~
			GOTO k9equipment
                + ~Global("k9supply", "GLOBAL", 4)~ + ~How are you finding the new equipment?~
			GOTO k9equipment2
		++ ~My apologies, I didn't mean to disturb you.~ EXIT
END



IF ~~ THEN
BEGIN k9attack
	SAY ~Aye. Even caught one spyin on the town. He's why we're here guarding the smithy. Case they try somethin.~ IF ~~ EXIT
END

IF ~~ THEN
BEGIN k9militiasupply
	SAY ~Things are not good, friend. If this iron shortage goes on much longer, I'll be reduced to wearing leather and swinging a club! This guard is crippled!
        
What we really need is some good iron. I hear there's a woman in town that can get you that sort of thing. But only for a pretty penny. Goes by the name Janlynn I hear.

Listen friend, I can't leave my post. But do you think you could talk to her? Arrange for some equipment for the watch? Darren's not about to approve of working with the sneaky sort mind you, so best he not be told. Still, if you could go talk to her and work something out. The folks around here would be grateful.

Ye can find her in the northwest of town. She'll be out in the garden late at night I reckon.~ IF ~~ DO ~ SetGlobal("k9supply", "GLOBAL", 2) AddJournalEntry(@108,QUEST)~ EXIT
END

IF ~~ THEN
BEGIN k9militiasupply2
	SAY ~Things are not good, friend. Nashkel's problems seem to been dealt with well enough, but the usable iron around here still is contaminated. If things continue as they are I fear this guard will become crippled!
        
What we really need is some good iron. I hear there's a woman in town that can get you that sort of thing. But only for a pretty penny. Goes by the name Janlynn I hear.

Listen friend, I can't leave my post. But do you think you could talk to her? Arrange for some equipment for the watch? Darren's not about to approve of working with the sneaky sort mind you, so best he not be told. Still, if you could go talk to her and work something out. The folks around here would be grateful.

Ye can find her in the northwest of town. She'll be out in the garden late at night I reckon.~ IF ~~ DO ~ SetGlobal("k9supply", "GLOBAL", 2)  AddJournalEntry(@108,QUEST)~ EXIT
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


IF ~~ THEN
BEGIN k9fightermili
	SAY ~Not from Taerom no. His equipment is unreliable, especially his weapons. Damn tainted ore is everywhere.~ 
        + ~Alignment(Player1,LAWFUL_GOOD)~ + ~Where would I go to find you better equipment? Surely all other merchants face the same issue.~ GOTO k9lawfultaint
        + ~!Alignment(Player1,LAWFUL_GOOD)~ + ~Where would I go to find you better equipment? Surely all other merchants face the same issue.~ GOTO k9taint
END


IF ~~ THEN
BEGIN k9evilmili
	SAY ~Aye we could use better armor and weapons. Taerom's useless there, but I hear Janlynn's got decent stock.~
        + ~~ + ~Allow me to buy you some armor then. Its the least I can do. After a small deposit of 100 gold of course.~ GOTO k9taint2
         + ~~ + ~On second thought, nevermind.~ EXIT
END

IF ~~ THEN
BEGIN k9lawfultaint
        SAY ~Ohh there are those that can get what we need, they just ain't the most reputable of folk. Not really the type you see a lot I reckon.~ 
        + ~~ + ~If it means lives saved then so be it. Tell me a source for these goods?~ GOTO k9taint
        + ~~ + ~Thieves and scoundrels no doubt. Very well, I shall have to find my another source for this equipment.~  EXIT

END



IF ~~ THEN
BEGIN k9taint
        SAY ~Janlynn  a bit north-west of here has plenty on stock already. Not sure how she does it, and she only shows up at night to deliver, but she'll be out in the garden if you want to find her. ~ IF ~~THEN DO ~ SetGlobal("k9supply", "GLOBAL", 2) AddJournalEntry(@108,QUEST)~ EXIT
END

IF ~~ THEN
BEGIN k9taint2
        SAY ~I ain't got no gold I'm afraid. Just this ring. Took it off a bandit but wearin it doesn't do nothin. Taerom says its magical, so maybe you can make use of it.~ IF ~~THEN DO ~ SetGlobal("k9supply", "GLOBAL", 2)  AddJournalEntry(@108,QUEST) GiveItem("k9invirn", Player1)~ EXIT
END


IF ~~ THEN
BEGIN k9equipment
        SAY ~Its much better. Don't have nothin t'give ya, but thank ye kindly stranger.~ IF ~~ EXIT
END

IF ~~ THEN
BEGIN k9equipment2
        SAY ~Don't know what ye were up to here, but this ain't no better than what we had before. Might even be worse.~ IF ~~ EXIT
END
