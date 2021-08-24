BEGIN k9vai


IF ~NumTimesTalkedTo(0)  Global("MetVai","GLOBAL",1) GlobalLT("Chapter","GLOBAL",7)~ THEN BEGIN 0
SAY ~<CHARNAME> It is good to see you. Word has spread of your actions against the bandits. Did you ever find out who those bandits were working for? Seemed like someone else must have been involved.~
++ ~They were working for an organization called the Iron Throne. Apparently their goal was to raise the price of iron throughout the region after having stockpiled a plethora of it for themselves. I put a stop to their plans however.~ GOTO 2
++ ~I'm afraid I can't speak on that. I actually wanted to talk to you concerning Beregost. Kelddath believes that in the event of a war with Amn the town will need to be evacuated. He was hoping the Fist in Baldur's Gate would agree to assist in the housing of any refugees.~ GOTO 4
END

IF ~NumTimesTalkedTo(0) Global("MetVai","GLOBAL",0) GlobalLT("Chapter","GLOBAL",7)~ THEN BEGIN 1
SAY ~<CHARNAME>? I don't believe we've met, though your reputation certainly precedes you. Officer Vai, at your service. Word is you are responsible for defeating the bandits that plagued this city and its trade routes.~
++ ~The bandits were always the least of our worries. They were working for an organization called the Iron Throne. Apparently their goal was to raise the price of iron throughout the region after having stockpiled a plethora of it for themselves. I put a stop to their plans however.~ GOTO 2
++ ~I'm afraid I can't speak on that. I actually wanted to talk to you concerning Beregost. Kelddath believes that in the event of a war with Amn the town will need to be evacuated. He was hoping the Fist in Baldur's Gate would agree to assist in the housing of any refugees.~ GOTO 4
END


IF ~~ THEN BEGIN 2
SAY ~As I understand the Iron Throne has a history of engaging in questionable business practices. If what you say is true that doesn't surprise me.~ IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
SAY ~Was there something else you wanted to be talking to me about?~
+~GlobalLT("Chapter","GLOBAL",7)~+ ~I actually wanted to talk to you concerning Beregost. Kelddath believes that in the event of a war with Amn the town will need to be evacuated. He was hoping the Fist in Baldur's Gate would agree to assist in the housing of any refugees.~ GOTO 4
END


IF ~~ THEN BEGIN 4
SAY ~Hard to say really. I'm just an officer, you'd have to talk to Scar or Eltan regarding this.~
+~Global("k9knowsEltan","GLOBAL",0)~+ ~You want me to meet one of the Grand Dukes? That'll be the day. Look, you've got your own contingent here. Can we not at least come to an understanding that you will do what you can for them if Beregost's citizens flee towards the city.~ GOTO 5
+~ Global("k9knowsEltan","GLOBAL",1)~+ ~I know Eltan well enough to know that he would dismiss these concerns. Look, you've got your own contingent here. Can we not at least come to an understanding that you will do what you can for them if Beregost's citizens flee towards the city.~ GOTO 5
END


IF ~~ THEN BEGIN 5
SAY ~I may be able to provide some assistance, but I need you to do a favour in return. The Fist have been hearing word of a large number of refugees pouring down from the High Moor. We've not yet had them reach our gates, but all the same we need someone to travel north of the city and confirm these reports. Knowing more about this potential problem would go a long way to relieving the concerns of our organization.~
++ ~If that is what it will take then so be it.~ DO ~SetGlobal("k9baldurnegotiations","GLOBAL",1) SetGlobal("k9north","GLOBAL",1) AddJournalEntry(@15044,QUEST)~ GOTO 6
++ ~I can't agree to do this.~ DO ~SetGlobal("k9north","GLOBAL",2)~ EXIT
END


IF ~~ THEN BEGIN 6
SAY ~Excellent! I'll send word to our guard at the Black Dragon Gate. Speak to him when you wish to leave.~ IF ~~ THEN DO ~SetGlobal("k9north","GLOBAL",1)~ EXIT
END



IF WEIGHT #-99 ~Global("k9north","GLOBAL",2)~ THEN BEGIN 7
SAY ~Ahh <CHARNAME>, I was wondering when you would return. So would you be willing to travel north to see the status of the refugees?~
++ ~If that is what it will take then so be it.~ DO ~SetGlobal("k9baldurnegotiations","GLOBAL",1) SetGlobal("k9north","GLOBAL",1) AddJournalEntry(@15044,QUEST)~ GOTO 6
++ ~I can't agree to do this.~ DO ~SetGlobal("k9north","GLOBAL",2)~ EXIT
END




IF ~NumTimesTalkedTo(0) Global("MetVai","GLOBAL",1) Global("Chapter","GLOBAL",7) Global("DukeThanks","GLOBAL",0) ~ THEN BEGIN 8
SAY ~<CHARNAME>! Angelo is looking for you! The man wants your head! Why did you kill the leaders of the Iron Throne? Were they the group the bandits were working for?~
++ ~They were working for an organization called the Iron Throne. Apparently their goal was to raise the price of iron throughout the region after having stockpiled a plethora of it for themselves. I put a stop to their plans however.~ GOTO 11
++ ~I'm afraid I can't speak on that. I actually wanted to talk to you concerning Beregost. Kelddath believes that in the event of a war with Amn the town will need to be evacuated. He was hoping the Fist in Baldur's Gate would agree to assist in the housing of any refugees.~ GOTO 13
END

IF ~NumTimesTalkedTo(0) Global("MetVai","GLOBAL",0) Global("Chapter","GLOBAL",7) Global("DukeThanks","GLOBAL",0)~ THEN BEGIN 9
SAY ~<CHARNAME>? You have been accused of murdering the leaders of the Iron Throne. Explain your actions!~
+~~+ ~I was investigating them out of fear that they were behind the iron shortage and bandit problems in the region. Whether or not I killed them though does not matter at this stage. Rieltar and the others were merely causing this chaos out of a desire for profit, while Rieltar's son, Sarevok, may have far more sinister ambitions in mind.~ GOTO 10
+~CheckStatGT(Player1Fill,14,INT)~+ ~The Iron Throne has always had a questionable history of dealing with assassins and unsavory characters to get their way. Why do you believe that I am responsible. I seem to be the only one looking into their activities. Perhaps that is why the blame for these deaths has been placed on my shoulders.~ GOTO 11
++ ~The Iron Throne deliberately took actions with the intent on raising the price of iron throughout the region after having stockpiled a plethora of it for themselves. I put a stop to their plans however.~ GOTO 9
END

IF ~~ THEN BEGIN 10
SAY ~What ambitions are these? With the passing of Entar Silvershield Sarevok is expected to be granted the status of Grand Duke at any moment.~
+~PartyHasItem("scrl3f")~+ ~Then I will need to stop him. As for his ambitions have a look through his journal.~ GOTO 15
++ ~The Iron Throne deliberately took actions with the intent on raising the price of iron throughout the region after having stockpiled a plethora of it for themselves. Sarevok was very much involved in this process. At the very least he is culpable for the organizations actions.~ GOTO 11
END

IF ~~ THEN BEGIN 11
SAY ~I will admit I've heard less than savory things about the group and its leaders. Damn it, the law is the law. We can't be having any vigilantism in this city...at least not on my watch.~
+~PartyHasItem("scrl3f")~+ ~Just consider looking through Sarevok's diary. In it you'll see the man for who he truly is.~ GOTO 13
+~Global("MetVai","GLOBAL",1)~+ ~Normally I would agree, however exceptional circumstances sometimes requires exceptional actions. Surely you know me well enough from assistance I provided in Beregost to see that I have the cities best interest at heart. If not then please permit me to find the evidence I need from the Iron Throne's headquarters. I'll gladly share it with you when I do find it.~ GOTO 17
+~Global("MetVai","GLOBAL",0)~+ ~Normally I would agree, however exceptional circumstances sometimes requires exceptional actions. Surely you have heard of my actions in and around Beregost and can see that I have the cities best interest at heart. If not then please permit me to find the evidence I need from the Iron Throne's headquarters. I'll gladly share it with you when I do find it.~ GOTO 17
END

IF ~~ THEN BEGIN 12
SAY ~Its not something I'm in the position of providing I'm afraid. With Scar's death and Eltan's poisoning the Fist remain significantly disorganized. Angelo leads us officially, though between you and me many in the Fist view his leadership with great suspicion. I simply can't guarantee anything at this point, especially not with this business up in the north.~
++ ~Sorry, I must have missed something. What's happening up north?~ GOTO 16
++ ~Is there anything I can do to alleviate some of these concerns?~ GOTO 13
END


IF ~~ BEGIN 13
SAY ~I may be able to provide some assistance, but I need you to do a favour in return. The Fist have been hearing word of a large number of refugees pouring down from the High Moor. A few have even reach our gates. All the same we need someone to travel north of the city and confirm these reports. Knowing more about this potential problem would go a long way to relieving the concerns of the brass.~
++ ~If that is what it will take then do be it.~ DO ~SetGlobal("k9north","GLOBAL",1) SetGlobal("k9baldurnegotiations","GLOBAL",1) AddJournalEntry(@15044,QUEST)~ GOTO 6
++ ~I can't agree to do this.~ DO ~SetGlobal("k9north","GLOBAL",2)~ EXIT
END


IF ~~ BEGIN 14
SAY ~Was there something else you wanted to say to me?~
++ ~In the meantime I actually wanted to talk to you concerning Beregost. Kelddath believes that in the event of a war with Amn the town will need to be evacuated. He was hoping the Fist in Baldur's Gate would agree to assist in the housing of any refugees.~ GOTO 13
END

IF ~~ BEGIN 15
SAY ~This is unbelievable! And the Grand Dukes know nothing of this? I can't trust my own leadership, not with Angelo in charge. I'll do what I can to reduce the patrols looking for you, but stopping Sarevok will be your responsibility.~ IF ~~ THEN DO ~SetGlobal("k90800patrol","GLOBAL",3) SetGlobal("k91300patrol","GLOBAL",3) SetGlobal("k90300patrol","GLOBAL",3) SetGlobal("k91200patrol","GLOBAL",3)~ GOTO 14
END

IF ~~ BEGIN 16
SAY ~Gods only knows! News of refugees fleeing from their homes has only recently reached Baldur's Gate. I'm not surprised that you haven't heard much. Little is at this point. Whoever is responsible its said that countless refugees are to be on their way towards Baldur's Gate.~ IF ~~ GOTO 14
END

IF ~~ BEGIN 17
SAY ~Hmm...very well. Because of your assistance against the bandits I will trust you. But understand that others in the Flaming Fist will not be so lenient.~ IF ~~ THEN DO ~SetGlobal("k9lenientfist","GLOBAL",1)~ GOTO 14
END


IF ~NumTimesTalkedToGT(0) !GlobalGT("k9negotiations","GLOBAL",1) GlobalGT("chapter","GLOBAL",5) Global("DukeThanks","GLOBAL",1)~ BEGIN 18
SAY ~Hello again. Can I help you?~
+~Global("k9baldurnegotiations","GLOBAL",2)~+ ~Actually I just wanted you to know that I travelled north and talked to some of the refugees. Apparently there is a woman leading a crusade across the north.~ GOTO 22
++ ~Farewell.~ EXIT
END

IF ~NumTimesTalkedToGT(0) !GlobalGT("k9negotiations","GLOBAL",1) GlobalGT("chapter","GLOBAL",5) Global("DukeThanks","GLOBAL",0)~ BEGIN 19
SAY ~What are you doing here? Unless you have business with me please leave.~ 
+~Global("k9baldurnegotiations","GLOBAL",2)~+ ~Actually I just wanted you to know that I travelled north and talked to some of the refugees. Apparently there is a woman leading a crusade across the north.~ GOTO 22
++ ~Farewell.~ EXIT
END

IF ~NumTimesTalkedTo(0)   Global("MetVai","GLOBAL",1) Global("Chapter","GLOBAL",7) Global("DukeThanks","GLOBAL",1) ~ THEN BEGIN 20
SAY ~Good to see you <CHARNAME>! I have heard many great things about your efforts against Sarevok and the leaders of the Iron Throne. Can I be some assistance?~
++ ~I actually wanted to talk to you concerning Beregost. Kelddath believes that in the event of a war with Amn the town will need to be evacuated. He was hoping the Fist in Baldur's Gate would agree to assist in the housing of any refugees.~ GOTO 13
END

IF ~NumTimesTalkedTo(0)   Global("MetVai","GLOBAL",0) Global("Chapter","GLOBAL",7) Global("DukeThanks","GLOBAL",1)~ THEN BEGIN 21
SAY ~Wait, aren't you <CHARNAME>? I've recieved rather strange orders regarding you as of late regarding. Some claimed you murdered the Iron Throne. Yet, they themselves apparently were conspiring against the grand dukes. May I ask what you are doing here in the city?~
++ ~I actually wanted to talk to you concerning Beregost. Kelddath believes that in the event of a war with Amn the town will need to be evacuated. He was hoping the Fist in Baldur's Gate would agree to assist in the housing of any refugees.~ GOTO 13
END

IF ~~ THEN BEGIN 22
SAY ~Who is this woman? How many refugees are to be expected? What damage has so far been done?~
++ ~It's difficult for me to give you any exact figure. But I would be expecting more refugees making their way to the city.~  GOTO 23
++ ~I can't say I know.~  GOTO 23
END

IF ~~ THEN BEGIN 23
SAY ~Hmm... this is disappointing news. The city is in political shambles. We are not in any position to be assisting them.~
++ ~Speaking of assistance - you promised me that you would see what you could do about assisting Beregost should war with Amn break out.~  GOTO 24
++ ~I can't say I know.~  GOTO 24
END       

IF ~~ THEN BEGIN 24
SAY ~I'm afraid the city is not in the position to be able to handle any refugees from Beregost.~
++ ~What if I were willing to pay? How much would you need to ensure lodgings and assistance from the city?~  GOTO 25
++ ~Fairwell.~  EXIT
END

IF ~~ THEN BEGIN 25
SAY ~Duke Eltan is in no position to be deciding on such matters. Damn the politics of this city - the dukes never seem to be around when you need them. Hmm... in his absence I would say that the city could provide help for no less than 10,000 gold.~
++ ~10,000? I could almost buy a Halruaan ship for that!~  GOTO 26
++ ~That is an astounding sum for providing simple lodgings and food.~  GOTO 26
+~CheckStatGT(Player1Fill, 14, CHR)~+ ~Surely they will accept even just a bit less than that?~ GOTO 27
++ ~Fairwell.~  EXIT
END

IF ~~ THEN BEGIN 26
SAY ~That's the catch isn't it? Can't see the dukes going for anything less than that.~ IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 27
SAY ~To be perfectly honest, <CHARNAME>, I don't know. I could also care less if you don't like that answer. From the news you've brought me it sounds like I've got other matters to attend to.~
+~PartyGoldGT(9999)~+ ~Very well, here is 10,000 gold.~  GOTO 28
++ ~Farewell.~  EXIT
END

IF ~~ THEN BEGIN 28
SAY ~That should make things easier. I don't know what in the Nine Hells will happen in the next few weeks. Gods know a few gold our way may prove useful. You can tell Beregost's mayor that if the worst comes to his people can find refuge here.~ IF ~~ THEN DO ~TakePartyGold(10000) AddJournalEntry(@15046,QUEST) SetGlobal("k9baldurnegotiations","GLOBAL",3) SetGlobal("k9baldur10000","GLOBAL",1)  AddexperienceParty(7500)~ EXIT
END

IF ~~ THEN BEGIN 29
SAY ~It's clear you aren't getting it, so I'll use a language here even *you* can understand. There are probably 3,000 people in and about the Beregost area, if you include many of the farms and smaller communities in the region. To house and feed 3,000 men, women, and children for many months takes a great deal of gold.~
+~Global("k9negotiationulgoth", "GLOBAL", 2) Global("k9friendlynegotiations","GLOBAL",1) Global("k9negotiationgullykin","GLOBAL",1)~+ ~I've talked to the Friendly Arm Inn, Ulgoth's Beard, and Gullykin. They've all agreed to take in some people.~  DO ~SetGlobal("k9baldurtalk7000","GLOBAL",1)~ GOTO 30
+~Global("k9friendlynegotiations","GLOBAL",1)  Global("k9negotiationgullykin","GLOBAL",1) !Global("k9negotiationulgoth", "GLOBAL", 2) ~+ ~I've conversed with the owners of the Friendly Arm Inn and the leader of Gullykin. They're both willing to assist Beregost.~  DO ~SetGlobal("k9baldurtalk8000","GLOBAL",1)~   GOTO 31
+~!Global("k9friendlynegotiations","GLOBAL",1)  Global("k9negotiationgullykin","GLOBAL",1) Global("k9negotiationulgoth", "GLOBAL", 2)~+ ~I've discussed the situation with the leaders of Ulgoth's Beard and Gullykin. Both of them are willing to provide help for Beregost.~  DO ~SetGlobal("k9baldurtalk8000","GLOBAL",1)~   GOTO 31
+~Global("k9friendlynegotiations","GLOBAL",1) Global("k9negotiationulgoth", "GLOBAL", 2) !Global("k9negotiationgullykin","GLOBAL",1)~+ ~I talked with the owners of the Friendly Arm Inn and the leader of Ulgoth's Beard. They've all agreed to take in some people.~   DO ~SetGlobal("k9baldurtalk8000","GLOBAL",1)~ GOTO 31
+~Global("k9friendlynegotiations","GLOBAL",1) !Global("k9negotiationgullykin","GLOBAL",1) !Global("k9negotiationulgoth", "GLOBAL", 2)~+ ~I've talked to the Friendly Arm Inn. They've all agreed to take in some people.~  DO ~SetGlobal("k9baldurtalk9000","GLOBAL",1)~   GOTO 32
+~Global("k9negotiationgullykin","GLOBAL",1) !Global("k9friendlynegotiations","GLOBAL",1) !Global("k9negotiationulgoth", "GLOBAL", 2)~+ ~I've talked to Gandolar Luckyfoot in Gullykin. His village has agreed to take in some people.~   DO ~SetGlobal("k9baldurtalk9000","GLOBAL",1)~ GOTO 32
+~Global("k9negotiationulgoth", "GLOBAL", 2)  !Global("k9negotiationgullykin","GLOBAL",1) !Global("k9friendlynegotiations","GLOBAL",1)~+ ~I've discussed this with Shandalar in Ulgoth's Beard. He has signed an agreement accept some of the refugees.~  DO ~SetGlobal("k9baldurtalk9000","GLOBAL",1)~  GOTO 32
+~PartyGoldGT(9999)~+ ~Very well, here is 10,000 gold.~ GOTO 28
++ ~I'll think about it.~ DO ~SetGlobal("k9Baldur10000","GLOBAL",1)~  EXIT
END

IF ~~ THEN BEGIN 30
SAY ~Hmm, between the three I could perhaps see as many as a thousand being housed. Fine, let's make it 7,000.~
+~PartyGoldGT(6999)~+ ~Very well, here is 7,000 gold.~  GOTO 33
++ ~I'll think about it.~  EXIT
END

IF ~~ THEN BEGIN 31
SAY ~Yea, well, I suppose hundreds could be taken care of by that then. Fine, for 8,000 gold I will make sure the citizens of Beregost can take shelter here if we go to war with Amn.~
+~PartyGoldGT(7999)~+ ~Very well, here is 8,000 gold.~  GOTO 34
++ ~I'll think about it.~   EXIT
END


IF ~~ THEN BEGIN 32
SAY ~Yea, well, I guess some will be taken care of by that then. Fine, for 9,000 gold I will make sure the citizens of Beregost can take shelter here if we go to war with Amn.~
+~PartyGoldGT(8999)~+ ~Very well, here is 9,000 gold.~  GOTO 35
++ ~I'll think about it.~   EXIT
END




IF ~~ THEN BEGIN 33
SAY ~That should make things easier. I don't know what in the Nine Hells will happen in the next few weeks. Gods know a few gold our way may prove useful. You can tell Beregost's mayor that if the worst comes to his people can find refuge here.~ IF ~~ THEN DO ~TakePartyGold(7000) AddJournalEntry(@15046,QUEST) SetGlobal("k9baldurnegotiations","GLOBAL",3) SetGlobal("k9baldur7000","GLOBAL",1) AddexperienceParty(3000)~ EXIT
END

IF ~~ THEN BEGIN 34
SAY ~That should make things easier. I don't know what in the Nine Hells will happen in the next few weeks. Gods know a few gold our way may prove useful. You can tell Beregost's mayor that if the worst comes to his people can find refuge here.~ IF ~~ THEN DO ~TakePartyGold(8000) AddJournalEntry(@15046,QUEST) SetGlobal("k9baldurnegotiations","GLOBAL",3) SetGlobal("k9baldur8000","GLOBAL",1) AddexperienceParty(3000)~ EXIT
END

IF ~~ THEN BEGIN 35
SAY ~That should make things easier. I don't know what in the Nine Hells will happen in the next few weeks. Gods know a few gold our way may prove useful. You can tell Beregost's mayor that if the worst comes to his people can find refuge here.~ IF ~~ THEN DO ~TakePartyGold(9000) AddJournalEntry(@15046,QUEST) SetGlobal("k9baldurnegotiations","GLOBAL",3) SetGlobal("k9baldur9000","GLOBAL",1) AddexperienceParty(3000)~ EXIT
END