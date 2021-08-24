BEGIN k9acolyt


IF ~NumTimesTalkedTo(0)~ THEN
BEGIN k9acolyttalk
	SAY ~Ahh hello my friends. Welcome to the Burning Wizard. I'm sorry to say it's seen better times. But please grab a table and enjoy yourselves.~
	++ ~What happened to this man?~ GOTO 1
	++ ~Are you a priest? I require healing.~ GOTO 3
        ++ ~Good day to you then.~ EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN
BEGIN k9acolyttalk2
	SAY ~Can you believe me and my brothers and sisters used to gamble here? When times were better the Burning Wizard was known for its lively conversations. How times have changed.~ 	
        ++ ~What happened to this man?~ GOTO 1
	++ ~Are you a priest? I require healing.~ GOTO 3
        ++ ~Good day to you then.~ EXIT
 END

IF ~~ THEN BEGIN 1
SAY ~He was seriously injured on patrol. I have tended to his wounds. When his strength returns I'll bring him up to room here.~
++ ~Why are you treating him here? Why not at the temple?~ GOTO 2
++ ~Good day to you then.~ EXIT
END

IF ~~ THEN BEGIN 2
SAY ~Our temple is more for worship sadly than for rest and healing. He is better off being treated here.~  IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN 3
SAY ~If you are in need of healing or seek to donate to our church one of my brothers or sisters at the Song of the Morning will quite happily assist you. Our temple is east of the town.~    IF ~~ THEN EXIT
END

