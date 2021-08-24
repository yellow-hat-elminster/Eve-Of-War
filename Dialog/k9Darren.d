BEGIN k9Darren


//Conversation level 1
IF ~GlobalLT("k9darrentalk", "GLOBAL", 1)~ THEN
BEGIN Darrentalk
      SAY ~Ahh, visitors. I'm Commander Darren, leader of the town's watch. What can I help you with?~
+~Global("k9darrensheaf","GLOBAL",1)~+ ~The owner of the Red Sheaf Inn claims that unlike the other inns in town there is no one standing guard over his establishment. Any idea why that would be?~ GOTO 6
		++ ~I'd have thought Kelddath Ormlyr would be responsible for the town watch.~ GOTO k9responsible
                +~GlobalLT("Chapter","GLOBAL",2)~+ ~I was actually wondering if you had any work available.~
 			GOTO k9later
                +~GlobalGT("Chapter","GLOBAL",1)~+ ~I was actually wondering if you had any work available.~
 			GOTO k9darren
		++ ~Is that what this place is? My mistake then. I'll be leaving.~ EXIT
END


//Conversation level 2
IF ~~ THEN BEGIN k9responsible
SAY ~Kelddath has chosen to concern himself with other town matters. I've been tasked by him to get the town watch up and running.~
                ++ ~Did the town not have any watch or militia before now?~ GOTO k9beforemilitia
                +~GlobalLT("Chapter","GLOBAL",2)~+ ~I was actually wondering if you had any work available.~
 			GOTO k9later
                +~GlobalGT("Chapter","GLOBAL",1)~+ ~I was actually wondering if you had any work available.~
 			GOTO k9darren
		++ ~Ohh, nevermind then. I'll be leaving.~ EXIT
END

IF ~~ THEN BEGIN k9beforemilitia
SAY ~Typically, the temple's priesthood serve as security in town. When more men and women are required, we draw upon recruits from the various farms and households surrounding Beregost. At Kelddath's discretion of course.~
                +~GlobalLT("Chapter","GLOBAL",2)~+ ~I was actually wondering if you had any work available.~
 			GOTO k9later
                +~GlobalGT("Chapter","GLOBAL",1)~+ ~I was actually wondering if you had any work available.~
 			GOTO k9darren
		++ ~Ohh, nevermind then. I'll be leaving.~ EXIT
END


IF ~~ THEN
BEGIN k9later
	SAY ~Hmm...there is still much work to do to set up the watch here. But for the moment there isn't anything I need of you. That may yet change.~ IF ~~ THEN DO ~AddJournalEntry(@1115,INFO)~ EXIT
END

IF ~~ THEN
BEGIN k9darren
	SAY ~Hmm...I may have something for you.~ IF ~~ THEN GOTO k9veteran
END

IF ~~ THEN BEGIN k9veteran
SAY ~This bandit problem has put considerable strain on the watch's resources. With the southern gate of Baldur's Gate closed I'm forced to work with whatever men and women I have on hand.~
                ++ ~And why is that a problem?~ GOTO k9farmers
		++ ~What exactly is it that you need of me?~
			GOTO k9veteran2
		++ ~You've confused me with someone who cares.~
			EXIT
END


IF ~~ THEN
BEGIN k9farmers
SAY ~These recruits were little more than farmers a few short weeks ago. Capable men for plowing fields and tending livestock, certainly, but very few have proven to be reliable enough for battle.~
		++ ~What exactly is it that you need of me?~
			GOTO k9veteran2
		++ ~You've confused me with someone who cares.~
			EXIT
END


IF ~~ THEN
BEGIN k9veteran2
SAY ~What I could really use at the moment is a lieutenant, someone with years of experience to help lead these common folk into battle. I've heard that a veteran of the Dragonspear war has been spotted making his way amongst the taverns here.~  IF ~~ THEN GOTO k9veteran3
END


IF ~~ THEN
BEGIN k9veteran3
SAY ~Normally I'd have little time for someone stooped in their drink, but these troubled times don't allow for such pickiness. If you could arrange for him to come by the watch's headquarters I'd appreciate it.~  IF ~~ THEN GOTO k9darren2
END




//Conversation level 3
IF ~~ THEN
BEGIN k9darren2
	SAY ~I've heard he spends his days and nights in either the Feldepost Inn, the Burning Wizard, or the Red Sheaf. If you can't find him in one of these places then he likely will be found in one of the other two. 
        
Unfortunately, I haven't the time to find himself. If you can find the time, please track him down and send him my way.~ IF ~~ THEN DO ~AddJournalEntry(@105,QUEST) SetGlobal("k9darrentalk", "GLOBAL", 1)~ EXIT
END



IF ~Global("ModestHelped","GLOBAL",0)  Global("k9darrentalk", "GLOBAL", 1) NumTimesTalkedToGT(0)~ THEN
BEGIN k9modesthelped
	SAY ~I think I made my instructions here quite clear. Go find the man I asked you to find. He should be in one of the taverns here in town.~ IF ~~ THEN EXIT
END

IF ~Global("ModestHelped","GLOBAL",1) NumTimesTalkedToGT(0)~ THEN
BEGIN k9modesthelped
	SAY ~Ahh good to see you again. As I'm sure you are already aware, I spoke with Cyrag Hammerbone. 

The man's in worse shape than I expected. He reeks of the drink. Still, he's got more experience than most of his lot. I'll take the blessings I can get.~ IF ~~ THEN GOTO k9talktokelddath
END

IF ~~ THEN BEGIN k9talktokelddath
SAY ~I'm not sure what was said between you but he appeared far more willing to join the watch than I was led to believe. In any case, he seems to have agreed to become a member of the watch.

Here, take this gold for your troubles. It's not much, but it should get you more than a few cozy nights at an inn.~
		++ ~Thanks! I guess I'll be off then.~ DO ~AddJournalEntry(@1114,QUEST_DONE)  SetGlobal("k9darrentalk", "GLOBAL", 3) GiveGoldForce(20) AddexperienceParty(200)~ EXIT
                ++ ~Just keep the liquor away from him.~ DO ~AddJournalEntry(@1114,QUEST_DONE) SetGlobal("k9darrentalk", "GLOBAL", 3) GiveGoldForce(20) AddexperienceParty(200)~ EXIT
                ++ ~20 gold? For all the work we did? What an unbelievably lousy amount of pay. ~ DO ~AddJournalEntry(@1114,QUEST_DONE) SetGlobal("k9darrentalk", "GLOBAL", 3) GiveGoldForce(20) AddexperienceParty(200)~ GOTO k9ungrateful
                END



IF ~~ THEN    BEGIN k9ungrateful
	SAY ~Hmm... well you aren't getting any more of it. So you can rightly sod off if that is your attitude.~ IF ~~ THEN EXIT
END



IF ~Global("ModestHelped","GLOBAL",2)  Global("k9darrentalk", "GLOBAL", 3) NumTimesTalkedToGT(0)~ THEN
BEGIN k9modesthelped3
	SAY ~Ahh <CHARNAME> good to see you. Thank you for your assistance with Cyrag Hammerbone.~ IF ~~ THEN EXIT
END


IF ~Global("ModestHelped","GLOBAL",2)  Global("k9keldtalk", "GLOBAL", 2) NumTimesTalkedToGT(0)~ THEN
BEGIN k9modesthelped3
	SAY ~Ahh <CHARNAME> good to see you. I heard that Cyrag Hammerbone has been announced as the newest member of the town council. I'd have proposed joining it myself instead, but organizing patrols has kept me far too busy for such matters.~ IF ~~ EXIT
END


IF WEIGHT #-99  ~!NumTimesTalkedTo(0) Global("k9darrensheaf","GLOBAL",1)~ THEN BEGIN 5
SAY ~Err, yes. What is it?~
++ ~The owner of the Red Sheaf Inn claims that unlike the other inns in town there is no one standing guard over his establishment. Any idea why that would be?~ GOTO 6
END

IF ~~ THEN BEGIN 6
SAY ~The Red Sheaf? I assigned guards to it already. I'm not sure why they wouldn't be at their post. Hmmm... unfortunately, I'm much too busy to hunt them down. If you wouldn't mind I would appreciate if you could locate them.~
++ ~Understood. I'll get right on that.~ DO ~SetGlobal("k9darrensheaf","GLOBAL",2) AddJournalEntry(@129,QUEST)~EXIT
END
