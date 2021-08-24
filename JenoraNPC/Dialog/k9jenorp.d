BEGIN k9jenorp

IF ~Global("k9JenorJoined","GLOBAL",1)~ THEN
BEGIN Rejoin
	SAY ~So our journey together ends here? I'll admit I'd have thought we'd challenge Caelar together. Apparently I was mistaken.~
	        ++ ~On second thought I want you to stay in the group.~ DO ~SetGlobal("k9JenoraJoined","GLOBAL",1) JoinParty() ~ EXIT
        	++ ~I think its best we part ways.~ EXIT
        	++ ~I have no more need of you.~ EXIT
END

IF ~  !HappinessLT(Myself,UNHAPPY_ANGRY_BOUNDARY)
Global("KickedOut","LOCALS",1)
~ THEN BEGIN 0
  SAY ~I will tolerate the direction of this group no more.~ IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0)
JoinParty()
~ EXIT
END