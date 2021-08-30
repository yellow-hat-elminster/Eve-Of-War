BEGIN k9refug3


IF ~True() Global("k9refug3talk","GLOBAL",0)~ THEN BEGIN 0
SAY ~Excuse me <SIRMAAM>. Ye wouldn't happen to have some food t'spare?~
++ ~I don't have any food, though I do have some coin.~ GOTO 1
++ ~I do. I won't be giving you anything though.~ GOTO 2
END


IF ~~ THEN BEGIN 1
SAY ~Lookin more for food. Can't do much with coin out here.~
++ ~What happened here?~ GOTO 3
++ ~Farewell.~ EXIT
END

IF ~~ THEN BEGIN 2
SAY ~Then I got nothin more to say to ye.~ IF ~~ EXIT
END

IF ~~ THEN BEGIN 3
SAY ~Bunch of thugs come and wrecked my farm. Killed the cattle they didn't think would live anyways, and took the rest. Claimed they would be used to help out some crusade. Heard they've been doin this across the High Moor. Don't know what I'm gonna do now.~
++ ~Is there no tavern or inn nearby? Perhaps you could stay for awhile at one of them. At least until you figure out what you want to do.~ GOTO 4
++ ~Farewell.~ DO ~SetGlobal("k9refug3talk","GLOBAL",1) SetGlobal("k9north","GLOBAL",2) SetGlobal("k9baldurnegotiations","GLOBAL",3) AddJournalEntry(@15045,QUEST) ~ EXIT
END

IF ~~ THEN BEGIN 4
SAY ~Guess thats the only thing left fer us t'do. Thanks stranger.~ 
+~PartyGoldGT(24)~+ ~I've got some coin lying around. You may have more use of it than me.~ DO ~TakePartyGold(25) AddJournalEntry(@15045,QUEST) SetGlobal("k9refug3talk","GLOBAL",1) ReputationInc(1)~ EXIT
++ ~Farewell.~ DO ~AddJournalEntry(@15045,QUEST) SetGlobal("k9refug3talk","GLOBAL",1) SetGlobal("k9north","GLOBAL",2) SetGlobal("k9baldurnegotiations","GLOBAL",3)~ EXIT
END


