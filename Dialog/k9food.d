BEGIN k9food

IF ~True()~ THEN BEGIN 0
SAY ~Well hello <SIRMAAM>. I've got some great selection of food here. Can I interest you in anything?~
++ ~I guess so, sure.~ DO ~StartStore("k9STO01",LastTalkedToBy(Myself)) ~ EXIT
++ ~I think I'll be going now.~ EXIT
END