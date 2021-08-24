BEGIN k9hender


IF ~Global("k9hostilehendern","GLOBAL",2)~ THEN BEGIN 29
SAY ~You've overstayed your welcome stranger. I will not tolerate you meddling in my affairs. Leave here at once!~
++ ~Sorry, I didn't mean to barge in there.~     GOTO 30
++ ~The mayor seems to think you might be hiding something. I'm checking here under his authority.~ GOTO 31
++ ~I don't answer to you.~ GOTO 32
END

IF ~Global("k9charmed","GLOBAL",1) Global("k9hendernpeaceful","GLOBAL",0)~ THEN BEGIN 24
SAY ~Ohh hello friend. Isn't this all such a lovely place? That's why I took my son here. Get him away from his shrew of a mother. The witch was full of gibberjabber about worshiping this and that god. Bunch of silliness. The boy should be taught the truth, that we are nothing but puppets to these *supposedly* superior beings.~ IF ~~ THEN DO ~SetGlobal("k9hendernpeaceful","GLOBAL",1)~ EXIT
END

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0

SAY ~Hmm... yes? Just leave the meals on the table. I'll get to them when I can.~
++ ~I'm not your servant.~ GOTO 1
++ ~Are you Hendern?~ GOTO 2
++ ~I'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 1
SAY ~Well, just who are you then?~
++ ~Are you Hendern?~ GOTO 2
++ ~I take it you are Hendern? I've been hearing things in town about you. What do you know about the odd weather here?~ GOTO 3
+~CheckStatGT(Player1Fill, 49, DETECTILLUSIONS)~+ ~That's a pretty oddly shaped door.~ GOTO 4
++ ~I'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 2
SAY ~Yes, yes. We have no dealings from what I recall. Why are ye here?~
++ ~I've been hearing things in town about you. What do you know about the odd weather here?~ DO ~SetGlobal("k9KnowHendernTalked","GLOBAL",1)~ GOTO 3
++ ~What do you know about Shaja?~ DO ~SetGlobal("k9KnowHendernTalked","GLOBAL",1)~ GOTO 8
+~CheckStatGT(Player1Fill, 49, DETECTILLUSIONS)~+ ~That's a pretty oddly shaped door.~ DO ~SetGlobal("k9KnowHendernTalked","GLOBAL",1)~ GOTO 4
++ ~I'll be going now.~ DO ~SetGlobal("k9KnowHendernTalked","GLOBAL",1)~ EXIT
END

 IF ~~ THEN BEGIN 3
SAY ~Bah, ye best be going if you've come barking to this door with such talk. If you have nothing of worth to add then I think it would be best if you depart.~
++ ~You already own a house in town. Why do you rent this room?~ GOTO 27
++ ~What do you know about Shaja?~ GOTO 8
+~CheckStatGT(Player1Fill, 49, DETECTILLUSIONS)~+ ~That's a pretty oddly shaped door.~ GOTO 4
++ ~I'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 4
SAY ~Indeed, comes all the way from southern Faerun. Nifty little thing really.~
++ ~What's behind the door?~ GOTO 5
++ ~I'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 5
SAY ~Nothing for you to be concerned about.~ IF ~~ THEN DO ~AddJournalEntry(@66077, QUEST)~ EXIT
END

IF ~Global("k9hostileHendern","GLOBAL",1) NumTimesTalkedToGT(0)~ THEN BEGIN 6
SAY ~I told you to LEAVE.~ IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~ NumTimesTalkedToGT(0)~ THEN BEGIN 7
SAY ~What do you want?~
+~Global("k9HenderListened","GLOBAL",1)~+ ~I heard you are a mage. Do you have any scrolls for sale?~ GOTO 25
+~GlobalLT("k9HenderListened","GLOBAL",1)~+ ~I heard you are a mage. Do you have any scrolls for sale?~ GOTO 26
+~Global("k9HenderListened","GLOBAL",1) CheckStatGT(Player1,16,CHR)~+ ~You seem very dismissive of magic.~ GOTO 40
+~Global("k9HenderListened","GLOBAL",1) CheckStatLT(Player1,17,CHR)~+ ~You seem very dismissive of magic.~ GOTO 41
+~Global("k9KnowHendernTalked","GLOBAL",0)~+ ~Are you Hendern?~ GOTO 2
++ ~I had some questions for you.~ GOTO 36
++ ~I'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 8
SAY ~Don't know why she's here. Don't know why you care. Not a lot of halflings find their way up to these parts though. Guess that's a bit odd, yes? Bet a good pair of boots she's no merchant either. Doesn't have the stones for such work.~
+~Global("k9HendernAtheist","GLOBAL",1)~+ ~Speaking of secrets. I've heard from others that you are one of the faithless.~ GOTO 9
+~Global("k9ShajaLearned","GLOBAL",0)~+ ~What makes you think she isn't really a merchant?~ GOTO 10
+~GlobalGT("k9ShajaLearned","GLOBAL",0)~+ ~What makes you think she isn't really a merchant?~ GOTO 39
++ ~I'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 9
SAY ~I don't care what you've heard. Leave your antiquated views of the universe at my door. I have no time for such things.~
++ ~What do you mean antiquated? Surely it would be foolish to deny the existence of the gods?~ GOTO 11
++ ~I'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 10
SAY ~Egads <MANWOMAN>, can you not see the woman's mannerisms for yerself? Snicker at the style of her speech if ye like, but I can see through the gibberish to know well enough that the woman is far too well learned for a merchant peddling simple trinkets.~ IF ~~ THEN DO ~AddJournalEntry(@66070,QUEST) SetGlobal("k9ShajaLearned","GLOBAL",1) IncrementGlobal("k9Jashaknow","GLOBAL",1)~ GOTO 16
END


IF ~~ THEN BEGIN 11
SAY ~I do not deny the existence of the gods - I protest their purpose. Is it necessary that they exist? Is it necessary that there are gods whose sole existence is to torment others, to bind them to their servitude, to kill others that oppose them? I should think not. Most of the gods have no power if we cease to worship them - that much has been made clear by Ao. The people of Abeir-Toril should simply refuse to worship these vermin.~
++ ~But what world would we have without the existence of gods like Mystra? Magic would cease to exist.~ GOTO 14
++ ~While I cannot deny the questionable nature of some of the gods you cannot deny that some of them do help those in need.~ GOTO 17
++ ~You are mad if you think you're cause will get you anything but eternal torment.~ GOTO 18
++ ~I'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 12
SAY ~A reasonable thought indeed, but one I would think that can be dismissed. I have yet to see the woman stay indoors for any serious length of time. If she were in hiding would that be the case? I should think not.~ IF ~~ THEN  GOTO 15
END

IF ~~ THEN BEGIN 13
SAY ~As I have already made it clear I tire of these false allegations. Unless you have a pressing matter to discuss with me I'd ask that you leave.~
++ ~I have other questions for you.~ GOTO 19
++ ~Goodbye.~ EXIT
END

IF ~~ THEN BEGIN 14
SAY ~And what of it? Hmph... we would be better off were we to rely on our wits instead of on the charity of other worldly beings. Gears and gadgets are used throughout our cities already. Why do we need magic when technology can improve our lives without leading to such servitude.~
+~OR(2) CheckStatGT(Player1Fill, 15, WIS) Class(Player1Fill,Cleric_all)~+ ~Technology can only take us so far. Simple herbs can treat wounds, it is true, but would we go about treating plagues?~ GOTO 20
+~Class(Player1Fill,Druid_all)~+ ~But what of the perils of technology? I fear for nature should humanity be left alone to harvest it as it pleases.~ GOTO 21
+~OR(3) Class(Player1Fill,Mage_all) Class(Player1Fill,Bard) Class(Player1Fill,Sorcerer)~+ ~But what would become of those who practice the arcane arts? The loss of the weave would surely devastate them.~ GOTO 22
++ ~Can't say I agree. But I doubt I can convince you otherwise.~ DO ~SetGlobal("k9HenderListened","GLOBAL",1)~ EXIT
++ ~I see your point.~ DO ~SetGlobal("k9HenderListened","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 15
SAY ~Is there something else I can help you with? Or am I finally to be free of your poking and prattling?~
+~Global("k9HenderListened","GLOBAL",1)~+ ~I heard you are a mage. Do you have any scrolls for sale?~ GOTO 25
+~GlobalLT("k9HenderListened","GLOBAL",1)~+ ~I heard you are a mage. Do you have any scrolls for sale?~ GOTO 26
+~Global("k9HenderListened","GLOBAL",1) CheckStatGT(Player1,16,CHR)~+ ~You seem very dismissive of magic.~ GOTO 40
+~Global("k9HenderListened","GLOBAL",1) CheckStatLT(Player1,17,CHR)~+ ~You seem very dismissive of magic.~ GOTO 41
+~Global("k9HendernAtheist","GLOBAL",1)~+ ~I've heard from others that you are one of the faithless.~ GOTO 9
++ ~You already own a house in town. Why do you rent this room?~ GOTO 27
++ ~What do you know about Shaja?~ GOTO 8
+~CheckStatGT(Player1Fill, 49, DETECTILLUSIONS)~+ ~That's a pretty oddly shaped door.~ GOTO 4
++ ~No that covers it. I think I'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 16
SAY ~Hmph... besides this is no a place for merchants - least of all those with no experience in the wilds around the village. In better times the woods around here are filled with snakes, wyverns, and even dragon younglings. Nasty sorts for any to tread around by oneself. This time of the year it would have been safer and more profitable for a merchant to stay in Bowshot or even Soubar. Places along the Trade Way with far more customers to come to her beck and call. Only the barking mad would come this far off the trade way to earn their keep.~
++ ~Sounds like  you've been thinking about this a lot.~ GOTO 28
++ ~Maybe she's a criminal on the lam?~ GOTO 12
++ ~Maybe she is just a merchant and you are trying to distract concern from yourself.~ GOTO 13
++ ~I'll be going now.~  EXIT
END

IF ~~ THEN BEGIN 17
SAY ~And what of it? Perhaps we would be better off were we to rely on our wits instead of on the charity of other worldly beings. Our world is already full of technologies that ignore such need for divine intervention. We do not need the magic of gods when technology can improve our lives without leading to such servitude.~ IF ~~ THEN DO ~SetGlobal("k9HenderListened","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 18
SAY ~Do ya not understand <GIRLBOY>? The faithless are tormented not out of some greater moral purpose but out of fear. Had the gods have been worthy of our devotion then such a thing would not exist...yes?~ IF ~~ THEN DO ~SetGlobal("k9HenderListened","GLOBAL",1)~ GOTO 23
END


IF ~~ THEN BEGIN 19
SAY ~What is it?~
+~Global("k9HenderListened","GLOBAL",1)~+ ~I heard you are a mage. Do you have any scrolls for sale?~ GOTO 25
+~GlobalLT("k9HenderListened","GLOBAL",1)~+ ~I heard you are a mage. Do you have any scrolls for sale?~ GOTO 26
+~Global("k9HenderListened","GLOBAL",1) CheckStatGT(Player1,16,CHR)~+ ~You seem very dismissive of magic.~ GOTO 40
+~Global("k9HenderListened","GLOBAL",1) CheckStatLT(Player1,17,CHR)~+ ~You seem very dismissive of magic.~ GOTO 41
+~Global("k9HendernAtheist","GLOBAL",1)~+ ~I've heard from others that you are one of the faithless.~ GOTO 9
++ ~You already own a house in town. Why do you rent this room?~ GOTO 27
++ ~What do you know about Shaja?~ GOTO 8
+~CheckStatGT(Player1Fill, 49, DETECTILLUSIONS)~+ ~That's a pretty oddly shaped door.~ GOTO 4
++ ~Nevermind actually. I think I'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 20
SAY ~Do the gods keep yer beasts shit off the roads? Nay, they don't. Tis why we built sewers is it not? Plague, illness, such things can be treated another way - I have no doubt.~ IF ~~ THEN  DO ~SetGlobal("k9HenderListened","GLOBAL",1) AddJournalEntry(@66064,QUEST) ~ GOTO 15
END

IF ~~ THEN BEGIN 21
SAY ~Aye, the affairs of man speak ill of our nature. Should man wish to challenge nature further then they do so at their own risk, yes? One cannot pollute their field forever.~ IF ~~ THEN DO ~ AddJournalEntry(@66064,QUEST) SetGlobal("k9HenderListened","GLOBAL",1)~ GOTO 15
END

IF ~~ THEN BEGIN 22
SAY ~Bah, wizardly folk can stuff their hats full of carrots for all I care. Let them harvest and struggle with the rest of us. You be a wizard long enough and you'll begin to see that little good can come of magic that can't be done by the hand. There is far more evil done in this world at the behest of the magically inclined. Best to be rid of it.~ IF ~~ THEN DO ~  AddJournalEntry(@66064,QUEST) SetGlobal("k9HenderListened","GLOBAL",1)~ GOTO 15
END

IF ~~ THEN BEGIN 23
SAY ~Bah, your eyes tell me what I need to know. Perhaps in time you'll see yerself. With age comes wisdom... as they say.~ IF ~~ THEN DO ~SetGlobal("k9HenderListened","GLOBAL",1)  AddJournalEntry(@66064,QUEST) ~ GOTO 15
END

IF ~~ THEN BEGIN 25
SAY ~Bah, damn the magic. Ye at least heard me out though. Tis better than most. If you want something I have I can give it. For the right price of course.~ IF ~~ THEN DO ~StartStore("k9hender",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 26
SAY ~Bah, damn the magic. Ye not buying nothing from me.~ IF ~~ THEN GOTO 38
END

IF ~~ THEN BEGIN 27
SAY ~I've better things to do than be lambasted by frivolous questions. I'll ask peacefully just this once. Leave me be.~
+~Global("k9HenderListened","GLOBAL",1)~+ ~I heard you are a mage. Do you have any scrolls for sale?~ GOTO 25
+~GlobalLT("k9HenderListened","GLOBAL",1)~+ ~I heard you are a mage. Do you have any scrolls for sale?~ GOTO 26
+~Global("k9HenderListened","GLOBAL",1) CheckStatGT(Player1,16,CHR)~+ ~You seem very dismissive of magic.~ GOTO 40
+~Global("k9HenderListened","GLOBAL",1) CheckStatLT(Player1,17,CHR)~+ ~You seem very dismissive of magic.~ GOTO 41
+~Global("k9HendernAtheist","GLOBAL",1)~+ ~Before I do, I've heard from others that you are one of the faithless.~ GOTO 9
++ ~Before I go, my understanding is that you already own a house in town. Why do you rent this room?~ GOTO 27
++ ~What do you know about Shaja?~ GOTO 8
+~CheckStatGT(Player1Fill, 49, DETECTILLUSIONS)~+ ~I just noticed. That's a pretty oddly shaped door.~ GOTO 4
++ ~Very well then. I'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 28
SAY ~Tis a small town and her arrival was a notable, if unforeseen, event. If you are through lambasting me with frivolous questions I'd ask that you leave me be.~ 
+~Global("k9HenderListened","GLOBAL",1)~+ ~I heard you are a mage. Do you have any scrolls for sale?~ GOTO 25
+~GlobalLT("k9HenderListened","GLOBAL",1)~+ ~I heard you are a mage. Do you have any scrolls for sale?~ GOTO 26
+~Global("k9HenderListened","GLOBAL",1) CheckStatGT(Player1,16,CHR)~+ ~You seem very dismissive of magic.~ GOTO 40
+~Global("k9HenderListened","GLOBAL",1) CheckStatLT(Player1,17,CHR)~+ ~You seem very dismissive of magic.~ GOTO 41
+~Global("k9HendernAtheist","GLOBAL",1)~+ ~Before I do, I've heard from others that you are one of the faithless.~ GOTO 9
++ ~Before I go, my understanding is that you already own a house in town. Why do you rent this room?~ GOTO 27
++ ~What do you know about Shaja?~ GOTO 8
+~CheckStatGT(Player1Fill, 49, DETECTILLUSIONS)~+ ~I just noticed. That's a pretty oddly shaped door.~ GOTO 4
++ ~Very well then. I'll be going now.~ EXIT
END


IF ~~ THEN BEGIN 30
SAY ~Bah, what fool do you think I am? Adventurers choosing to come to this place on behalf of our little mayor? Barging into *my* chamber rummaging through *my* things? Enough of this charade, I cannot allow you to leave here alive. I have worked too hard for that fiend of a woman to find the boy. I cannot allow the rest of the town to learn of his presence.~
++ ~There's no need for that. I'll keep your secret. I simply assumed you were the traitor, that you were hiding something back there.~ GOTO 33
++ ~If you want a fight. So be it.~ DO ~SetGlobal("k9hostilehendern","GLOBAL",3) Enemy()~ EXIT
END

IF ~~ THEN BEGIN 31
SAY ~Bah, what fool do you think I am?  Barging into *my* chamber rummaging through *my* things? Claiming it was the mayor that sent you. Enough of this charade, I cannot allow you to leave here alive. I have worked too hard for that fiend of a woman to find the boy. I cannot allow the rest of the town to learn of his presence.~
++ ~There's no need for that. I'll keep your secret. I simply assumed you were the traitor, that you were hiding something back there.~ GOTO 33
++ ~If you want a fight. So be it.~ DO ~SetGlobal("k9hostilehendern","GLOBAL",3) Enemy()~ EXIT
END

IF ~~ THEN BEGIN 32
SAY ~Barging into *my* chamber rummaging through *my* things? Suggesting that you have nothing to answer for? Enough of this charade, I cannot allow you to leave here alive. I have worked too hard for that fiend of a woman to find the boy. I cannot allow the rest of the town to learn of his presence.~
++ ~There's no need for that. I'll keep your secret. I simply assumed you were the traitor, that you were hiding something back there.~ GOTO 33
++ ~If you want a fight. So be it.~ DO ~SetGlobal("k9hostilehendern","GLOBAL",3) Enemy()~ EXIT
END

IF ~~ THEN BEGIN 33
SAY ~If I were the traitor what could I possibly have hidden behind there that would have caused this change in weather? Bah, you must know little of subterfuge. The art of trickery is not something to be treated so bluntly.~ IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34
SAY ~Tis certainly a simple matter of finding the *real* traitor. In any case, I am not guilty in this affair and I will *not* be further bothered by you. Is that understood?~
++ ~My apologies.~ DO ~SetGlobal("k9hostilehendern","GLOBAL",10)~ EXIT
++ ~Fine.~ DO ~SetGlobal("k9hostilehendern","GLOBAL",10)~ EXIT
++ ~No. You are guilty, I'm sure of it.~ GOTO 35
END


IF ~~ THEN BEGIN 35
SAY ~I tire of these idiotic accusations. If killing you is the only way to ensure my own peace, then so be it.~ IF ~~ THEN DO ~SetGlobal("k9hostilehendern","GLOBAL",3) Enemy()~ EXIT
END

IF ~~ THEN BEGIN 36
SAY ~If it will get you out of my sight then ask. But I tire of these seemingly constant interuptions.~
+~Global("k9HendernAtheist","GLOBAL",1)~+ ~I've heard from others that you are one of the faithless.~ GOTO 9
++ ~Constant interuptions? I've only barely talked to you.~ GOTO 37
++ ~You already own a house in town. Why do you rent this room?~ GOTO 27
++ ~What do you know about Shaja?~ GOTO 8
+~CheckStatGT(Player1Fill, 49, DETECTILLUSIONS)~+ ~That's a pretty oddly shaped door.~ GOTO 4
++ ~Nevermind actually. I think I'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 37
SAY ~I have been coerced into solving the problems of this village since I first set foot in town. The villagers seem to think of magic as a solution to all their petty problems.~ IF ~~ THEN GOTO 38
END

IF ~~ THEN BEGIN 38
SAY ~Now, I would like you to leave.~
+~Global("k9HendernAtheist","GLOBAL",1)~+ ~Before I do, I've heard from others that you are one of the faithless.~ GOTO 9
++ ~Earlier you mentioned being constant interuptioned. Why is that? I've only barely talked to you.~ GOTO 37
++ ~Before I go, my understanding is that you already own a house in town. Why do you rent this room?~ GOTO 27
++ ~What do you know about Shaja?~ GOTO 8
+~CheckStatGT(Player1Fill, 49, DETECTILLUSIONS)~+ ~I just noticed. That's a pretty oddly shaped door.~ GOTO 4
++ ~Very well then. I'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 39
SAY ~Egads <MANWOMAN>, can you not see the woman's smarts for yerself? Snicker at the style of her speech if ye like, but I can see through the gibberish to know well enough that the woman is far too well learned for a merchant peddling simple trinkets.~ IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 40 
SAY ~Aye, tis a greater power than many know... and yet how do they use such power? True, a few use such power for good, but far more use it for one nefarious purpose or another.~ IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 41
SAY ~Aye, tis a greater power than many know... and yet how do they use such power? True, a few use such power for good, but far more use it for one nefarious purpose or another.~ IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 42
SAY ~For those who have such power at their disposal rarely see fit not to use it. Heavens, why would they not? It is for this very reason I came to this village some time ago. Finding protection from one such fiend amongst the wards of the place seemed as apt an opportunity as any.~
++ ~What were you fleeing from?~  GOTO 44
++ ~What wards?~ GOTO 45
++ ~Farewell.~ EXIT
END

IF ~~ THEN BEGIN 43
SAY ~Sigh... I fear my words mean little to you. Perhaps, in time, you will come to see as I do.~ IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 44
SAY ~A dragon my <GIRLBOY>. I would think that to have been obvious. Fiending, evil creatures they are. Except the metallic ones of course, but they are small in number.~
++ ~What was that earlier about wards?~ GOTO 45
++ ~Farewell.~ EXIT
END

IF ~~ THEN BEGIN 45
SAY ~The wards of this place protect the town from dragons and other reptilian vermin. Were it not for them this place would have surely been overrun decades ago.~
++ ~So then what was it you were fleeing from?~ GOTO 44
++ ~Farewell.~ EXIT
END

