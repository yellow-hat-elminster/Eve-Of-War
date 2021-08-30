//Red Sheaf


EXTEND_BOTTOM BART3 0

  IF ~Global("k9Sheafpint", "GLOBAL", 0) !Global("k9darrensheaf","GLOBAL",1) GlobalLT("k9pints", "GLOBAL", 2) Global("k9militiapint", "GLOBAL", 1)~ THEN REPLY ~I've heard prices on your alcohol have soared. If you don't mind me asking, why is this?~  GOTO 2
  END


  APPEND BART3


IF ~~ THEN BEGIN 2
  SAY ~Damn bandits have cut off the supply. Even Feldpost has had a problem with it. But at least he has the town watch to protect his place. Not a few nights back some bandits snuck into town and stole some of what little I had left. Quick and easy time they had too, since the watch was nowhere to be found. 
  
The rest of the taverns have at least a few watch members on the lookout. But I've gotten nothing. Even after asking about it.~
  IF ~~ THEN REPLY ~Why not just hire some mercenaries?~ GOTO 3
  IF ~CheckStatGT(Player1,9,CHR)~ THEN REPLY ~The watch only recently formed and sometimes concerns like these get a bit lost in the chaos. I'll have a talk with the watch's commander about it.~ GOTO 4
  IF ~CheckStatLT(Player1,10,CHR)~ THEN REPLY ~They probably didn't view this shack as worth the worry. But if it'll get you to help, I'll go talk with Darren about it.~ GOTO 5
  IF ~~ THEN REPLY ~Let me think on this.~ GOTO 0
  END

IF ~~ THEN BEGIN 3
SAY ~You see this place friend? I can't afford no mercenaries.~
 IF ~CheckStatGT(Player1,9,CHR)~ THEN REPLY ~The watch only recently formed and sometimes concerns like these get a bit lost in the chaos. I'll have a talk with the watch's commander about it.~ GOTO 4
  IF ~CheckStatLT(Player1,10,CHR)~ THEN REPLY ~They probably didn't view this shack as worth the worry. But if it'll get you to help I'll go talk with Darren about it.~ GOTO 5
  IF ~~ THEN REPLY ~Let me think on this.~ GOTO 0
END

IF ~~ THEN BEGIN 4
  SAY ~Aye you do that.~ IF ~~ THEN DO ~SetGlobal("k9darrensheaf","GLOBAL",1)  AddJournalEntry(@128,QUEST)~ EXIT
   END
   
IF ~~ THEN BEGIN 5
  SAY ~Hmph, not much surprised the watch hasn't helped if you are the type of character they hire. Still, gotta see some guards at my door before they take the boots from under me. I can't afford no mercenaries either.~ IF ~~ THEN DO ~SetGlobal("k9darrensheaf","GLOBAL",1)  AddJournalEntry(@128,QUEST)~ EXIT
   END



IF WEIGHT #-99 ~Global("k9darrensheaf","GLOBAL",3)~ THEN BEGIN 6
  SAY ~Good t'see things are as they should be. Thanks fer yer help friend.~ IF ~~ THEN DO ~SetGlobal("k9Sheafpint","GLOBAL",1) AddJournalEntry(@130,QUEST) AddexperienceParty(300)~ EXIT
   END



  END