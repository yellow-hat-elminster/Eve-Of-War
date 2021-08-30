BEGIN k9Aluena


IF ~NumTimesTalkedTo(0)~ THEN
BEGIN 0
      SAY ~I see our ferryman was successful. Well then, who stands before me?~
    ++ ~Who stands before me?~ GOTO 1
    +~GlobalLT("k9serpentsolved","GLOBAL",3)~+ ~The party of <CHARNAME>.~ GOTO 3
    +~GlobalLT("k9serpentsolved","GLOBAL",3)~+ ~Just some folks looking to solve your problems for some simple coin.~ GOTO 3

    +~GlobalGT("k9serpentsolved","GLOBAL",2)~+ ~The party of <CHARNAME>.~ GOTO 6
    +~GlobalGT("k9serpentsolved","GLOBAL",2)~+ ~Just some folks looking to solve your problems for some simple coin.~ GOTO 6
    END


IF ~~ THEN
BEGIN 1
      SAY ~Aluena Halacanter. I suppose you could think of me as a leader of this village, though lately Tomlin seems to have taken on that role from me rather nicely.~
    ++ ~And just what is it you do here?~ GOTO 2
    ++ ~Fair enough. I think I'll be going now.~ EXIT
END

IF ~~ THEN
BEGIN 2
      SAY ~These days I largely dabble in magic. There was a time when I involved myself in some of the town's more day-to-day matters, but with the threat of Caelar's crusade and this sudden cold I have found little time for such things. Thankfully quite some time ago Tomlin began taking up the leadership of the town.~
    +~GlobalLT("k9serpentsolved","GLOBAL",3) Global("k9aluenatalk","GLOBAL",0)~+ ~What do you think is the cause of all this? Who do you think is responsible?~ GOTO 5
    ++ ~You dabble in magic? Does that mean you have magic goods for sale?~ GOTO 8
    ++ ~Do you really think a place like this is likely to see Caelar's army?~ GOTO 7
    ++ ~I'll be going now.~ EXIT
END


IF ~~ THEN
BEGIN 3
      SAY ~Indeed. Well, Tomlin and Jeb certainly seem to have faith in your abilities. I suppose we will just have to see.~
    ++ ~Who are you?~ GOTO 1
    ++ ~I'll be going now.~ EXIT
END


IF ~NumTimesTalkedToGT(0)~ THEN
BEGIN 4
      SAY ~I see you are still here. What is it you wish?~
    ++ ~Who are you?~ GOTO 1
    ++ ~I'll be going now.~ EXIT
END



IF ~~ THEN
BEGIN 5
      SAY ~I suspect it might be divine magic at work here. Changing the weather for such a period of time would prove extremely taxing to any mage.~
    ++ ~Do you really think a place like this is likely to see Caelar's army?~ DO ~IncrementGlobal("k9Jashaknow","GLOBAL",1) SetGlobal("k9aluenatalk","GLOBAL",1) AddJournalEntry(@66064222,QUEST)~ GOTO 7
    ++ ~Thanks for the information. I'll be going now.~ DO ~IncrementGlobal("k9Jashaknow","GLOBAL",1) SetGlobal("k9aluenatalk","GLOBAL",1) AddJournalEntry(@66064222,QUEST)~ EXIT
END


IF ~~ THEN
BEGIN 6
      SAY ~Indeed. Well, you've certainly proved yourselves already here.~
    ++ ~Who are you?~ GOTO 1
    ++ ~I'll be going now.~ EXIT
END



IF ~~ THEN
BEGIN 7
      SAY ~I'll admit it is unlikely. Still, would you not agree that even the smallest of villages would be wise to be prepared?~
    ++ ~That is very true.~  EXIT
    ++ ~I'm not really interested in this conversation anymore. I'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 8
SAY ~I suspect Hendern would by more suited for your needs there. I have never shared any interest in the selling of potions and magical trinkets.~
++ ~So you have nothing for sale then?~ GOTO 9
++ ~Farewell.~ EXIT
END

IF ~~ THEN BEGIN 9
SAY ~In other years I might have offered you one of my pegasi. They're beautiful, useful creatures for any adventuring party. Alas, with only sparse food supplies in the village I was forced to send them to an ally in the south. Should you find yourself in Berdusk talk to Cylyria Dragonbreast, the leader of the city. For enough coin I'm told she will sell them to anyone. A fortunate opportunity for you... as I am far more fickle.~
++ ~I don't think I'll be going to Berdusk anytime soon. But thanks for the offer.~ EXIT
++ ~Farewell.~ EXIT
END




