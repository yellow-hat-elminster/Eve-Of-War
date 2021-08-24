

APPEND Merch3

IF WEIGHT #-99 ~  NumberOfTimesTalkedTo(0)
~ THEN BEGIN k99
  SAY #4730       
  +~PartyHasItem("POTN08")~+ ~Here have a healing potion. It should help heal your wounds.~  DO ~TakePartyItemNum("potn08",1) AddexperienceParty(300) SetGlobal("k9potiongive", "GLOBAL", 1)~ GOTO k912
  +~PartyHasItem("POTN17")~+ ~Here have some of this elixer. It should help heal your wounds.~    DO ~TakePartyItemNum("potn17",1) AddexperienceParty(300) SetGlobal("k9potiongive", "GLOBAL", 1)~ GOTO k912

  IF ~~ THEN REPLY #4731  GOTO k911
  IF ~~ THEN REPLY #4732  GOTO k910
END

IF ~~ THEN BEGIN k910
  SAY #4733
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN k911
  SAY #4734
  IF ~~ THEN GOTO k99
END

IF ~~ THEN BEGIN k912
  SAY #4735
  IF ~~ THEN REPLY ~I see you are wearing a pearl necklace. I think I'll be taking that. Along with any gold you happen to be carrying.~  GOTO k913
  IF ~~ THEN REPLY #4738  GOTO k915
  IF ~~ THEN REPLY #4739  EXIT
  IF ~~ THEN REPLY #4740  GOTO k914
END

IF ~~ THEN BEGIN k913
  SAY ~I have no gold give you. I suppose you could have the necklace. Just take it and go.~
  IF ~~ THEN DO ~ ReputationInc(-2) GiveItem("k9Amul11",LastTalkedToBy) EscapeArea() ~ EXIT
END

IF ~~ THEN BEGIN k914
  SAY #4742
  IF ~~ THEN DO ~ EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN k915
  SAY #4743
  IF ~~ THEN DO ~AddJournalEntry(@66011, QUEST) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN k916
  SAY #6299
  IF ~~ THEN DO ~ EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN k917
  SAY #9164
  IF ~~ THEN DO ~ EscapeArea()~ EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN k918
  SAY ~Ohh you've come back. Could you please help me?~
  IF ~~ THEN GOTO k99
END


END