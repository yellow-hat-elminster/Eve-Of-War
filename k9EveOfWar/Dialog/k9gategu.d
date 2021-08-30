APPEND FLAMGATE

IF WEIGHT #-99 ~Global("k9negotiations","GLOBAL",1) Global("k9baldurnegotiations","GLOBAL",1)~ THEN BEGIN k91
SAY ~Oh my, hello there. I haven't seen a face in... forever! I suppose you were the one Officer Vai sent.~
++ ~Yes, she mentioned the refugee problem up north. I see a few have found their way here so far. Do you know how many are expected?~ GOTO k92
 END

IF ~~ THEN BEGIN k92
SAY ~Can't say at this point. Mostly just heard from from merchants and traders coming down from that way.

Don't normally use this gate either. But leaving from it will be a lot quicker than going all the way around. Just let me know when you are reading to leave.~
++ ~I'm ready to go now.~ DO ~SetGlobal("k9baldurnegotiations","GLOBAL",2) SetWorldmap("k9sodmap") ClearAllActions()
StartCutSceneMode()
StartCutScene("k9cutvai")~ EXIT
++ ~I'm not yet ready.~ EXIT
 END

 



END

