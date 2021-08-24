BEGIN k9wepcen

IF ~True()~ THEN BEGIN 0
SAY ~Hello, good <SIRMAAM>. Would you like to see my fine array of weapons? Best prices in Baldur's Gate!~
++ ~Please show me your wares.~ DO ~StartStore("k9STO21",LastTalkedToBy(Myself)) ~ EXIT
++ ~I think I'll be going now.~ EXIT
END
