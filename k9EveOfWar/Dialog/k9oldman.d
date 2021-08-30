BEGIN k9oldman

IF ~True()~ THEN BEGIN 0
SAY ~What's that? I've got nothing for you friend.~
++ ~Who are you?~ GOTO 1
++ ~What are you doing here?~ GOTO 13
+~Global("k9demonTalk","GLOBAL",3)~+ ~The fiend over there seems to think you know something about "the Art." What can you tell me about it?~ GOTO 2
+~Global("k9demonTalk","GLOBAL",3)~+ ~That creature over there seems to think you are up to something.~ GOTO 3
+~Global("k9cursedemonknight","GLOBAL",1)~+ ~That demon knight over there is apparently cursed to help the nobleman. Would you happen to know of any means to remove it?~ GOTO 25
++ ~What are your thoughts about the others here?~ GOTO 14
++ ~I'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 1
SAY ~Who am I??? Who are you?~
++ ~I've been asked by Cyric to find which one of you intends to betray him.~ GOTO 4
++ ~Nobody. Just tell me then... what are you working on?~ GOTO 5
++ ~A friend. Speaking of which, what are you doing here?~ GOTO 13
++ ~I'll be going now.~ EXIT
END


IF ~~ THEN BEGIN 2
SAY ~The Art? Ohh my <GIRLBOY> I'm afraid I have no idea of what you are talking about. 

Now if you excuse me I really must be getting back to my work.~
++ ~What work is that?~ GOTO 5
++ ~Fine then just answer this. Who are you?~ GOTO 1
++ ~Then just what are you doing here?~ GOTO 13
++ ~I'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 3
SAY ~And you trust it? That fiend. My <GIRLBOY>, you've not been here long have you? Tis a demon, hardly the type to be trusted.~
++ ~Who are you?~ GOTO 1
++ ~What are you doing here?~ GOTO 13
+~Global("k9demonTalk","GLOBAL",3)~+ ~The fiend over there seems to think you know something about "the Art." What can you tell me about it?~ GOTO 2
++ ~What are your thoughts about the others here?~ GOTO 14
END

IF ~~ THEN BEGIN 4
SAY ~Betraying Cyric? No my <GIRLBOY>, you must be mistaken. I'm just an old man, I have no interest in challenging any of the gods.~
++ ~Then what are you working on?~ GOTO 5
++ ~Fine then just answer this. Who are you?~ GOTO 1
++ ~Then just what are you doing here?~ GOTO 13
++ ~I'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 5
SAY ~Ohh yes, yes, it was awful. Cold, and miserable the whole way. Had I known that we would have traipsed across half of the Prime looking for that damn gem I would have never have gone.~
++ ~What gem?~ GOTO 6
++ ~I have no idea what you are talking about.~ GOTO 6
END

IF ~~ THEN BEGIN 6
SAY ~The gem my <GIRLBOY>, the one held by that damn Baelnorn up in the Severred Hand. Ohh you should have seen it, it was beautiful. Shiny, polished, and rarely ever used I imagine. Exactly what was needed.~
++ ~Of course, of course. That gem was pretty necessary wasn't it.~  GOTO 7
++ ~You've lost me. What was this gem needed for?~ GOTO 8
END

IF ~~ THEN BEGIN 7
SAY ~Ohh yes. Without it we could not have opened the portal here.~
++ ~Yes, I suppose that was why we acquired it.~  GOTO 9
++ ~What was the gem needed for?~ DO ~IncrementGlobal("k9doubt","GLOBAL",1)~ GOTO 20
END

IF ~~ THEN BEGIN 8
SAY ~Hmm...what do you mean my <GIRLBOY>. We needed it to open the portal here.~
++ ~Yes, I suppose that was necessary for the plan.~  GOTO 9
++ ~Right, and why did you need to get here again?~ DO ~IncrementGlobal("k9doubt","GLOBAL",1)~ GOTO 21
END


IF ~~ THEN BEGIN 9
SAY ~Yes, yes. But imagine if we had succeeded. If I still had my mind...There are days I do of course, moments, flickers, really. But on other days, at other times...no, no, no, mustn't think of those times.~ IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
SAY ~The old man seems to have lost his thought. "Bah, spit it out. What are you standing around here for?"~
+~GlobalGT("k9doubt","GLOBAL",1)~+  ~You were going to tell me about your plans.~ GOTO 11
+~GlobalLT("k9doubt","GLOBAL",2)~+   ~We were talking about your plans.~ GOTO 12
END

IF ~~ THEN BEGIN 11
SAY ~No, no. Trickery...all trickery. Cyric's work I'm certain of it. You are not here for me. You are here for you, or for him, or perhaps even for someone else! No, no. I'll hear no more of your lies! Not now. Not ever.~ IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN 12
SAY ~Of course, of course. Cyric has gone mad you see. He fears the reach of his enemies, yet has allowed me to remain here. If I can find a way to kill him, in whatever way is required, it will sow chaos! The Lord of Murder shall be murdered himself hmm... such irony!~ IF ~~ THEN DO ~AddJournalEntry(@66064348,QUEST) SetGlobal("k9oldmanplans","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 13
SAY ~What am I doing here??? My <GIRLBOY>, why wouldn't I be here?~
+~CheckStatGT(Player1Fill, 10, INT)~+ ~You are a human far from Sigil or the Prime Material Plane. Seems pretty strange that you'd find yourself all the way out here.~ GOTO 23
++ ~You just seem a bit out of place here.~ GOTO 24
++ ~Who are you?~ GOTO 1
+~Global("k9demonTalk","GLOBAL",3)~+ ~The fiend over there seems to think you know something about "the Art." What can you tell me about it?~ GOTO 2
+~Global("k9demonTalk","GLOBAL",3)~+ ~That creature over there seems to think you are up to something.~ GOTO 3
++ ~What are your thoughts about the others here?~ GOTO 14
++ ~I'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 14
SAY ~The others?... Ohh yes the others! Hmm...what about them?~
++ ~What do you know about the demon knight over there?~ GOTO 15
++ ~What do you know about that fiend?~ GOTO 16
+~Global("k9Celestial","GLOBAL",1)~+ ~What do you know about the other being?~ GOTO 17
+~Global("k9ShadowSpawn","GLOBAL",1)~+ ~What do you know about the other being?~ GOTO 18
++ ~Actually, I'll be going now.~ EXIT
END


IF ~~ THEN BEGIN 15
SAY ~I know nothing of that thing. Ohh but that nobleman, I know that one. I've seen him around.

I'm sorry my <GIRLBOY>, but I have something to tell you. I fear they know about everything. That nobleman is in league with Cyric, I'm sure of it.~ IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 16
SAY ~Hmm... tis rather ugly. I can't say I know much more than that.~ IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 17
SAY ~What brought one of the celestials here! My <GIRLBOY>, the chaos their presence could surely cause here. This could be but we've been waiting for!~ IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 18
SAY ~Tis one of the celestials my <GIRLBOY>. A fallen one at that. Rare, in these parts, perhaps, but hardly worthy enough of our concern.~ IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19
SAY ~Is... is there something else you'd like?~
++ ~What do you know about the demon knight over there?~ GOTO 15
++ ~What do you know about that fiend?~ GOTO 16
+~Global("k9Celestial","GLOBAL",1)~+ ~What do you know about the other being?~ GOTO 17
+~Global("k9ShadowSpawn","GLOBAL",1)~+ ~What do you know about the other being?~ GOTO 18
++ ~Actually, I'll be going now.~ EXIT
END



IF ~~ THEN BEGIN 20
SAY ~Hmm...what do you mean my <GIRLBOY>. We needed it to open the portal here.~  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21
SAY ~My <GIRLBOY>, you seem a bit confused. Perhaps you best lie down a moment.~
++ ~Now that I think about it, I suppose the gem was necessary for the plan.~  GOTO 9
++ ~Just answer the question. Why did you need to get here again?~ DO ~IncrementGlobal("k9doubt","GLOBAL",1)~ GOTO 22
END

IF ~~ THEN BEGIN 22
SAY ~Ohh, yes. But imagine if we had succeeded. If I still had my mind. There are days I do of course, moments, flickers, really. But on other days, at other times...no, no, no, mustn't think of those times.~ IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 23
SAY ~Hmm???...ohh, yes, yes. The Prime Material Plane. Beautiful place to pick up things. Too many nasty goblins though...~
++ ~Who are you?~ GOTO 1
+~Global("k9demonTalk","GLOBAL",3)~+ ~The fiend over there seems to think you know something about "the Art." What can you tell me about it?~ GOTO 2
+~Global("k9demonTalk","GLOBAL",3)~+ ~That creature over there seems to think you are up to something.~ GOTO 3
++ ~What are your thoughts about the others here?~ GOTO 14
++ ~I think I'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 24
SAY ~Sorry, do I know you? My memory isn't what it used to be.~
++ ~Who are you?~ GOTO 1
+~Global("k9demonTalk","GLOBAL",3)~+ ~The fiend over there seems to think you know something about "the Art." What can you tell me about it?~ GOTO 2
+~Global("k9demonTalk","GLOBAL",3)~+ ~That creature over there seems to think you are up to something.~ GOTO 3
++ ~What are your thoughts about the others here?~ GOTO 14
++ ~I think I'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 25
SAY ~What?? Ohh yes, curse removal. Easy enough my <GIRLBOY> once you know what you're dealing with. That nobleman has been stuffing his nose about in my business long enough. I just might even have a way to counter that little curse of his.~ IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26
SAY ~Here, take this. Have that thing drink it, should remove its curse.~ IF ~~ THEN DO ~AddJournalEntry(@66064344,QUEST) SetGlobal("k9cursedemonknight","GLOBAL",2) GiveItemCreate("k9potn08", Player1,0,0,0)~ EXIT
END

