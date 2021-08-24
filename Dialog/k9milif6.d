BEGIN k9milif6


IF ~Global("k9darrensheaf","GLOBAL",2) !Global("k9kidmissing","GLOBAL",1)~ THEN
BEGIN 0
      SAY ~Hey, have you seen any little kid around here? My partner's had his niece run away on him.~ IF ~~ THEN EXTERN ~k9milit6~ 2
END


 //responding to militia
IF ~~ THEN
BEGIN 1
	SAY ~Its like I said. Kids like tales of combat and glory, and you've got none. Closest you've got is the splinter you got from swinging your club.~ IF ~~THEN  EXTERN ~k9milit6~ 3
END
//responding to militia
IF ~~ THEN
BEGIN 2
	SAY ~She's probably just off playing with some friends. We should return to our post.~ IF ~~THEN  EXTERN ~k9milit6~ 3
END


IF ~Global("Chapter","GLOBAL",3)~ THEN BEGIN 5
SAY ~Word is bandits have done a number on the amount of iron reaching Baldur's Gate.~ IF ~~ THEN EXIT
END

IF ~GlobalGT("Chapter","GLOBAL",3)~ THEN BEGIN 6
SAY ~They say war is coming. Who knows. But down here we've got to be ready for anything.~ IF ~~ THEN  EXIT
END