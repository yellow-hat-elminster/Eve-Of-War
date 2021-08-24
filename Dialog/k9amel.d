BEGIN k9amel

IF ~~ THEN BEGIN 0
SAY ~Caern, give Eoneda the dagger. Quickly now, I fear we have little time.~ IF ~~ THEN DO ~SetGlobal("k9DreamAmel","GLOBAL",2)~ EXTERN k9cloak2 0
END

IF ~~ THEN BEGIN 1
SAY ~Had I had wanted your opinion I would have asked for it. The dagger Caern, now!~ IF ~~ THEN DO ~SetGlobal("k9DorionWalkOverToAmel","GLOBAL",1)~ EXTERN k9cloak4 1
END

IF ~~ THEN BEGIN 2
SAY ~Enough! I will not stand any more insol...~ IF ~~ THEN DO ~SetGlobal("k9GorionWalkOverToAmel","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 3
SAY ~Eoneda why did you not deal with this intolerable man when you had the chance?~ IF ~~ THEN EXTERN k9mother 1
END

IF ~~ THEN BEGIN 4
SAY ~Enough of this! I will not see my work sullied further by your presence. This pitiful attack is over.~ IF ~~ THEN DO ~SetGlobal("k9cutsceneBhaalAmel","GLOBAL",1)~ EXIT
END

