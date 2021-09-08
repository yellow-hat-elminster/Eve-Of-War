BEGIN k9yeorg
                        
IF ~NumTimesTalkedTo(0)~ THEN
BEGIN 0
	SAY ~I thought I made it abundantly clearly to that halfwit of a halfling that I wasn't to be disturbed. I swear, even simple instruction seems to be beyond them.~
		+ ~~ + ~Such harsh language for such simple folk. What ails you friend? Perhaps we can help.~
			GOTO 1
		++ ~My apologies, I didn't mean to disturb you.~ EXIT
END


IF ~~ THEN
BEGIN 1
  SAY ~Ha! I doubt that very much. The halflings seem unaware of the very history under their boots. How would you be fare any better?~  IF ~~ THEN GOTO 2
  END
  
IF ~~ THEN BEGIN 2

SAY ~Bah, I suppose I am hardly in the position to deny your help. Hmm... I seek an artifact said to be found somewhere in this region. Unfortunately, any records of its location seem to have been destroyed some time ago.

I fear I'll just have to search these damn lands myself.~ IF ~~ THEN GOTO 3
END



IF ~~ THEN BEGIN 3
SAY ~Hmm... as I recall, the villages warriors left several nights ago and are not expected to return for some time. Something about the "stickling" of some goblin tribe or somesuch. The kobolds around the village have become a bit of a problem and I haven't the skills to fight off the little beasties. So I'll clearly need an escort for this search. 

I don't suppose your party would be willing to help?~
        ++ ~Certainly. Any thoughts on where we should be looking?~ GOTO 4
		++ ~No I'm afraid not.~ GOTO 5
 END

 
 IF ~~ THEN BEGIN 4
 SAY ~I suspect that the artifact would have once been found near the site of the elven trading town that was destroyed with the destruction of Firewine Bridge. Whether or not it is still there after all this time I suppose is anyone's guess. These halflings certainly know very little of the fate of what was left of the town.~
 ++ ~Then we will have to search the Firewine Bridge for any sight of it.~ GOTO 8
   END



IF ~~ THEN
BEGIN 5
	SAY ~No? I suppose then I'll just have to wait for the goblinsticklers to return. Fare thee well, as they say.~ IF ~~ THEN EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN
BEGIN 6
	SAY ~I see you have returned. What is it you want?~
		++ ~Earlier you said you were looking for an escort to help you search for an artifact. We've come to offer our services.~ GOTO 7
        	++ ~My apologies, I didn't mean to disturb you again.~ EXIT
END

IF ~~ THEN 
BEGIN 7
	SAY ~Ahh excellent. Then we must leave for the Firewine Bridge immediately!~  IF ~~ THEN DO ~SetGlobal("k9YeorgJoined", "GLOBAL", 1)  AddJournalEntry(@347000,QUEST)
			 JoinParty() ~ EXIT
END

IF ~~ THEN BEGIN 8
SAY ~Ahh excellent. Then we must leave at once!~  IF ~~ THEN DO ~SetGlobal("k9YeorgJoined", "GLOBAL", 1)  AddJournalEntry(@347000,QUEST)
			 JoinParty() ~ EXIT
END



