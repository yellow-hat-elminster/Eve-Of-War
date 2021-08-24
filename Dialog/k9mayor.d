BEGIN k9mayor


IF ~NumTimesTalkedTo(0)~ THEN
BEGIN 0
      SAY ~Good to see Jeb was successful in bringing someone to help us. I hope by now our ferryman has explained our predicament.~
    ++ ~Yes, he mentioned that a fortnight ago your town was covered in snow and ice. He also seemed to suspect that magic was at work.~ GOTO 1
    ++ ~Is the threat of a bit of snow really such that you bend to your knees and ask for help? The gold better be worth this waste of my time.~ GOTO 2
END

IF ~~ THEN
BEGIN 1
      SAY ~Indeed. I can't say I know what the cause of this travesty is. Not much to go off of either. We rarely recieve any visitors up here, but a few might be worth looking into.

The most recent arrival in town is one of them half folk. Goes by the name Shaja. She claims to be a simple merchant, though why she would seek a place like this for business baffles me. Probably best that you speak to her if ye can. We've also got another one of those damn spellslingers in town, goes by the name Hendern. He *claims* to know nothing about what is happening here. Can't say I trust him myself.~
    ++ ~Where is Shaja now?~ GOTO 3
    ++ ~Where can we find this mage?~ GOTO 6
END

IF ~~ THEN
BEGIN 2
      SAY ~We wouldn't have bothered you if it weren't important.~ IF ~~ THEN GOTO 4
END

IF ~~ THEN
BEGIN 3
      SAY ~Shaja should be found outside the local temple. It's in the centre of town.~ IF ~~ THEN DO ~AddJournalEntry(@66048,QUEST) ~ GOTO 5
END

IF ~~ THEN
BEGIN 4
      SAY ~Look, just ask around town and if you can't find anything you can be on your way quickly enough. We rarely recieve any visitors up here. Though I suppose there are a few you could look into.

We've got another one of those damn spellslingers in town, goes by the name Hendern. He *claims* to know nothing about what is happening here. Can't say I trust him myself. If you want to talk to him you should be able to find him either in his home or at the inn.~ IF ~~ THEN DO ~AddJournalEntry(@66047,QUEST)~ GOTO 7
END

IF ~GlobalLT("k9serpentsolved","GLOBAL",1)~ THEN
BEGIN 5
      SAY ~Look, just ask around town and if you can't find anything you can be on your way quickly enough.~
    +~GlobalLT("k9jashaknow","GLOBAL",4)~+ ~I've tried asking everyone in town. I'm still not really sure who is responsible.~ GOTO k9notsure
    ++ ~Where is Shaja now?~ GOTO 3
    ++ ~Where can we find this mage?~ GOTO 6
+~Global("k9YuanTi","GLOBAL",1)~+ ~I talked to the grave digger. He mentioned talking to you about the temple underneath town.~ GOTO 23
+~Global("k9snakefreedom","GLOBAL",1) PartyHasItem("k9bookyu")~+ ~We dealt with the Yuan-Ti's leader. We also found a tome likely written by him, though it looks to be written in their language. We're not sure what it actually says.~ GOTO 30
+~Global("k9snakefreedom","GLOBAL",1) !PartyHasItem("k9bookyu")~+ ~We dealt with the Yuan-Ti's leader.~ GOTO 27
+~Global("k9snakefreedom","GLOBAL",4)~+ ~We talked to Gord and Telar. It sounds as if the Yuan-Ti have infected some of the townsfolk with a curse. Telar's been made aware of it. Hopefully his magic can lift it.~ GOTO 32
++ ~Thanks for the advice.~ EXIT
END

IF ~~ THEN BEGIN k9notsure
SAY ~If they ain't saying anything then perhaps you have another means of gathering information? Slippery fingers, perhaps a spell or two, whatever ye have on hand.~  IF ~~ THEN DO ~AddJournalEntry(@66064111,QUEST)~ EXIT
END


IF ~~ THEN
BEGIN 6
      SAY ~If you can't find Hendern in his house then you might want to try The Dusty Dragon. As I understand it he keeps a room there.~ IF ~~ THEN DO ~AddJournalEntry(@66063,QUEST)~ GOTO 5
END

IF ~~ THEN BEGIN 7
 SAY ~There was also one recent arrival to town, a halfling named Shaja. She claims to be a simple merchant, though why she would seek a place like this for business baffles me. Probably best that you speak to her too. Otherwise feel free to speak to anyone in town.~ IF ~~ THEN DO ~AddJournalEntry(@66048,QUEST) AddJournalEntry(@66063,QUEST)~ EXIT
 END

IF ~Global("k9serpentsolved","GLOBAL",1)~ THEN
BEGIN 8
      SAY ~Look, just ask around town and if you can't find anything you can be on your way quickly enough.~
    ++ ~We think we've figured out who is responsible.~ GOTO 9
END

IF ~~ THEN
BEGIN 9
      SAY ~Yea? Who was it?~
    ++ ~Hendern.~ GOTO 10
    +~!Dead("k9Shaja")~+ ~Shaja.~ GOTO 11
    +~Dead("k9Shaja")~+ ~Shaja.~ GOTO 17
    ++ ~The grave digger.~ GOTO 20
    ++ ~Ranger Gord.~ GOTO 21
END

IF ~~ THEN
BEGIN 10
      SAY ~Yea? What evidence you got against him?~
    +~Global("k9HendernInnTalk","GLOBAL",1)~+ ~We talked to the innkeeper. He seemed to think Hendern was acting very strange.~ DO ~SetGlobal("k9HendernInnTalk","GLOBAL",2)~ GOTO 12

    ++ ~Nothing. Just got a feeling.~ GOTO 12
    ++ ~(Lie) Shaja said he is responsible.~ GOTO 13
END

IF ~~ THEN
BEGIN 11
      SAY ~Yea? What evidence you got against her?~
    +~PartyHasItem("k9Scrl2I") CheckStatLT(Player1Fill, 15, WIS) CheckStatLT(Player1Fill, 15, INT) ~+ ~We found this note in her pack. It looked pretty damning to me.~ GOTO k9disturb4
    +~PartyHasItem("k9Scrl2I") CheckStatGT(Player1Fill, 14, WIS) CheckStatLT(Player1Fill, 15, INT) ~+ ~We found this note in her pack. It's pretty damning. The Codicil of White is a book used by Auril worshipers.~ GOTO k9disturb4
    +~PartyHasItem("k9Scrl2I") CheckStatLT(Player1Fill, 15, WIS) CheckStatGT(Player1Fill, 14, INT) ~+ ~We found this note in her pack. It's pretty damning. The Codicil of White is a book used by Auril worshipers.~ GOTO k9disturb4
    +~PartyHasItem("k9Scrl2I") CheckStatGT(Player1Fill, 14, WIS) CheckStatGT(Player1Fill, 14, INT) ~+ ~We found this note in her pack. It's pretty damning. The Codicil of White is a book used by Auril worshipers.~ GOTO k9disturb4
 +~Global("k9ShajaLearned","GLOBAL",1)~+ ~Hendern suggested Shaja was hiding how well read she is.~ DO ~SetGlobal("k9ShajaLearned","GLOBAL",2) AddExperienceParty(500)~ GOTO  k9disturb
 +~Global("k9ShajavenraKnowledge","GLOBAL",1)~+ ~Venra found it suspicious that she never sees Shaja leave the outdoors. She suspects Shaja to be mad.~ DO ~SetGlobal("k9ShajavenraKnowledge","GLOBAL",2) AddExperienceParty(500)~ GOTO  k9disturb4
   +~Global("k9HendernDetectEvil","GLOBAL",1)~+ ~We used magic to determine that Hendern is not evil.~ DO ~SetGlobal("k9HendernDetectEvil","GLOBAL",2) AddExperienceParty(1000)~  GOTO  k9disturb3
    +~Global("k9ShajaDetectEvil","GLOBAL",1)~+ ~We used magic to determine that Shaja is evil.~ DO ~SetGlobal("k9ShajaDetectEvil","GLOBAL",2) AddExperienceParty(1000)~  GOTO k9disturb7
  END

IF ~~ THEN
BEGIN 12
      SAY ~Yea? Gonna need more than that friend.~ IF ~~ THEN EXIT
END

IF ~~ THEN
BEGIN 13
      SAY ~Yea? The woman's barely been around here long. Her word means little to me friend.~ IF ~~ THEN EXIT
END

IF ~~ THEN
BEGIN 14
      SAY ~What else have you found?~
   +~PartyHasItem("k9Scrl2I") CheckStatLT(Player1Fill, 15, WIS) CheckStatLT(Player1Fill, 15, INT) ~+ ~We found this note in her pack. It looked pretty damning to me.~ GOTO k9disturb4
    +~PartyHasItem("k9Scrl2I") CheckStatGT(Player1Fill, 14, WIS) CheckStatLT(Player1Fill, 15, INT) ~+ ~We found this note in her pack. It's pretty damning. The Codicil of White is a book used by Auril worshipers.~ GOTO k9disturb4
    +~PartyHasItem("k9Scrl2I") CheckStatLT(Player1Fill, 15, WIS) CheckStatGT(Player1Fill, 14, INT) ~+ ~We found this note in her pack. It's pretty damning. The Codicil of White is a book used by Auril worshipers.~ GOTO k9disturb4
    +~PartyHasItem("k9Scrl2I") CheckStatGT(Player1Fill, 14, WIS) CheckStatGT(Player1Fill, 14, INT) ~+ ~We found this note in her pack. It's pretty damning. The Codicil of White is a book used by Auril worshipers.~ GOTO k9disturb4
 +~Global("k9ShajaLearned","GLOBAL",1)~+ ~Hendern suggested Shaja was hiding how well read she is.~ DO ~SetGlobal("k9ShajaLearned","GLOBAL",2) AddExperienceParty(500)~ GOTO  k9disturb
 +~Global("k9ShajavenraKnowledge","GLOBAL",1)~+ ~Venra found it suspicious that she never sees Shaja leave the outdoors. She suspects Shaja to be mad.~ DO ~SetGlobal("k9ShajavenraKnowledge","GLOBAL",2) AddExperienceParty(500)~ GOTO  k9disturb4
   +~Global("k9HendernDetectEvil","GLOBAL",1)~+ ~We used magic to determine that Hendern is not evil.~ DO ~SetGlobal("k9HendernDetectEvil","GLOBAL",2) AddExperienceParty(1000)~  GOTO  k9disturb3
    +~Global("k9ShajaDetectEvil","GLOBAL",1)~+ ~We used magic to determine that Shaja is evil.~ DO ~SetGlobal("k9ShajaDetectEvil","GLOBAL",2) AddExperienceParty(1000)~  GOTO k9disturb7
  ++ ~That's everything.~ GOTO 15
END

IF ~~ THEN
BEGIN 15
      SAY ~Hmm...thank you for your help here stranger. I'll arrange for Delwyn to quietly take her into custody. Here, take this gold as payment. Consider yourself welcome back here any time.~ IF ~~ THEN DO ~SetGlobal("k9serpentsolved","GLOBAL",3) GiveGoldForce(2500) AddexperienceParty(5000) AddJournalEntry(@665558,QUEST_DONE)~  EXIT
END

IF ~~ THEN
BEGIN 16
      SAY ~Yea? What else have you found?~
  +~Global("k9HendernInnTalk","GLOBAL",1)~+ ~We talked to the innkeeper. He seemed to think Hendern was acting very strange.~ DO ~SetGlobal("k9HendernInnTalk","GLOBAL",2)~ GOTO 12

END

IF ~~ THEN
BEGIN k9disturb
      SAY ~Hmm...thank you for bringing this to my attention.~ IF ~~ THEN GOTO 14
END

IF ~~ THEN
BEGIN k9disturb3
      SAY ~That certainly supports the case that Hendern is not to blame.~ IF ~~ THEN GOTO 14
END

IF ~~ THEN
BEGIN k9disturb4
      SAY ~Hmm...thank you for informing me of this.~ IF ~~ THEN GOTO 14
END

IF ~~ THEN
BEGIN k9disturb7
      SAY ~That certainly supports the case that Shaja is to blame.~ IF ~~ THEN GOTO 14
END




IF ~~ THEN
BEGIN k9disturb2
      SAY ~Hmm...thank you for bringing this to my attention.~ IF ~~ THEN GOTO 18
END

IF ~~ THEN
BEGIN k9disturb5
      SAY ~That certainly supports the case that Hendern is not to blame.~ IF ~~ THEN GOTO 18
END

IF ~~ THEN
BEGIN k9disturb6
      SAY ~Hmm...thank you for informing me of this.~ IF ~~ THEN GOTO 18
END


IF ~~ THEN
BEGIN k9disturb8
      SAY ~That certainly supports the case that Shaja is to blame.~ IF ~~ THEN GOTO 18
END



IF ~~ THEN
BEGIN 17
      SAY ~Yea? What evidence you got against her?~
   +~PartyHasItem("k9Scrl2I") CheckStatLT(Player1Fill, 15, WIS) CheckStatLT(Player1Fill, 15, INT) ~+ ~We found this note in her pack. It looked pretty damning to me.~ GOTO k9disturb4
    +~PartyHasItem("k9Scrl2I") CheckStatGT(Player1Fill, 14, WIS) CheckStatLT(Player1Fill, 15, INT) ~+ ~We found this note in her pack. It's pretty damning. The Codicil of White is a book used by Auril worshipers.~ GOTO k9disturb4
    +~PartyHasItem("k9Scrl2I") CheckStatLT(Player1Fill, 15, WIS) CheckStatGT(Player1Fill, 14, INT) ~+ ~We found this note in her pack. It's pretty damning. The Codicil of White is a book used by Auril worshipers.~ GOTO k9disturb4
    +~PartyHasItem("k9Scrl2I") CheckStatGT(Player1Fill, 14, WIS) CheckStatGT(Player1Fill, 14, INT) ~+ ~We found this note in her pack. It's pretty damning. The Codicil of White is a book used by Auril worshipers.~ GOTO k9disturb4
 +~Global("k9ShajaLearned","GLOBAL",1)~+ ~Hendern suggested Shaja was hiding how well read she is.~ DO ~SetGlobal("k9ShajaLearned","GLOBAL",2) AddExperienceParty(500)~ GOTO  k9disturb
 +~Global("k9ShajavenraKnowledge","GLOBAL",1)~+ ~Venra found it suspicious that she never sees Shaja leave the outdoors. She suspects Shaja to be mad.~ DO ~SetGlobal("k9ShajavenraKnowledge","GLOBAL",2) AddExperienceParty(500)~ GOTO  k9disturb4
   +~Global("k9HendernDetectEvil","GLOBAL",1)~+ ~We used magic to determine that Hendern is not evil.~ DO ~SetGlobal("k9HendernDetectEvil","GLOBAL",2) AddExperienceParty(1000)~  GOTO  k9disturb3
    +~Global("k9ShajaDetectEvil","GLOBAL",1)~+ ~We used magic to determine that Shaja is evil.~ DO ~SetGlobal("k9ShajaDetectEvil","GLOBAL",2) AddExperienceParty(1000)~  GOTO k9disturb7
  END



IF ~~ THEN
BEGIN 18
      SAY ~What else have you found?~
    +~PartyHasItem("k9Scrl2I") CheckStatLT(Player1Fill, 15, WIS) CheckStatLT(Player1Fill, 15, INT) ~+ ~We found this note in her pack. It looked pretty damning to me.~ GOTO k9disturb4
    +~PartyHasItem("k9Scrl2I") CheckStatGT(Player1Fill, 14, WIS) CheckStatLT(Player1Fill, 15, INT) ~+ ~We found this note in her pack. It's pretty damning. The Codicil of White is a book used by Auril worshipers.~ GOTO k9disturb4
    +~PartyHasItem("k9Scrl2I") CheckStatLT(Player1Fill, 15, WIS) CheckStatGT(Player1Fill, 14, INT) ~+ ~We found this note in her pack. It's pretty damning. The Codicil of White is a book used by Auril worshipers.~ GOTO k9disturb4
    +~PartyHasItem("k9Scrl2I") CheckStatGT(Player1Fill, 14, WIS) CheckStatGT(Player1Fill, 14, INT) ~+ ~We found this note in her pack. It's pretty damning. The Codicil of White is a book used by Auril worshipers.~ GOTO k9disturb4
 +~Global("k9ShajaLearned","GLOBAL",1)~+ ~Hendern suggested Shaja was hiding how well read she is.~ DO ~SetGlobal("k9ShajaLearned","GLOBAL",2) AddExperienceParty(500)~ GOTO  k9disturb
 +~Global("k9ShajavenraKnowledge","GLOBAL",1)~+ ~Venra found it suspicious that she never sees Shaja leave the outdoors. She suspects Shaja to be mad.~ DO ~SetGlobal("k9ShajavenraKnowledge","GLOBAL",2) AddExperienceParty(500)~ GOTO  k9disturb4
   +~Global("k9HendernDetectEvil","GLOBAL",1)~+ ~We used magic to determine that Hendern is not evil.~ DO ~SetGlobal("k9HendernDetectEvil","GLOBAL",2) AddExperienceParty(1000)~  GOTO  k9disturb3
    +~Global("k9ShajaDetectEvil","GLOBAL",1)~+ ~We used magic to determine that Shaja is evil.~ DO ~SetGlobal("k9ShajaDetectEvil","GLOBAL",2) AddExperienceParty(1000)~  GOTO k9disturb7
      ++ ~That's everything. You should know though that we already confronted here. She's dead.~ GOTO 19
END


IF ~~ THEN
BEGIN 19
      SAY ~Hmm...I would have preferred her to be kept alive. She may have proven useful in finding a means of ending this curse. Still, at least the one responsible has met her end. Hopefully in her absence the magic at work here will cease.

Here, take this gold as payment. Consider yourself welcome back here any time.~ IF ~~ THEN DO ~SetGlobal("k9serpentsolved","GLOBAL",3) GiveGoldForce(2500) AddexperienceParty(5000) AddJournalEntry(@665558,QUEST_DONE)~  EXIT
END

IF ~~ THEN
BEGIN 20
      SAY ~The grave digger? I've known the man forty seasons and then some. Hardly helps his business either, what with the ground frozen stiff. Nah, I doubt he'd do something like this.~ IF ~~ THEN EXIT
END

IF ~~ THEN
BEGIN 21
      SAY ~Ranger Gord? The man has lost his mind, I'll admit, but I doubt him to be capable of anything like this.~ IF ~~ THEN EXIT
END

IF ~True()~ THEN BEGIN 22
SAY ~Hello, friend. What can I help you for?~
+~Global("k9YuanTi","GLOBAL",1)~+ ~We talked to the grave digger. He mentioned talking to you about the temple underneath town.~ GOTO 23
+~Global("k9snakefreedom","GLOBAL",1) PartyHasItem("k9bookyu")~+ ~We dealt with the Yuan-Ti's leader. We also found a tome likely written by him, though it looks to be written in their language. We're not sure what it actually says.~ GOTO 30
+~Global("k9snakefreedom","GLOBAL",1) !PartyHasItem("k9bookyu")~+ ~We dealt with the Yuan-Ti's leader.~ GOTO 27
+~Global("k9snakefreedom","GLOBAL",4)~+ ~We talked to Gord and Telar. It sounds as if the Yuan-Ti have infected some of the townsfolk with a curse. Telar's been made aware of it. Hopefully his magic can lift it.~ GOTO 32
++ ~Actually now that we think about it not much. We'll be going now.~ EXIT
END

IF ~~ THEN
BEGIN 23
      SAY ~Damn that man. Can't he leave it well enough alone? That place could be full of them snakekind for all we know. If ye be thinking ye can go down there the answer is no. I'll not be riskin any of our necks on yer recklessness.~
      ++ ~We've been adventuring for months. I think we can handle a few snake heads.~ GOTO 24
END

IF ~~ THEN
BEGIN 24
      SAY ~And can ye guarantee one of those things not get loose and run about the town? Nah. I've got the town to worry about, not just yer little crusade.~
      ++ ~Better to deal with the problem now then let things get worse. The grave digger can seal off the passage once we have entered. Only he will let us out. The town should be safe.~ GOTO 25
      ++ ~We really don't need your permission here. Asking was a formality. We'll go either way. The treasure alone will make it worth it.~  GOTO 26
END

IF ~~ THEN
BEGIN 25
      SAY ~Bah, fine. Go. But don't be thinking any amount o'blood curdling screaming will get us to be coming to yer aid. Yer on your own down there.~ IF ~~ THEN DO ~SetGlobal("k9SerpentPermission","GLOBAL",1) SetGlobal("k9YuanTi","GLOBAL",2) AddJournalEntry(@66080,QUEST)~ EXIT
END

IF ~~ THEN
BEGIN 26
      SAY ~Bah, adventurers. Fine then, go. But don't be thinking any amount o'blood curdling screaming will get us to be coming to yer aid. Passage will be sealed once ye go in. Yer on your own down there.~ IF ~~ THEN DO ~SetGlobal("k9SerpentPermission","GLOBAL",1)  SetGlobal("k9YuanTi","GLOBAL",2) AddJournalEntry(@66080,QUEST)~ EXIT
END

IF ~~ THEN
BEGIN 27
      SAY ~Can't say I ever thought that anyone would deal with that mess. Nine hells, how many of those bloody cretins were down there?

Nevermind, don't think I want to know.~ IF ~~ THEN GOTO 28
      END

IF ~~ THEN BEGIN 28
SAY ~Suppose ye'll be wanting a reward there eh? Well ye certainly earned it and then some. Afraid we don't have much left to give ya though, so this'll have to do.~
++ ~Then that will have to do.~ DO ~SetGlobal("k9snakefreedom","GLOBAL",5) AddJournalEntry(@66089,QUEST_DONE) AddexperienceParty(2000) GiveGoldForce(500) ReputationInc(1)~ EXIT
++ ~There really isn't any need to give us a reward. Helping you is reward enough.~ DO ~SetGlobal("k9snakefreedom","GLOBAL",5) AddexperienceParty(2000) AddJournalEntry(@66089,QUEST_DONE) ReputationInc(2)~ EXIT
++ ~Necks were risked here and this is the best you can do? I don't think so.~ GOTO 29
END

IF ~~ THEN BEGIN 29
SAY ~Bunch o'ungrateful curs ye all are. Afraid this is all we have t'spare.~ IF ~~ THEN DO ~SetGlobal("k9snakefreedom","GLOBAL",5) AddexperienceParty(2000) AddJournalEntry(@66089,QUEST_DONE) GiveGoldForce(500) ReputationInc(-1)~ EXIT
END

IF ~~ THEN
BEGIN 30
      SAY ~Can't say I ever thought that anyone would deal with that mess. Nine hells, how many of those bloody cretins were down there?

Nevermind, don't think I want to know.~ IF ~~ THEN GOTO 31
      END

IF ~~ THEN BEGIN 31
SAY ~As fer this tome of yours, Venra has a way of knowing such things - though gods only knows how. Ranger Gord up in the tower might know more as well - though most here think him a bit mad.~
++ ~Then we'll go have a talk with one of them.~ DO ~SetGlobal("k9snakefreedom","GLOBAL",2) AddJournalEntry(@66084,QUEST)~ EXIT
END



IF ~~ THEN BEGIN 32
SAY ~And t'think if ye hadn't shown yerselves around here we'd still be cursed by those damn things and not even know it.

Suppose ye'll be wanting a reward there eh? Well ye certainly earned it and then some. Afraid we don't have much left to give ya though, but what we have is yours.~
++ ~Then that will have to do.~ DO ~SetGlobal("k9snakefreedom","GLOBAL",5) AddexperienceParty(4000) AddJournalEntry(@66088,QUEST_DONE) GiveGoldForce(1500) ReputationInc(1)~ EXIT
++ ~There really isn't any need to give us a reward. Helping you is reward enough.~ DO ~SetGlobal("k9snakefreedom","GLOBAL",5) AddexperienceParty(4000) AddJournalEntry(@66088,QUEST_DONE) ReputationInc(2)~ EXIT
++ ~Necks were risked here and this is the best you can do? I don't think so.~ GOTO 33
END


IF ~~ THEN BEGIN 33
SAY ~Bunch o'ungrateful curs ye all are. Afraid this is all we have t'spare.~ IF ~~ THEN DO ~SetGlobal("k9snakefreedom","GLOBAL",5) AddexperienceParty(4000) AddJournalEntry(@66088,QUEST_DONE) GiveGoldForce(1500) ReputationInc(-1)~ EXIT
END