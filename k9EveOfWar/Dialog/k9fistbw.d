BEGIN k9fistbw


IF ~RandomNum(8,1) Global("chapter","GLOBAL",5)~ THEN
BEGIN k9bwtalk51
	SAY ~Sorry <PRO_SIRMAAM> I can't talk long. I'm needed to help assess Beregost's stockpiles.~ IF ~~ THEN DO ~AddJournalEntry(@130134,INFO)~ EXIT
END

IF ~RandomNum(8,2) Global("chapter","GLOBAL",5)~ THEN
BEGIN k9bwtalk52
	SAY ~I'm sorry my <PRO_LADYLORD> but I don't have time to talk to you right now.~ IF ~~ EXIT
END

IF ~RandomNum(8,3) Global("chapter","GLOBAL",5)~ THEN
BEGIN k9bwtalk53
	SAY ~Hey watch it! I'm trying to deliver urgently needed orders here.~
	  IF ~~ EXIT
END


IF ~RandomNum(8,4) Global("chapter","GLOBAL",5)~ THEN
BEGIN k9bwtalk54
	SAY ~Good <DAYNIGHTALL> <PRO_SIRMAAM>. Heard any news lately? My uncle tells me he's heard of spectres rising from out of the Green Fields. Some necromancers work he claims. Bunch of nonsense I tells him, but even still it seems a bad omen.~
	  IF ~~ THEN DO ~AddJournalEntry(@130135,INFO)~ EXIT
END

 IF ~RandomNum(8,5) GlobalGT("chapter","GLOBAL",4) Dead("BASSILUS")~ THEN
BEGIN k9bwtalk55
	SAY ~Did you hear about Bassilus? Heard some adventurers took care of him. Young lad that saw him claims he'd even been raising the dead. I've got an uncle buried round here. Hate to think what I'd do if he started walkin' about.~ IF ~~ THEN DO ~AddJournalEntry(@130136,INFO)~ EXIT
END

IF ~RandomNum(8,5) GlobalGT("chapter","GLOBAL",4) !Dead("BASSILUS")~ THEN
BEGIN k9bwtalk56
	SAY ~That Bassilus fellow is still hanging around just outside of town. I hear he's been seen talkin' to himself and raising the dead. Somethings not right about him, but I'm not about to risk my neck to stop him.~ IF ~~ THEN DO ~AddJournalEntry(@130137,INFO)~ EXIT
END


 IF ~RandomNum(8,6) Global("chapter","GLOBAL",5)~ THEN
BEGIN k9bwtalk57
	SAY ~Seems like I'll never get back home to the gate. Just as the bandit problem seemed to have sorted itself out the threat of war with Amn has emerged.~ IF ~~ THEN DO ~AddJournalEntry(@130138,INFO)~ EXIT
END

 IF ~RandomNum(8,7) Global("chapter","GLOBAL",5)~ THEN
BEGIN k9bwtalk58
	SAY ~Sorry citizen but I can't talk right now. I'm sure whatever issue you have can wait.~ IF ~~ THEN DO ~AddJournalEntry(@130139,INFO)~ EXIT
END

IF ~RandomNum(8,8) Global("chapter","GLOBAL",5)~ THEN
BEGIN k9bwtalk59
	SAY ~Heard bandits had taken over the old Cloakwood mines. Lots of profit in the iron no doubt, though I heard druids drove them out. Blasted iron is broken and all they can think of is t'worry about the trees!~ IF ~~ THEN DO ~AddJournalEntry(@130140,INFO)~ EXIT
END








IF ~RandomNum(11,1) Global("chapter","GLOBAL",6)~ THEN
BEGIN k9bwtalk60
	SAY ~Heard the Iron Throne up in Baldur's Gate got raided by some adventurers. This fear of Amn seems to have driven good folk mad.~
	  IF ~~ THEN DO ~AddJournalEntry(@130141,INFO)~ EXIT
END


IF ~RandomNum(11,2) Global("chapter","GLOBAL",6)!Dead("Ramazith")~ THEN
BEGIN k9bwtalk61
	SAY~This is not the place to stand about citizen. I suggest you go about your business and move along.~
	  IF ~~ EXIT
END

IF ~RandomNum(11,2) Global("chapter","GLOBAL",6)Dead("Ramazith")~ THEN
BEGIN k9bwtalk62
	SAY ~I just heard about Ramazith. I'll admit he'd been acting odd lately but who'd have thought he'd get murdered? Shame really. I've got a brother who works in the docks. He couldn't give the man enough compliments.~
	  IF ~~ THEN DO ~AddJournalEntry(@130142,INFO)~ EXIT
END

IF ~RandomNum(11,3) Global("chapter","GLOBAL",6) Dead("Ragefast")~ THEN
BEGIN k9bwtalk63
	SAY ~Ye hear that Ragefast up in the gate was murdered? Never thought that stodgy sack would see combat, let alone in his own house -most of which is covered in shelves of books I hear. Not even mages seem safe these days.~ IF ~~ THEN DO ~AddJournalEntry(@130143,INFO)~ EXIT
END

IF ~RandomNum(11,3) Global("chapter","GLOBAL",6) !Dead("Ragefast")~ THEN
BEGIN k9bwtalk64
	SAY ~Glad to see Nashkel is producing iron again. We may need it.~ IF ~~  EXIT
END

IF ~RandomNum(11,4) Global("chapter","GLOBAL",6)~ THEN
BEGIN k9bwtalk65
	SAY ~Nothing to see here citizen.~
	   IF ~~   EXIT
END


IF ~RandomNum(11,6) Global("chapter","GLOBAL",6)~ THEN
BEGIN k9bwtalk66
	SAY ~Have you seen the Ulcaster ruins? Went by there with a patrol a few days ago. Such a sad tale. Shame nothing became of the place.~
	  IF ~~ EXIT
END

 IF ~RandomNum(11,7) Global("chapter","GLOBAL",6)~ THEN
BEGIN k9bwtalk67
	SAY ~I heard Beregost's been looking for a new member for their town council. Guess I wasn't considered. What a shame.~ IF ~~ EXIT
END



IF ~RandomNum(11,8) Global("chapter","GLOBAL",6)~ THEN
BEGIN k9bwtalk68
	SAY ~Simple folk around here. Might settle down here after all this.~ IF ~~ EXIT
END


IF ~RandomNum(11,9) Global("chapter","GLOBAL",6)~ THEN
BEGIN k9bwtalk69
	SAY ~They say the Iron Throne is looking to increase its influence in the gate. I can't say I'm surprised, they seem to be the only group capable of securing iron.~ IF ~~ EXIT
END

IF ~RandomNum(11,10) Global("chapter","GLOBAL",6)~ THEN
BEGIN k9bwtalk70
	SAY ~No one in town believes me but a few days ago I was patrolling north of town and out of nowhere I swear I saw a dragon fly by. Damn thing had a whole cow held in its claws too.~ IF ~~ EXIT
END

IF ~RandomNum(11,11) Global("chapter","GLOBAL",6) Global("k9darrentalk", "GLOBAL", 3)~ THEN
BEGIN k9bwtalk71
	SAY ~Did you hear? Beregost's watch has a new member. Some bloke named Cyrag. Seems like a bit of a drunk to me.~ IF ~~ EXIT
END






IF ~RandomNum(10,1) Global("chapter","GLOBAL",7)~ THEN
BEGIN k9bwtalk72
	SAY ~Sorry, I can't talk now. Recieved word a little while back that Scar has been killed. A symbol of the Shadow Thieves of Amn was even found at the scene. Seems we can't even trust those southern scum to even fight honourably. Our new leader, Angelo, seems to have taken the hint. He's ordered Fist reserves mobilized in case of a larger Amnian attack.~
	  IF ~~ THEN DO ~AddJournalEntry(@356009,INFO)~ EXIT
END


IF ~RandomNum(10,2) Global("chapter","GLOBAL",7)~ THEN
BEGIN k9bwtalk73
	SAY ~Dark times ahead it seems. Its best you make your visit here brief. Angelo's ordered us to barricade the town.~
	   IF ~~ THEN DO ~AddJournalEntry(@130143,INFO)~ EXIT
END

IF ~RandomNum(10,3) Global("chapter","GLOBAL",7)~ THEN
BEGIN k9bwtalk74
	SAY ~Sorry, no time to talk. Our scouts have reported a large amount of movement of troops into the town of Nashkel. I'd have thought they'd not be so bold, what with those uprisings in southern Amn, but it seems we've misjudged them.~
	  IF ~~ THEN DO ~AddJournalEntry(@130144,INFO)~ EXIT
END

IF ~RandomNum(10,4) Global("chapter","GLOBAL",7)~ THEN
BEGIN k9bwtalk75
	SAY ~Nothing to see here citizen.~
	   IF ~~   EXIT
END

IF ~RandomNum(10,5) Global("chapter","GLOBAL",7)~ THEN
BEGIN k9bwtalk76
	SAY ~I heard Kelddath Ormyr is looking for advisors for the town. Wish them luck. Not sure how we'll dig ourselves out of this hole.~
	   IF ~~  EXIT
END



IF ~RandomNum(10,6) Global("chapter","GLOBAL",7)~ THEN
BEGIN k9bwtalk77
	SAY ~I hope Amn backs down. I just want to go home to my family. I didn't sign up to fight any wars.~
	  IF ~~ EXIT
END

 IF ~RandomNum(10,7) Global("chapter","GLOBAL",7)~ THEN
BEGIN k9bwtalk78
	SAY ~Bold talk coming out of the gate. Angelo has ordered our reserves mobilized. All to be paid through merchant dues of course. My uncle's a merchant and he's livid bout it. With the state of the Seven Suns and the Merchant League no one else seems very willing to complain though.~
	 IF ~~ THEN DO ~AddJournalEntry(@130146,INFO)~ EXIT
END

IF ~RandomNum(10,8) Global("chapter","GLOBAL",7)~ THEN
BEGIN k9bwtalk79
	SAY ~Dangerous times ahead. You best stay indoors citizen.~ IF ~~ EXIT
END

IF ~RandomNum(10,9) Global("chapter","GLOBAL",7) ~ THEN
BEGIN k9bwtalk80
	SAY ~Can't talk now I'm afraid. Amn may attack at any moment. I've got a whole list of things that need doing to get our defences ready and no time to do most of it.~
	 IF ~~ EXIT
END

IF ~RandomNum(10,10) Global("chapter","GLOBAL",7) Global("DukeThanks","GLOBAL",0)~ THEN
BEGIN k9bwtalk81
	SAY ~Hey, wait its you! <CHARNAME> you are wanted for the murder of the leaders of the Iron Throne!~
	 IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~RandomNum(10,10) Global("chapter","GLOBAL",7) Global("DukeThanks","GLOBAL",1)~ THEN
BEGIN k9bwtalk82
	SAY ~Hey, wait its you! <CHARNAME> what are you doing here? You should be hunting down that traitor Sarevok!~
	 IF ~~ EXIT
END
