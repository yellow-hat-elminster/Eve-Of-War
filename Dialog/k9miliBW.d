BEGIN k9milibw


IF ~NumTimesTalkedTo(0) RandomNum(3,1)~ THEN
BEGIN k9bwtalk
	SAY ~...And then she took a sword and went right into the throat of Jeddy. Poor sod. I've never seen anytin like it.~ IF ~~ EXIT
END

IF ~NumTimesTalkedTo(0) RandomNum(3,2)~ THEN
BEGIN k9bwtalk
	SAY ~...then Calvin took an arrow to the knee. Didn't stop that runty dwarf. Shame he didn't stick around.~ IF ~~ EXIT
END

IF ~NumTimesTalkedTo(0) RandomNum(3,3)~ THEN
BEGIN k9bwtalk
	SAY ~...I bet ye I could drink a whole barrel of this swine and still fight in the mornin.~ 
	  IF ~~ THEN EXTERN ~BART13~ 4
END


IF ~NumTimesTalkedToGT(0)~ THEN
BEGIN k9bwtalk
	SAY ~Err...what do you want? Just leave me to me drink.~ 
	  IF ~~ EXIT
END
