BEGIN k9dknig2

IF ~Global("K9demonnighttalk","GLOBAL",0)~ THEN BEGIN 1
SAY ~The demon knight's armor shines vividly in this place. Seeing you approach it, it readies its sword. "Another mortal wishing to test himself against the might of Cyric? I might have known." The demon knight sighs. "I suppose I should just get on with it. Shouldn't I?".~  IF ~~ THEN DO ~SetGlobal("K9demonnighttalk","GLOBAL",1)~ GOTO 2
END


IF ~~ THEN BEGIN 2
SAY ~"I have seen you walk this place searching for answers for questions that you do not know. Whatever you seek is irrelevant. Know that your life here is forfeit, your existence meaningless. Were he not intent on protecting you, I would kill you where you stand."~
++ ~Well, you are rather upfront aren't you?~ GOTO 3
++ ~It almost seems like you've done this before.~ GOTO 3
++  ~What are you?~  GOTO 4
++  ~Why do you want me dead?~ GOTO 5
++ ~What are your thoughts about the others here?~ GOTO 6
END

IF ~~ THEN BEGIN 3
SAY ~"Yes, well, it's one of those 'obligiatory duties' I'm forced to do each and every time Cyric brings someone new here." The demon knight puts down its sword. "Franky, after a decade it's gotten rather dull."~
++  ~What are you?~  GOTO 4
++  ~Why do you want me dead?~ GOTO 5
++ ~What are your thoughts about the others here?~ GOTO 6
END

IF ~~ THEN BEGIN 4
SAY ~"I stand guard on behalf of my lord, protecting his holdings, ensuring a most limited degree of order even in this place." The demon knight continues. "And of course when he has other need of me I assist."~
++ ~Why do you serve a madman like Cyric?~ GOTO 7
+~CheckStatGT(Player1Fill, 15, INT)~+ ~As best I can tell you look to be a demon knight. I'm curious, are not demon knights fallen paladins cursed in death by the gods? You aren't what I expected.~ GOTO 8
++ ~Cyric seems to think that one of his followers intends very shortly to betray him. Is that you?~   GOTO 9
++  ~Why do you want me dead?~ GOTO 5
++ ~What are your thoughts about the others here?~ GOTO 6
END


IF ~~ THEN BEGIN 5
SAY ~"Quite franky, I don't really care whether you live or not." The death knight sighs. "But Cyric has been rather insistent that I put on a show...so I do. I no longer have a choice in the matter."~
++ ~Why do you serve a madman like Cyric?~ GOTO 7
+~CheckStatGT(Player1Fill, 15, INT)~+ ~As best I can tell you look to be a demon knight. I'm curious, are not demon knights fallen paladins cursed in death by the gods? You aren't what I expected.~ GOTO 8
++ ~Cyric seems to think that one of his followers intends very shortly to betray him. Is that you?~   GOTO 9
++  ~What are you?~  GOTO 4
++ ~What are your thoughts about the others here?~ GOTO 6
END


IF ~~ THEN BEGIN 6
SAY ~The demon knight gazes around the room. "Who are you referring to?"~
++ ~What is your assessment of the old man?~ GOTO 10
++ ~What is your assessment of the demon?~ GOTO 11
+~Global("k9Celestial","GLOBAL",1)~+ ~What is your assessment of the other being?~ GOTO 12
+~Global("k9ShadowSpawn","GLOBAL",1)~+ ~What is your assessment of the other being?~ GOTO 13
++ ~Actually, I'll be going now.~ EXIT
END


IF ~~ THEN BEGIN 8
SAY ~"I'll admit I did not expect you to know what I am. Not a lot of adventurers live long after they encounter one of my kind."~ IF ~~ THEN GOTO 14
END


IF ~~ THEN BEGIN 10
SAY ~"I am familiar with this one. The little cretin came to this plane by a new portal, some time ago." It pauses for a moment. "This is unusual, most come to the Pandemonium through the portal with Sigil." It further gazes at the old man. "This suggests knowledge in the Art. Consider him a threat." ~ IF ~~ THEN DO ~SetGlobal("k9oldmanthreat","GLOBAL",1)~ GOTO 15
END

IF ~~ THEN BEGIN 11
SAY ~"The demon is like many of his kind... it is untrustworthy and arrogant. It is not powerful enough to kill a god. I wouldn't consider much more than a minor threat to Cyric." ~ IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 12
SAY ~The demon knight refuses to say anything. When it looks over at the celestial being you can see a look of the pure hatred in its eyes.~ IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 13
SAY ~The demon knight studies the creature for a moment. "Likely a large shade or shadow...not any real threat to Cyric." ~ IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 14
SAY ~"I suppose after centuries of being evil I've grown rather bored with this place. There was a time I simply guarded an old temple of Amaunator, the god I once served. It was far more boring work of course, but to have to kill the occassional adventurer was hardly as evil as it sounds."~ IF ~~ THEN GOTO 16
END


IF ~~ THEN BEGIN 15
SAY ~The demon knight stands by, no doubt waiting for your next question.~
++ ~What is your assessment of the old man?~ GOTO 11
++ ~What is your assessment of the demon?~ GOTO 12
+~Global("k9Celestial","GLOBAL",1)~+ ~What is your assessment of the other being?~ GOTO 13
+~Global("k9ShadowSpawn","GLOBAL",1)~+ ~What is your assessment of the other being?~ GOTO 14
++ ~Actually, I'll be going now.~ EXIT
END


 IF ~~ THEN BEGIN 16
SAY ~"At least until Cyric came. I suppose he was looking for someone he could trust to be watchful of whatever structure there is in a place like this. What I thought as a kind of freedom simply turned into another trap."~ IF ~~ THEN GOTO 17
END

 IF ~~ THEN BEGIN 17
SAY ~""~ IF ~~ THEN GOTO 17
END





