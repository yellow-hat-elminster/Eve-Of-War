BEGIN k9messed


IF ~NumTimesTalkedTo(0) Global("k9bassilusmessengersend", "GLOBAL", 2)~ THEN

BEGIN k9deadtalk

SAY ~I've been looking around for any trail of you. Found some marks of yours around Nashkel and there abouts, then lost sight of them for awhile. Finally tracked ya down here.

Kelddath sent me, wanted to let you know that he thinks yer ready to take care of that problem he discussed with ya awhile back.

Darker times ahead for you I'll wager. In any case, I'll not take any more of yer time. Safe travels friend.~  IF ~~ THEN DO ~AddJournalEntry(@14998,QUEST)~ EXIT

END





IF ~NumTimesTalkedTo(0) Global("k9bassilusmessengerbook", "GLOBAL", 1)~ THEN

BEGIN k9deadtalk2

SAY ~I've been looking around for any trail of you. Found some marks of yours around Nashkel and there abouts, then lost sight of them for awhile. Finally tracked ya down here.

Kelddath sent me, wanted to let you know that he has a problem that needs taking care of. Must have figured yer the folks for the job.

Darker times ahead for you I'll wager. In any case, I'll not take any more of yer time. Safe travels friend.~  IF ~~ THEN DO ~AddJournalEntry(@14997,QUEST)~ EXIT

END