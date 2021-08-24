BEGIN k9taerom


IF ~OR(2) NumTimesTalkedTo(0) NumTimesTalkedToGT(0)~ THEN
BEGIN k9familiartalk
	SAY ~Hello there. Is there anything I can do for you on this fair day?~
        +~ PartyHasItem("potn48")
Global("bd_show_once","LOCALS",0)~+ ~I've just come from Nashkel. I found this vial on one of the kobolds lurking in the mines; I think it might be what's causing the iron to break.~ GOTO 3
	++~I'd like to see your wares.~ GOTO k9here
        ++~Why are you in here?~ GOTO k9master
END


IF ~~ THEN
BEGIN k9here
	SAY ~Sorry friend but as ye can see I'm not workin the smithy. Should be someone to take care of ye if ye visit the shop though.~ IF ~~ EXIT
END

IF ~~ THEN
BEGIN k9master
	SAY ~Towns a bit rattled - what with the bandit situation being what it is. Just here to give Kelddath my advice is all.~ IF ~~ EXIT
END


IF ~~ THEN BEGIN 3
SAY ~Well, would you look at that. I'm afraid I'm needed here and am not workin the smithy today. But ye should show that to my apprentice. Between the two of us we should find a counteracting agent well enough.~ IF ~~ THEN EXIT
END