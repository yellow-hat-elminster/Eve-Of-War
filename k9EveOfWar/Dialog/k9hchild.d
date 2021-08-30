BEGIN k9hchild

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0

SAY ~Hey! You aren't supposed to be in here.~
++ ~Whats your name little one?~ GOTO 1
++ ~Who are you?~ GOTO 1
++ ~I'll go where I wish.~ GOTO 2
++ ~Why are you hiding here?~ GOTO 3
++ ~I'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 1
SAY ~I'm not supposed to talk to strangers.~
++ ~Why are you hiding here?~ GOTO 3
++ ~I'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 2
SAY ~You shouldn't be here.~
++ ~Why are you hiding here?~ GOTO 3
++ ~I'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 3
SAY ~Dad said not to talk to strangers. Said I needed to stay here for my safety.~
+~Dead("k9hender")~+ ~Your dad is dead.~ DO ~SetGlobal("k9serpentchilddead","GLOBAL",1)~ GOTO 4
+~!Dead("k9hender")~+ ~It's probably best that you do.~ EXIT
++ ~I'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 4
SAY ~(the child slumps upon hearing this news) Ohh.~
+~CheckStatGT(Player1Fill, 10, CHR)~+ ~You should head over to the local cleric. I'll have a talk with them. Maybe they will agree to feed you.~ GOTO 5
+~CheckStatLT(Player1Fill, 11, CHR)~+ ~You should head over to the local cleric. I'll have a talk with them. Maybe they will agree to feed you.~ GOTO 6
++ ~Best of luck kid, you'll need it.~ DO ~SetGlobal("k9serpenttrial","GLOBAL",1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 5
SAY ~Ohh. Ok.~ IF ~~ THEN DO ~SetGlobal("k9serpentchilddead","GLOBAL",1) AddJournalEntry(@66075,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 6
SAY ~NO! Get away from me!~ IF ~~ THEN DO ~SetGlobal("k9serpenttrial","GLOBAL",1) EscapeArea()~ EXIT
END

IF ~Global("k9serpentchilddead","GLOBAL",2)~ THEN BEGIN 7
SAY ~I'm not supposed to talk to strangers.~
++ ~I talked to the local cleric. They've agreed to take you in.~ GOTO 8
++ ~I'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 8
SAY ~Umm. Ok.~ IF ~~ THEN DO ~SetGlobal("k9serpentchilddead","GLOBAL",3)     AddexperienceParty(1500)
 AddJournalEntry(@66078,QUEST_DONE) EscapeArea()~ EXIT
END