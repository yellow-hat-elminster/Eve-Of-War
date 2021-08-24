APPEND BELT

IF WEIGHT #-99 ~Global("SarevokBehavior","GLOBAL",10) Global("k9Belt","GLOBAL",2)~ THEN BEGIN k916
SAY ~Just one minute Sarevok. Before this ceremony began I recieved word that Duke Eltan was being poisoned. Were it not for the actions of <CHARNAME> I would not have even known this. Duke Eltan is in safe hands now and has revealed <CHARNAME>'s true role here. With the death of Entar, and now this attack, I believe it is clear that there has been a plot against the dukes on this day. For all <HISHER> transgressions I don't believe <CHARNAME> is responsible.~  IF ~~ THEN EXTERN SAREVO 30
END 

IF WEIGHT #-98 ~Global("SarevokBehavior","GLOBAL",10)~ THEN BEGIN k917
SAY ~Your actions here <CHARNAME> may have saved my life, but they cannot excuse your crimes. For the murder of the leaders of the Iron Throne and for fleeing the Fist's justice I sentence you to death.~  IF ~~ THEN DO ~ Wait(1) ActionOverride("Liia",ForceSpell(Player1,SAREVOK_STRIKE))
Wait(2)
Kill(Player1) ~ EXIT
END

END