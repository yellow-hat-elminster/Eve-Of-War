BEGIN bdsharte


IF ~Global("k9SharTeelPrison","GLOBAL",0)~ THEN BEGIN 0

SAY ~What do we have here?~
+~Global("k9shar_unlock_door","GLOBAL",1)~+ ~I'll be brief. I'm heading up north with the Flaming Fist and I want you at my side.~ GOTO 11
+~GlobalGT("k9eltanSharteelDiscovery","GLOBAL",1)~+ ~I take it you are Shar-Teel?~ GOTO 18
+~Gender(Player1Fill,FEMALE) BeenInParty("Sharteel") GlobalLT("k9eltanSharteelDiscovery","GLOBAL",2)~+ ~I take it you are Shar-Teel? Why are you in here?~ GOTO 3
+~Gender(Player1Fill,FEMALE) !BeenInParty("Sharteel") GlobalLT("k9eltanSharteelDiscovery","GLOBAL",2)~+ ~I take it you are Shar-Teel? Why are you in here?~ GOTO 4
+~Gender(Player1Fill,MALE) BeenInParty("Sharteel") GlobalLT("k9eltanSharteelDiscovery","GLOBAL",2)~+ ~I take it you are Shar-Teel? Why are you in here?~ GOTO 1
+~Gender(Player1Fill,MALE) !BeenInParty("Sharteel") GlobalLT("k9eltanSharteelDiscovery","GLOBAL",2)~+ ~I take it you are Shar-Teel? Why are you in here?~ GOTO 5
+~Gender(Player1Fill,MALE) BeenInParty("Sharteel") GlobalLT("k9eltanSharteelDiscovery","GLOBAL",2)~+ ~Greetings Shar-Teel. Last time we spoke it seemed the dungeons of the Fist would be the last place I'd find you. What changed?~ GOTO 1
+~Gender(Player1Fill,MALE) !BeenInParty("Sharteel") GlobalLT("k9eltanSharteelDiscovery","GLOBAL",2)~+ ~Another one of Caelar's peons I see. Tell me, when your lady sent her assassins what was she hoping to accomplish?~ GOTO 2
+~Gender(Player1Fill,MALE) BeenInParty("Sharteel") GlobalLT("k9eltanSharteelDiscovery","GLOBAL",2)~+ ~Another one of Caelar's peons I see. Tell me, when your lady sent her assassins what was she hoping to accomplish?~ GOTO 2
+~Gender(Player1Fill,FEMALE) BeenInParty("Sharteel") GlobalLT("k9eltanSharteelDiscovery","GLOBAL",2)~+ ~Greetings Shar-Teel. Last time we spoke it seemed the dungeons of the Fist would be the last place I'd find you. What changed?~ GOTO 3
+~Gender(Player1Fill,FEMALE) !BeenInParty("Sharteel") GlobalLT("k9eltanSharteelDiscovery","GLOBAL",2)~+ ~Another one of Caelar's peons I see. Tell me, when your lady sent her assassins what was she hoping to accomplish?~ GOTO 4
+~Gender(Player1Fill,FEMALE) BeenInParty("Sharteel") GlobalLT("k9eltanSharteelDiscovery","GLOBAL",2)~+ ~Another one of Caelar's peons I see. Tell me, when your lady sent her assassins what was she hoping to accomplish?~ GOTO 4
END

IF ~~ THEN BEGIN 1

SAY ~Ahh <CHARNAME>, if ever there were a male clung to the Fist it would be you. Tell me, did the Fist inform you at all of my whereabouts? I thought not.~ 
++ ~If Duke Eltan knew of your whereabouts he certainly didn't tell me. What crimes brought you here?~ GOTO 6
END




IF ~~ THEN BEGIN 2

SAY ~A quick and painful death. Is that not what an assassin is for?~ IF ~~ GOTO 20
END



IF ~~ THEN BEGIN 3

SAY ~Ahh <CHARNAME>, why am I not surprised to see you cowling before the Fist. Tell me, did the Fist inform you at all of my whereabouts? I thought not.~
++ ~If Duke Eltan knew your whereabouts he wasn't about to tell me. What crimes brought you here?~ GOTO 6
END




IF ~~ THEN BEGIN 4

SAY ~Well, it seems the Fist have finally come to their senses. The look on Eltan's face must have been priceless. A woman sent to correct the mistakes of the men before her.~ IF ~~ GOTO 12
END


IF ~~ THEN BEGIN 5
SAY ~And just who would you be? There are so many boorish men surrounding me these days.~ IF ~~ GOTO 12
END


IF ~~ THEN BEGIN 6

SAY ~Crimes? There were no crimes. These dogs chained me here because I am the daughter of Angelo. Nothing more.~
++ ~You always seemed the thieving sort. Perhaps that had a part to play in it.~ GOTO 8
++ ~Well you were challenging men to combat. Perhaps you embarrassed the wrong person.~ GOTO 10
END

IF ~~ THEN BEGIN 7

SAY ~Enough of these questions. What do you want with me?~ 
+~Global("k9Sharteel_Guard_FREE","GLOBAL",1)~+ ~I'd like you to join my party~ GOTO 11
++ ~Nothing really. Just wanted to see who you were.~ DO ~SetGlobal("k9Sharteel_Talk","GLOBAL",0) SetGlobal("k9Sharteel_Talk_Talk","GLOBAL",0) ~ EXIT
+~Global("k9Sharteel_Guard_FREE","GLOBAL",0)~+ ~(Whisper) I can't risk talking too long to you about this, but I wish for you to join my group. I'll do what I can to get you released.~ DO ~SetGlobal("k9Sharteel_Talk","GLOBAL",0) SetGlobal("k9Sharteel_Talk_Talk","GLOBAL",0) AddJournalEntry(@665570,QUEST) ~ EXIT
++ ~I've seen enough here. I'll be going now.~ DO ~SetGlobal("k9Sharteel_Talk","GLOBAL",0) SetGlobal("k9Sharteel_Talk_Talk","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN 8

SAY ~I do what needs to be done - something the Fist have never seemed to understand.~
+~Global("k9Sharteel_Guard_FREE","GLOBAL",1)~+ ~That is precisely the reason I'd like you to join my party~ GOTO 11
+~Global("k9Sharteel_Guard_FREE","GLOBAL",1)~+ ~I certainly have no taste for the Fist myself. They do seem to trust me however. Perhaps we can work together to undermine their efforts.~ GOTO 11
+~Global("k9Sharteel_Guard_FREE","GLOBAL",0)~+ ~(Whisper) I can't risk talking too long to you about this, but I wish for you to join my group. I'll do what I can to get you released.~ DO ~ SetGlobal("k9Sharteel_Talk","GLOBAL",0) SetGlobal("k9Sharteel_Talk_Talk","GLOBAL",0) AddJournalEntry(@665570,QUEST)~ EXIT
++ ~I've seen enough here. I'll be going now.~ DO ~SetGlobal("k9Sharteel_Talk","GLOBAL",0) SetGlobal("k9Sharteel_Talk_Talk","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN 9

SAY ~I am the daughter of Angelo, one of the cohorts of Sarevok. These pigs have kept me here for weeks without cause. Rest assured, whatever lies the Fist have spread of me are false. This charade has been nothing more than guilt by blood.~
+~Global("k9Sharteel_Guard_FREE","GLOBAL",1)~+ ~Strange as it may sound, I understand. Join my group and you can be free of this place.~ GOTO 11
+~Global("k9Sharteel_Guard_FREE","GLOBAL",1)~+ ~I dislike the Fist as much as you. They seem to trust me however. Perhaps we can work together to undermine their efforts.~ GOTO 11
+~Global("k9Sharteel_Guard_FREE","GLOBAL",0)~+ ~(Whisper) I can't risk talking too long to you about this, but I wish for you to join my group. I'll do what I can to get you released.~ DO ~SetGlobal("k9Sharteel_Talk","GLOBAL",0) SetGlobal("k9Sharteel_Talk_Talk","GLOBAL",0) AddJournalEntry(@665570,QUEST)~ EXIT
++ ~I've seen enough here. I'll be going now.~ DO ~SetGlobal("k9Sharteel_Talk","GLOBAL",0) SetGlobal("k9Sharteel_Talk_Talk","GLOBAL",0)~ EXIT
END


IF ~~ THEN BEGIN 10

SAY ~This town is full of princely little twats. I suppose I could have angered one of them.~
+~Global("k9Sharteel_Guard_FREE","GLOBAL",1)~+ ~You waste your life away sitting in this cell. If you can stand the thought of working alongside the Fist come join my party.~ GOTO 11
++ ~I'll be going now.~ DO ~SetGlobal("k9Sharteel_Talk","GLOBAL",0) SetGlobal("k9Sharteel_Talk_Talk","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN 11

SAY ~As much as it pains me to think of myself working alongside a moron like you it still beats the smell of this place. Fine, I'll join your little group.~ IF ~~ THEN DO ~SetGlobal("k9Sharteel_Talk","GLOBAL",2) SetGlobal("k9SharTeelPrison","GLOBAL",1) SetGlobal("SharTeelJoined","GLOBAL",1) JoinParty()~ EXIT
END


IF ~~ THEN BEGIN 12

SAY ~I assume you have questions then?~
+~BeenInParty("Sharteel")~+ ~Wait, is that you Shar-Teel? Last time we spoke it seemed the dungeons of the Fist would be the last place I'd find you. What changed?~ GOTO 3
++ ~Hmm, you seem familiar. Have we met before?~ GOTO 7
++ ~What do you know of Caelar?~ GOTO 13
++ ~Nevermind.~ DO ~SetGlobal("k9Sharteel_Talk","GLOBAL",0) SetGlobal("k9Sharteel_Talk_Talk","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN 13

SAY ~I really don't know what you are talking about. Do you even know who I am?~
+~BeenInParty("Sharteel")~+ ~Wait, is that you Shar-Teel? Last time we spoke it seemed the dungeons of the Fist would be the last place I'd find you. What changed?~ GOTO 3
++ ~Hmm, you seem familiar. Have we met before?~ GOTO 7
++ ~You are one of the few prisoners here with their own guard. The Fist would not bother normally with so few resources at hand. What makes you so deserving of this honor?~ GOTO 9
++ ~I think a few more days with the Fist might change your attitude.~ DO ~SetGlobal("k9Sharteel_Talk","GLOBAL",0) SetGlobal("k9Sharteel_Talk_Talk","GLOBAL",0)~ EXIT
END


IF ~~ THEN BEGIN 14

SAY ~I had hoped the Fist had picked at least an intelligent woman to interogate me. What a disappointment.

I am the daughter of Angelo, one of the cohorts of Sarevok. The Fist have spread nothing but lies about me since the day they chained me here. This charade has been nothing more than guilt by blood and I shall have the head of those responsible.~
+~Global("k9Sharteel_Guard_FREE","GLOBAL",1)~+ ~Strange as it may sound, I understand. Join my group and you can be free of this place.~ GOTO 11
+~Global("k9Sharteel_Guard_FREE","GLOBAL",1)~+ ~I dislike the Fist as much as you. They seem to trust me however. Perhaps we can work together to undermine their efforts.~ GOTO 11
++ ~Nothing really. Just wanted to see who you were.~ DO ~SetGlobal("k9Sharteel_Talk","GLOBAL",0) SetGlobal("k9Sharteel_Talk_Talk","GLOBAL",0)~  EXIT
+~Global("k9Sharteel_Guard_FREE","GLOBAL",0)~+ ~(Whisper) I can't risk talking too long to you about this, but I wish for you to join my group. I'll do what I can to get you released.~ DO ~SetGlobal("k9Sharteel_Talk","GLOBAL",0) SetGlobal("k9Sharteel_Talk_Talk","GLOBAL",0) AddJournalEntry(@665570,QUEST)~ EXIT
++ ~I've seen enough here. I'll be going now.~ DO ~SetGlobal("k9Sharteel_Talk","GLOBAL",0) SetGlobal("k9Sharteel_Talk_Talk","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN 15

SAY ~Are you the dim-witted guard the Fist had no other use for? I have been stuck in this cell for weeks, fool, and I know nothing of any Caelar.~
++ ~Then why are you in here?~ GOTO 16
END

IF ~~ THEN BEGIN 16
SAY ~I am here because I am the daughter of Angelo, one of the cohorts of Sarevok. The Fist captured me shortly after their deaths.~
++ ~I'm not a member of the Fist. Why did they capture you? What crimes did you commit?~ GOTO 17
+~Global("k9Sharteel_Guard_FREE","GLOBAL",1)~+ ~I don't really care why you are here. I'm heading north with the Fist to defeat Caelar. I could use you at my side.~ GOTO 11
+~Global("k9Sharteel_Guard_FREE","GLOBAL",0)~+ ~(Whisper) I can't risk talking too long to you about this, but I wish for you to join my group. I'll do what I can to get you released.~ DO ~SetGlobal("k9Sharteel_Talk","GLOBAL",0) AddJournalEntry(@665570,QUEST)~ EXIT
++ ~I've seen enough here. I'll be going now.~ DO ~SetGlobal("k9Sharteel_Talk","GLOBAL",0) SetGlobal("k9Sharteel_Talk_Talk","GLOBAL",0) ~ EXIT
END

IF ~~ THEN BEGIN 17

SAY ~Crimes? There were no crimes. These *dogs* chained me here because I am the daughter of Angelo.~
++ ~Perhaps you gave them cause to think you are in some way responsible?~ GOTO 7
+~Global("k9Sharteel_Guard_FREE","GLOBAL",1)~+ ~I don't really care why you are here. I'm heading north with the Fist to defeat Caelar. I could use you at my side.~ GOTO 11
+~Global("k9Sharteel_Guard_FREE","GLOBAL",0)~+ ~(Whisper) I can't risk talking too long to you about this, but I wish for you to join my group. I'll do what I can to get you released.~ DO ~SetGlobal("k9Sharteel_Talk","GLOBAL",0) AddJournalEntry(@665570,QUEST)~ EXIT
++ ~I've seen enough here. I'll be going now.~ DO ~SetGlobal("k9Sharteel_Talk","GLOBAL",0) SetGlobal("k9Sharteel_Talk_Talk","GLOBAL",0) ~ EXIT
END


IF ~~ THEN BEGIN 18
SAY ~Have the dim-witted Fist forgotten my name already? Why are you here?~
+~Gender(Player1Fill,MALE)~+ ~Duke Eltan seems to think you know something of other collaborators who assisted Angelo and Sarevok. What do you know of them?~ GOTO 22
+~Gender(Player1Fill,FEMALE)~+ ~Duke Eltan seems to think you know something of other collaborators who assisted Angelo and Sarevok. What do you know of them?~ GOTO 23
+~Global("k9Sharteel_Guard_FREE","GLOBAL",1)~+ ~I'm heading north with the Fist to defeat a threat to the city. I could use you at my side.~ GOTO 19
++ ~I've seen enough here. I'll be going now.~ DO ~SetGlobal("k9Sharteel_Talk","GLOBAL",0)~ EXIT
END


IF ~~ THEN BEGIN 19

SAY ~As much as it pains me to think of myself working alongside a moron like you it still beats the smell of this place. Fine, I'll join your little group.~ IF ~~ THEN DO ~SetGlobal("k9Sharteel_Talk","GLOBAL",2) SetGlobal("k9SharTeelPrison","GLOBAL",1) SetGlobal("SharTeelJoined","GLOBAL",1) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 20
SAY ~As for why, I imagine you'd best pester her. I don't know what you are talking about.~   IF ~~ GOTO 21
END

IF ~~ THEN BEGIN 21
SAY ~Frankly, the last fool to interogate me had more wits to him. Surely the Fist can do better.~
+~BeenInParty("Sharteel")~+ ~Wait, is that you Shar-Teel? Last time we spoke it seemed the dungeons of the Fist would be the last place I'd find you. What changed?~ GOTO 1
++ ~Hmm, you seem familiar. Have we met before?~ GOTO 7
++ ~You are one of the few prisoners here with their own guard. The Fist would not bother normally with so few resources at hand. What makes you so deserving of this honor?~ GOTO 9
++ ~I think a few more days with the Fist might change your attitude.~ DO ~SetGlobal("k9Sharteel_Talk","GLOBAL",0) SetGlobal("k9Sharteel_Talk_Talk","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN 22

SAY ~You're such a funny man! That's why I'm gonna kill you last.~ [SHART33] IF ~~ THEN DO ~SetGlobal("k9Sharteel_Talk","GLOBAL",0) SetGlobal("k9Sharteel_Talk_Talk","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN 23

SAY ~Enough of your questions. How would you like my sword tickling your innards?~ [SHART34] IF ~~ THEN DO ~SetGlobal("k9Sharteel_Talk","GLOBAL",0) SetGlobal("k9Sharteel_Talk_Talk","GLOBAL",0)~ EXIT
END

