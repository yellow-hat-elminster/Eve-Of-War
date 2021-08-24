BEGIN k9genmer

IF ~True()~ THEN BEGIN 0
SAY ~Well hello <SIRMAAM>. Need any supplies? I've got a bit of everything here.~
+~AreaCheck("AR3300")~+ ~I guess so, sure.~ DO ~StartStore("k9STO03",LastTalkedToBy(Myself)) ~ EXIT
+~AreaCheck("AR0200")~+ ~I guess so, sure.~ DO ~StartStore("k9STO12",LastTalkedToBy(Myself)) ~ EXIT
+~AreaCheck("AR0100")~+ ~I guess so, sure.~ DO ~StartStore("k9STO13",LastTalkedToBy(Myself)) ~ EXIT
++ ~I think I'll be going now.~ EXIT
END