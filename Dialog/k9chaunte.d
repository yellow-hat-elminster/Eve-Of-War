BEGIN k9chaunte

IF ~NumTimesTalkedTo(0)~ THEN
BEGIN 0
      SAY ~Great Mother welcome you. How can I be of assistance?~
    ++ ~I'd like to see your goods.~ DO ~StartStore("k9chaunt",LastTalkedToBy(Myself))~ EXIT
    ++ ~There is something about you that doesn't seem right. Why should anyone here trust you?~ GOTO 1
    ++ ~The mayor seemed to have some suspicions about you. What are you doing here? This hardly seems the place for a serious merchant to set up shop.~ GOTO 2
END

IF ~~ THEN
BEGIN 1
      SAY ~Heh, figured it out did you? No matter. Ya shan't live the day.~ IF ~~ THEN DO ~Enemy() AddJournalEntry(@66053,QUEST)~ EXIT
END

IF ~~ THEN
BEGIN 2
      SAY ~Heh, figured it out did you? No matter. Ya shan't live the day.~ IF ~~ THEN DO ~Enemy() AddJournalEntry(@66054,QUEST)~ EXIT
END