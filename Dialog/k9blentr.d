BEGIN k9Blentr

 IF ~AreaCheck("AR3321")~ THEN BEGIN AR3321
 SAY ~Ahh hello again <CHARNAME>. I must say, it is a good thing I arrived here when I did. This town has no defences against any attack. There is not even a wall or tower to be found even within a day of here. With Kelddath's permission I intend to address this at once.~ IF ~~ THEN EXIT
 END

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
SAY ~You there! Where is Kelddath Ormlyr? I was told he would meet me here. I travelled here from Cormyr expecting at least some kind of reception. So far I can't say I'm impressed.~
++ ~What made you travel such a distance?~ GOTO 1
++ ~No need to be so rude. I'm sure Kelddath has his reasons for this delay.~ GOTO 2
++ ~You have the wrong person.~ EXIT
END

IF ~~ THEN BEGIN 1
SAY ~Adventure of course. I imagined setting off to a distant land to build my own tavern. Something far and away from what passes for stability in Cormyr.~
++ ~I had not realized things in Cormyr were so dire.~ GOTO 3
++ ~What drew you to wanting to own a tavern?~ GOTO 7
+~Global("k9BeregostSearch","GLOBAL",1) Global("k9Blentr","GLOBAL",0)~+ ~Actually while I have you here. If you weren't aware Beregost is looking for advisors for the town council. They fear reprisal from Amn should relations deteriorate further and are looking for an experienced hand to help guide them. I know you probably weren't expecting to take on this kind of a role but would you be interested?~ GOTO 4
++ ~Thanks for the advice.~ EXIT
END

IF ~~ THEN BEGIN 2
SAY ~No doubt. Still, I tire of this endless game of waiting. In Cormyr such matters were handled far more straightforwardly.~
+~Global("k9BeregostSearch","GLOBAL",1) Global("k9Blentr","GLOBAL",0)~+ ~Actually while I have you here. If you weren't aware Beregost is looking for advisors in the event of a coming war. They fear reprisal from Amn should relations deteriorate further and are looking for an experienced hand to help guide them. I know you probably weren't expecting to take on this kind of a role but would you be interested?~ GOTO 4
++ ~Hopefully he will find the time for you soon. Best of luck with your efforts.~ EXIT
END

IF ~~ THEN BEGIN 3
SAY ~Quite so I'm afraid. King Obarskyr has had little success in improving the situation. It's been sixteen years since the rise and fall of Gondegal and yet many still question the kings right to rule. Should something happen to the king some say that his grandson will take over rulership of the land. Yet, so far only a handful of the Purple Dragon commanders have agreed to allow it. Many wonder if a monarchy is a fair system of government.

Still, I doubt you came to me now to learn about my people's history. Is there something else I can do for you?~
+~Global("k9BeregostSearch","GLOBAL",1) Global("k9Blentr","GLOBAL",0)~+ ~Actually while I have you here. If you weren't aware Beregost is looking for advisors in the event of a coming war. They fear reprisal from Amn should relations deteriorate further and are looking for an experienced hand to help guide them. I know you probably weren't expecting to take on this kind of a role but would you be interested?~ GOTO 4
++ ~Hopefully Kelddath will find the time for you soon. Best of luck with your efforts.~ EXIT
END


IF ~~ THEN BEGIN 4
SAY ~No I wasn't aware of this need. Hmm... under the circumstances I would be more than happy to assist.~
++ ~Sounds good. Hopefully Kelddath can help you in the process with your other problem. Report to him in the town hall when you are able.~ DO ~AddJournalEntry(@531118,QUEST) SetGlobal("k9defenceteach","GLOBAL",1) IncrementGlobal("k9beregostprepared","GLOBAL",1) SetGlobal("k9Blentr","GLOBAL",1) EscapeArea()~  EXIT
++ ~On second thought I think I'll have to get back to you.~ EXIT
END


IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 5
SAY ~Yes what is it? Ohh you again. Do you bring news as to why Kelddath has yet to speak to me?~
++ ~I'm afraid not. From what you said earlier it seems like Cormyr is in a dire state. Care to elaborate?~ GOTO 6
+~Global("k9BeregostSearch","GLOBAL",1) Global("k9Blentr","GLOBAL",0)~+ ~Actually while I have you here. If you weren't aware Beregost is looking for another member of its town council. They fear reprisal from Amn should relations deteriorate further and are looking for an experienced hand to help guide them. I know you probably weren't expecting to take on this kind of a role but would you be interested?~ GOTO 4
++ ~Hopefully Kelddath will find the time for you soon. Best of luck with your efforts.~ EXIT
END

IF ~~ THEN BEGIN 6
SAY ~Yes I'm afraid the situation is rather poor. Despite his best efforts King Obarskyr has had little success in even improving it. It's been sixteen years since the rise and fall of Gondegal and yet many still question the kings right to rule. Should something happen to the king some say that his grandson will take over rulership of the land. Yet, so far only a handful of the Purple Dragon commanders have agreed to allow it. Many wonder if a monarchy is a fair system of government.

Still, I doubt you came to me now to learn about my people's history. Is there something else I can do for you?~
+~Global("k9BeregostSearch","GLOBAL",1) Global("k9Blentr","GLOBAL",0)~+ ~Actually while I have you here.If you weren't aware Beregost is looking for advisors in the event of a coming war. They fear reprisal from Amn should relations deteriorate further and are looking for an experienced hand to help guide them. I know you probably weren't expecting to take on this kind of a role but would you be interested?~ GOTO 4
++ ~Hopefully Kelddath will find the time for you soon. Best of luck with your efforts.~ EXIT
END


IF ~~ THEN BEGIN 7
SAY ~As of only a few months ago I owned a rather popular tavern in Marsember, one of the more popular in the city in fact. Had it not been for the problems in Cormyr I might yet still.~
++ ~I had not realized things in Cormyr were so dire.~ GOTO 3
+~Global("k9BeregostSearch","GLOBAL",1) Global("k9Blentr","GLOBAL",0)~+ ~Actually while I have you here. If you weren't aware Beregost is looking for advisors in the event of a coming war. They fear reprisal from Amn should relations deteriorate further and are looking for an experienced hand to help guide them. I know you probably weren't expecting to take on this kind of a role but would you be interested?~ GOTO 4
++ ~Hopefully Kelddath will find the time for you soon. Best of luck with your efforts.~ EXIT
END