BEGIN k9serpb2


IF ~RandomNum(5,1)~ THEN BEGIN 1
SAY ~Did I ever tell you that Hendern has a special room in the inn? He's the only one allowed to use it.~ IF ~~ THEN UNSOLVED_JOURNAL @665561 EXIT
END

IF ~ RandomNum(5,2)~ THEN BEGIN 2
SAY ~Odd thing about Hendern. The man always orders for two, but won't let anyone in the room to see who he is ordering for.~ IF ~~ THEN UNSOLVED_JOURNAL @665562 EXIT
END

IF ~RandomNum(5,3)~ THEN BEGIN 3
SAY ~Hendern is a rather strange fellow. Tends to keep to his room. I've never even seen a visitor looking for the man.~ IF ~~ THEN UNSOLVED_JOURNAL @665563 EXIT
END


IF ~RandomNum(5,4)~ THEN BEGIN 4
SAY ~If things keep up like this I may need to close. Can't be bothered staying open if customers can't afford the food and drink.~ IF ~~ THEN EXIT
END


IF ~RandomNum(5,5)~ THEN BEGIN 8
SAY ~That Shaja woman came into town recently. Can't really see why she'd come all the way out here. Seems a bit strange if you ask me.~ IF ~~ THEN EXIT
END