APPEND LIIA

IF WEIGHT #-99 ~Global("SarevokBehavior","GLOBAL",10) Global("k9Belt","GLOBAL",2)~ THEN BEGIN k914
SAY ~Hold a moment Sarevok. Not long ago I recieved word that Duke Eltan was being poisoned, a fact uncovered by none other than <CHARNAME>. He is in safe hands now. I believe there has been a plot against us on this day and for all their transgressions I don't believe <CHARNAME> is responsible.~  IF ~~ THEN EXTERN SAREVO 30
END 

IF WEIGHT #-98 ~Global("SarevokBehavior","GLOBAL",10)~ THEN BEGIN k915
SAY ~For the murder of the leaders of the Iron Throne, and for your illegal flight from Candlekeep, I sentence you to death.~  IF ~~ THEN DO ~ Wait(1) ActionOverride("Liia",ForceSpell(Player1,SAREVOK_STRIKE))
Wait(2)
Kill(Player1) ~ EXIT
END

END