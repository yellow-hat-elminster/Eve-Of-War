BEGIN k9weapba

IF ~True()~ THEN BEGIN 0
SAY ~Hello, good <SIRMAAM>. Would you like to see my fine array of weapons? Best prices in Baldur's Gate!~
+~AreaCheck("AR0100")~+ ~I guess so, sure.~ DO ~StartStore("k9STO12",LastTalkedToBy(Myself)) ~ EXIT
+~AreaCheck("AR0200")~+ ~I guess so, sure.~ DO ~StartStore("k9STO10",LastTalkedToBy(Myself)) ~ EXIT
+~AreaCheck("AR1100")~+ ~I guess so, sure.~ DO ~StartStore("k9STO09",LastTalkedToBy(Myself)) ~ EXIT
+~AreaCheck("AR1200")~+ ~Please show me your wares~ DO ~StartStore("k9STO06",LastTalkedToBy(Myself)) ~ EXIT
++ ~I think I'll be going now.~ EXIT
END


