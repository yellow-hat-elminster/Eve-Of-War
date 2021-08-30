BEGIN k9berffs


IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0

SAY ~Ahh <CHARNAME> I was told you travelling in the vicinity of Beregost. Good to meet you <PRO_SIRMAAM>. I'll admit I'm a bit surprised. Based on the depictions of you by the rank and file I would not have guessed you as being a mere <PRO_RACE>.~
++~Well I've been told I'm fully of surprises.~ GOTO 1
++~Is there something you need of me?~ GOTO 2
++~Yea, well, I don't usually talk to dogs. Guess we're all a bit surprised.~ EXIT
END

IF ~~ THEN BEGIN 1

SAY ~Indeed. Have you by chance heard or seen anything about the movements of Amn's forces? Its my understanding that you were responsible for saving Nashkel's mines. What kind of a complement did you see while you were there?~
++ ~Nothing extraordinary. Maybe a dozen men or so.~ GOTO 3
++ ~I really have no interest in talking to you.~ GOTO 4
END

IF ~~ THEN BEGIN 2

SAY ~Now that you mention I do have a question for you. Have you by chance heard or seen anything about the movements of Amn's forces? Its my understanding that you were responsible for saving Nashkel's mines. What kind of a complement did you see while you were there?~
++ ~Nothing extraordinary. Maybe a dozen men or so.~ GOTO 3
++ ~I really have no interest in talking to you.~ GOTO 4
END

IF ~~ THEN BEGIN 3

SAY ~Hmm... that contradicts what I'm hearing. I have reports of as many as fifty men encamped either within or nearby Nashkel. ~ IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 4

SAY ~Not the answer I was hoping for.~ IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 5

SAY ~Hopefully things calm down soon. We aren't equipped here to handle much more than that.~ IF ~~ THEN DO ~SetGlobal("k9scoutamn", "GLOBAL", 1)  AddJournalEntry(@130131,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 6

SAY ~If you happen to change your mind I'll be here.~ IF ~~ THEN EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 7

SAY ~Ahh <CHARNAME> its good to see you again. Have any word on the size of Amns forces near Nashkel?~
+~Global("k9scoutamn", "GLOBAL", 2)~+~I would say there were as many as forty to fifty men in the town. Its hard to say really.~ GOTO 8
++~What was it you wanted to ask of me again?~ GOTO 9
++~I'm afraid I've got no news for you.~ EXIT
END

IF ~~ THEN BEGIN 8

SAY ~Its as I feared. Thank you for confirming my suspicions.~ IF ~~ THEN DO ~SetGlobal("k9scoutamn", "GLOBAL", 3)  AddexperienceParty(2000)
EraseJournalEntry(@130131)
EraseJournalEntry(@130132) ~ SOLVED_JOURNAL @130133 EXIT
END

IF ~~ THEN BEGIN 9

SAY ~I need someone to scout out the forces of Amn that are located in Nashkel and report back on their numbers.~ IF ~~ THEN DO ~SetGlobal("k9scoutamn", "GLOBAL", 1) AddJournalEntry(@130131,QUEST)~ EXIT
END



