BEGIN k9cyrnob

IF ~Global("K9cyricnobletalk","GLOBAL",0)~ THEN BEGIN 1
SAY ~Another mortal wishing to test himself against the might of Cyric? I might have known...I suppose we should just get on with it. Shouldn't we?.~  IF ~~ THEN DO ~SetGlobal("K9cyricnobletalk","GLOBAL",1)~ EXTERN k9dknigh 1
END

IF ~~ THEN BEGIN 2
SAY ~Yes, well, it's one of those 'obligiatory duties' we're forced to do each and every time Cyric brings someone new here. Franky, after a decade it's gotten rather dull.~
++  ~Who are you?~  GOTO 4
++  ~Why do you want me dead?~ GOTO 5
++ ~What are your thoughts about the others here?~ GOTO 6
++ ~I think I'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 4
SAY ~We stand guard on behalf of my lord, protecting his holdings, ensuring a most limited degree of order even in this place. And of course when he has other need of us we assist.~
++ ~Why do you serve a madman like Cyric?~ GOTO 7
+~CheckStatGT(Player1Fill, 15, INT)~+ ~As best I can tell that thing next to you looks to be a demon knight. I'm curious, are not demon knights fallen paladins cursed in death by the gods? How did it become what it is?~ GOTO 8
++ ~Cyric seems to think that one of his followers intends very shortly to betray him. Is that you?~   GOTO 9
++  ~Why does that thing want me dead?~ GOTO 5
++ ~What are your thoughts about the others here?~ GOTO 6
++ ~I think I'll be going now.~ EXIT
END


IF ~~ THEN BEGIN 5
SAY ~Quite franky, I don't really care whether you live or not. But Cyric has been rather insistent that we put on a show...so we do. We no longer have a choice in the matter.

Not that any of that matters to the thing next to me. If I weren't here to tell it otherwise it really would kill you.~
++ ~Why do you serve a madman like Cyric?~ GOTO 7
+~CheckStatGT(Player1Fill, 15, INT)~+ ~As best I can tell you look to be a demon knight. I'm curious, are not demon knights fallen paladins cursed in death by the gods? How did it become what it is?~ GOTO 8
++ ~Cyric seems to think that one of his followers intends very shortly to betray him. Is that you?~   GOTO 9
++  ~Who are you?~  GOTO 4
++ ~What are your thoughts about the others here?~ GOTO 6
++ ~I think I'll be going now.~ EXIT
END


IF ~~ THEN BEGIN 6
SAY ~Who are you referring to?~
++ ~What is your assessment of the old man?~ GOTO 10
++ ~What is your assessment of the demon?~ GOTO 11
+~Global("k9Celestial","GLOBAL",1)~+ ~What is your assessment of the other being?~ GOTO 12
+~Global("k9ShadowSpawn","GLOBAL",1)~+ ~What is your assessment of the other being?~ GOTO 13
++ ~I think I'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 7
SAY ~He offered me immortality. I'm hardly foolish enough to turn down such an offer.~
+~CheckStatGT(Player1Fill, 15, INT)~+ ~As best I can tell you look to be a demon knight. I'm curious, are not demon knights fallen paladins cursed in death by the gods? How did it become what it is?~ GOTO 8
++ ~Cyric seems to think that one of his followers intends very shortly to betray him. Is that you?~   GOTO 9
++  ~Who are you?~  GOTO 4
++ ~What are your thoughts about the others here?~ GOTO 6
++ ~I think I'll be going now.~ EXIT
END




IF ~~ THEN BEGIN 8
SAY ~I'll admit I did not expect you to know what a demon knight was. Not a lot of adventurers live long after they encounter one of their kind.~ IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 9
SAY ~Betray him? Now just why would I do that? Serving Cyric might have its downsides, but I'd hardly call the alternative any more acceptable.~
++ ~What about your friend here. Could it be planning to betray Cyric?~   GOTO 19
++  ~Who are you?~  GOTO 4
++ ~What are your thoughts about the others here?~ GOTO 6
++ ~I think I'll be going now.~ EXIT
END




IF ~~ THEN BEGIN 10
SAY ~I am familiar with this one. The little cretin came to this plane by a new portal, some time ago...This is unusual, most come to the Pandemonium through the portal with Sigil. This suggests knowledge in the Art. Consider him a threat.~ IF ~~ THEN DO ~SetGlobal("k9oldmanthreat","GLOBAL",1) AddJournalEntry(@66064335,QUEST)~ GOTO 15
END

IF ~~ THEN BEGIN 11
SAY ~The demon is like many of his kind... it is untrustworthy and arrogant. It is not powerful enough to kill a god. I wouldn't consider much more than a minor threat to Cyric.~ IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 12
SAY ~The nobleman refuses to say anything. Instead it briefly looks over at the celestial. As it does you can see a look of the pure hatred in its eyes.~ IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 13
SAY ~The nobleman studies the creature for a moment. "Ahh yes, the fallen celestial. It's been a servant of Cyric's for some time, or so I gather. Actually, I believe it was one of former followers of Bhaal, the former Lord of Murder.~ IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 14
SAY ~My understanding is that it was once the guard of an old temple of Amaunator, a god it once served. I encountered it on one of my expenditions. Needless to say it took a bit of powerful magic on my part, but it was 'convinced' that serving me would be better.~ IF ~~ THEN GOTO 16
END


IF ~~ THEN BEGIN 15
SAY ~Is there something else?~
++ ~What is your assessment of the old man?~ GOTO 10
++ ~What is your assessment of the demon?~ GOTO 11
+~Global("k9Celestial","GLOBAL",1)~+ ~What is your assessment of the other being?~ GOTO 12
+~Global("k9ShadowSpawn","GLOBAL",1)~+ ~What is your assessment of the other being?~ GOTO 13
++ ~I think I'll be going now.~ EXIT
END


 IF ~~ THEN BEGIN 16
SAY ~"And all that worked out fine. At least until Cyric came. I suppose he was looking for someone he could trust to be watchful of whatever structure there is in a place like this. Either way, when a god comes to you with an offer of immortality you take it.~ IF ~~ THEN GOTO 17
END

 IF ~~ THEN BEGIN 17
SAY ~What I thought as a kind of freedom simply turned into another trap.~
++ ~Why do you serve a madman like Cyric?~ GOTO 7
++ ~Cyric seems to think that one of his followers intends very shortly to betray him. Is that you?~   GOTO 9
++  ~Who are you?~  GOTO 4
++ ~What are your thoughts about the others here?~ GOTO 6
++ ~I'll be going now.~ EXIT
END

 IF ~True()~ THEN BEGIN 18
SAY ~Back again I see.~
++ ~Why do you serve a madman like Cyric?~ GOTO 7
+~CheckStatGT(Player1Fill, 15, INT)~+ ~As best I can tell you look to be a demon knight. I'm curious, are not demon knights fallen paladins cursed in death by the gods? How did it become what it is?~ GOTO 8
++ ~Cyric seems to think that one of his followers intends very shortly to betray him. Is that you?~   GOTO 9
++  ~Who are you?~  GOTO 4
++ ~What are your thoughts about the others here?~ GOTO 6
++ ~I'll be going now.~ EXIT
END


 IF ~~ THEN BEGIN 19
SAY ~This thing has barely spoken in the decade I've known it. I hardly think it is in any position to betray any god.~
++ ~Even still, maybe it's best that I speak to it. Alone.~  GOTO 20
END

 IF ~~ THEN BEGIN 20
SAY ~Ohh very well. Karlaum, I need you to tell this <MANWOMAN> whatever it is they wish to know.~ IF ~~ THEN EXTERN k9dknigh 2
END



