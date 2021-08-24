BEGIN k9dknigh

IF ~Global("k9cursedemonknight","GLOBAL",0)~ THEN BEGIN 1
SAY ~The demon knight has nothing to say to you. Perhaps it would be best to speak to the nobleman next to him.~ IF ~~ EXIT
END

IF ~~ THEN BEGIN 2
SAY ~I have seen you walk this place searching for answers for questions that you do not know. Whatever you seek is irrelevant. Know that your life here is forfeit, your existence meaningless. Were he not intent on protecting you, I would kill you where you stand.~
++ ~Well, you are rather upfront aren't you?~ EXTERN k9cyrnob 1
++  ~What are you?~  EXTERN k9cyrnob 2
++  ~Why do you want me dead?~ EXTERN k9cyrnob 3
++ ~What are your thoughts about the others here?~ EXTERN k9cyrnob 4
END


IF ~~ THEN BEGIN 3
SAY ~...~
++ ~So your name is Karlaum?~ GOTO 8
++  ~What are you?~  GOTO 4
++  ~Why do you want me dead?~  GOTO 4
++ ~Are you planning to betray Cyric?~  GOTO 5
END

IF ~~ THEN BEGIN 4
SAY ~The demon knight doesn't appear interested in answering your question.~
++ ~So your name is Karlaum?~ GOTO 8
++  ~What are you?~  GOTO 4
++  ~Why do you want me dead?~  GOTO 4
++ ~Are you planning to betray Cyric?~ DO ~AddJournalEntry(@66064336,QUEST)~ GOTO 5
END

IF ~~ THEN BEGIN 5
SAY ~Cyric is not the one that controls me. You know of whom I speak. Release me from this curse and I will tell you who it is that plans to betray Cyric.~
++  ~How do I release you?~ DO ~AddJournalEntry(@66064336,QUEST)~ GOTO 6
++ ~So your name is Karlaum?~ DO ~AddJournalEntry(@66064336,QUEST)~ GOTO 8
++  ~What are you?~ DO ~AddJournalEntry(@66064336,QUEST)~ GOTO 4
++  ~Why do you want me dead?~ DO ~AddJournalEntry(@66064336,QUEST)~ GOTO 4
END

IF ~~ THEN BEGIN 6
SAY ~...~
+~Global("k9cursedemonknight","GLOBAL",2)~+ ~Here, try this potion.~ DO ~ SetGlobal("k9cursedemonknight","GLOBAL",3) TakePartyItem("k9potn08")~ EXIT
++ ~Alright then. I guess I'll need to speak to someone else.~ DO ~SetGlobal("k9cursedemonknight","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 7
SAY ~...~
++ ~So your name is Karlaum?~ GOTO 8
++  ~What are you?~  GOTO 7
++  ~Why do you want me dead?~  GOTO 7
++ ~Are you planning to betray Cyric?~  GOTO 5
END

IF ~~ THEN BEGIN 8
SAY ~Yes... once.~
++  ~What are you?~  GOTO 7
++  ~Why do you want me dead?~  GOTO 7
++ ~Are you planning to betray Cyric?~  GOTO 5
END

IF ~Global("k9cursedemonknight","GLOBAL",2)~ THEN BEGIN 9
SAY ~...~
+~Global("k9cursedemonknight","GLOBAL",2)~+ ~Here, try this potion.~ DO ~SetGlobal("k9cursedemonknight","GLOBAL",3) TakePartyItem("k9potn08")  ~ EXIT
++ ~Well then, I think I'll be going now.~ EXIT
END

IF ~Global("k9cursedemonknight","GLOBAL",4)~ THEN BEGIN 10
SAY ~Hmm...to be free again.~ IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
SAY ~Thank you for my freedom <PRO_RACE>. I regret that I cannot do as you asked, for there are likely many that would seek to betray a madman.

Perhaps, in time, I will find another way to repay you. Until then...~ IF ~~ THEN DO ~ AddJournalEntry(@66064345,QUEST) SetGlobal("k9cursedemonknight","GLOBAL",5) ReallyForceSpellRES("k9fake4",Myself) Wait(2) DestroySelf()~ EXIT
END

