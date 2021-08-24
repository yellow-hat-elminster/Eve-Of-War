


EXTEND_BOTTOM Chase 0
  +~OR(3) Alignment(Player1Fill,NEUTRAL_EVIL) Alignment(Player1Fill,CHAOTIC_EVIL) Alignment(Player1Fill,LAWFUL_EVIL) CheckStatGT(Player1Fill,14,CHR)~+ ~I fail to see why you wouldn't jump here. Let's be honest this is nothing less than a desperate cry for attention. Here we are out in the wilderness and you are bugging a stranger and threatening to jump. Just get it over with already, I have a schedule to keep.~  GOTO 4
END




APPEND Chase

 IF ~~ THEN BEGIN 4
  SAY ~Ohh what is the point? Still, mumsey wouldn't want me to ruin these nice pants on the way down. Come to think of it I probably should be getting back.~
  
  ++ ~*<CHARNAME> pushes Chase off the ledge*~ GOTO 5
  ++ ~What a chicken~  GOTO 3

  IF ~~ THEN DO ~EscapeArea()~ EXIT

END

IF ~~ THEN BEGIN 5
  SAY ~Ahhhhhhhhhh!
  
  (You hear the crack of Chase's head against the rocks below)~ IF ~~ THEN DO ~AddexperienceParty(15) DestroySelf()~ EXIT

END


END

