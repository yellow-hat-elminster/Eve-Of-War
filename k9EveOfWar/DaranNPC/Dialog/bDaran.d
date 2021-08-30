BEGIN bdaran

IF ~Global("k9DaranJoins", "GLOBAL", 1) Global("k9DaranJoins2", "GLOBAL", 1)~ THEN BEGIN 0

SAY ~You've now changed dialogue files to the "b" file.~ IF ~~ THEN DO ~SetGlobal("k9DaranJoins2", "GLOBAL", 2)~ EXIT

END