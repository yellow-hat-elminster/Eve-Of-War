BEGIN k9commfe

IF ~RandomNum(5,1)~ THEN BEGIN 0
SAY ~What you be wantin? If ya ain't dealing with this cold I ain't interested in talking t'ya further.~ IF ~~ THEN EXIT
END

IF ~RandomNum(5,2)~ THEN BEGIN 1
SAY ~Good to hear the mayor brought someone to help. I was thinking I'd freeze before the cretin did something.~ IF ~~ THEN EXIT
END

IF ~RandomNum(5,3)~ THEN BEGIN 2
SAY ~Did you hear about the new arrivals in town? I hear they've come all the way from Baldur's Gate to help us.~ IF ~~ THEN EXIT
END

IF ~RandomNum(5,4)~ THEN BEGIN 3
SAY ~Would ya believe my no good husband sits around while we freeze? It's about time we leave this place.~ IF ~~ THEN EXIT
END

IF ~RandomNum(5,5)~ THEN BEGIN 4
SAY ~I've got nothin to say to you stranger.~ IF ~~ THEN EXIT
END