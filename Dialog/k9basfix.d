REPLACE_TRANS_TRIGGER MTOWBE BEGIN 2 END BEGIN 0 END ~RandomNum(32,3)~ ~False()~ EXIT

APPEND MTOWBE


IF ~RandomNum(32,3)~ THEN BEGIN k939
  SAY ~Where did Bassilus come from? No one's sure, but I heard he may have lived at Zhentil Keep. People here say he's been found mumbling about the keep. Kept sayin its been destroyed, that giants killed his whole family. The fates have cursed him if that is what he's been led to believe.~   IF ~~ THEN EXIT

END




END