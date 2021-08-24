ADD_STATE_TRIGGER fafight 0 ~GlobalLT("Chapter","GLOBAL",5)~

APPEND FAFIGHT

IF ~GlobalGT("Chapter","GLOBAL",4)~ THEN BEGIN 1
SAY ~While in this keep you are expected to follow its rules. First, be mindful of the Flaming Fist members that are training here. As always, there is to be no brawling or stealing within the walls of the Friendly Arm Inn. Aggressors will be punished to the full extent of frontier law!~
++ ~What the Fist are up to seems an awful lot like brawling.~ GOTO 2
++ ~I'll do whatever I want.~ GOTO 3
++ ~Understood.~ EXIT
END

IF ~~ THEN BEGIN 2
SAY ~And you'd be right about that. Thankfully, with every rule there is an exception. Unless I'm told otherwise you aren't an exception to the rule. So be on your best behavior.~ IF ~~ EXIT
END

IF ~~ THEN BEGIN 3
SAY #7948 IF ~~ EXIT
END

END