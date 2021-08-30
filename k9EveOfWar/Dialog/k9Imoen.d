
ADD_STATE_TRIGGER Imoen2 0 ~!Dead("Imoen")~





ADD_TRANS_TRIGGER IMOEN2 0 ~False()~ DO 1

EXTEND_BOTTOM IMOEN2 0
  ++ #16405 DO ~SetGlobal("AttackedCandleKeep","GLOBAL",2)~ GOTO k910
END




APPEND Imoen2

 IF ~~ THEN BEGIN k910
  SAY ~Well... that's just fine! I should have stayed in Candlekeep!~

  IF ~~ THEN DO ~SetGlobal("k9imoencandlekeep","GLOBAL",1) EscapeArea() ~ EXIT

END

IF WEIGHT #-99 ~True() OR(2) NumTimesTalkedTo(0) !NumTimesTalkedTo(0) Global("k9imoencandlekeep","GLOBAL",2)~ THEN BEGIN Candlekeep2
  SAY ~Heya! Never thought I'd see you back here. You must be pretty tired. Do you need an extra hand?~
   ++ ~Sure.~ DO ~SetGlobal("k9imoencandlekeep","GLOBAL",3) JoinParty() ~ EXIT
   ++ ~Not right now.~ DO ~SetGlobal("k9imoencandlekeep","GLOBAL",3)~ EXIT
END



IF WEIGHT #-98 ~True() OR(2) NumTimesTalkedTo(0) !NumTimesTalkedTo(0) Global("AttackedCandleKeep","GLOBAL",2) GlobalLT("k9imoencandlekeep","GLOBAL",4)~ THEN BEGIN CandlekeepMad
  SAY ~What was that all about back there? I've never seen Tethtoril so mad. Anyways, knew ya were headin out this way so I got out myself.~

  IF ~~ THEN DO~
SetGlobal("k9AttackedCandleKeep","GLOBAL",1)~ GOTO 0

END 

END

