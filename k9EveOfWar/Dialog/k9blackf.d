BEGIN k9blackf

IF ~NumTimesTalkedTo(0) RandomNum(3,1)~ THEN BEGIN 0
SAY ~Don't know ya, don't wanna know ya. Keep movin.~ IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(0) RandomNum(3,2)~ THEN BEGIN 1
SAY ~Bit odd to see ogres standin bout like they be in camp. Not that I'm about t'be tellin em where to stand.~ IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(0) RandomNum(3,3)~ THEN BEGIN 2
SAY ~Heard some git down in Nashkel solved da mine problems they had goin down there.~ IF ~~ THEN EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 2
SAY ~Heard Tazok got Ardenor ta bring in more of his forces here. Seemed awful worried bout the camp. Not much that could take this place I recken.~ IF ~~ THEN EXIT
END