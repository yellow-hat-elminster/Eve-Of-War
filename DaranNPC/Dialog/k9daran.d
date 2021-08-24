BEGIN k9daran

EXTEND_BOTTOM bddaran 6

 IF ~~ THEN REPLY @55010 GOTO 62

  END



APPEND bddaran

IF WEIGHT #-99 ~NumTimesTalkedToGT(0) Global("BD_DOD_DARAN_REUNITED","GLOBAL",1) Global("BD_DOD_QUEST_DONE","GLOBAL",1) Global("k9daranbanana","GLOBAL",0)
~ THEN
BEGIN 56
	SAY @55019
                ++ @55020 	GOTO 57
		+~Race(Player1,DWARF)~+ @55021
			GOTO 58
		++ @55022
			GOTO 59
END


IF ~~ THEN BEGIN 57
	SAY @55023
		+~CheckStatGT(Player1,14,INT)~+ @55024  GOTO 60
		+~Race(Player1Fill,DWARF)~+ @55025
 			GOTO 60
		++ @55026
		 EXTERN ~BDDEEP~ 98
		++ @55027 EXIT
END


IF ~~ THEN BEGIN 58
	SAY @55028
		IF ~~	GOTO 60
END


IF ~~ THEN BEGIN 59
	SAY @55029
		IF ~~		GOTO 60
END



IF ~~ THEN
BEGIN 60
	SAY @55030
	  ++ @55031 GOTO 61
    	  ++ @55032 EXIT
END

IF ~~ THEN
BEGIN 61
	SAY @55033
			IF ~~ THEN DO ~SetGlobal("k9DaranJoins", "GLOBAL", 1) SetGlobal("k9daranbanana","GLOBAL",1)
			 JoinParty() ~ EXIT
END



IF ~~ THEN
BEGIN 62
	SAY @55017
          ++ @55018 GOTO 8
END





END