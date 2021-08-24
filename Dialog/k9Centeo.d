
APPEND Centeo


IF WEIGHT #-99 ~Global("k9CenteolBye","GLOBAL",1)~ THEN BEGIN 9

SAY ~A Remove Curse ssspell? Fool, did you not think I would attempt such a simple form of magic?

Hmm...something seems...different. His curssse seems weaker than it once was.~ IF ~~ THEN DO ~SetGlobal("k9CenteolBye", "GLOBAL", 2) PlaySound("CHA_FM02")~ GOTO 10

END


IF WEIGHT #-98 ~~ THEN BEGIN 10

SAY ~Manus, Potentisss, Paro!~ IF ~~ THEN DO ~ SetGlobal("k9whateveritis", "GLOBAL", 1) ChangeAnimation("k9centeo")~ EXIT

END


END