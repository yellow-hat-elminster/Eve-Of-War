REPLACE_TRANS_ACTION  BERRUN
BEGIN 15 16 17 21 END BEGIN 0 END ~EscapeArea()~ ~SetGlobal("k9Berrun","GLOBAL",1)~

REPLACE_TRANS_ACTION  BERRUN
BEGIN 15 16 17 21 END BEGIN 1 END ~EscapeArea()~ ~SetGlobal("k9Berrun","GLOBAL",1)~


APPEND BERRUN

IF WEIGHT #-99 ~NumTimesTalkedToGT(0) Global("k9Berrun","GLOBAL",1) Global("Chapter","GLOBAL",3)~ BEGIN 20
SAY ~The town thanks you yet again for the assistance you provided. Dealing with kobolds is always a messy business.~ IF ~~ THEN EXIT
END

IF WEIGHT #-98 ~NumTimesTalkedToGT(0) Global("k9Berrun","GLOBAL",1) Global("Chapter","GLOBAL",4)~ BEGIN 21
SAY ~I just recieved the news that you have dealt with the bandit problem up near Baldur's Gate. You have my thanks. The situation had gotten well out of hand. Anything that reduces the tensions in this region is appreciated.~ IF ~~ THEN EXIT
END

IF WEIGHT #-97 ~NumTimesTalkedToGT(0) Global("k9Berrun","GLOBAL",1) Global("Chapter","GLOBAL",5)~ BEGIN 22
SAY ~Well, I did not expect to see you anytime soon <CHARNAME>. Now that I think about it I haven't heard much coming out from the north about you lately. Not that I'd have much time to read the reports. Damn soldiers keep arriving here in droves. Need to find a bed for all of them. I swear, the Amnian Town Council must think we sit on a gold mine. How else do they expect we pay for all this?~ IF ~~ THEN EXIT
END

IF WEIGHT #-96 ~NumTimesTalkedToGT(0) Global("k9Berrun","GLOBAL",1) Global("Chapter","GLOBAL",6)~ BEGIN 23
SAY ~Hello, friend. I heard that you've been making quite a name for yourself in Baldur's Gate. Glad to hear it. If you ever have the chance to speak to the dukes, remind them that Amn has no wishes to harm the city. Some news from Amn needs to get through to them. I've been told that Amn's messengers are being intercepted before they reach the city. At first I suspected it was bandits. With their operations in the Woods of Sharp Teeth curtailed I'm not sure who is responsible.~ IF ~~ THEN EXIT
END

IF WEIGHT #-95 ~NumTimesTalkedToGT(0) Global("k9Berrun","GLOBAL",1) Global("Chapter","GLOBAL",7)~ BEGIN 24
SAY ~Friend, as much as we appreciate what you did for us its best you be about your way. Word has reached our ears about what transpired in Candlekeep. Tensions are already running high enough. We don't need Amn looking as though it is harboring the fugitives of Baldur's Gate.~ IF ~~ THEN EXIT
END

END