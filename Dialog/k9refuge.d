BEGIN k9refuge

IF ~GlobalLT("k9refugeeleave","GLOBAL",1)~ THEN BEGIN 0
SAY ~Who are you? What are you doing here? Were you attacked as well?~
++ ~Attacked? No I can't say I was attacked. Who attacked you?~ GOTO 1
++ ~Who are you?~ GOTO 2
++ ~I don't care who you are. Get out of my way.~ GOTO 3
+~CheckStatLT(Player1,15,CHR)~+ ~Actually I'm part of the group that attacked you. Speaking of which, where's my gold?~ GOTO 4
+~CheckStatGT(Player1,14,CHR)~+ ~Actually I'm part of the group that attacked you. Speaking of which, where's my gold?~ GOTO 8
END

IF ~~ THEN BEGIN 1
SAY ~I don't know who she is! She came with a group of men. Threatened that we either join her lady's crusade or lose our farm. I wasn't about to join a bloody crusade! So she ransacked our home.~ IF ~~ THEN EXTERN k9refug2 1
END

IF ~~ THEN BEGIN 2
SAY ~Baton Gador at your service. Came about this way after losing our farm. What is the Sword Coast coming to that simple folk can't farm in peace?~
++ ~Is there anything I can get for you? Supplies? Provisions?~ GOTO 5
++ ~How did you lose your farm? Who attacked you?~ GOTO 1
++ ~Coast has always been a dangerous place, especially for the poorly protected. You should have thought of that before building a farm.~ GOTO 6
END

IF ~~ THEN BEGIN 3
SAY ~Shouldn't be so quick to dismiss stranger. Whoever this woman is she's gatherin an army. Gods know for what though.~
++ ~And how do you know this?~ GOTO 7
++ ~So then, tell me what you know of this woman.~ GOTO 1
++ ~All I hear are the tales of a madman. This "woman" was probably little more than a delusion. Quit wasting my time.~ GOTO 6
END

IF ~~ THEN BEGIN 4
SAY ~The men that attacked us had a medallion around their necks. Can't say I see it on you. I think we'll be keepin our gold.~
++ ~I'll let you keep your gold if you tell me what I want to know.~ GOTO 9
++ ~Very well.~ DO ~AddJournalEntry(@15047,QUEST) SetGlobal("k9refugeeleave","GLOBAL",1)  ~ EXIT
++ ~Care to bet on that?~ DO ~AddJournalEntry(@15047,QUEST) SetGlobal("k9refugeeenemy","GLOBAL",1) Shout(99) Enemy()~ EXIT
END

IF ~~ THEN BEGIN 5
SAY ~Could use some gold. We're headin south to Baldur's Gate. Seems t'be the only place left for us to go.~
+~PartyGoldGT(49)~+ ~Here friend, this 50 gold should buy you some time at an inn.~ DO ~TakePartyGold(50) ReputationInc(1)~ GOTO 10
++ ~Good luck.~ DO ~AddJournalEntry(@15047,QUEST) SetGlobal("k9refugeeleave","GLOBAL",1)  ~ EXIT
++ ~Care to bet on that?~ DO ~AddJournalEntry(@15047,QUEST) SetGlobal("k9refugeeenemy","GLOBAL",1) Shout(99) Enemy()~ EXIT
END

IF ~~ THEN BEGIN 6
SAY ~No need for talk like that, stranger.~
+~PartyGoldGT(49)~+ ~Here, this 50 gold should buy you some time at an inn.~ DO ~TakePartyGold(50) ReputationInc(1)~ GOTO 10
++ ~Good luck.~ DO ~AddJournalEntry(@15047,QUEST) SetGlobal("k9refugeeleave","GLOBAL",1)  ~ EXIT
++ ~I'll talk as I wish.~ DO ~AddJournalEntry(@15047,QUEST) SetGlobal("k9refugeeleave","GLOBAL",1)  ~ EXIT
END

IF ~~ THEN BEGIN 7
SAY ~Learned it from what she had t'say. Don't matter much now though. We're headin south to Baldur's Gate. Seems t'be the only place left for us to go.~
+~PartyGoldGT(49)~+ ~Here, this 50 gold should buy you some time at an inn.~ DO ~TakePartyGold(50) ReputationInc(1)~ GOTO 10
++ ~Good luck.~ DO ~AddJournalEntry(@15047,QUEST) SetGlobal("k9refugeeleave","GLOBAL",1)  ~ EXIT
++ ~Farewell.~ DO ~AddJournalEntry(@15047,QUEST) SetGlobal("k9refugeeleave","GLOBAL",1)  ~ EXIT
END

IF ~~ THEN BEGIN 8
SAY ~The men that attacked us had a medallion around their necks. Can't say I see it on you. Still, better not t'risk it as they say. Here take it.~ IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 9
SAY ~And what would that be?~
++ ~I lied earlier. I need to know though who these men were working for.~ GOTO 11
++ ~Enough with these games. You'll tell me what I want to know or I'll gut you from the insides. Who were these men working for?~ GOTO 12
END

IF ~~ THEN BEGIN 10
SAY ~Thank ya kindly. Come t'think of it there's some farm houses up the road from 'ere. Might have people who can tell ye what er lookin for. Safe travels friend.~ IF ~~ THEN DO ~AddJournalEntry(@15047,QUEST) SetGlobal("k9refugeeleave","GLOBAL",1)  ~ EXIT
END

IF ~~ THEN BEGIN 11
SAY ~I don't know who she is! Bunch o' thugs came to our home and threatened that we either join her lady's crusade or lose our farm. We refused so she ransacked our home.~ IF ~~ THEN EXTERN k9refug2 1
END

IF ~~ THEN BEGIN 12
SAY ~No need for talk like that, stranger. Besides, I don't know who she is! Bunch o' thugs came to our home and threatened that we either join her lady's crusade or lose our farm. We refused so she ransacked our home.~ IF ~~ THEN EXTERN k9refug2 1
END


IF ~~ THEN BEGIN 13
SAY~Who ye workin for anyways?~
+~GlobalGT("K9Noober","GLOBAL",0) !Dead("Noober")~+ ~I work for the one called Noober.~ DO ~GivePartyGold(20)~ GOTO 16
++ ~I work for Kelddath Ormlyr of Beregost.~ DO ~GivePartyGold(20)~ GOTO 17
++ ~That is none of your business.~ DO ~GivePartyGold(20)~ EXIT
++ ~Mind your business or I'll cut out that tongue of yours.~ DO ~GivePartyGold(20)~ EXIT
END

IF ~~ THEN BEGIN 14
SAY ~We're headin south to Baldur's Gate. Seems t'be the only place left for us to go. Any help you could give would be appreciated.~
+~PartyGoldGT(49)~+ ~Here, this 50 gold should buy you some time at an inn.~ DO ~TakePartyGold(50) ReputationInc(1)~ GOTO 10
++ ~Farewell.~ DO ~AddJournalEntry(@15047,QUEST) SetGlobal("k9refugeeleave","GLOBAL",1)  ~ EXIT
++ ~Get out of my way.~ DO ~AddJournalEntry(@15047,QUEST) SetGlobal("k9refugeeleave","GLOBAL",1)  ~ EXIT
END

IF ~NumTimesTalkedToGT(0) GlobalGT("k9refugeeleave","GLOBAL",0)~ THEN BEGIN 15
SAY ~Sorry friend, no time te talk to ye.~  IF ~~ EXIT
END

IF ~~ THEN BEGIN 16
SAY ~Noober? Another one of them lady supporters ehh? Someone t'keep an eye out for anyways. Gods'll get both of ye one of these days. Hopin' its sooner than later.~ IF ~~ DO ~AddJournalEntry(@15047,QUEST) SetGlobal("k9refugeeleave","GLOBAL",1)  ~ EXIT
END

IF ~~ THEN BEGIN 17
SAY ~Kelddath of Beregost? What they doin getting involved in northern business? Someone t'keep an eye out for anyways. Gods'll get both of ye one of these days. Hopin' its sooner than later.~ IF ~~ DO ~AddJournalEntry(@15047,QUEST) SetGlobal("k9refugeeleave","GLOBAL",1)  ~ EXIT
END
