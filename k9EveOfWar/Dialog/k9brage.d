APPEND Brage

IF WEIGHT #-99 ~Global("k9Brage","GLOBAL",1)~ THEN BEGIN 10
  SAY #733
  IF ~  !Dead("NALIN")~ THEN REPLY #5079  GOTO 4
   IF ~~ THEN REPLY ~We'll see you back safe as we can, though I don't see how killing you will help those that have died. We shall take you back to the garrison. There you will have the opportunity to explain yourself.~ GOTO 11
  IF ~~ THEN REPLY #5080 GOTO 5
END

IF ~~ THEN BEGIN 11
SAY #735
IF ~~ THEN DO ~DestroyItem("SW2H01") SetGlobal("k9Brage","GLOBAL",2)
GiveItem("SW2H03",LastTalkedToBy)
GiveItem("POTN12",LastTalkedToBy)
AddexperienceParty(1000)
ReputationInc(1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("k9Bracut")
~ UNSOLVED_JOURNAL #26888 EXIT
END

IF ~~ THEN BEGIN 12
SAY ~My crimes... my family... I don't want to go on!~ IF ~~ THEN EXTERN HICK 7

END




END

EXTEND_BOTTOM BRAGE 2
  +~~+ ~We'll see you back safe as we can, though I don't see how killing you will help those that have died. We shall take you back to the garrison. There you will have the opportunity to explain yourself.~ GOTO 11
END

