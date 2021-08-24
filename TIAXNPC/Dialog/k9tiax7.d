BEGIN k9tiax7


IF ~Global("Chapter", "GLOBAL", 8) Global("k9Tiax2", "GLOBAL", 0) ~ THEN BEGIN 47

SAY ~None shall write out Tiax!~

++~Would you like to join my party Tiax?~ GOTO 48
++~How did you escape from the jail?~ GOTO 49
++~Hopefully the next place they lock you up hits you with a hold spell. I'll be going now.~  DO ~SetGlobal("k9Tiax2", "GLOBAL", 1)~ EXIT
END

IF ~~ THEN BEGIN 48

SAY ~Cyric has told me that this is acceptable. Soon you shall learn why Tiax rules all!~ IF ~~ THEN DO ~SetGlobal("k9Tiax2", "GLOBAL", 2) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 49
SAY ~Cyric told Tiax of a means of escape through the sewers. No rat shall hold Tiax, even giant ones.~
++~Would you like to join my party Tiax?~ DO ~SetGlobal("k9Tiax2", "GLOBAL", 1)~ GOTO 48
++~Hopefully the next place they lock you up is a bit sturdier. I'll be going now.~  DO ~SetGlobal("k9Tiax2", "GLOBAL", 1)~ EXIT
END


IF ~Global("Chapter", "GLOBAL", 8) Global("k9Tiax2", "GLOBAL", 1)~ THEN BEGIN 50

SAY ~You return to Tiax! Cyric foretold of this day.~

++~Would you like to join my party Tiax?~ GOTO 48
++~How did you escape from the jail?~ GOTO 49
END


