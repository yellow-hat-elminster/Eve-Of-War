BEGIN k9bellad

IF ~True()~ THEN BEGIN 0
SAY ~Hello, can't say we get many visitors round these parts. What can I get for ya?~
++ ~I'd like to see your wares.~ DO ~StartStore("k9bellad",LastTalkedToBy(Myself))~ EXIT
++ ~What kind of things do you sell?~ GOTO 1
+~Global("k9HendernKnowledge","GLOBAL",0)~+ ~What do you know about Hendern?~ GOTO 4
+~Global("k9ShajaKnowledge","GLOBAL",0)~+ ~What do you know about Shaja?~ GOTO 2
++ ~Do you know anything about this cold weather?~ GOTO 3
++ ~I'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 1
SAY ~Mostly local game and whatever other food I've gathered out in the woods. Few people in town seem to have the stomach anymore for hunting.~
++ ~I'd like to see your wares.~ DO ~StartStore("k9bellad",LastTalkedToBy(Myself))~ EXIT
+~Global("k9HendernKnowledge","GLOBAL",0)~+ ~What do you know about Hendern?~ GOTO 4
+~Global("k9ShajaKnowledge","GLOBAL",0)~+ ~What do you know about Shaja?~ GOTO 2
++ ~Do you know anything about this cold weather?~ GOTO 3
++ ~I'll be going now.~ EXIT
END


IF ~~ THEN BEGIN 2
SAY ~Shaja? She came around here not long ago - claimed she was a merchant from the south. I know enough about selling goods around here to know a story if there ever was one. I don't know what she's up to, but I doubt it has to do with selling goods.~
++ ~What kind of things do you sell?~ DO ~IncrementGlobal("k9ShajaKnowledge","GLOBAL",1)~ GOTO 1
++ ~I'd like to see your wares.~  DO ~IncrementGlobal("k9ShajaKnowledge","GLOBAL",1) StartStore("k9bellad",LastTalkedToBy(Myself))~ EXIT
+~Global("k9HendernKnowledge","GLOBAL",0)~+ ~What do you know about Hendern?~ DO ~AddJournalEntry(@665564,QUEST)~ GOTO 4
++ ~Do you know anything about this cold weather?~  DO ~IncrementGlobal("k9ShajaKnowledge","GLOBAL",1)~  GOTO 3
++ ~I'll be going now.~  DO ~IncrementGlobal("k9ShajaKnowledge","GLOBAL",1)~  EXIT
END

IF ~~ THEN BEGIN 3
SAY ~Its damn right unusual that's certain. I've lived in these parts a long time, can't say I've seen winter come this early.~
++ ~What kind of things do you sell?~ GOTO 1
++ ~I'd like to see your wares.~ DO ~StartStore("k9bellad",LastTalkedToBy(Myself))~ EXIT
+~Global("k9HendernKnowledge","GLOBAL",0)~+ ~What do you know about Hendern?~ GOTO 4
+~Global("k9ShajaKnowledge","GLOBAL",0)~+ ~What do you know about Shaja?~ GOTO 2
++ ~I'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 4
SAY ~Hendern? Can't say I trust him. Something about him has always seemed rather off. Not the sociable sort either. Tends to keep to himself mostly.~
++ ~What about Hendern did you find "rather off"?~ GOTO 5
++ ~What kind of things do you sell?~ DO ~SetGlobal("k9HendernKnowledge","GLOBAL",1)~ GOTO 1
++ ~I'd like to see your wares.~ DO ~ SetGlobal("k9HendernKnowledge","GLOBAL",1) StartStore("k9bellad",LastTalkedToBy(Myself))~ EXIT
+~Global("k9ShajaKnowledge","GLOBAL",0)~+ ~What do you know about Shaja?~ DO ~SetGlobal("k9HendernKnowledge","GLOBAL",1)~ GOTO 2
++ ~I'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 5
SAY ~The demeanor I suppose. Seems dark, almost troubled. Came across as being dark even before the snow hit.~
++ ~What kind of things do you sell?~ DO ~SetGlobal("k9HendernKnowledge","GLOBAL",1)~ GOTO 1
++ ~I'd like to see your wares.~ DO ~SetGlobal("k9HendernKnowledge","GLOBAL",1) StartStore("k9bellad",LastTalkedToBy(Myself))~ EXIT
++ ~What do you know about Shaja?~ DO ~SetGlobal("k9HendernKnowledge","GLOBAL",1)~ GOTO 2
++ ~I'll be going now.~ DO ~SetGlobal("k9HendernKnowledge","GLOBAL",1)~ EXIT
END


