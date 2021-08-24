BEGIN bdshartj


IF ~Global("k9Sharteel_Party_Talk","GLOBAL",1)~ THEN BEGIN 0

SAY ~The Fist stole everything from me. They owe me a great deal of gold for what they have taken.~ IF ~~ THEN DO ~AddJournalEntry(@665566,QUEST_DONE) SetGlobal("k9Sharteel_Party_Talk","GLOBAL",2)~ EXIT
END


//Responding to Duke Eltan
IF ~~ THEN BEGIN 1

SAY ~Angelo was an intolerable man, but he was no fool. The man sided with Sarevok for his own reasons. Perhaps he saw through your lies, perhaps he saw his own place at Sarevok's side. It matters little now.~IF ~~ THEN  EXTERN bdeltan 34
END

IF ~Global("k9Sharteel_Talk_ELTAN","GLOBAL",1)~ THEN BEGIN 2
SAY ~Challenging ME...ME on *my* word. Ha! Had there not been a platoon of guards at his side I would have gutted him myself.~
++ ~Duke Eltan was just concerned about your connections to Sarevok.~ GOTO 3
++ ~I can't say I blame him.~ GOTO 4
++ ~Eltan will get what is coming to him soon enough. But for the moment our concern should lie with Caelar.~ GOTO 5
++ ~Cease this incessant whining Shar-Teel.~ DO ~SetGlobal("k9Sharteel_shutup","GLOBAL",1) SetGlobal("k9Sharteel_Talk_ELTAN","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 3

SAY ~Enough! I've heard enough of my dead father for a lifetime. Let's just get this business over with.~IF ~~ THEN DO ~SetGlobal("k9Sharteel_Talk_ELTAN","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 4

SAY ~Then you *are* learning.~ IF ~~ THEN DO ~SetGlobal("k9Sharteel_Talk_ELTAN","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 5

SAY ~A woman whose army has swept away all opposition. No wonder she has the ire of the Flaming Fist. They *fear* the competent.~ IF ~~ THEN DO ~SetGlobal("k9Sharteel_Talk_ELTAN","GLOBAL",2)~ EXIT
END

IF ~Global("k9Sharteel_Talk_BRIDGE","GLOBAL",1)~ THEN BEGIN 6
SAY ~Impotent fools! Why had they not have secured the bridge ahead of time in advance of the main army? I grow weary of working with such imbeciles <CHARNAME>.~  IF ~~ THEN DO ~SetGlobal("k9Sharteel_Talk_BRIDGE","GLOBAL",2)~ EXIT
END

IF ~Global("k9Sharteel_Talk_LEVER","GLOBAL",1)~ THEN BEGIN 7
SAY ~Enough of this <CHARNAME>. Someone has gone to all the trouble of leaving a lever on the wall that will kill these louts. Why refuse such hospitality? Let's gut them all and be done with this!~  IF ~~ THEN DO ~SetGlobal("k9Sharteel_Talk_LEVER","GLOBAL",2)~ EXIT
END

IF ~Global("k9Sharteel_Talk_LEVER_FREE","GLOBAL",1)~ THEN BEGIN 8
SAY ~Such weakness! Why did you let those idiots go? We should have sprayed the walls with their blood. The story of their deaths would have been ours to concoct.~  IF ~~ THEN DO ~SetGlobal("k9Sharteel_Talk_LEVER_FREE","GLOBAL",2)~ EXIT
END


