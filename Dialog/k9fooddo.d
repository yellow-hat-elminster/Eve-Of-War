BEGIN k9fooddo

IF ~True()~ THEN BEGIN 0
SAY ~Well hello <SIRMAAM>. I've got some great selection of food here. Can I interest you in anything?~
+~AreaCheck("AR0100")~+ ~I guess so, sure.~ DO ~StartStore("k9STO11",LastTalkedToBy(Myself)) ~ EXIT
+~AreaCheck("AR0800")~+ ~Absolutely.~ DO ~StartStore("k9STO14",LastTalkedToBy(Myself)) ~ EXIT
+~AreaCheck("AR1100")~+ ~I guess so, sure.~ DO ~StartStore("k9STO08",LastTalkedToBy(Myself)) ~ EXIT
+~AreaCheck("AR1200")~+ ~I guess so, sure.~ DO ~StartStore("k9STO05",LastTalkedToBy(Myself)) ~ EXIT
++ ~I think I'll be going now.~ EXIT
END