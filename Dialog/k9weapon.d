BEGIN k9weapon

IF ~True()~ THEN BEGIN 0
SAY ~Hello, good <SIRMAAM>. Would you like to see my fine array of weapons? Best prices in Beregost!~
++ ~I guess so, sure.~ DO ~StartStore("k9STO02",LastTalkedToBy(Myself)) ~ EXIT
++ ~I think I'll be going now.~ EXIT
END

