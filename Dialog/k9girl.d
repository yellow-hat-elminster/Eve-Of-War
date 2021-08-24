BEGIN k9girl


IF ~NumTimesTalkedTo(0) Global("k9darrensheaf","GLOBAL",2) Global("k9kidmissing","GLOBAL",1)~ THEN
BEGIN 0
      SAY ~Ohh uhh, hello?~ IF ~~ THEN EXIT
END


IF ~NumTimesTalkedTo(1) Global("k9darrensheaf","GLOBAL",2) Global("k9kidmissing","GLOBAL",1)~ THEN
BEGIN 1
      SAY ~Leave me alone! I just wanna play!~ IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(2) Global("k9darrensheaf","GLOBAL",2) Global("k9kidmissing","GLOBAL",1)~ THEN
BEGIN 2
      SAY ~Do you know my uncle? My mom made told me to stay with him today. But he never wants to play.~
      ++ ~Your uncle has been looking everywhere for you. You should go come with me back to him.~ GOTO 3
END

IF ~~ THEN
BEGIN 3
      SAY ~But standing around over there is soo boring.~
      +~CheckStatGT(Player1,8,CHR)~+ ~I understand, but he can't spend all day looking for you. If we go talk to him maybe he will agree to play.~ GOTO 4
      +~CheckStatLT(Player1,9,CHR)~+ ~Alright you little rat. He's sent me to get ya and you're coming back with me.~ GOTO 5
            +~CheckStatGT(Player1,8,CHR)~+ ~If you really don't want to go back to him I won't force you. But you should go home instead.~ GOTO 6
END

IF ~~ THEN
BEGIN 4
SAY ~Ohh ok. I'll just pick up my things and we can go.~ IF ~~ THEN DO ~AddJournalEntry(@120,QUEST) SetGlobal("k9kidmissing","GLOBAL",1) SetGlobal("k9kidfound","GLOBAL",1)~ EXIT
END

IF ~~ THEN
BEGIN 5
SAY ~Leave me alone. I'm going home!~ IF ~~ THEN DO ~AddJournalEntry(@133,QUEST) SetGlobal("k9kidmissing","GLOBAL",1) SetGlobal("k9wenthome","GLOBAL",1) SetGlobal("k9kidfound","GLOBAL",1)~ EXIT
END

IF ~~ THEN
BEGIN 6
SAY ~I guess I'll go home then. Bye.~ IF ~~ THEN DO ~AddJournalEntry(@133,QUEST) SetGlobal("k9kidmissing","GLOBAL",1) SetGlobal("k9wenthome","GLOBAL",1) SetGlobal("k9kidfound","GLOBAL",1)~ EXIT
END

IF ~RandomNum(4,1)~ THEN BEGIN 7
SAY ~My father once killed a dragon!~ IF ~~ THEN EXIT
END

IF ~RandomNum(4,2)~ THEN BEGIN 8
SAY ~When I grow up I want to be just like you!~ IF ~~ THEN EXIT
END


IF ~RandomNum(4,3)~ THEN BEGIN 9
SAY ~Have you met Albert? He scares me sometimes.~ IF ~~ THEN EXIT
END

IF ~RandomNum(4,4)~ THEN BEGIN 10
SAY ~I'm not supposed to talk to strangers.~ IF ~~ THEN EXIT
END
