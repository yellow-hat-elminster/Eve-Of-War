 BEGIN k9kid2

IF ~~ THEN
BEGIN 0
	SAY ~You told me you were going to show me spells. When do I get to see those?~
	  IF ~~ THEN EXTERN ~k9baskor~ 1
END


IF ~True() Global("k9Laspeera","GLOBAL",0)~ THEN
BEGIN 1
	SAY ~Baskor said he'd show me magic if I got a book for him.~
	  IF ~~ THEN EXTERN ~k9baskor~ 2
END


IF ~True()~ THEN
BEGIN 2
	SAY ~Baskor said he'd show me magic if I got a book for him. But then a lady came and took him away.~ IF ~~ THEN EXIT

END

IF ~~ THEN
BEGIN 3
	SAY ~Do I get to see spells now?~
	  IF ~~ THEN EXTERN ~k9baskor~ 13
END
