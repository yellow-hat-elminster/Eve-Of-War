
EXTEND_TOP BART5 0

  IF ~Global("k9Feldpostpint", "GLOBAL", 0) GlobalLT("k9pints", "GLOBAL", 2) Global("k9militiapint", "GLOBAL", 1) Global("k9felpos","GLOBAL",0)~ THEN REPLY ~Greetings. I've heard that the town watch has been finding the prices for a pint here too expensive. Care to explain why that is?~ GOTO k92
   IF ~Global("k9Feldpostpint", "GLOBAL", 0) GlobalLT("k9pints", "GLOBAL", 2) Global("k9militiapint", "GLOBAL", 1) Global("k9felpos","GLOBAL",1) PartyHasItem("k9winecr")~ THEN REPLY ~I found that shipment.~ GOTO k94


   END

APPEND Bart5

IF ~~ THEN BEGIN k92
  SAY ~Err friend I feel for em but these are troubled times. I can't just go handin out what I've got on the cheap. This place is all I've got.~ IF ~~ THEN GOTO k93
  END


IF ~~ THEN BEGIN k93
  SAY ~Tell you what. I was expecting a shipment of ales from Baldur's Gate and they haven't arrived. Probably due to those damned bandits. It isn't much of a shipment, but if you can find it I'll see what I can do about cutting prices for watch members.~
  IF ~~ THEN REPLY ~That sounds fair.~ DO ~AddJournalEntry(@116,QUEST) SetGlobal("k9felpos","GLOBAL",1)~ EXIT
  END


IF ~~ THEN BEGIN k94
  SAY ~Hmm... most of it looks intact. Shame about the rest, but its more than I had a few moments ago.~ IF ~~ THEN GOTO k95
  END
  
IF ~~ THEN BEGIN k95
SAY ~Tell you what. I'll give the watch half off all drinks until things die down. Can't offer any more than that though, so take it or leave it.~
   IF ~~ THEN REPLY ~That sounds fair.~ DO ~SetGlobal("k9Feldpostpint", "GLOBAL", 1) TakePartyItem("k9winecr") AddJournalEntry(@118,QUEST) AddexperienceParty(300)~ EXIT
  IF ~~ THEN REPLY ~That's not good enough. I want more.~ DO ~SetGlobal("k9Feldpostpint", "GLOBAL", 1) TakePartyItem("k9winecr") AddJournalEntry(@118,QUEST) AddexperienceParty(300)~ GOTO k96
 END

IF ~~ THEN BEGIN k96
  SAY ~Well friend, I've got no more to give. Now if ye excuse me, I've got actual payin customers to attend to.~ IF ~~ THEN EXIT
  END

END
  
  
  
  
  
  
  
