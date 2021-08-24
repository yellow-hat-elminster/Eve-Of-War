// Non- Yeorg Gandolar Talking

EXTEND_BOTTOM GANDOL 0
 IF ~Global("k9negotiations","GLOBAL",1) Global("k9negotiationgullykin", "GLOBAL", 0)~ THEN REPLY ~A ways west of here is a town called Beregost. Its inhabitants are fearful that they might be brought into a larger war, and as such their leaders are seeking places of refuge should the worst transpire. Would Gullykin be willing to help should things come to it?~ GOTO k913
END


REPLACE_TRANS_ACTION GANDOL BEGIN 4 23 END BEGIN 0 END  ~EscapeArea()~ ~~


ADD_STATE_TRIGGER Gandol 23 ~Global("k9ogremagedead","GLOBAL",0)~
ADD_TRANS_ACTION GANDOL BEGIN 23 END BEGIN 0 END ~SetGlobal("k9ogremagedead","GLOBAL",1)~
ADD_TRANS_ACTION GANDOL BEGIN 11 END BEGIN 0 END ~SetGlobal("k9gullykinjournaladd","GLOBAL",1)~

APPEND GANDOL

IF ~~ THEN BEGIN k913
SAY ~Ye get a hairy eye from anyone in these parts for proposing stickin some humans down in these holes. If they be needing aid we can discuss it, certainly, though we small-folk have other matters to attend to first.~ IF ~~ GOTO 13
END

IF WEIGHT #-99 ~InParty("k9Yeorg") Global("k9yeorgsee","GLOBAL",0)~ THEN BEGIN k925
   SAY ~Looks to be a fine <DAYNIGHT>. Off to travel yonger Yeorg? Well, if so I wish ya good travels. Plenty out there to keep an eye on.~
  IF ~~ THEN REPLY ~Isn't that the truth? Good tidings friend.~ GOTO k926
  IF ~~ THEN REPLY ~Ahh yes, Yeorg and I are off to explore around the area.~ GOTO k927
  IF ~~ THEN REPLY ~Get out of my way.~ GOTO k928
END

IF ~~ THEN BEGIN k926
SAY  ~And to you as well.~
IF ~~ THEN DO ~SetGlobal("k9yeorgsee","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN k927
SAY ~Is that so? Firewine Bridge be just south of here. Best to keep a watch out if you are travelling that way though. The restless spirits you'll find over there can be avoided easily enough. It's the kobolds that'll give ya trouble.~
IF ~~ THEN DO ~SetGlobal("k9yeorgsee","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN k928
SAY ~No need to be so rude stranger. I fancy it was about time you'd be leaving this place anyways.~
IF ~~ THEN DO ~SetGlobal("k9yeorgsee","GLOBAL",1)~ EXIT
END


IF WEIGHT #-98 ~Global("k9ogremagedead","GLOBAL",1) Global("k9negotiations", "GLOBAL", 1) Global("k9negotiationgullykin", "GLOBAL", 0)~ THEN BEGIN k929
   SAY ~Back again are ya? Something we can do for ya?~
  IF ~CheckStatGT(Player1,14,CHR)~ THEN REPLY ~A ways west of here is a town called Beregost. Its inhabitants are fearful that they might be brought into a larger war, and as such their leaders are seeking places of refuge should the worst transpire. Would Gullykin be willing to help should things come to it?~ GOTO k930
 IF ~CheckStatLT(Player1,15,CHR)~ THEN REPLY ~A ways west of here is a town called Beregost. Its inhabitants are fearful that they might be brought into a larger war, and as such their leaders are seeking places of refuge should the worst transpire. Would Gullykin be willing to help should things come to it?~ GOTO k931
   IF ~~ THEN REPLY ~I need a favor.~ GOTO k932
  IF ~~ THEN REPLY ~Nevermind.~ EXIT
END

IF ~~ THEN BEGIN k930
SAY ~Heard of the place in passing I'll admit. Can't say we see many comin up from there. I know nothin of any war, but we'll do what we can.~
IF ~~ THEN DO ~SetGlobal("k9negotiationgullykin","GLOBAL",1) AddexperienceParty(1200) AddJournalEntry(@15037,QUEST)~  EXIT
END

IF ~~ THEN BEGIN k931
SAY ~We don't have much, but we might spare room for a few dozen. Any more with tents are welcome here as well of course, but for this to work we'll need supplies.~
IF ~PartyGoldGT(299)~ THEN REPLY ~Here is 300 gold. Buy what supplies you think you'll need.~ DO ~SetGlobal("k9negotiationgullykin","GLOBAL",1)     AddexperienceParty(1000)
 TakePartyGold(300) AddJournalEntry(@15037,QUEST)~ EXIT
IF ~PartyGoldLT(300)~ THEN REPLY ~Here take everything I have. Buy what supplies you think you'll need.~ DO ~SetGlobal("k9negotiationgullykin","GLOBAL",1)     AddexperienceParty(500)
 TakePartyGold(300) AddJournalEntry(@15037,QUEST)~ EXIT
  IF ~~ THEN REPLY ~Nevermind.~ EXIT
END

IF ~~ THEN BEGIN k932
SAY ~And what favour is that?~
IF ~CheckStatGT(Player1,14,CHR)~ THEN REPLY ~A ways west of here is a town called Beregost. Its inhabitants are fearful that they might be brought into a larger war, and as such their leaders are seeking places of refuge should the worst transpire. Would Gullykin be willing to help should things come to it?~ GOTO k930
 IF ~CheckStatLT(Player1,15,CHR)~ THEN REPLY ~A ways west of here is a town called Beregost. Its inhabitants are fearful that they might be brought into a larger war, and as such their leaders are seeking places of refuge should the worst transpire. Would Gullykin be willing to help should things come to it?~ GOTO k931
END


END
