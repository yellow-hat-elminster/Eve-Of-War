APPEND Gorion


IF WEIGHT #-99 ~True() OR(2) NumTimesTalkedTo(0) !NumTimesTalkedTo(0) Global("k9AttackedGorion","GLOBAL",1)~ THEN BEGIN CandlekeepAttack
  SAY ~Hmm... enough of that. I've asked Jondalar to assist you with training to fight. Do not tarry further child, there is much we still need to do and time is not on our side.~
  IF ~~ THEN  EXIT

END

IF WEIGHT #-98 ~True() OR(2) NumTimesTalkedTo(0) !NumTimesTalkedTo(0) Global("k9AttackedGorion","GLOBAL",2)~ THEN BEGIN CandlekeepAttack
  SAY ~It seems as though you are becoming that which I feared. No matter, I swore to protect and guide you as best as I could and that shall not change. Come with me child.~
  IF ~~ THEN DO~
ClearAllActions()
StartCutSceneMode()
StartCutScene("ch1cut01")~ EXIT

END




IF WEIGHT #-97 ~True() OR(2) NumTimesTalkedTo(0) !NumTimesTalkedTo(0) Global("AttackedCandleKeep","GLOBAL",1)~ THEN BEGIN CandlekeepMad
  SAY ~It seems as though you are becoming that which I feared. No matter, I swore to protect and guide you as best as I could and that shall not change. Come with me child, I shall do my best to hide thee. I have enough friends to get us out of this place, though when we might be welcomed back is another matter entirely.~
  IF ~~ THEN DO~
ClearAllActions()
StartCutSceneMode()
StartCutScene("k9cutgor")~ EXIT

END

END

