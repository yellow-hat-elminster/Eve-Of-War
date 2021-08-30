BEGIN k9red

IF ~RandomNum(8,1)~ THEN BEGIN 0

SAY ~You haven't seen my wife have you? If you see her don't tell her I'm here. I'll never hear the end of it.~ IF ~~ THEN EXIT
END

IF ~RandomNum(8,2)~ THEN BEGIN 1

SAY ~You new to town? Good you came when you did. Lodge used to be a bit of a dump to be honest.~ IF ~~ THEN EXIT
END


IF ~RandomNum(8,3)~ THEN BEGIN 2

SAY ~Heard about your little quest. I'm pulling for you. We're all in this together.~ IF ~~ THEN EXIT
END

IF ~RandomNum(8,4)~ THEN BEGIN 3

SAY ~I'm a man, but I can change, If I have to, I guess.~ IF ~~ THEN EXIT
END

IF ~RandomNum(8,5)~ THEN BEGIN 4

SAY ~Fine weather we've been having lately.~ IF ~~ THEN EXIT
END

IF ~RandomNum(8,6)~ THEN BEGIN 5

SAY ~Ehh? I've got nothing to say to you.~ IF ~~ THEN EXIT
END


IF ~RandomNum(8,7)~ THEN BEGIN 6

SAY ~What are you talking to me for? Get back out there and solve this thing.~ IF ~~ THEN EXIT
END

IF ~RandomNum(8,8)~ THEN BEGIN 7

SAY ~If you happen up the ladder to Ranger Gord's tower then be warned. He's not all right up in the head ye know.~ IF ~~ THEN EXIT
END



IF ~~ THEN BEGIN 8

SAY ~Heh, I'd say they should come over here. Talk to me.~ IF ~~ THEN EXTERN k9serpbr 23
END

