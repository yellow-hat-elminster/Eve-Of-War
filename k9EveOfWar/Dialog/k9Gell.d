
EXTEND_BOTTOM GELLAN 0
  +~Global("k9negotiations","GLOBAL",1) Global("k9friendlynegotiations","GLOBAL",0)~+ ~I know this might not be the best of times, but I require your assistance. Kelddath Ormlyr, the leader of Beregost, has asked that I ask nearby communities for aid. He fears an invasion by Amn is imminent and is looking for a place to house some of his people.~  GOTO k94
END


APPEND GELLAN

IF ~~ THEN BEGIN k94
SAY ~It's a pity things have come to what they have. When Bents and I first set up the inn here this place was finally safe again for travellers. The bandits and this threat o' war between the gate and Amn sure have been making things rough over here.

Can't say we can give em free rooms. What can you be offering?~
IF ~PartyGoldGT(499)~ THEN REPLY ~I'll give you 1,500 gold.~ GOTO k95
IF ~~ THEN REPLY ~Well, we'd be talking of housings for a few hundred at least. For no more than a month I'd hope. How much gold would you need?~ GOTO k96
IF ~~ THEN REPLY ~Nevermind.~ EXIT
END

IF ~~ THEN BEGIN k95
SAY ~Thanks. That'll do nicely.~ IF ~~ THEN DO ~SetGlobal("k9friendlynegotiations","GLOBAL",1) AddJournalEntry(@15033,QUEST) TakePartyGold(500)~ EXIT
END

IF ~~ THEN BEGIN k96
SAY ~Hmm, we'll see what we can do. Give me 1,500 and I'll sort out the details with Bents.~
IF ~PartyGoldGT(499)~ THEN REPLY ~Understood.~ GOTO k95
IF ~PartyGoldGT(499)~ THEN REPLY ~Better be worth it.~ GOTO k97
IF ~PartyGoldLT(500)~ THEN REPLY ~Can't afford that. I guess when I can I'll come back later.~ DO ~AddJournalEntry(@15034,QUEST) ~ EXIT
IF ~~ THEN REPLY ~Nevermind.~ EXIT
END

IF ~~ THEN BEGIN k97
SAY ~Course it will be. Also drop the attitude. It's the last thing folks around here need to be seeing.~ IF ~~ THEN DO ~SetGlobal("k9friendlynegotiations","GLOBAL",1) AddJournalEntry(@15033,QUEST) TakePartyGold(500)~ EXIT
END



IF WEIGHT #-99 ~OR(2) NumTimesTalkedTo(0) !NumTimesTalkedTo(0) Global("k9FriendlyArm", "GLOBAL", 1) Global("k9friendlylook","GLOBAL",0)~ THEN

BEGIN deadtalk

SAY ~Good, you're here! I just sent a messenger out fer ya. Didn't think he'd be that quick.

Somethings happened. Don't know much to be honest, but a few of our regulars were found crawling there way out o' the inn. Not much left o' em, as ya can plainly see. Nobody seems to want to go in there either. Who would have done such a thing?~  IF ~~  GOTO deadtalk2

END



IF ~~ THEN
BEGIN deadtalk2

SAY ~The rest of the inn is too scared to look, but I be suspectin' necromancy. Gnomes not be the type to dabble in such things, but Bents taught me enough to know it when I see it. Not the sort of magic I'd be expecting from Amn folk either.~  IF ~~ GOTO deadtalk3

END


IF ~~ THEN

BEGIN deadtalk3

SAY ~I need you to go inside and look around. See if anything catches your eye. Can't be too careful about this place now.~

++ ~Very well, I'll have a look.~ DO ~ AddJournalEntry(@130152,QUEST)~ EXIT
++ ~I think not.~  EXIT


END

IF WEIGHT #-98 ~OR(2) NumTimesTalkedTo(0) !NumTimesTalkedTo(0) Global("k9FriendlyArm", "GLOBAL", 2) Global("k9FriendlyArmz", "GLOBAL",0)~ THEN

BEGIN deadtalk4

SAY ~I'd heard you entered it. What's it like in there?~

++~I found some devices hidden underneath some of the floor boards. They seem to have been there a long time.~ GOTO bhaal
++~Nothing yet.~  EXIT

END

IF ~~ THEN
BEGIN bhaal

SAY ~The inn was once a temple of Bhaal, at least before Bents cleared it out. Guess there could be clues down there over what did this. 
NOTE: FOR THE TIME BEING THIS IS THE END OF THIS QUEST LINE.~  IF ~~ THEN DO ~SetGlobal("k9FriendlyArmz", "GLOBAL", 1)~ EXIT
END

END