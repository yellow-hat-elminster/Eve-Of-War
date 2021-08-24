BEGIN bdshartp

IF ~Global("SharTeelJoined", "GLOBAL", 1)~ THEN
BEGIN Rejoin
SAY ~I take it this means I'm through with you idiots?~

	IF ~~ THEN
	REPLY ~Actually, on second thought I still require your services.~
		DO ~SetGlobal("SharTeelJoined", "GLOBAL", 1) JoinParty()~ EXIT

	IF ~~ THEN
	REPLY ~Your respect is endearing, truly, but now that I think about it I still have need of you.~
		DO ~SetGlobal("SharTeelJoined", "GLOBAL", 1) JoinParty()~ EXIT

	IF ~~ THEN
	REPLY ~Yep.~ EXIT
END



IF ~  !HappinessLT(Myself,UNHAPPY_ANGRY_BOUNDARY)
Global("KickedOut","LOCALS",1)
~ THEN BEGIN 0
  SAY ~I take it this means I'm through with you idiots?~
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
  SAY ~Finally.~
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",1)
~ EXIT
END

IF ~  HappinessLT(Myself,UNHAPPY_ANGRY_BOUNDARY)
~ THEN BEGIN 3
  SAY ~I've had just about enough of this crap. Our business here is done.~
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",1)
ChangeAIScript("",DEFAULT)
EscapeArea()
~ EXIT
END

IF ~  !HappinessLT(Myself,UNHAPPY_ANGRY_BOUNDARY)
Global("KickedOut","LOCALS",0)
~ THEN BEGIN 4
  SAY ~I'm tired of dealing with idiots.~
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",1)
ChangeAIScript("",DEFAULT)
~ EXIT
END
