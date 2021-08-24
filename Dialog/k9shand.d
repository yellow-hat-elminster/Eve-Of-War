  REPLACE_TRANS_ACTION SHANDAL2 BEGIN 27 28 29 30 31 END BEGIN 0 END ~DialogInterrupt(FALSE)~ ~SetGlobal("k9whatever222","GLOBAL",1)~
  
  REPLACE_TRANS_ACTION SHANDAL2 BEGIN 27 28 29 30 31 END BEGIN 0 END ~ForceSpell(Myself,DRYAD_TELEPORT)~ ~SetGlobal("k9ShandalarTalk","GLOBAL",1)~




EXTEND_BOTTOM SHANDAL2 0
 IF ~Global("k9negotiations","GLOBAL",1) Global("k9negotiationulgoth", "GLOBAL", 0)~ THEN REPLY ~I'll show my face where I wish. I come here to speak to you on behalf of Kelddath Ormlyr. Beregost fears an attack by Amn and its leader has asked that I visit nearby communities to seek shelter for its residents should the worst come to pass. What say you to this?~ GOTO k932
END

EXTEND_BOTTOM SHANDAL2 7
 IF ~Global("k9negotiations","GLOBAL",1) Global("k9negotiationulgoth", "GLOBAL", 0)~ THEN REPLY ~I go where I wish. I come here to speak to you on behalf of Kelddath Ormlyr. Beregost fears an attack by Amn and its leader has asked that I visit nearby communities to seek shelter for its residents should the worst come to pass. What say you to this?~ GOTO k933
END

EXTEND_BOTTOM SHANDAL2 15
 IF ~Global("k9negotiations","GLOBAL",1) Global("k9negotiationulgoth", "GLOBAL", 0)~ THEN REPLY ~I'll show my face where I wish. I come here to speak to you on behalf of Kelddath Ormlyr. Beregost fears an attack by Amn and its leader has asked that I visit nearby communities to seek shelter for its residents should the worst come to pass. What say you to this?~ GOTO k935
END

APPEND SHANDAL2

IF ~~ THEN BEGIN k932
   SAY ~You murdered of my daughters and demand my assistance? Don't look at me like that, I know very well of your dealings with the thieves guild. I have heard little of this war you fear however, though I think you'll do nicely for my needs all the same. Obtain my cloak and we will discuss this further. Fail and I suspect Beregost will prove to be the last thing on your mind.~
  IF ~~ THEN DO ~SetGlobal("KillDaughter","GLOBAL",1) SetGlobal("k9negotiationulgoth", "GLOBAL", 1) AddJournalEntry(@15040,QUEST)
GiveItem("MISC2H",LastTalkedToBy)
ClearAllActions()
StartCutSceneMode()
StartCutScene("Iceland")~   EXIT
END

IF ~~ THEN BEGIN k933
   SAY ~Such insolence. Obtain my cloak and we will discuss this further. Fail and I suspect Beregost will prove to be the last thing on your mind.~
IF ~~ THEN REPLY ~Very well, what is needed of me?~ GOTO k934
END

IF ~~ THEN BEGIN k934
   SAY ~Its simple, keep the wardstone and I'll bring you back once you've recovered my cloak.~ 
++ ~Very well, send me where you wish.~ DO ~SetGlobal("Evilsh","GLOBAL",1) SetGlobal("k9negotiationulgoth", "GLOBAL", 1) AddJournalEntry(@15040,QUEST)
GiveItem("MISC2H",LastTalkedToBy)
ClearAllActions()
StartCutSceneMode()
StartCutScene("Iceland")~ EXIT
++ ~On second thought, there are things I need to do first.~ EXIT
END


IF ~~ THEN BEGIN k935
   SAY ~Such insolence. Obtain my cloak and we will discuss this further. Fail and I suspect Beregost will prove to be the last thing on your mind.~
IF ~~ THEN REPLY ~Very well, what is needed of me?~ GOTO k934
END

IF ~~ THEN BEGIN k936
   SAY ~Its simple, keep the wardstone and I'll bring you back once you've recovered my cloak.~ 
++ ~Very well, send me where you wish.~ DO ~SetGlobal("Evilsh","GLOBAL",1) SetGlobal("k9negotiationulgoth", "GLOBAL", 1) AddJournalEntry(@15040,QUEST)
GiveItem("MISC2H",LastTalkedToBy)
ClearAllActions()
StartCutSceneMode()
StartCutScene("Iceland")~ EXIT
++ ~On second thought, there are things I need to do first.~ EXIT
END

IF WEIGHT #-99 ~  Global("Goodsh","GLOBAL",1)
PartyHasItem("CLCK22") Global("k9negotiationulgoth", "GLOBAL", 1)~ THEN BEGIN k937
   SAY ~Ahh I see you have my cloak. Excellent. I suppose then Beregost can send who they can here. We are not a large place by any means, but we will offer what we can.~ IF ~~ THEN DO ~DialogueInterrupt(FALSE)
TakePartyItem("CLCK22")
TakePartyItem("MISC2H") SetGlobal("k9negotiationulgoth", "GLOBAL", 2)
AddexperienceParty(1500) AddJournalEntry(@15041,QUEST)~ EXIT
END

IF WEIGHT #-98 ~  Global("Evilsh","GLOBAL",1)
PartyHasItem("CLCK22") Global("k9negotiationulgoth", "GLOBAL", 1)~ THEN BEGIN k938
   SAY ~Ahh I see you have my cloak. Excellent. You are more capable than I expected. I suppose then Beregost can send who they can here. We are not a large place by any means, but we will offer what we can.~ IF ~~ THEN DO ~DialogueInterrupt(FALSE)
TakePartyItem("CLCK22")
TakePartyItem("MISC2H") SetGlobal("k9negotiationulgoth", "GLOBAL", 2)
AddexperienceParty(1500) AddJournalEntry(@15041,QUEST)~ EXIT
END

IF WEIGHT #-97 ~    Global("KillDaughter","GLOBAL",1)
PartyHasItem("CLCK22") Global("k9negotiationulgoth", "GLOBAL", 1) Global("k9negotiationrejected", "GLOBAL", 0)~ THEN BEGIN k939
   SAY ~Hmm...you survived. And I see you have my cloak. I can't say you living brings me any comfort.
   
As for Beregost, I care little for their concerns. If they have aligned themselves with you then they deserve what befalls them.~ IF ~~ THEN DO ~DialogueInterrupt(FALSE)
TakePartyItem("CLCK22")
TakePartyItem("MISC2H") SetGlobal("k9negotiationrejected", "GLOBAL", 1)
AddexperienceParty(500) AddJournalEntry(@105042,QUEST_DONE)~ EXIT
END

IF  WEIGHT #-96 ~Global("k9negotiations","GLOBAL",1) Global("k9ShandalarTalk","GLOBAL",1) Global("k9negotiationrejected", "GLOBAL", 0)~ THEN BEGIN k940
   SAY ~Hmm...you again. What is it you want?~
IF ~~ THEN REPLY ~Beregost is in need of assistance. A war with Amn becomes more feared by the day. If war should break out would it be possible for some of Beregost's citizens to flee here?~  GOTO k941
IF ~~ THEN REPLY ~Nevermind.~ EXIT

END

IF ~~ THEN BEGIN k941
   SAY ~Hmm...you assisted me in reacquiring my cloak. I suppose such an arrangement would be possible.~ IF ~~ THEN DO ~ SetGlobal("k9iceisle", "GLOBAL", 1) SetGlobal("k9ShandalarTalk","GLOBAL",2) SetGlobal("k9negotiationulgoth", "GLOBAL", 2) AddexperienceParty(1000)  AddJournalEntry(@15041,QUEST)~ EXIT
END         

 END