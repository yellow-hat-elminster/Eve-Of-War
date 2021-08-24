BEGIN k9monk1

IF ~True()~ THEN BEGIN 0
SAY ~(The monk stands here, eyes closed, in complete silence. You doubt very much he would wish to be disturbed.)~
++ ~Excuse me. What are you doing?~ GOTO 1
++ ~Leave without disturbing him.~ EXIT
END

IF ~~ THEN BEGIN 1
SAY ~I'm sorry but I must insist you leave this room. These are private chambers.~
++ ~If you don't mind me asking what is it you are doing?~ GOTO 2
++ ~Very well.~ EXIT
END

IF ~~ THEN BEGIN 2
SAY ~I am meditating in the hopes that Chauntea will see to restore what has been lost in our village. Please leave me be.~ IF ~~ THEN DO ~SetGlobal("k9monkmeditate","GLOBAL",1)~ EXIT
END