BEGIN k9melica


IF ~True()~ THEN
BEGIN k9familiartalk
	SAY ~Ohh, <CHARNAME>. Thanks again for freeing me.~
	++ ~Why are you here? Are you no longer Thalantyr's apprentice?~ GOTO k9here
        ++ ~It was good seeing you again.~ EXIT
END


IF ~~ THEN
BEGIN k9here
	SAY ~To the contrary. To pay him back for the bracers I'm carrying messages from the council daily. It's a thankless job, but at least I'm alive.~ IF ~~ EXIT
END
 