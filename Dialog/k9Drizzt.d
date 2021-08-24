APPEND Drizzt

IF WEIGHT #-99 ~True() NumTimesTalkedTo(0) ~ THEN BEGIN 17
  SAY ~You there! Will you help strangers in need? We are beset by gnolls!~
  IF ~~ THEN REPLY #16325 /* ~Fear not, we will not stand aside while another is in peril.~ */ GOTO 1
  IF ~~ THEN REPLY #16326 /* ~This is not my concern and I would rather be elsewhere. Fight your own battles.~ */ GOTO 2
END

END

ADD_TRANS_ACTION Drizzt BEGIN 3 14 END BEGIN 0 END ~SetGlobal("k9drizzts","GLOBAL",1)~
