BEGIN k9chaunt

IF ~True()~ THEN BEGIN 0

SAY ~Welcome to the Hall of the Evening Flower. How may I assist you?~
+~Global("k9serpentchilddead","GLOBAL",1)~+ ~I was forced to kill Hendern. Apparently he had a son. The boy has nowhere else to turn. Would the temple be willing to take him in?~ GOTO 13
+~Global("k9snakefreedom","GLOBAL",3)~+ ~Many of the townsfolk have been cursed by the Yuan-Ti. The ranger Gord may know more, but he described it to me as the "curse of the tainted ones." ~ GOTO 17
++ ~Who are you?~ GOTO 1
++ ~What deity is worshipped here?~ GOTO 2
++ ~What is this place?~ GOTO 2
+~GlobalLT("k9serpentchilddead","GLOBAL",2)~+ ~What do you know about Hendern?~ GOTO 15
+~GlobalGT("k9serpentchilddead","GLOBAL",1)~+ ~What do you know about Hendern?~ GOTO 10
++ ~Do you know anything about Shaja?~ GOTO 8
++ ~Can I see your wares?~ DO ~StartStore("k9chaunt",LastTalkedToBy(Myself))~ EXIT
++ ~I'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 1
SAY ~I am Telar. As the head of the priesthood in this temple I provide spiritual guidance here in Serpent's Cowl. If you are in need of supplies or healing I can assist.~
+~Global("k9serpentchilddead","GLOBAL",1)~+ ~I was forced to kill Hendern. Apparently he had a son. The boy has nowhere else to turn. Would the temple be willing to take him in?~ GOTO 13
+~Global("k9snakefreedom","GLOBAL",3)~+ ~Many of the townsfolk have been cursed by the Yuan-Ti. The ranger Gord may know more, but he described it to me as the "curse of the tainted ones." ~ GOTO 17
++ ~What deity is worshipped here?~ GOTO 2
++ ~What is this place?~ GOTO 2
+~GlobalLT("k9serpentchilddead","GLOBAL",2)~+ ~What do you know about Hendern?~ GOTO 15
+~GlobalGT("k9serpentchilddead","GLOBAL",1)~+ ~What do you know about Hendern?~ GOTO 10
++ ~Do you know anything about Shaja?~ GOTO 8
++ ~I'll be going now.~ EXIT
++ ~Can I see your wares?~ DO ~StartStore("k9chaunt",LastTalkedToBy(Myself))~ EXIT
END


IF ~~ THEN BEGIN 2
SAY ~Here we worship Chauntea - the Grain Goddess. Do you know much of her?~
+~CheckStatGT(Player1,13,WIS) CheckStatGT(Player1,13,CHR)~+ ~She is the goddess of agriculture. As I understand she is well respected by many living in the rural parts of Faerûn.~  GOTO 3
+~CheckStatGT(Player1,13,WIS) CheckStatLT(Player1,14,CHR)~+ ~She is the goddess of agriculture. Many rural areas revere her - with good reason. Were it not for her blessing this village probably would have died off years ago.~  GOTO 4
++ ~Not really, no.~ GOTO 5
END

 IF ~~ THEN BEGIN 3
SAY ~Indeed, Chauntea blesses us all. Even in times as dire as these.~
++ ~Can I see your wares?~ DO ~StartStore("k9chaunt",LastTalkedToBy(Myself))~ EXIT
++ ~I'll be going now.~ EXIT
END

 IF ~~ THEN BEGIN 4
SAY ~I think you'll find as a people we are heartier than you seem to believe.~
++ ~Can I see your wares?~ DO ~StartStore("k9chaunt",LastTalkedToBy(Myself))~ EXIT
++ ~I'll be going now.~ EXIT
END

 IF ~~ THEN BEGIN 5
SAY ~Chauntea is the goddess of agriculture, cultivation, farmers, gardeners, and summer. She blesses our crops which in turn provides the means for our livelihood.~
++ ~Looks like she's not doing a very good job at the moment.~ GOTO 7
++ ~If that is the case then what is with this sudden winter?~ GOTO 7
++ ~Can I see your wares?~ DO ~StartStore("k9chaunt",LastTalkedToBy(Myself))~ EXIT
++ ~I'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 7
SAY ~I'll admit I'm purplexed by this sudden change in weather. I'm confident however that with your help we can get to the bottom of this matter.~
+~Global("k9serpentchilddead","GLOBAL",1)~+ ~I was forced to kill Hendern. Apparently he had a son. The boy has nowhere else to turn. Would the temple be willing to take him in?~ GOTO 13
+~Global("k9snakefreedom","GLOBAL",3)~+ ~Many of the townsfolk have been cursed by the Yuan-Ti. The ranger Gord may know more, but he described it to me as the "curse of the tainted ones." ~ GOTO 17
++ ~What is this place?~ GOTO 2
++ ~Can I see your wares?~ DO ~StartStore("k9chaunt",LastTalkedToBy(Myself))~ EXIT
+~GlobalLT("k9serpentchilddead","GLOBAL",2)~+ ~What do you know about Hendern?~ GOTO 15
+~GlobalGT("k9serpentchilddead","GLOBAL",1)~+ ~What do you know about Hendern?~ GOTO 10
++ ~Do you know anything about Shaja?~ GOTO 8
++ ~I'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 8
SAY ~She arrived in town not long ago. I can't say I've had much time to get to know her.~
+~Global("k9serpentchilddead","GLOBAL",1)~+ ~I was forced to kill Hendern. Apparently he had a son. The boy has nowhere else to turn. Would the temple be willing to take him in?~ GOTO 13
+~Global("k9snakefreedom","GLOBAL",3)~+ ~Many of the townsfolk have been cursed by the Yuan-Ti. The ranger Gord may know more, but he described it to me as the "curse of the tainted ones." ~ GOTO 17
++ ~Who are you?~ GOTO 1
++ ~What deity is worshipped here?~ GOTO 2
++ ~What is this place?~ GOTO 2
++ ~Can I see your wares?~ DO ~StartStore("k9chaunt",LastTalkedToBy(Myself))~ EXIT
++ ~I'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 9
SAY ~Hello again. How can I help you?~
+~Global("k9serpentchilddead","GLOBAL",1)~+ ~I was forced to kill Hendern. Apparently he had a son. The boy has nowhere else to turn. Would the temple be willing to take him in?~ GOTO 13
+~Global("k9snakefreedom","GLOBAL",3)~+ ~Many of the townsfolk have been cursed by the Yuan-Ti. The ranger Gord may know more, but he described it to me as the "curse of the tainted ones." ~ GOTO 17
++ ~Who are you?~ GOTO 1
++ ~What deity is worshipped here?~ GOTO 2
++ ~What is this place?~ GOTO 2
++ ~Can I see your wares?~ DO ~StartStore("k9chaunt",LastTalkedToBy(Myself))~ EXIT
+~GlobalLT("k9serpentchilddead","GLOBAL",2)~+ ~What do you know about Hendern?~ GOTO 15
+~GlobalGT("k9serpentchilddead","GLOBAL",1)~+ ~What do you know about Hendern?~ GOTO 10
++ ~Do you know anything about Shaja?~ GOTO 8
++ ~I'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 10
SAY ~Hendern's been in town for seven... maybe eight months. Keeps to himself mostly. Can't say I know him well. He hasn't stepped foot in the temple since he arrived.~
+~GlobalLT("k9HendernAtheist","GLOBAL",1)~+ ~Any ideas on why Hendern hasn't visited the temple?~ DO ~IncrementGlobal("k9HendernTalk","GLOBAL",1) IncrementGlobal("k9HendernAtheist","GLOBAL",1) AddJournalEntry(@665560,QUEST) ~ GOTO 11
+~Global("k9serpentchilddead","GLOBAL",1)~+ ~I was forced to kill Hendern. Apparently he had a son. The boy has nowhere else to turn. Would the temple be willing to take him in?~ GOTO 13
+~Global("k9snakefreedom","GLOBAL",3)~+ ~Many of the townsfolk have been cursed by the Yuan-Ti. The ranger Gord may know more, but he described it to me as the "curse of the tainted ones." ~ GOTO 17
++ ~Who are you?~ GOTO 1
++ ~What deity is worshipped here?~ GOTO 2
++ ~What is this place?~ GOTO 2
++ ~Do you know anything about Shaja?~ GOTO 8
++ ~Can I see your wares?~ DO ~StartStore("k9chaunt",LastTalkedToBy(Myself))~ EXIT
++ ~I'll be going now.~ EXIT
END

 IF ~~ THEN BEGIN 11
SAY ~In truth? I fear him to be one of the faithless. In fact I've heard from others that he doesn't seem to take the gods seriously.~
++ ~Who are the faithless?~ GOTO 12
+~Global("k9serpentchilddead","GLOBAL",1)~+ ~I was forced to kill Hendern. Apparently he had a son. The boy has nowhere else to turn. Would the temple be willing to take him in?~ GOTO 13
+~Global("k9snakefreedom","GLOBAL",3)~+ ~Many of the townsfolk have been cursed by the Yuan-Ti. The ranger Gord may know more, but he described it to me as the "curse of the tainted ones." ~ GOTO 17
++ ~Who are you?~ GOTO 1
++ ~What deity is worshipped here?~ GOTO 2
++ ~What is this place?~ GOTO 2
++ ~Do you know anything about Shaja?~ GOTO 8
++ ~Can I see your wares?~ DO ~StartStore("k9chaunt",LastTalkedToBy(Myself))~ EXIT
++ ~I'll be going now.~ EXIT
END

 IF ~~ THEN BEGIN 12
SAY ~The faithless are those who do not have a patron god. This could be because they do not believe in nor worship any of the gods - though these are not the only circumstances for this. Upon death their souls will be sent to languish forever in the Wall of the Faithless. Tis a fate worse than death - and one that you'd be best to avoid.~ IF ~~ EXIT
END

 IF ~~ THEN BEGIN 13
SAY ~You were asked to come to this town to help solve our problem, not kill one of our own.~ IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14
SAY ~In any case I was not aware Hendern even had a child. Very well, you may tell the child to come here. We will do what we can for them.~ IF ~~ THEN DO ~AddJournalEntry(@66076,QUEST) SetGlobal("k9serpentchilddead","GLOBAL",2)~ EXIT
END


IF ~~ THEN BEGIN 15
SAY ~Hendern? The man you slaughtered? Very little I'm afraid. As far as I'm aware he never visited the temple.~
+~GlobalLT("k9HendernAtheist","GLOBAL",1)~+ ~Any ideas on why Hendern hasn't visited the temple?~ DO ~IncrementGlobal("k9HendernTalk","GLOBAL",1) IncrementGlobal("k9HendernAtheist","GLOBAL",1) AddJournalEntry(@665560,QUEST) ~ GOTO 16
+~Global("k9serpentchilddead","GLOBAL",1)~+ ~I was forced to kill Hendern. Apparently he had a son. The boy has nowhere else to turn. Would the temple be willing to take him in?~ GOTO 13
+~Global("k9snakefreedom","GLOBAL",3)~+ ~Many of the townsfolk have been cursed by the Yuan-Ti. The ranger Gord may know more, but he described it to me as the "curse of the tainted ones." ~ GOTO 17
++ ~Who are you?~ GOTO 1
++ ~What deity is worshipped here?~ GOTO 2
++ ~What is this place?~ GOTO 2
++ ~Do you know anything about Shaja?~ GOTO 8
++ ~Can I see your wares?~ DO ~StartStore("k9chaunt",LastTalkedToBy(Myself))~ EXIT
++ ~I'll be going now.~ EXIT
END


 IF ~~ THEN BEGIN 16
SAY ~In truth? I fear him to have been one of the faithless. I've heard from others that he never seemed to take the gods seriously.~
++ ~Who are the faithless?~ GOTO 12
+~Global("k9serpentchilddead","GLOBAL",1)~+ ~I was forced to kill Hendern. Apparently he had a son. The boy has nowhere else to turn. Would the temple be willing to take him in?~ GOTO 13
+~Global("k9snakefreedom","GLOBAL",3)~+ ~Many of the townsfolk have been cursed by the Yuan-Ti. The ranger Gord may know more, but he described it to me as the "curse of the tainted ones." ~ GOTO 17
++ ~Who are you?~ GOTO 1
++ ~What deity is worshipped here?~ GOTO 2
++ ~What is this place?~ GOTO 2
++ ~Do you know anything about Shaja?~ GOTO 8
++ ~Can I see your wares?~ DO ~StartStore("k9chaunt",LastTalkedToBy(Myself))~ EXIT
++ ~I'll be going now.~ EXIT
END


IF ~~ THEN BEGIN 17
SAY ~Hmm... troubling. To think this transpired under our very noses.~ IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18
SAY ~Chauntea grants me some magic that could be of use here. Thank you for all that you have done here. I will begin doing what I can for those in town that are afflicted by this vile curse.~  IF ~~ THEN DO ~SetGlobal("k9snakefreedom","GLOBAL",4) AddJournalEntry(@66087,QUEST)~ EXIT
END
