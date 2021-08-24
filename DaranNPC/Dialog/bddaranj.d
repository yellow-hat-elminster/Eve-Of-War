BEGIN k9daranj


IF ~Global("k9DaranJoins", "GLOBAL", 1) Global("k9DaranJoins2", "GLOBAL", 0) AreaCheck("BD1000")~ THEN BEGIN 0

SAY ~So... where we headed?~
++ ~I travel to Dragonspear Castle. Caelar has done far too much damage already. Too many lives have been ruined because of her folly. She must be stopped.~ DO ~SetGlobal("k9DaranJoins2", "GLOBAL", 1)~ GOTO 1
++ ~I'm travelling with the Flaming Fist to Dragonspear Castle. There I plan to defeat Caelar and bring an end to her crusade.~
DO ~SetGlobal("k9DaranJoins2", "GLOBAL", 1)~ GOTO 1
++ ~What do you care? Aren't you just in it for the fame and fortune?~    DO ~SetGlobal("k9DaranJoins2", "GLOBAL", 1)~ GOTO 2
END

IF ~~ THEN BEGIN 1

SAY ~Dragonspear ehh? Ye I know the place. Had some problems with devils and such a few years back. Not really my line o' work, but if y'need it me blade is sharp and ready.~
++ ~Much appreciated.~ EXIT
++ ~You'll need it.~  EXIT
END

IF ~~ THEN BEGIN 2

SAY ~May have given the wrong impression back there. I'm willin' t'help ye out here. But grand adventurin' isn't my line o' work. I prefer t'keep my work to things a bit smaller than stoppin' a crusade.~
++ ~Fair enough. We're headed to Dragonspear Castle. At least we are as soon as we can cross the Winding Water.~ GOTO 1
++ ~Well even still I'm sure your expertise will be of help.~  EXIT
END


IF ~Global("k9_Daran_mkhiin_join2","global",0) InParty("MKHIIN") AreaCheck("BD1000")~ THEN
BEGIN 3
	SAY ~So we're taken the goblin with us? If she be one of them shifty types - neither good nor evil- we best be watchin' ourselves.~
	  ++~M'Khiin's got a right to be here as much as anyone.~
			DO ~SetGlobal("k9_Daran_mkhiin_join2","global",1) ~ GOTO 4
    	  ++ ~I'll keep that in mind~ DO ~SetGlobal("k9_Daran_mkhiin_join2","global",1)~ EXIT
END

IF ~~ THEN
BEGIN 4
	SAY ~Aye. Just a word o' warnin. No insult meant.~ IF ~~ EXIT
END


IF ~Global("k9_Daran_Baeloth_join2","global",0) InParty("Baeloth") AreaCheck("BD1000") Global("k9drowjoined","global",0)~ THEN
BEGIN 5
	SAY ~Can't say I thought ye'd be havin' a drow in the group. Never trusted em myself.~
          ++~I've actually worked with Baeloth before. He's clearly crazy and his ego could fill a room, but I don't keep him around for his sanity.~  GOTO 6
	  ++~I've actually previously travelled with Baeloth. Can't say I trust him though.~  GOTO 6
	  ++~Your caution is appreciated but Baeloth has a right to be here as much as anyone.~ GOTO 6
    	  ++ ~I'll keep that in mind~ DO ~SetGlobal("k9_Daran_Baeloth_join2","global",1) SetGlobal("k9drowjoined","global",1)~ EXIT
END


IF ~~ THEN
BEGIN 6
	SAY ~Feh, just keep a few eyes on him.~ IF ~~ THEN DO ~SetGlobal("k9_Daran_Baeloth_join2","global",1) SetGlobal("k9drowjoined","global",1)~ EXIT
END


IF ~Global("k9_Daran_Viconia_join2","global",0) InParty("Viconia") AreaCheck("BD1000") Global("k9drowjoined","global",0)~ THEN
BEGIN 7
	SAY ~Feh, a Shar worshipper and a drow at that. Not one t'be trustin.~
	  ++~I've known Viconia a long time and have grown to trust her.~  DO ~SetGlobal("k9_Daran_Viconia_join2","global",1) SetGlobal("k9drowjoined","global",1) ~ GOTO 8
	++~Viconia seems like she could be a useful addition to the party.~ DO ~SetGlobal("k9_Daran_Viconia_join2","global",1) SetGlobal("k9drowjoined","global",1) ~ GOTO 8
    	  ++ ~I'll keep that in mind~ DO ~SetGlobal("k9_Daran_Viconia_join2","global",1) SetGlobal("k9drowjoined","global",1)~ EXIT
END


IF ~~ THEN
BEGIN 8
	SAY ~Yer crazy if ye trust a drow. Just be keepin' a few eyes on her.~ IF ~~ EXIT
END



IF ~AreaCheck("BD2000") Global("k9_Daran_BD2000_2","GLOBAL",0)~ THEN
BEGIN 9
	SAY ~Thought ye should know. I've been seein' an awful lot o' signs of men marchin' through these woods. Crusade probably hold the bridge.~
	  ++~That confirms Bence's suspicions. We should be on our guard.~ DO ~SetGlobal("k9_Daran_BD2000_2","global",1)~ EXIT
    	  ++ ~I'll keep that in mind~ DO ~SetGlobal("k9_Daran_BD2000_2","global",1)~ EXIT
END

IF ~~ THEN
BEGIN 10
	SAY ~Any gold I be hold'in be fer me home n'kin. You be welcome to anything left after they be through with it.~ IF ~~ EXIT
END

IF ~~ THEN
BEGIN 11
	SAY ~Feh, I reckon me kin rarely speak o'dwarven ways. Verminatin least o'all. There be nothin good said of dwarves who can nae hold their keep. Least of all one close t'fallin to creepy-crawlies and such. Vermin-slayin be'in what it is, few o'me kind will admit to needin it.~ IF ~~ EXTERN ~bdjaheij~ 108
END

IF ~AreaCheck("BD4300") Global("k9_Daran_BD4300_1","GLOBAL",0) GlobalGT("bd_plot","global",494)~ THEN
BEGIN 12
	SAY ~Never thought I'd be go'in to the nine hells t'look fer anyone. If it weren't fer ye though I'd still be pickin up pieces of Deepvein and the rest o' em. Funny that. Axes high friend, were gonna need em.~ IF ~~ THEN DO ~SetGlobal("k9_Daran_BD4300_1","global",1)~ EXIT
END

