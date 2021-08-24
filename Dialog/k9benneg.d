EXTEND_BOTTOM BENTLY 0 1 2
  +~Global("k9negotiations","GLOBAL",1) Global("k9friendlynegotiations","GLOBAL",0)~+ ~I know this might not be the best of times, but I require your assistance. Kelddath Ormlyr, the leader of Beregost, has asked that I ask nearby communities for aid. He fears an invasion by Amn is imminent and is looking for a place to house some of his people.~  GOTO 4
END



APPEND BENTLY

IF ~~ THEN BEGIN 4
SAY ~I suppose we've got some rooms on hand that aren't bein used. Could put some tents up in the courtyard should that be needed. I'll need coin for the supplies of course.~
IF ~PartyGoldGT(499)~ THEN REPLY ~I'll give you 500 gold.~ GOTO 5
IF ~~ THEN REPLY ~Well, we'd be talking of housings for a few hundred at least. For no more than a month I'd hope. How much gold would you need?~ GOTO 6
IF ~~ THEN REPLY ~Nevermind.~ EXIT
END

IF ~~ THEN BEGIN 5
SAY ~Thanks. That'll do nicely.~ IF ~~ THEN DO ~SetGlobal("k9friendlynegotiations","GLOBAL",1) AddJournalEntry(@15030,QUEST) TakePartyGold(500)~ EXIT
END

IF ~~ THEN BEGIN 6
SAY ~Hmm, we'll see what we can do. Give me 500 gold and I'll sort out the details.~
IF ~PartyGoldGT(499)~ THEN REPLY ~Understood.~ GOTO 5
IF ~PartyGoldGT(499)~ THEN REPLY ~Better be worth it.~ GOTO 7
IF ~PartyGoldLT(500)~ THEN REPLY ~Can't afford that. I guess when I can I'll come back later.~ DO ~AddJournalEntry(@15031,QUEST) ~ EXIT
IF ~~ THEN REPLY ~Nevermind.~ EXIT
END

IF ~~ THEN BEGIN 7
SAY ~I've been taking care o' guests since ye were a child. Drop the attitude and I'll do what I'll do when I do it.~ IF ~~ THEN DO ~SetGlobal("k9friendlynegotiations","GLOBAL",1) AddJournalEntry(@15030,QUEST) TakePartyGold(500)~ EXIT
END

END