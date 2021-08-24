BEGIN k9milit6


IF ~NumTimesTalkedTo(0) GlobalLT("k9kidfound","GLOBAL",1) Global("k9darrensheaf","GLOBAL",2)~ THEN
BEGIN 0
      SAY ~Hey, have you seen any little kid around here. I swear I saw that rat somewhere.~
		+~!Global("k9kidfound","GLOBAL",1)~+ ~Can't say I have. Who are you looking for and why aren't you at your post?~ GOTO 1
		+~Global("k9kidfound","GLOBAL",1)~+ ~Actually yes. She mentioned something about going home. Got bored sitting around with her "stupid uncle."~
 			GOTO 4
END


//responding to charname
IF ~~ THEN
BEGIN 1
	SAY ~Sister's got a kid. Told her I'd keep an eye on her, show her the ropes. Damn kid goes and sneaks away on me.~ IF~~ THEN EXTERN ~k9Milif6~ 1
END
//responding to militia
 IF ~~ THEN
BEGIN 2
	SAY ~She didn't run away. Just snuck off is all. Damn kid goes and sneaks away on me. I'll show her a thing or two.~ IF~~ THEN EXTERN ~k9Milif6~ 2
END




 IF ~~ THEN
BEGIN 3
	SAY ~Yea, yea. Anyways, you seen the kid?~
		+~!Global("k9kidfound","GLOBAL",1)~+ ~Can't say I have but I'll keep in eye out for her.~ DO ~AddJournalEntry(@132,QUEST) SetGlobal("k9kidmissing","GLOBAL",1)~ EXIT
END


//after talking to kid (but not talking to militia for second time)

 IF ~Global("k9darrensheaf","GLOBAL",2) Global("k9kidfound","GLOBAL",1) Global("k9wenthome","GLOBAL",0)~ THEN
BEGIN 7
	SAY ~There ye are! We've been looking everywhere for you. You and I have some talkin to do. In the meantime we gotta get back to our post.~  IF ~~ THEN DO ~AddJournalEntry(@119,QUEST) SetGlobal("k9kidfound","GLOBAL",2) SetGlobal("k9kidmissing","GLOBAL",2) SetGlobal("k9darrensheaf","GLOBAL",3) SetGlobal("k9postwalk","GLOBAL",1) SetGlobal("k9postgirlwalk","GLOBAL",1)~ EXIT
END

IF ~Global("k9darrensheaf","GLOBAL",2)~ THEN
BEGIN 8
      SAY ~Hey, have you seen any little kid around here. I swear I saw that rat somewhere.~
		+~!Global("k9kidfound","GLOBAL",1)~+ ~Can't say I have. Who are you looking for and why aren't you at your post?~ GOTO 1
		+~Global("k9kidfound","GLOBAL",1)~+ ~Actually yes. She mentioned something about going home. Got bored sitting around with her "stupid uncle."~
 			GOTO 4
END


 IF ~~ THEN
BEGIN 4
      SAY ~Little brat. Well, long as she ain't in trouble I dont care no more. Lets head back to our post.~ IF ~~ THEN DO ~AddJournalEntry(@1190,QUEST) SetGlobal("k9kidmissing","GLOBAL",2) SetGlobal("k9darrensheaf","GLOBAL",3) SetGlobal("k9postwalk","GLOBAL",1)~ EXIT
END

IF ~Global("Chapter","GLOBAL",3)~ THEN
BEGIN 5
SAY ~Hope someone takes care of the bandits. Nasty buggers keepin everyone here on edge.~ IF ~~ THEN EXIT
END


IF ~GlobalGT("Chapter","GLOBAL",3)~ THEN
BEGIN 6
SAY ~I think when this is over I'll settle down near Berdusk.~ IF ~~ THEN EXIT
END


