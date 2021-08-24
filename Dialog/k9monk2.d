BEGIN k9monk2

IF ~True()~ THEN BEGIN 0
SAY ~(The monk stands here. He has a worried look on his face.)~
++ ~Excuse me. You look troubled. Is there a problem?~ GOTO 1
+~Global("k9monkmeditate","GLOBAL",1)~+ ~Excuse me. Why is that other monk meditating? Given the circumstances it seems like a waste of time.~ GOTO 2
++ ~Leave without disturbing him.~ EXIT
END

IF ~~ THEN BEGIN 1
SAY ~I welcome you to our temple, kind stranger, though I wish it were in better circumstances. Yes, there is indeed a problem. Winter has come many months too early. I fear we may not have the crops to survive the winter.~
++ ~Your mayor brought me here to help address this.~ GOTO 3
++ ~Tough luck.~ EXIT
END

IF ~~ THEN BEGIN 2
SAY ~He sincerly believes Chauntea will answer our prayers. Whether that is true is hard to say. Even still, its best you not disturb him further.~
++ ~Your mayor brought me here to help address this crisis.~ GOTO 3
++ ~Goodbye.~ EXIT
END

IF ~~ THEN BEGIN 3
SAY ~Indeed? Then I will pray for your success. We seem to have had little luck here discovering who or what is responsible for all this.~ IF ~~ THEN EXIT
END


