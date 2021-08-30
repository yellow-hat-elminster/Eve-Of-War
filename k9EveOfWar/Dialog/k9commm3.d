BEGIN k9commm3

IF ~RandomNum(5,1)~ THEN BEGIN 0
SAY ~Barkeep better bring me another ale. Bout the only thing workin round here is the drinks.~ IF ~~ THEN EXIT
END

IF ~RandomNum(5,2)~ THEN BEGIN 1
SAY ~If it ain't the frost it's the dragons. This damn place is cursed.~ IF ~~ THEN EXIT
END

IF ~RandomNum(5,3)~ THEN BEGIN 2
SAY ~Should have left this place to the Yuan Ti.~ IF ~~ THEN EXIT
END

IF ~RandomNum(5,4)~ THEN BEGIN 3
SAY ~The food in this place is crap, but the ale ain't bad. ~ IF ~~ THEN EXIT
END

IF ~RandomNum(5,5)~ THEN BEGIN 4
SAY ~What ya be wantin stranger? I ain't got nothin t'say to ye.~ IF ~~ THEN EXIT
END