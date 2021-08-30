EXTEND_BOTTOM BART4 0
 IF ~Global("k9Jugglerpint", "GLOBAL", 0)  GlobalLT("k9pints", "GLOBAL", 2) Global("k9militiapint", "GLOBAL", 1)~ THEN REPLY ~The town watch seem to think the prices on alcohol around here are intolerable. Is it true what they are saying?~  GOTO k91
 END


 APPEND BART4

IF ~~ THEN BEGIN k91
  SAY ~Aye the bandits have been busy as of late. Though, between you and me, I've kept a nice supply handy just in case of this.~
  IF ~~ THEN REPLY ~Don't suppose you'd be willing to share it with the other tavern and inn owners?~ GOTO k92
  IF ~~ THEN REPLY ~Seems awfully suspicious that you just so happen to have extra lying around. Just when the rest of your competitors don't.~ GOTO k93
  END



   IF ~~ THEN BEGIN k92
  SAY ~And give away my advantage over them? Ha. You must be the funny one of the gang. I raised my prices because they did. Helps pad the bottom line. But, since you seem like a nice enough sort, and since the bandit situation may affect me sometime down the line, I'll throw you a bone here. 
  
You best talk to the others if you want to know what problems they're having.~ IF ~~ THEN DO ~AddJournalEntry(@110,QUEST)   SetGlobal("k9jugglerpint", "GLOBAL", 1)~ EXIT
  END

   IF ~~ THEN BEGIN k93
  SAY ~And what just are you implying by saying that? That I'm helping out the bandits? Bah, enough. Get on out of here. I want nothing more to do with you lot.~ IF ~~ THEN DO ~ SetGlobal("k9jugglerpint", "GLOBAL", 1)~ EXIT
  END



 END
