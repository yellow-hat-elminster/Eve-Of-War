BEGIN k9shaja


IF ~NumTimesTalkedTo(0)~ THEN
BEGIN 0
      SAY ~What's dis? What you lookin at?~
    +~Global("k9serpentsolved","GLOBAL",1)~+ ~I think it's pretty clear you are responsible for what has happened here. Explain your actions here!~ GOTO 5
    +~Global("k9Jashamet","GLOBAL",1) GlobalLT("k9ShajaTalk","GLOBAL",1)~+ ~You seem familiar. Have we met before?~ GOTO 3
    +~GlobalLT("k9ShajaTalk3","GLOBAL",1)~+ ~Seems like this place has had pretty strange weather lately. Any ideas about the cause?~ GOTO 7
    +~GlobalLT("k9ShajaTalk2","GLOBAL",1)~+ ~The mayor seemed to have some suspicions about you. What are you doing here? This hardly seems the place for a serious merchant to set up shop.~ GOTO 2
    +~GlobalLT("k9ShajaTalk2","GLOBAL",1)~+ ~I heard you are a merchant. What do you have for sale?~ DO ~StartStore("k9shaja",LastTalkedToBy(Myself))~ EXIT
    ++ ~Nevermind.~ EXIT
END

IF ~~ THEN
BEGIN 1
      SAY ~There nah be a foot set in this town that has not gone through me t'get what they need. If ye be wantin goods you best be showin me more respect.~

    ++ ~The mayor seemed to have some suspicions about you. What are you doing here? This hardly seems the place for a serious merchant to set up shop.~ GOTO 2
    +~Global("k9Jashamet","GLOBAL",1)~+ ~You seem familiar. Have we met before?~ GOTO 3
        ++ ~Very well, what do you have for sale?~ DO ~StartStore("k9shaja",LastTalkedToBy(Myself))~ EXIT
        ++ ~I'll be going now.~ EXIT
END

IF ~~ THEN
BEGIN 2
      SAY ~Tomlin's persistent, I'll give him that. The fella's too scared to face a cold winter and'll blame anyone but the gods for it. I wouldn't think much'on what he's got to say.~ IF ~~ THEN DO ~IncrementGlobal("k9ShajaKnowledge","GLOBAL",1) IncrementGlobal("k9ShajaTalk2","GLOBAL",1)~ GOTO 4
END

IF ~~ THEN
BEGIN 3
      SAY ~I see many travellers, could be I seen you before. Best not to think bout it.~ IF ~~ THEN DO ~IncrementGlobal("k9ShajaKnowledge","GLOBAL",1) IncrementGlobal("k9ShajaTalk","GLOBAL",1) AddJournalEntry(@66053,QUEST)~ GOTO 4
END


IF ~True()~ THEN
BEGIN 4
      SAY ~So what'll it be?~
    +~Global("k9Jashamet","GLOBAL",1)~+ ~You seem familiar. Have we met before?~ GOTO 3
    ++ ~There is something about you that doesn't seem right. Why should anyone here trust you?~ GOTO 1
    +~GlobalLT("k9ShajaTalk3","GLOBAL",1)~+ ~Seems like this place has had pretty strange weather lately. Any ideas about the cause?~ GOTO 7
    +~Global("k9ShajaTalk3","GLOBAL",1)~+ ~People in town seem to think you are responsible for this weather. What do you have to say to this?~ GOTO 8
    +~GlobalLT("k9ShajaTalk2","GLOBAL",1)~+ ~The mayor seemed to have some suspicions about you. What are you doing here? This hardly seems the place for a serious merchant to set up shop.~ GOTO 2
    ++ ~I'd like to see your goods.~ DO ~StartStore("k9shaja",LastTalkedToBy(Myself))~ EXIT
    ++ ~I think I'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 5
SAY ~Twas all a matter fer the gods, not fer ye or me. Ye should've left it be <GIRLBOY>, cause now I'll have t'kill ya. Can't be having yer type poking round here telling the folk of our plans now can I? Ye understand I'm sure. The frostmaiden'll wished this t'be, and it'll be.~ IF ~~ THEN DO ~AddJournalEntry(@66054,QUEST) Enemy()~ EXIT
END

IF ~~ THEN
BEGIN 7
      SAY ~If ya ain't gonna buy somethin then leave. I've got enough t'get to today without spending m'time prophesying bout the weather. Could all melt tomorrow fur all I know.~ IF ~~ THEN DO ~IncrementGlobal("k9ShajaKnowledge","GLOBAL",1) IncrementGlobal("k9ShajaTalk3","GLOBAL",1)~ GOTO 4
END

IF ~~ THEN
BEGIN 8
      SAY ~People'll say what they gonna say. I travelled far enough t'get here. I have no plans on leavin.~ IF ~~ THEN DO ~IncrementGlobal("k9ShajaKnowledge","GLOBAL",1) IncrementGlobal("k9ShajaTalk3","GLOBAL",1)~ GOTO 4
END