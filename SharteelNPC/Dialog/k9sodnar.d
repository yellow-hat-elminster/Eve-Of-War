BEGIN k9sodnar

IF ~GlobalGT("NarlenMove","GLOBAL",0) Dead("Resar") Global("k9NarlenLoop","GLOBAL",0)~ THEN BEGIN 0
SAY ~Ya? What ye be wantin? I reckon yer one of them homestickers wantin proof this be yer home? I'll tell ye what I said to the last three 'o ye; ye don't chirp about what ye know and ye won't have a problem. Ye squeel and by Mask if by the end t'day ye don't have a blade in yer gut I'll hunt ya down myself and do the deed.~ IF ~~ THEN GOTO 1
END


IF ~~ THEN BEGIN 1
SAY ~'Ere now, I know you! Never thought I'd be seeing the sneaksmen <CHARNAME> out and 'bout. Heh...the stories ye could tell 'bout o'boy Sarevok could shudder a dead man to breath t'be true. What can one o' the nightwalkers be doin for ye this <DAYNIGHT>?~
+~!InParty("Sharteel") Global("k9NarlenTalk","GLOBAL",1)~+ ~Ye bunch of natty clapperdogeon couldn't run the game if ye had ten eyes and the stalks to match. Where be Alatos at? I have business with him.~  GOTO 2
++ ~Gods, how does anyone understand anything that comes out of that mouth of yours?~ GOTO 3
++ ~I'll be going now.~  EXIT
END

IF ~~ THEN BEGIN 2
SAY ~Alatos? Yer be up to the business with me till I say otherwise.~
++ ~Damn ye and damn yer guild! A friend be stuck in the jailhouse and I be looking to free the coot. Riches ta those who help with the deed, true as a word. What say ye? Yay or neigh?~ GOTO 4
++ ~Fine, I need you to forge official documentation from Duke Eltan that approves the release of a prisoner into my custody.~ GOTO 5
++ ~Well true enough. I guess I'll be going now.~ EXIT
END


IF ~~ THEN BEGIN 3
SAY ~Feh, ye be no thief if ye can't speak the can't!~
+~!InParty("Sharteel") Global("k9NarlenTalk","GLOBAL",1)~+ ~Damn ye and damn yer guild! A friend be stuck in the jailhouse and I be looking to free the coot. Riches ta those who help with the deed, true as a word. What say ye? Yay or neigh?~ GOTO 4
+~!InParty("Sharteel") Global("k9NarlenTalk","GLOBAL",1)~+ ~I'll be to the point then. I need you to forge official documentation from Duke Eltan that approves the release of a prisoner into my custody.~ GOTO 5
++ ~Well true enough. I guess I'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 4
SAY ~I say yer a blasted fool if ye be thinking t'just walk about and let em free. Grand Dukes dead and raised, godspawns, and homestickers everywhere about and ye be wanting to break the jail? The city'll be pins 'n needles for a week if ye be thinking to break'em loose.~
++ ~No rat need know the how or why. A steady hand and some paper be all we need to get em free.~  GOTO 5
END

IF ~~ THEN BEGIN 5
SAY ~Ho! tis a fine man known that'll do what ye want. Bring me a hundred gold and the boss's paper and I'll see it through.~ IF  ~~ THEN DO ~SetGlobal("k9NarlenLoop","GLOBAL",1) SetGlobal("k9KnowsNarlen","GLOBAL",1) AddJournalEntry(@665568,QUEST) SetGlobal("k9narlenletter","GLOBAL",1)~ EXIT
END
      
IF ~Global("k9narlenletter","GLOBAL",1) !InParty("Sharteel") ~ THEN BEGIN 6
SAY ~Back again? Ye got what we need?~ 
+~PartyGoldGT(99)~+ ~Aye.~  GOTO 7
+~PartyGoldGT(99)~+ ~Here is the paper.~ GOTO 7
++ ~Not yet.~  EXIT
END

IF ~~ THEN BEGIN 7
SAY ~Tis a right bit o' skullduggery ye be askin fer, but the man t'do it be had. Hold a moment and the deed 'ill be done.~ IF  ~~ THEN DO ~TakePartyItem("k9eltlet") FadeToColor([20.0],0)  SetGlobal("k9narlenletter","GLOBAL",2)~ EXIT
END

IF ~Global("k9narlenletter","GLOBAL",3)~ THEN BEGIN 8
SAY ~True as a word the letter be in here. Now move away, no need t'give the watch the thoughts.~ IF ~~ THEN DO ~ SetGlobal("k9narlenletter","GLOBAL",4)  GiveItemCreate("k9eltle2",PLAYER1,0,0,0) AddJournalEntry(@665569,QUEST)~ EXIT
END



IF ~Global("k9KnowsNarlen","GLOBAL",0)~ THEN BEGIN 18
SAY ~Ya? What ye be wantin? I reckon yer one of them homestickers wantin proof this be yer home? I'll tell ye what I said to the last three 'o ye; ye don't chirp about what ye know and ye won't have a problem. Ye squeel and by Mask if by the end t'day ye don't have a blade in yer gut I'll hunt ya down myself and do the deed.~ IF ~~ THEN GOTO 1
+~!InParty("Sharteel") Global("k9NarlenTalk","GLOBAL",1)~+ ~Ye bunch of natty clapperdogeon couldn't run the game if ye had ten eyes and the stalks to match. Where be Alatos at? I have business with him.~  GOTO 2
++ ~Gods, how does anyone understand anything that comes out of that mouth of yours?~ GOTO 3
++ ~I'll be going now.~ EXIT

END