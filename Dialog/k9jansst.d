BEGIN k9jansst

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
SAY ~Ohh, hello there stranger! The names Jiminy, Jiminy Jon Jansen. What can I get you? I've got telescopes, orbs, globes, and all sorts of things! Anything I've found in my travels really.~
++ ~Looks like a lot of junk. But I guess it might be worth a look.~ DO ~StartStore("k9STO04",LastTalkedToBy(Myself))  SetGlobal("k9jiminyknow","GLOBAL",1)~ EXIT
++ ~I think I'll be going now.~ DO ~SetGlobal("k9jiminyknow","GLOBAL",1)~ EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 1
SAY ~Ohh, hello there <CHARNAME>! What can I get you? I've got telescopes, orbs, globes, and all sorts of things! Anything I've found in my travels really.~
++ ~Looks like a lot of junk. But I guess it might be worth a look.~ DO ~StartStore("k9STO04",LastTalkedToBy(Myself))~ EXIT
++ ~I think I'll be going now.~ EXIT
END

