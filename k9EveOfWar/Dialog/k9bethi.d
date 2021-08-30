BEGIN ~k9Bethi~

IF ~  GlobalGT("Chapter", "GLOBAL", 2)   GlobalLT("Chapter", "GLOBAL", 5)
~ THEN BEGIN 0 // from:
  SAY ~Who is that lurking there in the shadows? All you be finding here is an honest woman in search of honest trade. Nothing more. Nothing less.~
  IF ~ReputationGT(Player1,15)~ THEN REPLY ~No need for concern. I simply wish to see what you have to offer.~ DO ~StartStore("k9Bethi",LastTalkedToBy(Myself))
~ EXIT
  IF ~ReputationGT(Player1,6) ReputationLT(Player1,16)~ THEN REPLY ~I wish to see what you have to offer.~ DO ~StartStore("k9Bethi",LastTalkedToBy(Myself))
~ EXIT
  IF ~ReputationLT(Player1,7)~ THEN REPLY ~No need for concern, I'm no ally of the law around here. That you can be sure. All I wish is to see what you have to offer.~ DO ~StartStore("k9Bethi",LastTalkedToBy(Myself))
~ EXIT++ ~How do you have access to untainted weapons?~ GOTO 8
  IF ~ReputationGT(Player1,15) Global("k9supply", "GLOBAL", 2)~ THEN REPLY ~I'm looking to properly equip the watch. To give them something more than the leather armor and wooden weapons they use now. How much do you figure that would oost?~ GOTO 2
  IF ~ReputationGT(Player1,6) ReputationLT(Player1,16) Global("k9supply", "GLOBAL", 2)~ THEN REPLY ~I'm looking to properly equip the watch. To give them something more than the leather armor and wooden weapons they use now. How much do you figure that would oost?~ GOTO 3
  IF ~ReputationLT(Player1,7) Global("k9supply", "GLOBAL", 2)~ THEN REPLY ~I'm looking to properly equip the watch. To give them something more than the leather armor and wooden weapons they use now. How much do you figure that would oost?~ GOTO 4
  IF ~Global("k9supply", "GLOBAL", 2) OR(3) Alignment(Player1,CHAOTIC_EVIL) Alignment(Player1,NEUTRAL_EVIL) Alignment(Player1,LAWFUL_EVIL)~ THEN REPLY ~I'm looking to equip the watch. Nothing fancy, but something good enough to convince them the job is done. What's your price?~ GOTO 7
  IF ~~ THEN REPLY #15276 /* ~I don't need anything at the moment.~ */ EXIT
END

IF ~  GlobalLT("Chapter", "GLOBAL", 3)
~ THEN BEGIN 1 // from:
  SAY ~Cutthroats and customers - always about lookin for somethin out in de night. Name's Janlynn. You'll not find a dealer in these parts with greater access to quality weapons. Coin only I'm afraid though, Black Lily's orders.~
  IF ~~ THEN REPLY ~I wish to see what you have to offer.~ DO ~StartStore("k9Bethi",LastTalkedToBy(Myself))
~ EXIT
++ ~How do you have access to untainted weapons?~ GOTO 8
  IF ~ReputationGT(Player1,15) Global("k9supply", "GLOBAL", 2)~ THEN REPLY ~I'm looking to properly equip the watch. To give them something more than the leather armor and wooden weapons they use now. What's your price?~ GOTO 2
  IF ~ReputationGT(Player1,8) ReputationLT(Player1,16) Global("k9supply", "GLOBAL", 2)~ THEN REPLY ~I'm looking to properly equip the watch. To give them something more than the leather armor and wooden weapons they use now. How much do you figure that would oost?~ GOTO 3
  IF ~ReputationLT(Player1,9) Global("k9supply", "GLOBAL", 2) !Class(Player1,Thief)~ THEN REPLY ~I'm looking to properly equip the watch. To give them something more than the leather armor and wooden weapons they use now. How much do you figure that would oost?~ GOTO 4
  IF ~ReputationLT(Player1,9) Global("k9supply", "GLOBAL", 2) Class(Player1,Thief)~ THEN REPLY ~I'm looking to properly equip the watch. To give them something more than the leather armor and wooden weapons they use now. How much do you figure that would oost?~ GOTO 5
  IF ~Global("k9supply", "GLOBAL", 2) OR(3) Alignment(Player1,CHAOTIC_EVIL) Alignment(Player1,NEUTRAL_EVIL) Alignment(Player1,LAWFUL_EVIL)~ THEN REPLY ~I'm looking to equip the watch. Nothing fancy, but something good enough to convince them the job is done. What's your price?~ GOTO 7
  IF ~~ THEN REPLY #15276 /* ~I don't need anything at the moment.~ */ EXIT
END


IF ~~ THEN BEGIN 2
SAY ~Ha! Can't say I expected t'be supplyin the watch, but times be what they are. Hmm... can't think of it happening for any less than 2,500 gold. It ain't worth dealin with your type otherwise. Got a reputation to uphold is all...you understand.~
	+~PartyGoldGT(2499)~+ ~Fine, take the money.~ DO ~TakePartyGold(2500) SetGlobal("k9supply", "GLOBAL", 3) EraseJournalEntry(@108)   AddexperienceParty(1000) ~ SOLVED_JOURNAL @20221 GOTO 6
	+~PartyGoldLT(2500)~+ ~I can't pay you now. Perhaps later.~  EXIT
  ++ ~I'll have to pass on that.~ EXIT
END

IF ~~ THEN BEGIN 3
SAY ~Hmm... Can't say I expected t'be supplyin the watch, but the times be what they be. I can't see myself doing it for any less than 1,500 gold. You may turn out alright yet, but it ain't worth the skin off my back if ye go soft on the rest of us. I've got a reputation to uphold is all...you understand.~
	+~PartyGoldGT(1499)~+ ~Fine, take the money.~ DO ~TakePartyGold(1500) SetGlobal("k9supply", "GLOBAL", 3) EraseJournalEntry(@108)   AddexperienceParty(1000) ~ SOLVED_JOURNAL @20221 GOTO 6
	+~PartyGoldLT(1500)~+ ~I can't pay you now. Perhaps later.~  EXIT
  ++ ~I'll have to pass on that.~ EXIT
  END

IF ~~ THEN BEGIN 4
SAY ~You seem the right sort. Still, I gotta keep the boss happy. I can't see myself doing it for any less than 1,000 gold. If ye ever find yerself up in the gate you should consider joining our guild. You aren't the sneaking type by any means, but we still may have work for you.~
	+~PartyGoldGT(999)~+ ~Thanks for the advice. Here's your money.~ DO ~TakePartyGold(1000) SetGlobal("k9supply", "GLOBAL", 3) EraseJournalEntry(@108)   AddexperienceParty(1000) ~ SOLVED_JOURNAL @20221 GOTO 6
	+~PartyGoldLT(1000)~+ ~I can't pay you now. Perhaps later.~  EXIT
   ++ ~I'll have to pass on that.~ EXIT
END
  
IF ~~ THEN BEGIN 5
SAY ~You've got yourself one interesting reputation there <CHARNAME>. Not big on supplyin the watch, what with them bein the law round here, but times are what they are. That'll have to be 1,000 gold. You certainly seem the right sort. Speaking o'which, if ye are ever up in the gate you should consider joining our guild. Your skills are wasted on the road.~
	+~PartyGoldGT(999)~+ ~I'll keep that in mind. Here's your coin.~ DO ~TakePartyGold(1000) SetGlobal("k9supply", "GLOBAL", 3)  EraseJournalEntry(@108)   AddexperienceParty(1000) ~ SOLVED_JOURNAL @20221 GOTO 6
	+~PartyGoldLT(1000)~+ ~I can't pay you now. Perhaps later.~  EXIT
    ++ ~I'll have to pass on that.~ EXIT
END
  
IF ~~ THEN BEGIN 6
SAY ~Then our business is concluded. Shouldn't be too long now before you see yer play soldiers all shined up.~   IF ~~ EXIT
END


IF ~~ THEN BEGIN 7
SAY ~Looking to make some coin from these fools? Can't say I blame ya. Hmm... I have some used armor I could sell for 500 gold. Not very reliable attire I'll admit. Bought it from some damn Calimshanian trader awhile back and haven't been unable to unload it. Might look better at first but its probably even worse than your basic studded leather. But if yer looking for cheap you'll scarcely find better.~
	+~PartyGoldGT(499)~+ ~Understood. Here's your coin.~ DO ~TakePartyGold(500) SetGlobal("k9supply", "GLOBAL", 4)  EraseJournalEntry(@108)  AddexperienceParty(1000) ReputationInc(-2)~ SOLVED_JOURNAL @20222 GOTO 6
	+~PartyGoldLT(500)~+ ~I can't pay you now. Perhaps later.~  EXIT
  IF ~~ THEN REPLY #15276 /* ~I don't need anything at the moment.~ */ EXIT
END

IF ~~ THEN BEGIN 8
SAY ~Getting access to untainted items has proven to be a challenge I'll admit. Fortunately, the guild happens to keep close connections to some of the more prestigious merchant houses in Baldur's Gate.

You best stock up while you can though. Some of the decisions coming out of merchants in Baldur's Gate have been odd as of late. If they keep it up it could be by summers end that I'll have to pack up my goods and leave.~   IF ~~ EXIT
  IF ~~ THEN REPLY ~Then I wish to see what you have to offer.~ DO ~StartStore("k9Bethi",LastTalkedToBy(Myself))~ EXIT
  IF ~ReputationGT(Player1,15) Global("k9supply", "GLOBAL", 2)~ THEN REPLY ~I'm looking to properly equip the watch. To give them something more than the leather armor and wooden weapons they use now. What's your price?~ GOTO 2
  IF ~ReputationGT(Player1,8) ReputationLT(Player1,16) Global("k9supply", "GLOBAL", 2)~ THEN REPLY ~I'm looking to properly equip the watch. To give them something more than the leather armor and wooden weapons they use now. How much do you figure that would oost?~ GOTO 3
  IF ~ReputationLT(Player1,9) Global("k9supply", "GLOBAL", 2) !Class(Player1,Thief)~ THEN REPLY ~I'm looking to properly equip the watch. To give them something more than the leather armor and wooden weapons they use now. How much do you figure that would oost?~ GOTO 4
  IF ~ReputationLT(Player1,9) Global("k9supply", "GLOBAL", 2) Class(Player1,Thief)~ THEN REPLY ~I'm looking to properly equip the watch. To give them something more than the leather armor and wooden weapons they use now. How much do you figure that would oost?~ GOTO 5
  IF ~Global("k9supply", "GLOBAL", 2) OR(3) Alignment(Player1,CHAOTIC_EVIL) Alignment(Player1,NEUTRAL_EVIL) Alignment(Player1,LAWFUL_EVIL)~ THEN REPLY ~I'm looking to equip the watch. Nothing fancy, but something good enough to convince them the job is done. What's your price?~ GOTO 7
  IF ~~ THEN REPLY ~Good to know. I'll be going now.~  EXIT
END


IF ~  GlobalGT("Chapter", "GLOBAL", 4)
~ THEN BEGIN 9 // from:
  SAY ~Who is that lurking there in the shadows? All you be finding here is an honest woman in search of honest trade. Nothing more. Nothing less.~
  IF ~ReputationGT(Player1,15)~ THEN REPLY ~No need for concern. I simply wish to see what you have to offer.~ DO ~StartStore("k9Bethi",LastTalkedToBy(Myself))
~ EXIT
  IF ~ReputationGT(Player1,6) ReputationLT(Player1,16)~ THEN REPLY ~I wish to see what you have to offer.~ DO ~StartStore("k9Bethi",LastTalkedToBy(Myself))
~ EXIT
  IF ~ReputationLT(Player1,7)~ THEN REPLY ~No need for concern, I'm no ally of the law around here. All I wish is to see what you have to offer.~ DO ~StartStore("k9Bethi",LastTalkedToBy(Myself))
~ EXIT
++ ~How do you have access to untainted weapons?~ GOTO 8
  IF ~ReputationGT(Player1,15) Global("k9supply", "GLOBAL", 2)~ THEN REPLY ~I'm looking to properly equip the watch. To give them something more than the leather armor and wooden weapons they use now. How much do you figure that would oost?~ GOTO 2
  IF ~ReputationGT(Player1,6) ReputationLT(Player1,16) Global("k9supply", "GLOBAL", 2)~ THEN REPLY ~I'm looking to properly equip the watch. To give them something more than the leather armor and wooden weapons they use now. How much do you figure that would oost?~ GOTO 3
  IF ~ReputationLT(Player1,7) Global("k9supply", "GLOBAL", 2)~ THEN REPLY ~I'm looking to properly equip the watch. To give them something more than the leather armor and wooden weapons they use now. How much do you figure that would oost?~ GOTO 4
  IF ~Global("k9supply", "GLOBAL", 2) OR(3) Alignment(Player1,CHAOTIC_EVIL) Alignment(Player1,NEUTRAL_EVIL) Alignment(Player1,LAWFUL_EVIL)~ THEN REPLY ~I'm looking to equip the watch. Nothing fancy, but something good enough to convince them the job is done. What's your price?~ GOTO 7
  IF ~~ THEN REPLY #15276 /* ~I don't need anything at the moment.~ */ EXIT
END