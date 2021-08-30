BEGIN k9venra

IF ~True()~ THEN BEGIN 0

SAY ~Aye, who be here? You best be having coin to spend. Always with the customers and their interfering. I've potions to brew.~
++ ~Can I see your wares?~ DO ~StartStore("k9venra",LastTalkedToBy(Myself))~ EXIT
++ ~Who are you?~ GOTO 1
+~Global("k9snakefreedom","GLOBAL",2) PartyHasItem("k9bookyu")~+ ~We found this tome while searching the Yuan-Ti ruins under the town. Any idea what it says?~ GOTO 7
+~Global("k9HendernvenraKnowledge","GLOBAL",0)~+ ~What do you know about Hendern?~ GOTO 2
+~Global("k9ShajavenraKnowledge","GLOBAL",0)~+ ~Do you know anything about Shaja?~ GOTO 3
++ ~I'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 1
SAY ~Ye be comin in here and asking who I am? Who the hells are you?~
++ ~I'm <CHARNAME>. Please to meet you.~ GOTO 4
++ ~<CHARNAME>.~ GOTO 4
++ ~That's none of your business.~ GOTO 5
END

IF ~~ THEN BEGIN 2
SAY ~Hendern? Can't say I know anything. Barely spoken to'em.~ IF ~~ THEN DO ~SetGlobal("k9HendernvenraKnowledge","GLOBAL",1)~ GOTO 6
END

IF ~~ THEN BEGIN 3
SAY ~Shaja? She stand out there day after day. Barking mad that one.~ IF ~~ THEN DO ~SetGlobal("k9ShajavenraKnowledge","GLOBAL",1) IncrementGlobal("k9Jashaknow","GLOBAL",1) AddJournalEntry(@665559,QUEST)~ GOTO 6
END

IF ~~ THEN BEGIN 4
SAY ~That name supposed t'mean somethin to me? Whatever yer really here for make it quick. I've potions to brew.~
++ ~Can I see your wares?~ DO ~StartStore("k9venra",LastTalkedToBy(Myself))~ EXIT
++ ~Who are you?~ GOTO 1
+~Global("k9HendernvenraKnowledge","GLOBAL",0)~+ ~What do you know about Hendern?~ GOTO 2
+~Global("k9ShajavenraKnowledge","GLOBAL",0)~+ ~Do you know anything about Shaja?~ GOTO 3
++ ~I'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 5
SAY ~Whatever yer really here for make it quick. I've potions to brew.~
++ ~Can I see your wares?~ DO ~StartStore("k9venra",LastTalkedToBy(Myself))~ EXIT
++ ~Who are you?~ GOTO 1
+~Global("k9HendernvenraKnowledge","GLOBAL",0)~+ ~What do you know about Hendern?~ GOTO 2
+~Global("k9ShajavenraKnowledge","GLOBAL",0)~+ ~Do you know anything about Shaja?~ GOTO 3
++ ~I'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 6
SAY ~Somethin else I can do for ya?~
++ ~Can I see your wares?~ DO ~StartStore("k9venra",LastTalkedToBy(Myself))~ EXIT
++ ~Who are you?~ GOTO 1
+~Global("k9HendernvenraKnowledge","GLOBAL",0)~+ ~What do you know about Hendern?~ GOTO 2
+~Global("k9ShajavenraKnowledge","GLOBAL",0)~+ ~Do you know anything about Shaja?~ GOTO 3
++ ~I'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 7
SAY ~Heard about yer trip down there. Didn't think ye'd survive it. Them snakefolk are a brutal bunch if yer not prepared.~ IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 
SAY ~Me granddad taught me a thing or two about their language...case they ever came back. Hmm...can't say I can make heads or tails out of most of this, but it looks like their leader had something planned. Something about disease anyways.~   IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
SAY ~Best ye go up and talk to Gord. Barking mad that one, but if anyone here will know it'll be him.~ IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
SAY ~Suppose ye could also go talk to that Atad fellow as well. If he's still around that is. Tends to keep to himself, even more than Gord. But there's no one in the village that knows more of what lives beyond the wards. Could know a thing or two about this language of theirs. Should be able to find him in the outskirts of the village.~
   IF ~~ THEN DO ~AddJournalEntry(@66085,QUEST)~ EXIT
END

