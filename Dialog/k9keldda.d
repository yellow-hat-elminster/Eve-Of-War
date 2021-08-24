APPEND KELDDA


IF WEIGHT #-99 ~Global("k9madeup","GLOBAL",0) GlobalGT("Chapter","GLOBAL",2)~ BEGIN k9madeup
SAY ~Hello, friend. Our high priest is indisposed at the moment. If it is extremely important you may find him at our town hall. In the meantime I would be more than happy to assist you myself with any healing or resurrection needs you might have. I'm also told there are several outstanding bounties. Should you have sufficient proof of their completion I would be happy to pay you.~
+~Dead("bassilus")
PartyHasItem("MISC04") // Bassilus's Holy Symbol
!Global("BassilusDead","GLOBAL",2)~+ ~I dealt with Bassilus.~ DO ~SetGlobal("k9madeup","GLOBAL",1)~ GOTO 1
++ #15297 DO ~SetGlobal("k9madeup","GLOBAL",1) StartStore("tem3402",LastTalkedToBy(Myself))~ EXIT
+~!Dead("BASSILUS")~+ #15298 DO ~SetGlobal("k9madeup","GLOBAL",1)~ GOTO 8
+~Dead("BASSILUS")~+ #15298 DO ~SetGlobal("k9madeup","GLOBAL",1)~ EXIT
END

IF WEIGHT #-98 ~PartyHasItem("k9scrl3f") Global("BassilusDead","GLOBAL",2) Global("k9BassilusDead","GLOBAL",0) GlobalGT("Chapter","GLOBAL",2)~ BEGIN k9madeup2
SAY ~Is there something I can help you with my child?~
++ ~I found a journal Bassilus had spent a great deal of time writing. Unfortunately, I can't seem to understand most of what he has to say.~ GOTO k9madeup3
++ ~Nevermind~ EXIT
END

IF ~~ BEGIN k9madeup3
SAY ~Ohh my. Why would you want to even look at this? If this really is something that interests you then take it to Kelddath. If anyone has the answers you seek it will be him.~ IF ~~ THEN DO ~SetGlobal("k9BassilusDead","GLOBAL",1)~ EXIT
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

 IF ~~ THEN BEGIN k9gotohere
 SAY ~Only this. Cyric is the god of illusion and deception. Be in your guard at all times while you possess that journal. I fear it is the key to finding his stronghold, but that that information may yet come at a heavy cost. Move swiftly, think carefully, and you may yet survive what awaits you.~
 IF ~~ THEN DO ~SetGlobal("k9bassilustalk", "GLOBAL", 1) AddJournalEntry(@15000,QUEST) GiveItemCreate("k9scrl3f",Player1,0,0,0)~ EXIT
 END


 END

EXTEND_TOP KELDDA 0
+~NumTimesTalkedToGT(0) Dead("Bassilus") !PartyHasItem("k9scrl3f") !GlobalGT("k9bhaalaccept", "GLOBAL", 0) !GlobalGT("k9cyricaccept", "GLOBAL", 0) !GlobalGT("k9bhaalreject", "GLOBAL", 0) !GlobalGT("k9cyricreject", "GLOBAL", 0)~+ ~I've killed Bassilus. I can't help but wonder however why he chose this region to travel to. Surely there were much closer areas that he could have settled?~
 			GOTO k9bassilus2
+~NumTimesTalkedToGT(0)  !Dead("Bassilus")~+ ~I've heard that you've got a bounty on a cleric of Cyric named Bassilus. I was wondering if you would be willing to talk about him. Perhaps share with me what you know of his history?~
                	GOTO k9bassilus
   +~Dead("Bassilus") PartyHasItem("k9scrl3f") XPLT(Player1,90000)~+ ~I found this journal on Bassilus's body. Maybe you can help me understand it?~
 			GOTO k9bassilus3
                +~Dead("Bassilus") PartyHasItem("k9scrl3f") XPGT(Player1,89999) GlobalLT("k9bassilusmessengersend","GLOBAL",2) ~+ ~I found this journal on Bassilus's body. Maybe you can help me understand it?~
 			GOTO k9bassilus4

END
