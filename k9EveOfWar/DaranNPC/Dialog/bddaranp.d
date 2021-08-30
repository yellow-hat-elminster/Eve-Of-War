BEGIN k9daranp

IF ~Global("k9DaranJoins", "GLOBAL", 1) Global("k9DaranJoins2", "GLOBAL", 0)~ THEN BEGIN 0

SAY ~You've now changed dialogue files to the "P" file.~ IF ~~ THEN DO ~SetGlobal("k9DaranJoins2", "GLOBAL", 1)~ EXIT

END