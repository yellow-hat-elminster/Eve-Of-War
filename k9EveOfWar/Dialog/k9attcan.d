APPEND WINTHR2

IF WEIGHT #-99 ~GlobalGT("AttackedCandleKeep","GLOBAL",0)~  THEN BEGIN k98

SAY ~*sigh* I was hoping to never be seein ye again after what you did here. Have to ask ye to leave. I'll certainly not serve ye.~ IF ~~ THEN EXIT
END

END

APPEND DREPPI2

IF WEIGHT #-99 ~GlobalGT("AttackedCandleKeep","GLOBAL",0)~ THEN BEGIN k97
SAY ~<CHARNAME>! I didn't think I'd be seeing you here, not after what you pulled. And then there was the running away. Why didn't you just 'fess up and admit what you'd done? Bah, don't answer that. Best you just be on your way instead.~    IF ~~ THEN EXIT

END
END

APPEND FULLER2

IF WEIGHT #-99 ~GlobalGT("AttackedCandleKeep","GLOBAL",0) Global("HelpFuller","GLOBAL",1)~ THEN BEGIN k95
SAY ~Well, look who it is. You've got a lot of nerve showing up back here. You helped me out with those bolts back in the day, so I'll give you some advice. Get what you need from Candlekeep and get out. You aren't welcome here no more.~    IF ~~ THEN EXIT

END


IF WEIGHT #-98 ~GlobalGT("AttackedCandleKeep","GLOBAL",0) !Global("HelpFuller","GLOBAL",1)~ THEN BEGIN k96
SAY ~Well, look who it is. You've got a lotta nerve showing up back here.~    IF ~~ THEN EXIT

END

END

 APPEND HULL2

IF WEIGHT #-99 ~GlobalGT("AttackedCandleKeep","GLOBAL",0)~ THEN BEGIN k97
SAY ~Now there's a face I had hoped not to see in a million years. Get what you need and leave kid. You've done enough damage here.~    IF ~~ THEN EXIT

END


END

APPEND BENDAL


IF WEIGHT #-99 ~GlobalGT("AttackedCandleKeep","GLOBAL",0)~ THEN BEGIN k96
  SAY ~Hello <CHARNAME>, never thought I'd see you here once again. A pity you have, though you still may be of some use. These are restless times and its always good to have more allies than less.~
  IF ~~ THEN REPLY #20006  GOTO 1
  IF ~~ THEN REPLY #20007  GOTO 4
  IF ~~ THEN REPLY #20008  GOTO 5
END

END



APPEND PIATO

IF WEIGHT #-99 ~GlobalGT("AttackedCandleKeep","GLOBAL",0) NumberOfTimesTalkedTo(0)~ THEN BEGIN k95
  SAY ~<CHARNAME>! Good to see you! After all that nasty business I never thought you would return. How have you been?~
  IF ~~ THEN REPLY #19973 GOTO 3
  IF ~~ THEN REPLY #19974 GOTO 1
  IF ~~ THEN REPLY #19976 GOTO 2
END

END

ADD_TRANS_TRIGGER ULRAUN 3 ~!GlobalGT("AttackedCandleKeep","GLOBAL",0)~ DO 0

ADD_TRANS_TRIGGER ULRAUN 3 ~!GlobalGT("AttackedCandleKeep","GLOBAL",0)~ DO 2

EXTEND_BOTTOM ULRAUN 3

  +~GlobalGT("AttackedCandleKeep","GLOBAL",0) PartyHasItem("RING25")~+ #6  GOTO k97

END

EXTEND_BOTTOM ULRAUN 3

  +~GlobalGT("AttackedCandleKeep","GLOBAL",0) !PartyHasItem("RING25")~+ #6  GOTO k98
END

APPEND ULRAUN


IF ~~ THEN BEGIN k97
  SAY ~Why have I accused you? You were seen fleeing the murder scene. Koveras found the identifying ring of a Shadow Thief assassin in your personal effects, and gold minted in Amn. Given your past transgressions I feel that this is strong enough proof to accuse you.~ IF ~~ THEN GOTO 6

END

IF ~~ THEN BEGIN k98
  SAY ~Why have I accused you? You were seen fleeing the murder scene. Koveras also found gold minted in Amn in your personal effects. Given your past transgressions I feel that this is strong enough proof to accuse you.~ IF ~~ THEN GOTO 6

END

END

ADD_STATE_TRIGGER TETHTO2 1 ~!GlobalGT("AttackedCandleKeep","GLOBAL",0)~

APPEND TETHTO2

IF WEIGHT #-99 ~  Global("Arrested","GLOBAL",1)  GlobalGT("AttackedCandleKeep","GLOBAL",0)
~ THEN BEGIN k96
  SAY ~Hello young one, I am sorry to see thee in such terrible circumstances. With your previous actions here I do not know if thou are guilty or not, though I suspect not. It would seem however that you are the only one in the position to find out more of what has transpired here. Tomorrow Ulraunt will most likely sentence thee to be sent to Baldur's Gate. There, thou wouldst receive the death penalty for these actions. I know that Gorion would not want to see his only child killed a scant few weeks after his own death. 'Tis as a favor to his memory that I will help thee escape. Make thy way through the catacombs beneath the library, but disturb them not. I have your possessions with me, you must take them and go with haste.~
  IF ~  Global("TalkedToKoveras","GLOBAL",1)
~ THEN REPLY #16808 GOTO 2
  IF ~~ THEN REPLY #16809  GOTO 3
  IF ~  Dead("RIELTAR")
~ THEN REPLY #11845   GOTO 5
END

END


APPEND REEVOR2

IF ~GlobalGT("AttackedCandleKeep","GLOBAL",0)~ THEN BEGIN k92
  SAY ~Petulant, sniveling rat's dung, that's all you are...~ IF ~~ THEN EXIT

END


END