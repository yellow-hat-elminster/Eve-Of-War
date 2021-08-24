BEGIN k9yeorgp

IF ~Global("k9YeorgJoined", "GLOBAL", 1)~ THEN
BEGIN Rejoin
SAY ~Finally, this bothersome affair is over.~

	IF ~~ THEN
	REPLY ~Actually, on second though I still require your services.~
		DO ~SetGlobal("k9YeorgJoined", "GLOBAL", 1) JoinParty()~ EXIT

	IF ~~ THEN
	REPLY ~ Ya, ya, enough with the chatter. I've thought about it a bit further. Get back in line.~
		DO ~SetGlobal("k9YeorgJoined", "GLOBAL", 1) JoinParty()~ EXIT

	IF ~~ THEN
	REPLY ~I have no more need of you.~ EXIT
END



IF ~  !HappinessLT(Myself,UNHAPPY_ANGRY_BOUNDARY)
Global("KickedOut","LOCALS",1)    Global("k9YeorgHasArtifact","LOCALS",0)
~ THEN BEGIN 0
  SAY ~So am I finally to be rid of you?~
  IF ~~ THEN REPLY ~Yes, it's time to part ways.~ GOTO 2
  IF ~~ THEN REPLY ~No, I made a mistake. Please stay.~ GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY ~I'm not here to play games <CHARNAME>.~
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0)
JoinParty()
~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY ~Good. This experience has proven to be a remarkable waste of time.~
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",1) EscapeAreaMove("AR0703", 611, 602, 14)
~ EXIT
END

IF ~  HappinessLT(Myself,UNHAPPY_ANGRY_BOUNDARY)
~ THEN BEGIN 3
  SAY #15579
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",1)
ChangeAIScript("",DEFAULT)
EscapeArea()
~ EXIT
END

IF ~  !HappinessLT(Myself,UNHAPPY_ANGRY_BOUNDARY)
Global("KickedOut","LOCALS",0)
~ THEN BEGIN 4
  SAY #15580 
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",1)
ChangeAIScript("",DEFAULT)
~ EXIT
END
