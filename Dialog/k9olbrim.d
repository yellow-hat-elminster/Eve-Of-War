BEGIN k9olbrim

 IF ~AreaCheck("AR3321")~ THEN BEGIN AR3321
 SAY ~Can't say I was expecting to be a guest of Beregost anytime soon. Gotta say, this town seems ill prepared as is. Bit of a miracle it's survived as long as it has. This town has no effective scouts from what I've seen and I've stalked behind the militia's patrols with barely a notice. I think I'll be speaking to Commander Darren. If Amn does come we should know well beforehand their numbers, location, and capabilities. No sense in getting caught off guard.~ IF ~~ THEN EXIT
 END


IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
SAY ~This is not the kind of place you want to be these days. Saw some hobgoblins attack a caravan and tracked them on their way back here. Looks like the camp to the north likely is the base of operations for this whole banditry business.~
++ ~Any weaknesses you can see in the camp?~ GOTO 1
++ ~We could use someone that can track. Care to join our group?~ GOTO 3
END

IF ~~ THEN BEGIN 1
SAY ~Fighting humans isn't my specialty. I keep to goblins and giants, or any monsters really. I'd recommend against going in hostile. Hobgoblins are typically a well organized bunch, but with the different species about they might be tricked into believing you are one of them.~
+~Global("k9BeregostSearch","GLOBAL",1)  Global("k9olbrim","GLOBAL",0)~+ ~Actually while I have you here. If you weren't aware Beregost is looking for advisors in the event of a coming war. They fear reprisal from Amn should relations deteriorate further and are looking for an experienced hand to help guide them. I know you aren't as experienced with fighting humans but would you be interested?~ GOTO 4
++ ~Thanks for the advice.~ EXIT
END

IF ~~ THEN BEGIN 3
SAY ~Sorry, not really looking to join any group at the moment.~
++ ~Alright then. Best of luck with your efforts.~ EXIT
END

IF ~~ THEN BEGIN 4
SAY ~Not permanently, certainly, but if my experience can help with their crisis I will offer my services. But first there is something you must do for me.~ IF ~~ GOTO 6
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 5
SAY ~Hmm... back again. If you are considering dealing with the bandits I'd recommend attacking the camp directly if can be avoided. Hobgoblins are typically a well organized bunch, but with so many different species about they might be tricked into believing you are one of them.~
+~NumItemsPartyGT("k9ring01",9) Global("k9olbrimring","GLOBAL",1)~+ ~I've got 10 of those rings you were looking for.~ GOTO 7
+~Global("k9BeregostSearch","GLOBAL",1) Global("k9olbrim","GLOBAL",0) GlobalLT("Chapter","GLOBAL",4)~+ ~Actually while I have you here I may have something I could use your help with. If you weren't aware Beregost is looking for advisors in the event of a coming war. They fear reprisal from Amn should relations deteriorate further and are looking for an experienced hand to help guide them. I know you aren't as experienced with fighting humans but Kelddath himself identified you. Would you be interested?~ GOTO 6
+~Global("k9BeregostSearch","GLOBAL",1) Global("k9olbrim","GLOBAL",0) GlobalGT("Chapter","GLOBAL",3)~+ ~I actually dealt with the bandits already. But while I have you here I may have something I could use your help with. If you weren't aware Beregost is looking for advisors in the event of a coming war. They fear reprisal from Amn should relations deteriorate further and are looking for an experienced hand to help guide them. I know you aren't as experienced with fighting humans but Kelddath himself identified you. Would you be interested?~ GOTO 8
+~GlobalGT("Chapter","GLOBAL",3)~+ ~I already deal with the bandit leaders. We'll have to see what that means for the rest of the bandits across the Coast Way.~ EXIT
+~GlobalLT("Chapter","GLOBAL",4)~+ ~Thanks for the advice.~ EXIT
END

IF ~~ THEN BEGIN 6
SAY ~Hmm...unfortunately I'm needed here. I suspect the hobgoblins more elite members are responsible for several raids that have taken place along the Uldoon Trail. Before I leave here I was hoping to discourage this action from them in the future.

If were you collect say, 10 of their steel rings, I'll do what I can to assist Beregost. Only temporarily of course. I have a shop to run in Berdusk. You understand, yes?~
+~NumItemsPartyGT("k9ring01",9)~+ ~Actually I already have 10 of them.~ GOTO 7
++ ~Sounds good. I'll go collect some of those rings.~ DO ~SetGlobal("k9olbrimring","GLOBAL",1)  SetGlobal("k9scoutteach","GLOBAL",1) IncrementGlobal("k9beregostprepared","GLOBAL",1) AddJournalEntry(@531122,QUEST)~ EXIT
++ ~On second thought I think I'll just find someone else.~ EXIT
END

IF ~~ THEN BEGIN 7
SAY ~Excellent. Then I suppose my work here is finished. I certainly won't be leaving you empty handed for what you've done here. Take this quiver. With it you'll never finding yourself needing another arrow.~
++ ~Understood. Report to Kelddath Ormyr in the town hall of Beregost.~ DO ~SetGlobal("k9BeregostSearch","GLOBAL",2) GiveItemCreate("k9quiver",Player1,0,0,0) AddJournalEntry(@531117,QUEST) AddexperienceParty(500)  SetGlobal("k9olbrim","GLOBAL",1) EscapeArea()~  EXIT
++ ~I'll take the quiver. But after thinking about it further I think someone else would be better suited for the council in Beregost.~ DO ~SetGlobal("k9BeregostSearch","GLOBAL",2) AddexperienceParty(500)  GiveItemCreate("k9quiver",Player1,0,0,0) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 8
SAY ~With you having dealt with the bandits there is little further for me to do here. Many of these bandits had been responsible for terrorizing the Uldoon Trail, but it seems as though whatever operation they have here has been significantly diminished.

So yes, if Beregost is in need of me I can assist for a time.~
++ ~Sounds good. Report to Kelddath Ormyr in the town hall of Beregost.~ GOTO 9
END


IF ~~ THEN BEGIN 9
SAY ~As you wish. Before I leave however allow me to thank you for your help here today. Take this quiver. With it you'll never finding yourself needing another arrow.~
++ ~Understood.~ DO ~GiveItemCreate("k9quiver",Player1,0,0,0) AddJournalEntry(@531117,QUEST) SetGlobal("k9olbrimring","GLOBAL",2) SetGlobal("k9olbrim","GLOBAL",1) EscapeArea()~  EXIT
++ ~I'll take the quiver. After thinking about it further however I think Beregost would do better to find advice from someone else.~ DO ~GiveItemCreate("k9quiver",Player1,0,0,0) EscapeArea()~ EXIT
 END