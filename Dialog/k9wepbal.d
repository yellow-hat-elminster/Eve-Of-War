BEGIN k9wepbal

IF ~True()~ THEN BEGIN 0
SAY ~Hello, good <SIRMAAM>. Would you like to see my fine array of weapons? Best prices in Baldur's Gate!~
+~AreaCheck("AR0200")~+ ~Please show me your wares.~ DO ~StartStore("k9STO09",LastTalkedToBy(Myself)) ~ EXIT
+~AreaCheck("AR1100")~+ ~Please show me your wares.~ DO ~StartStore("k9STO22",LastTalkedToBy(Myself)) ~ EXIT
++ ~I think I'll be going now.~ EXIT
END
