

REPLACE_TRANS_ACTION SAREVO BEGIN 25 END BEGIN 0 END ~Wait(1)~ ~~

REPLACE_TRANS_ACTION SAREVO BEGIN 25 END BEGIN 0 END ~ActionOverride("Belt",ForceSpell(Player1,SAREVOK_STRIKE))~ ~~

REPLACE_TRANS_ACTION SAREVO BEGIN 25 END BEGIN 0 END ~ActionOverride("Liia",ForceSpell(Player1,SAREVOK_STRIKE))~ ~~

 REPLACE_TRANS_ACTION SAREVO BEGIN 25 END BEGIN 0 END ~Wait(2)~ ~~
 REPLACE_TRANS_ACTION SAREVO BEGIN 25 END BEGIN 0 END ~Kill(Player1)~ ~~



ADD_TRANS_ACTION SAREVO BEGIN 7  END BEGIN  0 END ~SetGlobal("k9duke","GLOBAL",1)~

ADD_STATE_TRIGGER SAREVO 8 ~Global("k9skip","GLOBAL",0)~

APPEND SAREVO

IF WEIGHT #-99 ~ Dead("Liia")
Dead("Belt")      Global("k9BeltRe","GLOBAL",2)
AreaCheck("AR0108")
!Global("SarevokBehavior","GLOBAL",3)
Global("k9Belt","GLOBAL",2) Global("k9skip","GLOBAL",0)~ THEN BEGIN k926
SAY ~The Grand Dukes are dead, killed by assassins in our midst. Look there! The killers accused of murdering the leaders of the Iron Throne! They must be part of the plot. I don't want them alive! Kill them! Kill them all! You have FAILED, <CHARNAME>!~ IF ~~ THEN DO ~SetGlobal("k9skip","GLOBAL",1)~ EXTERN ~deltan2~ 3

END

IF WEIGHT #-98~~ THEN BEGIN k927 // from:
  SAY ~Enough. Clearly I should not have trusted Rashad to do as I asked. No matter. Word will soon spread in the city of the terrible shame that befell Duke Eltan. How he died on the palace floor after fighting the party of <CHARNAME>.~
  IF ~~ THEN DO ~SetGlobal("SarevokBehavior","GLOBAL",4)
TriggerActivation("Door0200",FALSE)
TriggerActivation("Door0109a",FALSE)
TriggerActivation("Door0109b",FALSE)
TriggerActivation("Door0111",FALSE)
SetGlobalTimer("SarevokRun","GLOBAL",10)
Shout(2)
Enemy()
~ EXIT
END



IF WEIGHT #-97 ~ Dead("Liia")
Dead("Belt")
AreaCheck("AR0108")
!Global("SarevokBehavior","GLOBAL",3)
Global("k9Belt","GLOBAL",2) Global("k9skip","GLOBAL",0)~ THEN BEGIN k928
SAY ~The Grand Dukes are dead, killed by assassins in our midst. Look there! The killers accused of murdering the leaders of the Iron Throne! They must be part of the plot. I don't want them alive! Kill them! Kill them all! You have FAILED, <CHARNAME>!~ IF ~~ THEN DO ~SetGlobal("k9skip","GLOBAL",1)~ EXTERN ~k9fisce~ 0

END

IF WEIGHT #-96~~ THEN BEGIN k929 // from:
  SAY ~Enough. I've given you instructions and I expect you to obey. Let this be a lesson to other members of the Fist. Anyone who challenges *my* authority will lose their head.~
  IF ~~ THEN DO ~SetGlobal("SarevokBehavior","GLOBAL",4)
TriggerActivation("Door0200",FALSE)
TriggerActivation("Door0109a",FALSE)
TriggerActivation("Door0109b",FALSE)
TriggerActivation("Door0111",FALSE)
SetGlobalTimer("SarevokRun","GLOBAL",10)
Shout(2)
Enemy()
~ EXIT
END


IF ~~ THEN BEGIN k930
  SAY ~Enough. My assassins were weak on this day, but that won't stop me from taking your head.~
  IF ~~ THEN DO ~SetGlobal("SarevokBehavior","GLOBAL",4)
TriggerActivation("Door0200",FALSE)
TriggerActivation("Door0109a",FALSE)
TriggerActivation("Door0109b",FALSE)
TriggerActivation("Door0111",FALSE)
SetGlobalTimer("SarevokRun","GLOBAL",10)
Shout(2)
Enemy()
~ EXIT
END
END
