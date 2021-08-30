BEGIN k9delwyn


IF ~NumTimesTalkedTo(0)~ THEN
BEGIN 0
      SAY ~Ho friends...I see you have come to assist us against this plight. This is welcome indeed. Our supplies here are low, far too low for my tastes. Tis normally a long winter in these parts and have little time yet to gather what we need for it.~
    ++ ~Who are you?~ GOTO 1
    ++ ~I'll be going now.~ EXIT
END


IF ~~ THEN
BEGIN 1
      SAY ~Delwyn Whitedyke at your service. As a paladin in the service of Helm I lead the town's militia and organize its defenses.~
    ++ ~Under the circumstances you seem to have been doing a poor job.~ GOTO 2
    ++ ~Fair enough. I think I'll be going now.~ EXIT
END

IF ~~ THEN
BEGIN 2
      SAY ~I protect the town from beasts and maintain order. I find magical affairs best left up to Aluena or Hendern.~
    ++ ~Fair enough. I think I'll be going now.~ EXIT
END


IF ~NumTimesTalkedToGT(0)~ THEN
BEGIN 3
      SAY ~Ho friends...back again I see. How can I help you?~
    ++ ~Who are you?~ GOTO 1
    ++ ~I'll be going now.~ EXIT
END