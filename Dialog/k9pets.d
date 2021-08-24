BEGIN k9pets

IF ~True()~ THEN BEGIN 0
SAY ~Well hello <SIRMAAM>. I've got a wide assortment of pets available. Would you like to take any home today?~
++ ~I guess so, sure.~ DO ~StartStore("k9STO07",LastTalkedToBy(Myself)) ~ EXIT
++ ~I think I'll be going now.~ EXIT
END