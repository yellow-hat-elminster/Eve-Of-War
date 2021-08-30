BEGIN k9refug2


IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
SAY ~Stranger, I begs ye. Ye gotta help.~ IF ~~ THEN EXTERN k9refuge 0
END

IF ~~ THEN BEGIN 1
SAY ~Didn't leave much standin neither.~ IF ~~ THEN EXTERN k9refuge 14
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 2
SAY ~Got nothin to say to ye.~ IF ~~ EXIT
END