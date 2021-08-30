BEGIN k9mage

IF ~Global("SarevokBehavior","GLOBAL",1) Global("k9BeltRe","GLOBAL",1) ~ THEN BEGIN 0

SAY ~Sarevok likely won't have gone far. Teleport magic works best when you know the area you are going to, so they are likely still in the city.~

IF ~~ THEN EXTERN k9fisce 1
END

IF ~Global("SarevokBehavior","GLOBAL",1) Global("k9BeltRe","GLOBAL",2) ~ THEN BEGIN 1

SAY ~Sarevok likely won't have gone far. Teleport magic works best when you know the area you are going to, so they are likely still in the city.~

IF ~~ THEN EXTERN deltan2 4
END