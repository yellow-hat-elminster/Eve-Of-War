APPEND taugos

IF WEIGHT #-99 ~Global("CDLetterCheckscrl2z","GLOBAL",1) AreaCheck("AR1900") Global("k9check","GLOBAL",0)~ THEN  BEGIN 9
SAY ~Hold it. You new to camp? What were you up to in that tent over there?~
+~NumTimesTalkedTo(0)~+ ~We thought we heard a noise inside and went in to investigate.~ GOTO 10
+~NumTimesTalkedToGT(0)~+ ~We thought we heard a noise inside and went in to investigate.~ GOTO 10
++ ~What's it to you?~ GOTO 11
++ ~Stuff it you old coot. We'll go where we want.~ GOTO 12
END

IF ~~ THEN BEGIN 16
SAY ~Hmm...who recruited you again?~
+~Global("k9teven","GLOBAL",1)~ + ~Taven.~ GOTO 15
+~Global("k9teven","GLOBAL",1)~ + ~Teven.~ GOTO 14
+~Global("k9teven","GLOBAL",1)~ + ~Tedan.~ GOTO 13
+~Global("k9raiken","GLOBAL",1)~ + ~Raiken.~ GOTO 14
+~Global("k9raiken","GLOBAL",1)~ + ~Raikan.~ GOTO 15
+~Global("k9raiken","GLOBAL",1)~ + ~Raiten.~ GOTO 13
END

IF ~~ THEN BEGIN 10
SAY ~Hmm...I don't recognize you. Who recruited you again?~
+~Global("k9teven","GLOBAL",1)~ + ~Taven.~ GOTO 15
+~Global("k9teven","GLOBAL",1)~ + ~Teven.~ GOTO 14
+~Global("k9teven","GLOBAL",1)~ + ~Tedan.~ GOTO 13
+~Global("k9raiken","GLOBAL",1)~ + ~Raiken.~ GOTO 14
+~Global("k9raiken","GLOBAL",1)~ + ~Raikan.~ GOTO 15
+~Global("k9raiken","GLOBAL",1)~ + ~Raiten.~ GOTO 13
END

IF ~~ THEN BEGIN 11
SAY ~Continue being disloyal to me and you'll meet your death. Answer the question. What were you up to in that tent over there?~
++ ~We thought we heard a noise inside and went in to investigate.~ GOTO 10
++ ~Stuff it you old coot. We'll go where we want.~ GOTO 12
END

IF ~~ THEN BEGIN 12
SAY ~You'll learn respect, ye cocky knave! To my side, Talons! ~ IF ~~ THEN DO ~Shout(1) Enemy()~ EXIT
END

IF ~~ THEN BEGIN 13
SAY ~You don't know their name? Something's not right about you. To my side, Talons! We have intruders.~ IF ~~ THEN DO ~Shout(1) Enemy()~ EXIT
END

IF ~~ THEN BEGIN 14
SAY ~Huh, I'll need to have a talk with him. Recruits aren't to be goin in that tent under *any* circumstances.~ IF ~~ THEN DO ~SetGlobal("k9check","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 15
SAY ~Hmm...not quite their name but close enough. I'll need to have a talk with him. Recruits aren't to be goin in that tent under *any* circumstances.~ IF ~~ THEN DO ~SetGlobal("k9check","GLOBAL",1)~ EXIT
END

END


ADD_TRANS_ACTION teven BEGIN 5 9 12 END BEGIN 0 END ~SetGlobal("k9teven","GLOBAL",1)~

ADD_TRANS_ACTION raiken BEGIN 5 9 11 END BEGIN 0 END ~SetGlobal("k9raiken","GLOBAL",1)~


