BEGIN k9fisce

IF ~~ THEN BEGIN 0

SAY ~Hold a moment. I've recieved word that Duke Eltan is recovering. His healer was found to have been the one responsible for his illness and was dispatched by <CHARNAME>'s group. If <CHARNAME>'s group is indeed responsible for the death of Duke Jannath and Duke Belt then they will be held responsible through public trial. I'll not hang those responsible for saving a duke. Not on such flimsy evidence.~

IF ~~ THEN EXTERN ~Sarevo~ 29

END

IF ~~ THEN BEGIN 1
SAY ~If he's trying to escape the city my guess is he'll try to escape through an area of the city with little traffic, perhaps the sewers. Your best bet for finding him might be to talk to members of the city's Thieves' Guild. They know ways out of the city better than anyone.~  IF ~~ THEN DO ~SetGlobal("DukeThanks","GLOBAL",1) AddJournalEntry(@66040,QUEST)~ EXIT

END