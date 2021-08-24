BEGIN k9druidm

IF ~True()~ THEN BEGIN 0
SAY ~Well hello <SIRMAAM>. Beautiful day isn't it? Can I interest you in anything?~
++ ~I guess so, sure.~ DO ~StartStore("k9STO15",LastTalkedToBy(Myself)) ~ EXIT
++ ~I think I'll be going now.~ EXIT
END