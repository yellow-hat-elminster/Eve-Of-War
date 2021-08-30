BEGIN k9gord

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0

SAY ~Ohh, uhh. Who are you? Can't say I get many visitors up here. I really wasn't expecting anyone.~
++ ~Who are you?~  DO ~SetGlobal("k9KnowGord","GLOBAL",1)~ GOTO 1
++ ~What is this place?~ GOTO 2
++ ~Why are you up here?~  DO ~SetGlobal("k9KnowGord","GLOBAL",1)~ GOTO 3
++ ~I go where I please.~ GOTO 4
+~Global("k9KnowGord","GLOBAL",1)~+ ~So you've been up here some time I gather. Know of anything dangerous in these parts?~ GOTO 5
+~GlobalLT("k9serpentsolved","GLOBAL",1)~+ ~Do you know anything about Shaja - the new arrival in town?~ GOTO 8
+~Global("k9snakefreedom","GLOBAL",2) Global("k9snakefreedom2","GLOBAL",0) PartyHasItem("k9bookyu")~+ ~We found this tome while searching the Yuan-Ti ruins under the town. Any idea what it says?~  GOTO 14
++ ~Actually, I think I'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 1
SAY ~Ranger Gord, at your service. Been up here for ohh... 18 odd years. I keep lookout up here. You never know what's out there.~
++ ~What is this place?~ GOTO 2
++ ~Know of anything dangerous in these parts?~ GOTO 5
++ ~I'll be going now.~ EXIT
END


IF ~~ THEN BEGIN 2
SAY ~This here is the town's watchtower. A beauty if I do say so myself. I've spent plenty of nights blissfully gazing out into the stars from here. Truly remarkable.~
++ ~Who are you?~   DO ~SetGlobal("k9KnowGord","GLOBAL",1)~ GOTO 1
++ ~So you've been up here some time I gather. Know of anything dangerous in these parts?~ GOTO 5
++ ~I'll be going now.~ EXIT
END

 IF ~~ THEN BEGIN 3
SAY ~Isn't it obvious? I'm the local ranger. It's my magnificance that keeps this community safe.~
++ ~You've got a rather high opinion of yourself.~ GOTO 13
++ ~What is this place?~ GOTO 2
++ ~So you've been up here some time I gather. Know of anything dangerous in these parts?~ GOTO 5
++ ~I'll be going now.~ EXIT
END

 IF ~~ THEN BEGIN 4
SAY ~Ahh the strong, dominant type. I know you well. Perhaps better than you even realize. You know I've been up here for ohh... 18 odd years. I've seen my share too.~
++ ~Who are you?~  DO ~SetGlobal("k9KnowGord","GLOBAL",1)~ GOTO 1
++ ~What is this place?~ GOTO 2
++ ~Why are you up here?~  DO ~SetGlobal("k9KnowGord","GLOBAL",1)~ GOTO 3
++ ~Know of anything dangerous in these parts?~ GOTO 5
++ ~I'll be going now.~ EXIT
END

 IF ~~ THEN BEGIN 5
SAY ~Keep an eye out for snakes. Especially the small black and yellow ones. The venom from that particular breed of snake can drop a full grown birch.~
++ ~Uhh...what?~ GOTO 6
++ ~I'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 6
SAY ~Ohh ya. Now snakes and trees aren't natural enemies mind you. But if the birch were to attack first, the snake will fight back...~
++ ~Trees can't attack anything though...~ GOTO 9
++ ~I think you've spent too much time up here.~ GOTO 11
++ ~I don't know what you are talking about.~ GOTO 10
++ ~I'll be going now.~ EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 7
SAY ~What are you looking for this time?~
++ ~Who are you?~ DO ~SetGlobal("k9KnowGord","GLOBAL",1)~ GOTO 1
++ ~What is this place?~ GOTO 2
++ ~Why are you up here?~ DO ~SetGlobal("k9KnowGord","GLOBAL",1)~ GOTO 3
+~Global("k9KnowGord","GLOBAL",1)~+ ~So you've been up here some time I gather. Know of anything dangerous in these parts?~ GOTO 5
+~GlobalLT("k9serpentsolved","GLOBAL",1)~+ ~Do you know anything about Shaja - the new arrival in town?~ GOTO 8
+~Global("k9snakefreedom","GLOBAL",2) Global("k9snakefreedom2","GLOBAL",0) PartyHasItem("k9bookyu")~+ ~We found this tome while searching the Yuan-Ti ruins under the town. Any idea what it says?~  GOTO 14
++ ~Actually I think I'll be going now.~ EXIT
END

 IF ~~ THEN BEGIN 8
SAY ~Can't say I do. I stay up here most of the time you know? Gets kind of lonely.~
++ ~I have some other questions for you.~ GOTO 7
++ ~I'll be going now.~ EXIT
END

 IF ~~ THEN BEGIN 9
SAY ~That is just what the trees want you to think. When you first see a snake and tree battle you think you are seeing things - that its all a trick. You better believe its real though.~
++ ~Right...soo. I have some other questions for you.~ GOTO 7
++ ~I think I'll be going now.~ EXIT
END

 IF ~~ THEN BEGIN 10
SAY ~Ohh just give it time then. You'll understand.~
++ ~I have some other questions for you.~ GOTO 7
++ ~I'll be going now.~ EXIT
END

 IF ~~ THEN BEGIN 11
SAY ~Ohh don't be silly. Up here I can see everything I'd ever want to see. Where else would I go?~ IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
SAY ~Say... I bet you've never seen a dragon fight a badger before.~
++ ~Can't say I have. I do have some other questions for you though.~ GOTO 7
++ ~I'll be going now.~ EXIT
END

 IF ~~ THEN BEGIN 13
SAY ~Ohh hardly. You'll not find a more modest person here.~
++ ~Who are you?~ DO ~SetGlobal("k9KnowGord","GLOBAL",1)~ GOTO 1
++ ~What is this place?~ GOTO 2
++ ~Why are you up here?~ DO ~SetGlobal("k9KnowGord","GLOBAL",1)~ GOTO 3
+~Global("k9KnowGord","GLOBAL",1)~+ ~So you've been up here some time I gather. Know of anything dangerous in these parts?~ GOTO 5
+~GlobalLT("k9serpentsolved","GLOBAL",1)~+ ~Do you know anything about Shaja - the new arrival in town?~ GOTO 8
+~Global("k9snakefreedom","GLOBAL",2) Global("k9snakefreedom2","GLOBAL",0) PartyHasItem("k9bookyu")~+ ~We found this tome while searching the Yuan-Ti ruins under the town. Any idea what it says?~  GOTO 14
++ ~Actually I think I'll be going now.~ EXIT
END

 IF ~~ THEN BEGIN 14
SAY ~A tome you say? Hmm...ahh yes snake tongue. It's awfully hard to read, even at the best of times. Always overuses the vowels you see. Not that people would think to think of that first mind you.~ IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15
SAY ~Hmm...it would appear as if we have a bit of a problem. It would appear that our snake friends left a bit of a curse on some of the people in the town. Actually across much of this part of the Sword Coast. They'll do that from time to time you see, to use our people against us. I suppose the only good news is that with the death of the priest there is still a chance for the town to get out of this in once piece. But we'll need to act fast.~ IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16
SAY ~I imagine Telar could be of use there. I would talk to him about this. Let him know some in town may be afflicted by an ancient Yuan-Ti curse - the curse of tainted ones.~ IF ~~ THEN DO ~SetGlobal("k9snakefreedom2","GLOBAL",1) SetGlobal("k9snakefreedom","GLOBAL",3)  TakePartyItem("k9bookyu") AddJournalEntry(@66086,QUEST)~ EXIT
END
