BEGIN k9ferry


IF ~NumTimesTalkedTo(0) AreaCheck("BD2000") ~ THEN
BEGIN 0
      SAY ~Is no one willing to help? Please <PRO_SIRMAAM> help me.~
    ++ ~Certainly. What's the problem?~ GOTO 1
    ++ ~I can, for a price.~ GOTO 2
    ++ ~I'm not interested.~ DO ~SetGlobal("k9notinterested","GLOBAL",1)~ EXIT
END



IF ~~ THEN
BEGIN 1
      SAY ~My town is under siege! For a fortnight our town has been covered in snow and ice. We don't know what fowl magic is at work, but we simply lack the supplies to survive a long winter.~
      ++ ~I think I can help you. How do I reach your town from here?~ GOTO 4
          ++ ~I'm not interested.~ DO ~SetGlobal("k9notinterested","GLOBAL",1)~ EXIT
           END
           


IF ~~ THEN
BEGIN 2
SAY ~I'll do anything if you help me. My town is under siege! For a fortnight our town has been covered in snow and ice. We don't know what fowl magic is at work, but we simply lack the supplies to survive a long winter.~ 
      ++ ~I think I can help you. How do I reach your town from here?~ GOTO 4
          ++ ~I'm not interested.~ DO ~SetGlobal("k9notinterested","GLOBAL",1)~ EXIT
           END


IF ~Global("k9notinterested","GLOBAL",1)~ THEN
BEGIN 3
SAY ~Back again I see. Are you willing to help me now?~
++ ~Yea, I think I can help you.~ DO ~SetGlobal("k9notinterested","GLOBAL",2)~ GOTO 1
++ ~Yea, I guess I can help you. For a price.~ DO ~SetGlobal("k9notinterested","GLOBAL",2)~ GOTO 2
++ ~I'm still not interested.~ EXIT
END

IF ~~ THEN
BEGIN 4
SAY ~I have a small boat we can take there. Just pack up your things and we can be on our way.~ 
++ ~Then let's go.~ DO ~ SetGlobal("k9helpedferry","GLOBAL",1) RevealAreaOnMap("ar9100") AddJournalEntry(@66047,QUEST) ClearAllActions() StartCutSceneMode()
StartCutScene("k9ferry1")~ EXIT
++ ~On second thought, I need a minute.~ EXIT
END

IF ~AreaCheck("AR9100") ~ THEN
BEGIN 5
      SAY ~Hello again. I can take you back to Bridgefort if that is what you'd wish.~
    ++ ~Yes please do so.~ GOTO 8
    ++ ~Not just yet.~ EXIT
END

IF ~AreaCheck("BD2000") Global("k9helpedferry","GLOBAL",0)~ THEN
BEGIN 6
SAY ~I have a small boat we can take there. Just pack up your things and we can be on our way.~ 
++ ~Then let's go.~ DO ~ SetGlobal("k9helpedferry","GLOBAL",1) RevealAreaOnMap("ar9100") AddJournalEntry(@66047,QUEST) ClearAllActions() StartCutSceneMode()
StartCutScene("k9ferry1")~ EXIT
++ ~On second thought, I need a minute.~ EXIT
END

IF ~AreaCheck("BD2000") GlobalGT("k9helpedferry","GLOBAL",0)~ THEN
BEGIN 7
      SAY ~Hello again. I can take you back to the Serpent's Cowl if that is what you want.~
    ++ ~Yes please do so.~ GOTO 9
    ++ ~Not just yet.~ EXIT
END

IF ~~ THEN
BEGIN 8
SAY ~I have a small boat we can take there. Just pack up your things and we can be on our way.~ IF ~~ THEN DO ~ ClearAllActions() StartCutSceneMode()
StartCutScene("k9ferry2")~ EXIT
END


IF ~~ THEN
BEGIN 9
SAY ~I have a small boat we can take there. Just pack up your things and we can be on our way.~ IF ~~ THEN DO ~ ClearAllActions() StartCutSceneMode()
StartCutScene("k9ferry1")~ EXIT
END