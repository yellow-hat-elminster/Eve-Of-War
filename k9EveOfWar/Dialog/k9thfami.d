BEGIN k9thfami


IF ~OR(2) NumTimesTalkedTo(0) NumTimesTalkedToGT(0)~ THEN
BEGIN k9familiartalk
	SAY ~Yea? What cha be wantin? Master didn't say nothin bout talkin to low borns.~
	++~Sorry little one. Why are you here?~ GOTO k9here
        ++~Who is your master?~ GOTO k9master
END


IF ~~ THEN
BEGIN k9here
	SAY ~Bringin word to my master. That I be sure. What word is not me to be knowin.~ IF ~~ EXIT
END

IF ~~ THEN
BEGIN k9master
	SAY ~Th..Th..Thalantyr. No one ever asked but it be a bit much t'say. Wish his name was Neb. Keep'in the things simple then.~ IF ~~ EXIT
END
