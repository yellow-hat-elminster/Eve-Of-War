BEGIN k9sodfis


IF ~!InParty("Sharteel") Global("k9Sharteel_Guard","GLOBAL",0)~ THEN BEGIN 0

SAY ~Hmm...Shar-Teel. Nasty one she is. Daughter of Angelo, one o'Sarevok's lackies. Best you watch yourself 'round her. She'd set the city ablaze in a heartbeat if she were set free.~
+~StateCheck("k9sodfis",STATE_CHARMED)~+ ~Hey friend, I know this is unusual but I need a favor. Eltan's tasked me with bringing her before him. Could you maybe leave her in my care?~ GOTO 5
++ ~I need to talk to her.~ GOTO 1
++ ~I need her to be freed. Immediately.~ GOTO 2
END

IF ~~ THEN BEGIN 1

SAY ~She ain't to be going nowhere of course, but if you just want to talk ye can.~ IF ~~ THEN DO ~ SetGlobal("k9Sharteel_Talk","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 2

SAY ~Heh, good one. From what I hear Duke Eltan's taken a personal interest in this one. She ain't going free until he says so.~
+~StateCheck("k9sodfis",STATE_CHARMED)~+ ~Hey friend, I know this is unusual but I need a favor. Eltan's tasked me with bringing her before him. Could you maybe leave her in my care?~ GOTO 5
+~OR(2) ReputationGT(Player1,16) CheckStatGT(Player1,14,CHR)~+ ~I'm the hero of Baldur's Gate. Perhaps you've heard of me? Eltan's tasked me with bringing her before him. Do you want to be the one to keep him waiting?~ GOTO 3
+~CheckStatGT(Player1,14,STR)~+ ~I'm the hero of Baldur's Gate. Perhaps you've heard of me? What do you think I do to people who don't give me what you want?~ GOTO 4
+~PartyHasItem("k9eltle2") CheckStatGT(Player1,5,CHR)~+ ~Then I've got a letter for you to read.~ GOTO 3
++ ~Fine, I'll just go get permission.~ DO ~AddJournalEntry(@665567, QUEST) SetGlobal("k9NarlenTalk","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 3

SAY ~Hmmm...well I'll be. Not what I was told by the man not just this morning. But orders are orders. Very well then, take her with ye.~ IF ~~ THEN DO ~SetGlobal("k9shar_unlock_door","GLOBAL",1) SetGlobal("k9Sharteel_Guard","GLOBAL",1) SetGlobal("k9Sharteel_Guard_FREE","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 4

SAY ~Hmmm... thought I recognized you. Well, far be it from me to stop the hero of Baldur's Gate. No need for a fight here. If you want her, take her then. I'll be lettin Eltan know she's with you.~ IF ~~ THEN DO ~SetGlobal("k9shar_unlock_door","GLOBAL",1) SetGlobal("k9Sharteel_Guard","GLOBAL",1) SetGlobal("k9Sharteel_Guard_FREE","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 5

SAY ~Hmmm... well ye know we aren't supposed to do that. But ye know, Eltan must trust ye pretty well I imagine. What with ye and your lot being heroes of the city. Well, I guess it'd be alright. Go on, take her then.~ IF ~~ THEN DO ~SetGlobal("k9shar_unlock_door","GLOBAL",1) SetGlobal("k9Sharteel_Guard","GLOBAL",1) SetGlobal("k9Sharteel_Guard_FREE","GLOBAL",1)~ EXIT
END

IF ~InParty("Sharteel")~ THEN BEGIN 6
SAY ~Well, you got what you came for. What more do you want?~
+~Global("k9Sharteel_Item_GIVE","GLOBAL",0)~+ ~We're here for Shar-Teel's equipment.~ GOTO 7
++ ~Nothing. We'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 7
SAY ~Right. Well unfortunately we sold it all off. Didn't really expect her to be needing it frankly. I do have some quality items she's welcome to. But it may not be what she was expecting.~ IF ~~ THEN DO ~GiveItemCreate("sw1h08",LastTalkedToBy,0,0,0) GiveItemCreate("sw1h07",LastTalkedToBy,0,0,0)  GiveItemCreate("helm01",LastTalkedToBy,0,0,0) GiveItemCreate("leat06",LastTalkedToBy,0,0,0) SetGlobal("k9Sharteel_Item_GIVE","GLOBAL",1) AddJournalEntry(@665571,QUEST)~ EXIT

END


