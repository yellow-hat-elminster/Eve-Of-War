
EXTEND_BOTTOM Teven 3
  +~PartyHasItem("k9amul11") CheckStatGT(LastTalkedToBy,14,CHR)~+ ~Unlike your boys I'm thorough. Look at these pearls you left on a merchant I encountered just north of the Friendly Arm Inn. I doubt your leader would be impressed by this kind of sloppy work.~ GOTO k920
  +~PartyHasItem("k9amul11") CheckStatLT(LastTalkedToBy,15,CHR)~+ ~Unlike your boys I'm thorough. Look at these pearls you left on a merchant I encountered just north of the Friendly Arm Inn. I doubt your leader would be impressed by this kind of sloppy work.~ GOTO k921
END

APPEND Teven


IF ~~ THEN BEGIN k920
  SAY ~Ha! Ye make a good point. We'll see if the boss wants ya. Lets go.~ IF ~~ THEN
  
  DO ~AddexperienceParty(400)
SetGlobal("JoinedBandits","GLOBAL",1)  SetGlobal("k9teven","GLOBAL",1)
Shout(2)
ClearAllActions()
StartCutSceneMode()
StartCutScene("Bancut02")~ EXIT
  END


IF ~~ THEN BEGIN k921
  SAY ~Thanks for the help. Yer right we were sloppy. No need to let the boss know about it though.~   IF ~~ THEN
  
  DO ~ Shout(1) Enemy()~ EXIT
  END


END



EXTEND_BOTTOM Raiken 3
  +~PartyHasItem("k9amul11") CheckStatGT(LastTalkedToBy,14,CHR)~+ ~Unlike your boys I'm thorough. Look at these pearls you left on a merchant I encountered just north of the Friendly Arm Inn. I doubt your leader would be impressed by this kind of sloppy work.~ GOTO k919
  +~PartyHasItem("k9amul11") CheckStatLT(LastTalkedToBy,15,CHR)~+ ~Unlike your boys I'm thorough. Look at these pearls you left on a merchant I encountered just north of the Friendly Arm Inn. I doubt your leader would be impressed by this kind of sloppy work.~ GOTO k920
END




APPEND Raiken


 IF ~~ THEN BEGIN k919
  SAY ~Ha! Ye make a good point. We'll see if the boss wants ya. Lets go.~  IF ~~ THEN
  
  DO ~AddexperienceParty(400)
SetGlobal("JoinedBandits","GLOBAL",1)
Shout(2)
ClearAllActions()     SetGlobal("k9raiken","GLOBAL",1)
StartCutSceneMode()
StartCutScene("Bancut01")~ EXIT
  END


IF ~~ THEN BEGIN k920
  SAY ~Thanks for the help. Yer right we were sloppy. No need to let the boss know about it though.~IF ~~ THEN
  
  DO ~Shout(1) Enemy()~ EXIT
  END


END

