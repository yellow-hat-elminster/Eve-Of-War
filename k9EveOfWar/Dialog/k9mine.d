


EXTEND_TOP Minec2 8
  +~~+ ~Why would I want to flood the mine when I can operate it? Get back to work!~  GOTO k913
END




APPEND Minec2

 IF ~~ THEN BEGIN k913
  SAY ~What a real mean cuss. This is the last time I'll be gettin bamboozled by the likes of you.

If ye be wanting yer ore we have none at the moment. If yer ever in the city though keep an eye out in the south-west. Should be a place just north-west of the Seven Suns buildin. There is a merchant there we send our ore to. Should be happy to reward you with some gold every few days.~
  
  IF ~~ THEN DO ~SetGlobal("k9MineOwned", "GLOBAL", 1) SetGlobal("NashkellAdventures","GLOBAL",2) AddJournalEntry(31453,QUEST_DONE) AddJournalEntry(@66002,QUEST_DONE) EraseJournalEntry(27267)
EraseJournalEntry(27268)
EraseJournalEntry(26929)
EraseJournalEntry(27172)
EraseJournalEntry(27270) ~ EXIT

END


END

