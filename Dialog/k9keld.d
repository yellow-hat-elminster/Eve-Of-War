BEGIN k9keld

IF ~Global("k9kelddathwalk", "GLOBAL", 1)~ THEN BEGIN k9negotiations10
SAY ~Hmm...that should take care of that.

I need you to travel to any of the communities near Beregost - including the Friendly Arm Inn, Gullykin, Ulgoth's Beard, and Baldur's Gate. See if their leaders are willing to negotiate accepting refugees from Beregost in the event of a war.

I'd go myself, but I fear I may be more needed here.

In any case, take this note. It should help provide further guidance on this matter.~ IF ~~ THEN DO ~  SetGlobal("k9kelddathwalk", "GLOBAL", 2) GiveItemCreate("k9scrl2z",PLAYER1,0,0,0) SetGlobal("k9negotiations", "GLOBAL", 1) AddJournalEntry(@15029,QUEST) AddJournalEntry(@15035,QUEST) AddJournalEntry(@15039,QUEST) AddJournalEntry(@15043,QUEST)~ EXIT
END

IF ~Global("k9kelddaththoughts", "GLOBAL", 1)~ THEN BEGIN k9councilthinking
SAY ~Hmm...yes I think that should be sufficient. Take this note. There are a few potential candidates that I know of that are nearby. Hopefully, this will help you track them down. Select those who you think would be best and send them my way.~ IF ~~ THEN DO ~  SetGlobal("k9kelddaththoughts", "GLOBAL", 2) SetGlobal("k9BeregostSearch","GLOBAL",1) GiveItemCreate("k9scrl2q",PLAYER1,0,0,0)  AddJournalEntry(@531113,QUEST) ~ EXIT
END



IF ~True()~ THEN BEGIN k9first
SAY ~Welcome! The traveling adventurer is never turned away from a house of Lathander, nor from the ears of this council. Is there something I can help you with?~
 +~Global("k9BeregostSearch","GLOBAL",1) OR(6) GlobalGT("k9Blentr","GLOBAL",0) GlobalGT("k9Laspeera","GLOBAL",0) GlobalGT("k9Baskor","GLOBAL",0) GlobalGT("k9barant","GLOBAL",0) GlobalGT("k9filmarya","GLOBAL",0) GlobalGT("k9olbrim","GLOBAL",0)~+  ~I think I've found as many advisors for Beregost as I could find.~ GOTO k9advisors
   +~Global("k9cyrictalk","GLOBAL",3)~+ ~So I tracked down the Mountain of Skulls. You wouldn't believe the stories I have to tell...~
 			GOTO k9mountain
   +~Dead("Bassilus") PartyHasItem("k9scrl3f") XPLT(Player1,90000)~+ ~I've killed Bassilus. I found this journal on his body. Maybe you can help me understand it?~
 			GOTO k9bassilus3
                +~Dead("Bassilus") PartyHasItem("k9scrl3f") XPGT(Player1,89999) GlobalLT("k9bassilusmessengersend","GLOBAL",2) ~+ ~I've killed Bassilus. I found this journal on his body. Maybe you can help me understand it?~ 	DO ~TakePartyItem("k9scrl3f")~ GOTO k9bassilus4
                +~Dead("Bassilus") !PartyHasItem("k9scrl3f") XPGT(Player1,89999) Global("k9bassilusmessengersend","GLOBAL",2) Global("k9bassilusmessengerbook", "GLOBAL", 0) ~+ ~I got your message about Bassilus's journal. Is there something I can help you with?~
 			GOTO k9bassilus5
                +~Dead("Bassilus") !PartyHasItem("k9scrl3f") XPGT(Player1,89999) Global("BassilusDead","GLOBAL",2) Global("k9bassilusmessengerbook", "GLOBAL", 1)~+ ~I got your message about Bassilus. Is there something I can help you with?~
 			GOTO k9bassilus6
                +~!Dead("Bassilus")~+ ~I've heard stories about a cleric of Cyric named Bassilus. I was wondering if you would be willing to talk about him. Perhaps share with me some of his history?~
                	GOTO k9bassilus
                +~Dead("Bassilus") !PartyHasItem("k9scrl3f") !GlobalGT("k9bhaalaccept", "GLOBAL", 0) !GlobalGT("k9cyricaccept", "GLOBAL", 0) !GlobalGT("k9bhaalreject", "GLOBAL", 0) !GlobalGT("k9cyricreject", "GLOBAL", 0) Global("BassilusDead","GLOBAL",2)~+ ~Who might I talk to about getting a reward for killing Bassilus?~
 			GOTO k9bassilus7
                +~Dead("Bassilus") !PartyHasItem("k9scrl3f") !GlobalGT("k9bhaalaccept", "GLOBAL", 0) !GlobalGT("k9cyricaccept", "GLOBAL", 0) !GlobalGT("k9bhaalreject", "GLOBAL", 0) !GlobalGT("k9cyricreject", "GLOBAL", 0)~+ ~I've killed Bassilus. I can't help but wonder however why he chose this region to travel to. Surely there were much closer areas that he could have settled?~
 			GOTO k9bassilus2

                +~Global("k9BeregostSearch","GLOBAL",0) GlobalGT("Chapter", "GLOBAL",4)~+ ~You seem to be short a person on council. How goes your search for a replacement?~ GOTO k9darren
                +~Global("k9negotiations","GLOBAL",0) Global("k9supply","GLOBAL",2) GlobalGT("Chapter","GLOBAL",5)~+ ~What are your thoughts of a conflict between Amn and Baldur's Gate? Is Beregost prepared if fighting breaks out?~ GOTO k9negotiations
                +~Global("k9negotiations","GLOBAL",0) GlobalLT("k9supply","GLOBAL",2) GlobalGT("Chapter","GLOBAL",5)~+ ~What are your thoughts of a conflict between Amn and Baldur's Gate? Is Beregost prepared if fighting breaks out?~ GOTO k9negotiations2
                +~Global("k9baldurtalk7000","GLOBAL",1) Global("k9baldurnegotiations","GLOBAL",2)~+ ~I talked with Officer Vai up in Baldur's Gate. She'd need 7,000 gold before she'd agree to help the town.~ GOTO k9baldurnegotiations
                +~Global("k9baldurtalk8000","GLOBAL",1) Global("k9baldurnegotiations","GLOBAL",2)~+ ~I talked with Officer Vai up in Baldur's Gate. She'd need 8,000 gold before she'd agree to help the town.~ GOTO k9baldurnegotiations
                +~Global("k9baldurtalk9000","GLOBAL",1) Global("k9baldurnegotiations","GLOBAL",2)~+ ~I talked with Officer Vai up in Baldur's Gate. She'd need 9,000 gold before she'd agree to help the town.~ GOTO k9baldurnegotiations
                +~Global("k9baldurtalk10000","GLOBAL",1) Global("k9baldurnegotiations","GLOBAL",2)~+ ~I talked with Officer Vai up in Baldur's Gate. She'd need 10,000 gold before she'd agree to help the town.~ GOTO k9baldurnegotiations
                +~Global("k9baldurnegotiations","GLOBAL",3)~+ ~I talked with Officer Vai up in Baldur's Gate. She's agreed to help the town.~ GOTO k9baldurnegotiations2
                +~Global("k9friendlynegotiations","GLOBAL",1)~+ ~I managed to secure the assistance of the Friendly Arm Inn. If a war does happen some of your people will have room there.~ GOTO k9friendlynegotiations
                +~Global("k9negotiationgullykin","GLOBAL",1)~+ ~I discussed the situation with Gandolar Luckyfoot, the leader of Gullykin. After some discussion he agreed to house some of Beregost's citizens if a war should break out.~ GOTO k9gullykinnegotiations
                +~Global("k9negotiationulgoth","GLOBAL",2)~+ ~I talked with Shandalar in Ulgoth's Beard. He's willing to allow some citizens of Beregost to go there if a conflict begins.~ GOTO k9ulgothnegotiations
                +~GlobalLT("k9negotiations","GLOBAL",2) GlobalLT("k9negotiationulgoth","GLOBAL",2) Global("k9negotiationgullykin","GLOBAL",1) GlobalLT("k9friendlynegotiations","GLOBAL",1) GlobalLT("k9baldurnegotiations","GLOBAL",3) GlobalLT("k9BeregostHelp","GLOBAL",2)~+ ~I think the only leader who will support Beregost is the leader of Gullykin. I'd like my reward now.~ GOTO k9negotiations4
                +~GlobalLT("k9negotiations","GLOBAL",2) Global("k9negotiationulgoth","GLOBAL",2) GlobalLT("k9negotiationgullykin","GLOBAL",1) GlobalLT("k9friendlynegotiations","GLOBAL",1) GlobalLT("k9baldurnegotiations","GLOBAL",3) GlobalLT("k9BeregostHelp","GLOBAL",2)~+ ~The only leader I found who was willing to support Beregost was Shandalar, the leader of Ulgoth's Beard. I'd like my reward now.~ GOTO k9negotiations4
                +~GlobalLT("k9negotiations","GLOBAL",2) OR(2) Global("k9BeregostHelp","GLOBAL",2) Global("k9BeregostHelp","GLOBAL",3)~+ ~I think I have acquired all the support that I can.~ GOTO k9negotiations5
                +~GlobalLT("k9negotiations","GLOBAL",2) OR(2) Global("k9BeregostHelp","GLOBAL",4) Global("k9BeregostHelp","GLOBAL",5)~+ ~I think I have acquired all the support that I can.~ GOTO k9negotiations6
                +~GlobalLT("k9negotiations","GLOBAL",2) OR(2) Global("k9BeregostHelp","GLOBAL",6) Global("k9BeregostHelp","GLOBAL",7)~+ ~I think I have acquired all the support that I can.~ GOTO k9negotiations7
                                +~GlobalLT("k9negotiations","GLOBAL",2) Global("k9BeregostHelp","GLOBAL",8)~+ ~I think I have acquired all the support that I can.~ GOTO k9negotiations8             
                ++ ~I'll be going now.~ EXIT
                                END

IF ~~ THEN BEGIN k9darren
SAY ~Yes. Unfortunately, a member of Beregost's town council was killed some time ago by bandits and we are currently in the midst of looking for a replacement. Unfortunately, with the news of deteriorating relations between Amn and Baldur's Gate I have had little time to search for anyone who would be fit for such a position. Which reminds me...~ IF ~~ THEN GOTO k9darren2
END

IF ~~ THEN BEGIN k9darren2
SAY ~While the decision on who to promote to council can wait, Beregost still is in need for experienced advisors. Should you find those in your travel willing to advise Beregost feel free to send them my way.~ IF ~~ THEN GOTO k9darren3
END

IF ~~ THEN BEGIN k9darren3
SAY ~Hmm...come to think of it several adventurers have been spotted in and around Beregost within the last several weeks. Give me some time. I will ask those that I know in the temple what they know of their present whereabouts.~  IF ~~ THEN DO ~ SetGlobal("k9kelddaththoughts", "GLOBAL", 1) FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)~ EXIT
END



IF ~~ THEN BEGIN k9bassilus
SAY ~As I understand it he fled Zhentil's Keep. Those in town who claim to have seen him claim that he mutters to himself, mostly regarding the destruction of the keep. Tis an odd thing to be complaining about, given that the keep remains very much intact to this day.

Whether this delusion he is under is a result of the machinations of Cyric, or the work of another twisted god, it is hard to say. Cyric is truly one of the more despicable gods, and to decieve his followers so is not beneath him. Regardless, you would be wise to be cautious when dealing with Bassilus. I'm told his reactions can be... unpredictable.~ IF ~~ THEN DO ~ ~ EXIT
END

IF ~~ THEN BEGIN k9bassilus2
SAY ~That is a hard question to answer. There are many orders devoted to Cyric along the Sword Coast. Bassilus may have been travelling through the region on his way to a Cyric stronghold called the Mountain of Skulls, though it is equally likely he sought refuge in another stronghold known as the Twin Towers. The former of these is located somewhere in the Cloudpeak Mountains, while the latter is farther south in the nation of Amn.

Without knowing where specifically he was travelling to, as well how to reach that destination, we remain at an impasse. I would suggest that you return to his body to check for clues.~ IF ~~ EXIT
END

IF ~~ THEN BEGIN k9bassilus3
SAY ~It is as I suspected. Bassilus appears to have been travelling through the region on his way to a Cyric stronghold called the Mountain of Skulls.

I fear you are not ready to fight your way through one of Cyric's strongholds. I dare say anyone in town is. In any case, I'm not one to send good men and women to their deaths. I think I will hold onto this journal, at least until I am confident that you are ready for the task at hand.~

IF ~~ THEN DO ~SetGlobal("k9bassilustalk", "GLOBAL", 1) SetGlobal("k9bassilusmessengersend", "GLOBAL", 1) AddJournalEntry(@14999,QUEST)~ EXIT
END

IF ~~ THEN BEGIN k9bassilus4
SAY ~It is as I suspected. Bassilus appears to have been travelling through the region on his way to a Cyric stronghold called the Mountain of Skulls. I suspect Peak Falls is the waterfall he refers to in his journal.

In any case I am confident now that you possess the ability to address this problem. I need you to travel to this place and investigate it. Despite his insanity, I fear that Bassilus may have had a reason for coming to this place.

I have heard that the group of Cyricists who hold the stronghold are led by a man named Tynnos Argrim. Regardless of who now controls it you should know that attacking the fortress of such a powerful god will not be an easy challenge. Cyricists have been known to favour powerful poisons and deathly magics, and Cyric himself is never one to shy away from deception. If you do decide to look into this further you should be well prepared before attempting it.~
++ ~This is good to know. Is there anything else you think I should know?~ GOTO k9gotohere
++ ~Charging into the stronghold is not what I had in mind. I think I'll have to take a pass on this.~ EXIT
END

IF ~~ THEN BEGIN k9bassilus5
SAY ~Ahh yes. A terrible thing, that journal. As I have no doubt you noticed, even holding it can drive anyone mad.

From what I have gathered from the journal, Bassilus appears to have been travelling through the region on his way to a Cyric stronghold called the Mountain of Skulls. I suspect Peak Falls is the waterfall he refers to in the journal.

In any case I am confident now that you possess the ability to address this problem. I need you to travel to this place and investigate it. Despite his insanity, I fear that Bassilus may have had a reason for coming to this place.

I have heard that the group of Cyricists who hold the stronghold are led by a man named Tynnos Argrim. Regardless of who now controls it you should know that attacking the fortress of such a powerful god will not be an easy challenge. Cyricists have been known to favour powerful poisons and deathly magics, and Cyric himself is never one to shy away from deception. If you do decide to look into this further you should be well prepared before attempting it.~
++ ~This is good to know. Is there anything else you think I should know?~ GOTO k9gotohere
++ ~Charging into the stronghold is not what I had in mind. I think I'll have to take a pass on this.~ EXIT
END

 IF ~~ THEN BEGIN k9gotohere
 SAY ~Only this. Cyric is the god of illusion and deception. Be in your guard at all times while you possess that journal. I fear it is the key to finding his stronghold, but that that information may yet come at a heavy cost. Move swiftly, think carefully, and you may yet survive what awaits you.~
 IF ~~ THEN DO ~SetGlobal("k9bassilustalk", "GLOBAL", 1) AddJournalEntry(@15000,QUEST) GiveItemCreate("k9scrl3f",Player1,0,0,0)~ EXIT
 END


 IF ~~ THEN BEGIN k9bassilus6
SAY ~Ahh yes. Some time ago the journal of Bassilus reached my hands. From what I gather from it, Bassilus appears to have been travelling through the region on his way to a Cyric stronghold called the Mountain of Skulls. 

I need you to travel to this place and investigate it. Despite his insanity, I fear that Bassilus may have had a reason for coming to this place.

I believe the route to this stronghold lies in passing by Peak Falls - a waterfall he refers to in his journal. You'll find the waterfall just southwest of Nashkel.

I have heard that the group of Cyricists who hold the stronghold are led by a man named Tynnos Argrim. Regardless of who now controls it you should know that attacking the fortress of such a powerful god will not be an easy challenge. Cyricists have been known to favour powerful poisons and deathly magics, and Cyric himself is never one to shy away from deception. If you do decide to look into this further you should be well prepared before attempting it.~
++ ~This is good to know. Is there anything else you think I should know?~ GOTO k9gotohere
++ ~Charging into the stronghold is not what I had in mind. I think I'll have to take a pass on this.~ EXIT
END

 IF ~~ THEN BEGIN k9bassilus7
SAY ~If what you say is true then the town is in your debt. You may speak to one of the acolytes at the temple. They will give you your reward, provided of course you provide his holy symbol.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN k9modestcouncil2
SAY ~Yes I heard. Well, I certainly look forward to working with him. Thank you for your assistance.~ IF ~~  EXIT
END

IF ~~ THEN BEGIN k9modestcouncil3
SAY ~I must say we are still somewhat disapointed with Hammerbone's decision to join the militia instead of the council. Still, I thank you for your assistance here. Hopefully he will serve the town well in his new role.~ IF ~~  EXIT
END

IF ~~ THEN BEGIN k9negotiations
SAY ~In truth? Beregost stands little chance against any force Amn musters. Some members of the Flaming Fist have travelled here, and the militia having improved equipment gives me comfort, but what little we have here has little chance of standing successfully against a well trained army.~ IF ~~ THEN GOTO k9negotiations3
 END



IF ~~ THEN BEGIN k9negotiations2
SAY ~In truth? Beregost stands little chance against any force Amn musters. Some members of the Flaming Fist have travelled here, which gives me comfort, but what little we have here has little chance of standing successfully against a well trained army.~ IF ~~ THEN GOTO k9negotiations3
END


IF ~~ THEN BEGIN k9negotiations3
SAY ~What we need if a failsafe option. Hmm...still, should war break out it will take Amn's forces time to reach Beregost.

There may yet be time to do something regarding this. If you would kindly give me some time to gather my thoughts, I may yet have a task for you.~ IF ~~ THEN DO ~ SetGlobal("k9kelddathwalk", "GLOBAL", 1) FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)~ EXIT
END



IF ~~ THEN BEGIN k9baldurnegotiations
SAY ~Is the woman mad? We can't afford that sum. If you happen upon that kind of coin we'd appreciate anything you could do. Otherwise the town just can't afford such expensive help.~ IF ~~ THEN DO ~AddJournalEntry(@15050,QUEST)~ EXIT
END


IF ~~ THEN BEGIN k9baldurnegotiations2
SAY ~That is welcome news. Knowing that the city will take some of us in will provide some comfort for the families here. I don't know what this help cost you, but this should at least provide some compensation for your troubles.~ IF ~~ THEN DO ~GiveGoldForce(500) SetGlobal("k9baldurnegotiations","GLOBAL",4) IncrementGlobal("k9BeregostHelp","GLOBAL",4) AddJournalEntry(@15048,QUEST_DONE)~ EXIT
END

IF ~~ THEN BEGIN k9friendlynegotiations
SAY ~I'm glad to hear this. It's always been well fortified location. With the Fist fortifying it further in recent weeks it would seem to be an excellent place for some of our people. I have a little from my adventuring days for use in an emergency. It may not be much, but it's what I can spare.~ IF ~~ THEN DO ~GiveGoldForce(300) SetGlobal("k9friendlynegotiations","GLOBAL",2) IncrementGlobal("k9BeregostHelp","GLOBAL",2) AddJournalEntry(@15032,QUEST_DONE)~ EXIT
END

IF ~~ THEN BEGIN k9gullykinnegotiations
SAY ~I'd heard tale of the halflings sense of hospitality. Glad to hear your task was successful. I can't provide you with much in the way of gold for your efforts here, but hopefully this should at least cover any expenses.~ IF ~~ THEN DO ~GiveGoldForce(300) SetGlobal("k9negotiationgullykin","GLOBAL",2) IncrementGlobal("k9BeregostHelp","GLOBAL",1) AddJournalEntry(@15038,QUEST_DONE)~ EXIT
END


IF ~~ THEN BEGIN k9ulgothnegotiations
SAY ~I'll admit I was worried about relying on his assistance. I'd heard Shandalar was an eccentric. Good to see you survived the journey in one piece.

If we should find ourselves in a state of war with Amn Ulgoth's Beard I imagine could house a dozen families if need be. I don't know what that man made you go through to agree to this, but I have some compensation for you all the same.~ IF ~~ THEN DO ~GiveGoldForce(400) SetGlobal("k9negotiationulgoth","GLOBAL",3) IncrementGlobal("k9BeregostHelp","GLOBAL",1) AddJournalEntry(@15042,QUEST_DONE)~ EXIT
END

IF ~~ THEN BEGIN k9negotiations4
SAY ~I had hoped based on your reputation that you were a <MANWOMAN> that would take my concerns seriously. I'll not reward this level of mediocrity. Return to me when you have acquired the signature of at least one more leader.~ IF ~~ THEN DO ~  AddJournalEntry(@15051,QUEST)~ EXIT
END

IF ~~ THEN BEGIN k9negotiations5
SAY ~I had hoped for more but if this is all we can hope for then so be it. The town has little to spare, but what we have is yours.~ IF ~~ THEN DO ~  GiveGoldForce(300)   GiveItemCreate("amul09",PLAYER1,0,0,0) SetGlobal("k9negotiations", "GLOBAL", 5)  GiveItemCreate("misc33",PLAYER1,2,0,0) GiveItemCreate("misc34",PLAYER1,2,0,0)  AddJournalEntry(@15052,QUEST_DONE)~ EXIT
END


IF ~~ THEN BEGIN k9negotiations6
SAY ~I had hoped for more but if this is all we can hope for then so be it. The town has little to spare, but what we have is yours.~ IF ~~ THEN DO ~  SetGlobal("k9negotiations", "GLOBAL", 6) GiveGoldForce(500) GiveItemCreate("misc20",PLAYER1,4,0,0) GiveItemCreate("misc33",PLAYER1,2,0,0) GiveItemCreate("misc34",PLAYER1,2,0,0) AddJournalEntry(@15053,QUEST_DONE) ~ EXIT
END


IF ~~ THEN BEGIN k9negotiations7
SAY ~This is most excellent. Thank you for all your efforts here. The town itself still has little to spare to reward you, but for your efforts here I wish you to have something that I hold dear myself. Many years ago I was given this amulet by a dying comrade. I have no use for it besides sentimentalism, but perhaps you can find some use for it.~  IF ~~ THEN DO ~ GiveGoldForce(750)   GiveItemCreate("k9amul14",PLAYER1,0,0,0) SetGlobal("k9negotiations", "GLOBAL", 7) AddJournalEntry(@15054,QUEST_DONE)~ EXIT
END


IF ~~ THEN BEGIN k9negotiations8
SAY ~Well done! I had not thought it possible that so many would agree to support us.~ IF ~~ THEN GOTO k9negotiations9
END

IF ~~ THEN BEGIN k9negotiations9
SAY ~Years ago I acquired this item from a friend within the Order of the Radiant Heart. He cherished it dearly, and though I never have found much use for it myself I believe that you might just. In any event I wanted you to have it. Along with some gold of course.~  IF ~~ THEN DO ~ GiveGoldForce(1000)   GiveItemCreate("k9sper05",PLAYER1,0,0,0) SetGlobal("k9negotiations", "GLOBAL", 8) AddJournalEntry(@15055,QUEST_DONE)~ EXIT
END

IF ~~ THEN BEGIN k9advisors
SAY ~Excellent! Most excellent. Truly finding anyone available to assist us is a blessing in and of itself. Thank you for your service here and please accept this small gift. It may not be much, but with the present times it is all that we can afford. 

As for the advisors, we arranged for accomodations for them in town. If you wish to talk to them yourself you can find them upstairs.~  IF ~~ THEN DO ~ GiveGoldForce(1000)  AddexperienceParty(3000)   SetGlobal("k9BeregostSearch", "GLOBAL", 2) AddJournalEntry(@531112,QUEST_DONE)~ EXIT
END

IF ~~ THEN BEGIN k9mountain
SAY ~And you survived all of that? My friend, you and yours are true warriors. For ridding the Realms of such a hideous band of cuthroats allow me to give you something. Some time ago, an elderly mage of sorts gave me this ring. He never told me what it did. But he did say that I was to give it to adventurers that showed true courage in the face of an impossible task. You seem more than worthy. Take care my friends and may Lathander always smile on you.~  IF ~~ THEN DO ~ GiveItemCreate("ring08",LastTalkedToBy,0,0,0)   AddexperienceParty(10000)  SetGlobal("k9cyrictalk","GLOBAL",4) AddJournalEntry(@15019,QUEST_DONE)~ EXIT
END