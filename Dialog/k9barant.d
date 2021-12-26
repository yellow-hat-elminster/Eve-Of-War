BEGIN k9barant

 IF ~AreaCheck("AR3321")~ THEN BEGIN AR3321
 SAY ~So you finally decided to show up? I must say it's probably a good thing you called me here. Kelddath has a firm understanding of the politics of the region, but little understanding of the politics of the gate. Hopefully with my presence if nothing else we can secure further supplies.~ IF ~~ THEN EXIT
 END
 
IF ~Global("k9BeregostSearch","GLOBAL",0)~ THEN BEGIN k9barant
SAY ~Uhh...hello? You don't look the sort that frequents these parts. Can I help you?~
++ ~What makes you think we don't fit in here?~ GOTO 15
++ ~Well to tell you the truth you don't sound like you are from around here either. Where do you hail from?~ GOTO 16
++ ~Nope. In fact I think we'll be on our way.~ EXIT
END

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
SAY ~Uhh...hello? You don't look the sort that frequents these parts. Can I help you?~
++ ~What makes you think we don't fit in here?~ GOTO 1
++ ~Well to tell you the truth you don't sound like you are from around here either. Where do you hail from?~ GOTO 2
++ ~Nope. In fact I think we'll be on our way.~ EXIT
END

IF ~~ THEN BEGIN 1
SAY ~Well for one your armor looks like its seen battle within the last decade. But besides that I simply don't recognize you. And I know everyone of any worth in this place.~
++ ~And what makes you think I'm not of any worth?~ GOTO 3
++ ~You don't sound like you are from around here either. Where do you hail from?~ GOTO 2
++ ~Well thanks for that. I've been through hell and back just getting to this city and I needed that pick me up. I think I'll be going now, lest I damage the reputation of this place any further with my presence.~ EXIT
END

IF ~~ THEN BEGIN 2
SAY ~Just a bit east a ways from here along the River Chionthar actually. The city of Elturel. Came here looking to further my craft. Elturel is a fine place to learn how to ride a horse, not so much for learning the finer ways of life.~
++ ~What craft are you looking to learn?~ GOTO 6
+~Global("k9BeregostSearch","GLOBAL",1)~+ ~I understand. Actually while I have you I was wondering something else. I was sent on a quest to find someone worthy providing advice to the leadership of Beregost. Beregost currently fears reprisal from Amn should relations deteriorate further and they are looking for an experienced hand to help guide them. You don't seem the experienced sort but I can imagine the town could benefit from another capable mage. Would you agree to help?~ GOTO 4
++ ~Hopefully he find the time for you soon. Best of luck with your efforts.~ EXIT
END

IF ~~ THEN BEGIN 3
SAY ~Well you're no Silvershield. Don't have the jaw. And you aren't one of the Sashenstars. There's only two of them. Eltan's got no heirs, least that I know of. You don't seem to be wearing any fine cloth that I would expect from some of the finer houses...~
++ ~Well to tell you the truth you don't seem like you are from around here either. Where do you hail from?~ GOTO 2
++ ~You got me. I think I'll just be going now. Lest half the gate learn that I am a mere commoner.~ EXIT
END


IF ~~ THEN BEGIN 4
SAY ~I had heard of the troubles down south. Kelddath seems well respected enough around here, but I doubt he retains many connections with Baldur's Gate living in a manner that is so far removed from the politics of the city.~ IF ~~ THEN GOTO 7
END


IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 5
SAY ~Ohh you lot again. Look, I doubt you have any of the magical scrolls I'm looking for. Can't you go bother someone else?~   
+~Global("k9barantscrolls","GLOBAL",1) PartyHasItem("scrl7g") PartyHasItem("scrl8a") PartyHasItem("scrl7q") ~+  ~Actually I have the scrolls you were looking for right here.~ GOTO 10
++ ~Probably not. If you don't mind my asking, you don't sound like you are from around here. Where do you hail from?~ GOTO 2
+~Global("k9BeregostSearch","GLOBAL",1) Global("k9barant","GLOBAL",0)~+ ~Actually while I have you here. If you weren't aware Beregost is looking for advisors to advise the town should a war break out. Beregost currently fears reprisal from Amn should relations deteriorate further and they are looking for an experienced hand to help guide them. I know you probably weren't expecting to take on this kind of a role but your connections with the nobles of this city could prove useful. Would you be interested?~ GOTO 4
++ ~Hopefully Kelddath will find the time for you soon. Best of luck with your efforts.~ EXIT
END

IF ~~ THEN BEGIN 6
SAY ~Well, the magical kind. I came here looking to gather rare magical scrolls that I could use for my study. Elturel is a rather stagnant place on matters of magic and I figured in a city as grand as Baldur's Gate I was sure to find what I needed. Sadly, I've yet to raise the funds I need for some of the more advanced scrolls I was looking to learn from.~
+~Global("k9BeregostSearch","GLOBAL",1) Global("k9barant","GLOBAL",0)~+ ~I'm sorry to hear about your difficulties. Actually while I have you I was wondering something else. I was sent on a quest to find someone worthy of finding a new member for Beregost's town council. They fear reprisal from Amn should relations deteriorate further and are looking for an experienced hand to help guide them. You don't seem the experienced sort but I can imagine the town could benefit from another capable mage. Would you agree to help?~ GOTO 4
++ ~Well best of luck with your efforts.~ EXIT
END


IF ~~ THEN BEGIN 7
SAY ~Unfortunately, I really can't leave the city until I find a way to acquire the scrolls I need. Hmm...perhaps we can make an exchange? I'll agree to join the council provided you purchase the scrolls from Halbazzer Drin. His shop is just in the eastern section of the city. You really can't miss it.~
++ ~And just how much will these scrolls cost me?~ GOTO 8
END

IF ~~ THEN BEGIN 8
SAY ~Ohh 6,000 or more gold I should think. Halbazzer is a busy man and I doubt he'll part for much less than that. The scrolls I'll admit are quite expensive but also quite rare around these parts. I require a single scroll for Carrion Summons, Improved Haste, and Tenser's Transformation.~
++ ~Alright. I'll go try to find those scrolls.~ DO ~SetGlobal("k9barantscrolls","GLOBAL",1) AddStoreItem("STO0703","scrl7q",1,1) AddStoreItem("STO0703","scrl8a",1,1) AddStoreItem("STO0703","scrl7g",1,1) AddJournalEntry(@531120,QUEST)~  EXIT
END

IF ~~ THEN BEGIN 10
SAY ~Ohh wonderful. I'll make arrangements to leave for Beregost at once.~ IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
SAY ~Actually, while I don't have much to offer you I can give you this cloak. I...acquired it I'm afraid in not the most legal sense. Half the mages here would recognize it as belonging to my former mentor. Perhaps you could take it instead? I doubt I have any use of it and I certainly can't sell it.~
++ ~Sounds good. Report to Kelddath in Beregost's town hall when you are able.~ DO ~  GiveItemCreate("k9clck04",Player1,0,0,0) SetGlobal("k9politicsteach","GLOBAL",1) IncrementGlobal("k9beregostprepared","GLOBAL",1) TakePartyItemNum("scrl8a",1)  AddexperienceParty(1000)  TakePartyItemNum("scrl7q",1) TakePartyItemNum("scrl7g",1) AddJournalEntry(@531119,QUEST) SetGlobal("k9barant","GLOBAL",1) EscapeArea()~  EXIT
++ ~You can keep the cloak. Just report to Kelddath in Beregost's town hall when you are able.~ DO ~AddexperienceParty(1000)  SetGlobal("k9politicsteach","GLOBAL",1) TakePartyItemNum("scrl8a",1) TakePartyItemNum("scrl7q",1) TakePartyItemNum("scrl7g",1)  AddJournalEntry(@531119,QUEST) SetGlobal("k9barant","GLOBAL",1) EscapeArea()~  EXIT
++ ~Actually now that I've thought about this further I'm not sure you are a good fit. I will take the cloak though and you can have your scrolls.~ DO ~ AddexperienceParty(1000) GiveItem("k9clck04",LastHeardBy()) TakePartyItemNum("scrl8a",1) TakePartyItemNum("scrl7q",1) TakePartyItemNum("scrl7g",1) ~ GOTO 12
++ ~You know what I think I'm going to be keeping these scrolls. I guess that means I'll have to find someone else.~ GOTO 13
END

IF ~~ THEN BEGIN 12
SAY ~Very well. I hope you find a worthy candidate.~ IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 13
SAY ~Disappointing. Those scrolls were necessary for my research. It will take me weeks to find further copies of them. Do what you will, but I will have no part in helping you any further.~ IF ~~ THEN DO ~EscapeArea()~ EXIT
END






//Dialog for if you haven't started the search quest

IF ~~ THEN BEGIN 15
SAY ~Well for one your armor looks like its seen battle within the last decade. But besides that I simply don't recognize you. And I know everyone of any worth in this place.~
++ ~And what makes you think I'm not of any worth?~ GOTO 17
++ ~You don't sound like you are from around here either. Where do you hail from?~ GOTO 16
++ ~Well thanks for that. I've been through hell and back just getting to this city and I needed that pick me up. I think I'll be going now, lest I damage the reputation of this place any further with my presence.~ EXIT
END


IF ~~ THEN BEGIN 16
SAY ~Just a bit east a ways from here along the River Chionthar actually. The city of Elturel.~
++ ~What brought you out here?~ GOTO 18
++ ~Well best of luck in the city.~ EXIT
END

IF ~~ THEN BEGIN 17
SAY ~Well you're no Silvershield. Don't have the jaw. And you aren't one of the Sashenstars. There's only two of them. Eltan's got no heirs, least that I know of. You don't seem to be wearing any fine cloth that I would expect from some of the finer houses...~
++ ~Well to tell you the truth you don't seem like you are from around here either. Where do you hail from?~ GOTO 16
++ ~You got me. I think I'll just be going now. Lest half the gate learn that I am a mere commoner.~ EXIT
END

IF ~~ THEN BEGIN 18
SAY ~Frankly, that is my business. Now move along. I really can't be seen with the likes of you.~ IF ~~ THEN EXIT
END

