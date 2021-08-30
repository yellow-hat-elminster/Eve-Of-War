BEGIN k9yeorgj

//Gullykin
//Tier 1 dialogue

//state #0

IF ~Global("k9YE_Gullykin","GLOBAL",2)~ THEN BEGIN Gullykin
SAY ~To think I shall soon be free of this place. The smell alone is intolerable.~
IF ~CheckStatGT(LastTalkedToBy,14,CHR) IfValidForPartyDialogue("NEERA")~ THEN REPLY ~So what exactly is this artifact you are looking for?~ DO ~SetGlobal("k9YE_Gullykin","GLOBAL",3)~ GOTO GullykinBanterNeera
IF ~CheckStatLT(LastTalkedToBy,15,CHR) IfValidForPartyDialogue("NEERA") ~ THEN REPLY ~So what exactly is this artifact you are looking for?~ DO ~SetGlobal("k9YE_Gullykin","GLOBAL",3)~ GOTO GullykinBanterNeera2
IF ~CheckStatGT(LastTalkedToBy,14,CHR) !IfValidForPartyDialogue("NEERA") ~ THEN REPLY ~So what exactly is this artifact you are looking for?~ DO ~SetGlobal("k9YE_Gullykin","GLOBAL",3)~ GOTO GullykinBanter
IF ~CheckStatLT(LastTalkedToBy,15,CHR) !IfValidForPartyDialogue("NEERA") ~ THEN REPLY ~So what exactly is this artifact you are looking for?~ DO ~SetGlobal("k9YE_Gullykin","GLOBAL",3)~ GOTO GullykinBanter2
IF ~~ THEN REPLY ~Nobody ever said adventuring was pretty.~  DO ~SetGlobal("k9YE_Gullykin","GLOBAL",3)~ GOTO GullykinBanter4
IF ~~ THEN REPLY ~Let's get back to the task at hand.~  DO ~SetGlobal("k9YE_Gullykin","GLOBAL",3)~ GOTO GullykinBanter4
END

//state #1

IF ~~ THEN BEGIN GullykinBanterNeera
SAY ~My master seems to be convinced that there is an item of incredible power to be found amongst the ruins here.

I've found scantly any evidence of that. I know of only one writer, Volo, to have written anything of it. He wrote of a great battle that was once fought south of here, near what is now called the Firewine Bridge. Magic of great powerful was released and the town that once stood there was leveled. I have heard from others that magic does not reliably function here in Gullykin. It is as though remnants of this battle still haunt this place, though for what reason I don't know.~
  IF ~~ THEN EXTERN ~BNEERA~ 0
END

//state #2

IF ~~ THEN BEGIN GullykinBanterNeera2
SAY ~My master seems to be convinced that there is an item of incredible power to be found amongst the ruins here. I suppose you could say I'm here out of... curiousity.~
  IF ~~ THEN EXTERN ~BNEERA~ 1
END

//state #3

IF ~~ THEN BEGIN 0
SAY ~This wild magic has proven to be of little consequence. It is more an echo than something tangibly useful. This, by itself, is not the reason for my being here.

I seek an artifact said to be crafted long ago by ancient followers of Mystryl, the original goddess of magic. I had hoped it had not yet been discovered, though so far my efforts have proven fruitless.~
IF ~CheckStatGT(LastTalkedToBy,13,WIS)~ THEN REPLY ~What use could an artifact of this nature be to a sorcerer? I'm of the understanding that it would be more of a use to a mage.~ DO ~SetGlobal("Neera_Gullykin","GLOBAL",2)~ GOTO GullykinBanter3
IF ~CheckStatGT(LastTalkedToBy,13,INT)~ THEN REPLY ~What use could an artifact of this nature be to a sorcerer? I'm of the understanding that it would be more of a use to a mage.~ DO ~SetGlobal("Neera_Gullykin","GLOBAL",2)~ GOTO GullykinBanter3
IF ~~ THEN REPLY ~So is this like...a big shiny gem? Whats it do?~ ~SetGlobal("Neera_Gullykin","GLOBAL",2)~ GOTO GullykinBanter3
IF ~~ THEN REPLY ~After all these years you are finally reminding me of why I skipped Gorion's history lessons.~ ~SetGlobal("Neera_Gullykin","GLOBAL",2) ~ GOTO GullykinBanter4
END

//state #4
  
IF ~~ THEN BEGIN GullykinBanter
SAY ~I seek an artifact said to be crafted long ago by ancient followers of Mystryl, the original goddess of magic. I had hoped it had not yet been discovered, though so far my efforts have proven fruitless.~
IF ~CheckStatGT(LastTalkedToBy,13,WIS)~ THEN REPLY ~What use could an artifact of this nature be to a sorcerer? I'm of the understanding that it would be more of a use to a mage.~ DO ~SetGlobal("Neera_Gullykin","GLOBAL",2)~ GOTO GullykinBanter3
IF ~CheckStatGT(LastTalkedToBy,13,INT)~ THEN REPLY ~What use could an artifact of this nature be to a sorcerer? I'm of the understanding that it would be more of a use to a mage.~ DO ~SetGlobal("Neera_Gullykin","GLOBAL",2)~ GOTO GullykinBanter3
IF ~~ THEN REPLY ~So is this like...a big shiny gem? Whats it do?~ GOTO GullykinBanter3
IF ~~ THEN REPLY ~After all these years you are finally reminding me of why I skipped Gorion's history lessons.~ GOTO GullykinBanter4
END

//state #5
   
IF ~~ THEN BEGIN GullykinBanter2
SAY ~I have read the works of Volo and heard tales of this region. You could say I'm here out of... curiousity.~
IF ~CheckStatGT(LastTalkedToBy,13,WIS)~ THEN REPLY ~Someone of your nature does not go out of their way to surround themselves with halflings. Either you are fleeing from something found elsewhere or you are looking for something here.~ GOTO GullykinBanters
IF ~CheckStatGT(LastTalkedToBy,13,INT)~ THEN REPLY ~I do recall Gorion mentioning once that this area once faced a great magic battle. The Firewine Bridges I believe are all that is left of a town that was once here. That seems more than likely to be the reason this area would attract your attention.~ GOTO GullykinBanters2
IF ~~ THEN REPLY ~As long as it pays our tabs I'm ok with it.~ GOTO GullykinBanter4
END

//state #6

IF ~~ THEN BEGIN GullykinBanter3
SAY ~I know of those who have use for such power. Acquintances that would not be interested in hearing of any delays on my part in retrieving it.~ IF ~~ THEN EXIT
END

//state #7

IF ~~ THEN BEGIN GullykinBanters
SAY ~I am acquainted with those who have use for such power. Acquintances that would not be interested in hearing of any delays on my part in retrieving it.~  IF ~~ THEN EXIT
END




//Tier 2 dialogue
//state #8

IF ~~ THEN BEGIN GullykinBanter4
SAY ~Very well. Shall we depart?~ IF ~~ THEN EXIT
IF ~~ EXIT
END


//state #9

IF ~~ THEN BEGIN GullykinBanters2
SAY ~This "Gorion" you speak of must be well learned if he told you these stories. They are indeed true. I seek an artifact that predates that time by many centuries.~  IF ~~ GOTO GullykinBanter4
END




//Durlag's Tower

//Durlag's Tower Dialog 1

IF ~Global("k9YE_DURLAG","GLOBAL",2)~ THEN BEGIN DurlagTower
SAY ~Hmm... Durlag's Tower. Before we enter there are things you should know ahead of time.~
IF ~~ THEN REPLY ~Like what? If you know something about the history of Durlag's Tower I'd like to hear it.~ DO ~SetGlobal("k9YE_DURLAG","GLOBAL",3)~ GOTO DurlagBanter1
IF ~~ THEN REPLY ~Your history lessons bore me. Unless its essential information keep it to yourself.~ DO ~SetGlobal("k9YE_DURLAG","GLOBAL",3)~ GOTO DurlagBanter2
IF ~~ THEN REPLY ~I have no interest in anything you have to say.~ DO ~SetGlobal("k9YE_DURLAG","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN DurlagBanter1
SAY ~Very well. Durlag Trollkiller, son of Bolhur Thunderaxe the Clanless, founded Durlag's tower many years ago hoping it to become a dwarven community of sorts. Its construction was to be financed through those fortunes that he had acquired while adventuring.

His plans failed however, and shortly thereafter an army of doppelgangers and illithid overtook the fortress. Durlag succeeded in taking back his hold, but as a means of protecting the tower he installed an extensive array of traps. This is not a place to put down your guard at any moment.~
IF ~~ THEN REPLY ~I'm touched, are you actually looking out for my wellbeing?~ GOTO DurlagBanter3
IF ~~ THEN REPLY ~What news of Durlag himself? Could he still live?~ GOTO DurlagBanter4
IF ~~ THEN REPLY ~An interesting tale. Hopefully these traps and wards have long since been weakened.~ EXIT
END

IF ~~ THEN BEGIN DurlagBanter2
SAY ~Very well. We should be cautious of traps and magical wards. It is also not unheard of to see undead wandering about. Rumours also speak of adventurers who fled the tower after their party began changing faces. This suggests the presence of doppelgangers, if not another kind of shapeshifting beast.~
IF ~~ THEN REPLY ~And what of Durlag himself? Could he still be alive?~ GOTO DurlagBanter4
IF ~~ THEN REPLY ~I'll keep this in mind.~ EXIT
END       

IF ~~ THEN BEGIN DurlagBanter3
SAY ~You aren't much use to me dead.~
IF ~~ EXIT
END

IF ~~ THEN BEGIN DurlagBanter4
SAY ~It is possible, though unlikely. I do not know the life span of a dwarf, but if he is still alive he would now be feeble and probably insane.~
IF ~~ EXIT
END


//Durlag second dialogue


IF ~Global("k9YE_DURLAG","GLOBAL",4) OR(6) Class(Player1,THIEF_ALL) Class(Player2,THIEF_ALL) Class(Player3,THIEF_ALL) Class(Player4,THIEF_ALL) Class(Player5,THIEF_ALL) Class(Player6,THIEF_ALL)~ THEN BEGIN DurlagTower2
SAY ~Volo wrote of traps and magical wards. It would be best if our party's thief proceed first.~
IF ~~ THEN REPLY ~And leave them defenceless against whatever else we may find in here? No. We press on.~ DO ~SetGlobal("k9YE_DURLAG","GLOBAL",5)~ EXIT
IF ~~ THEN REPLY ~I'll consider it.~ DO  ~SetGlobal("k9YE_DURLAG","GLOBAL",5)~ EXIT
END

IF ~Global("k9YE_DURLAG","GLOBAL",4)~ THEN BEGIN DurlagTower3
SAY ~Volo wrote of traps and magical wards. As loath as I am to admit it we require a thief.~
IF ~~ THEN REPLY ~I don't think so.~ DO  ~SetGlobal("k9YE_DURLAG","GLOBAL",5)~ EXIT
IF ~~ THEN REPLY ~I'll consider it.~ DO ~SetGlobal("k9YE_DURLAG","GLOBAL",5)~ EXIT
END


IF ~Global("k9YE_DURLAG","GLOBAL",6)~ THEN BEGIN DurlagTower4
SAY ~The traps we have seen so far seem far too rudimentary for someone of Durlag's stature. Perhaps some foolish locals have softened its defences for us? Still, we should still be on our guard.~
IF ~~ THEN DO  ~SetGlobal("k9YE_DURLAG","GLOBAL",7)~ EXIT
END


//Durlag final dialogue

IF ~Global("k9YE_DURLAG","GLOBAL",8) PartyHasItem("k9staf22")~ THEN BEGIN DurlagTowerstaff
SAY ~That, that there. Give it to me. Gently now, it deserves great care.~ IF ~~ GOTO 24
END

IF ~~ THEN BEGIN 24
SAY ~It looks Netherese. Very old. Yes, this will do nicely.~
IF ~~ THEN REPLY ~Good. The sooner we can be rid of this place the better.~ DO ~SetGlobal("k9YE_DURLAG","GLOBAL",9)~ EXIT
END

IF ~Global("k9YE_DURLAG","GLOBAL",10) PartyHasItem("k9staf22")~ THEN BEGIN DurlagTowerstaff2
SAY ~Hmm...we must now travel to the city of Baldur's Gate. I have a contact I wish to meet.~
IF ~~ THEN REPLY ~I don't think so. Not without you telling me who this person is.~ DO  ~SetGlobal("k9YE_DURLAG","GLOBAL",11)~ GOTO k9telling
IF ~~ THEN REPLY ~Fine.~ DO ~SetGlobal("k9YE_DURLAG","GLOBAL",11)~ EXIT
END

IF ~~ THEN BEGIN k9telling
SAY ~The specifics are really not important. What I require of you is your escort, nothing more. Should you be unwilling to provide this service then I will simply take my leave.~
IF ~~ THEN REPLY ~Fine. We'll go see your contact.~ DO ~AddJournalEntry(@352001,QUEST)~ EXIT
IF ~~ THEN REPLY ~Sorry, but that isn't acceptable.~ GOTO k9leaving
END

IF ~~ THEN BEGIN k9leaving
SAY ~(Sigh) I would have preferred the company of others given the state of the roads. So be it, goodbye <CHARNAME>.~ IF ~~ THEN DO ~SetGlobal("k9YE_city","GLOBAL",1) AddJournalEntry(@352003,QUEST_DONE) LeaveParty() EscapeArea() ~ EXIT
END




//Firewine Bridge


IF ~Global("k9YE_FIREWINE_B","GLOBAL",2)~ THEN BEGIN FirewineB
SAY ~The Firewine Bridge. It is unlikely I will find what I am looking for in what is left of this place. Still, a search of these grounds could prove useful.~
IF ~CheckStat(Player1Fill,13,INT)~ THEN REPLY ~What do you know of this place? Gorion once told me that a great battle was fought here long ago. As I understand the result of that battle was the destruction of the town that once stood here. If you know anything more I'd like to hear it.~ ~SetGlobal("k9YE_FIREWINE_B","GLOBAL",3)~ GOTO FirewineBBanter1
IF ~~ THEN REPLY ~What do you know of this place?~ DO  ~SetGlobal("k9YE_FIREWINE_B","GLOBAL",3)~ GOTO FirewineBBanter2
IF ~~ THEN REPLY ~I have no interest in anything you have to say.~ DO ~SetGlobal("k9YE_FIREWINE_B","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN FirewineBBanter1
SAY ~Hmm... a more complete explanation would be that 200 years ago two powerful mages fought a duel here. Each drew upon their knowledge of the Weave and cast their most powerful spells. As the battle raged they were each forced to take more and more dangerous risks with their spellcasting. At some point it is likely that at least one of them decided to draw magic in its rawest form.~ IF ~~ THEN GOTO FirewineBBanter32
 END

IF ~~ THEN BEGIN FirewineBBanter32
SAY ~The result of this, of course, was the scattered remains you see here, along with the scattering of wild magic areas around the immediate area. The knowledge of who exactly fought this duel seems to have been lost over the centuries. What has been clear however is that since that day many adventurers have claimed to have found magical items scattered amongst what remains of the towns bridge and ruins. Remains no doubt of the possessions of these mages. That is the reason for my interest in this area.~
IF ~~ THEN REPLY ~And what exactly is it you are looking for?~ GOTO FirewineBBanter3
IF ~OR(2) InParty("Minsc") InParty("Yeslick")~ THEN REPLY ~How do you know all this?~ GOTO FirewineBBanter4
IF ~~ THEN REPLY ~I'll keep this in mind.~ EXIT
END

IF ~~ THEN BEGIN FirewineBBanter2
SAY ~Myself? I know as much as what Volo and other writers have written about the area. It is said that 200 years ago two powerful mages fought a duel here. Each drew upon their most powerful knowledge, so much so that as the battle raged on they were forced to take more and more dangerous risks with their spellcasting. Eventually facing defeat one of them decided to draw magic in its rawest form. Raw magic being something so unstable that most mortals would dare not think of using it.~  IF ~~ THEN GOTO FirewineBBanter33
END




IF ~~ THEN BEGIN FirewineBBanter33
SAY ~The result of this, of course, was the scattered remains you see here, along with the scattering of wild magic areas around the immediate area. The knowledge of who exactly fought this duel seems to have been lost over the centuries. What has been clear however is that since that day many adventurers have claimed to have found magical items scattered amongst what remains of the towns bridge and ruins. Remains no doubt of the possessions of these mages. That is the reason for my interest in this area.~
IF ~~ THEN REPLY ~And what exactly is it you are looking for?~ GOTO FirewineBBanter3
IF ~OR(2) InParty("Minsc") InParty("Yeslick")~ THEN REPLY ~How do you know all this?~ GOTO FirewineBBanter4
IF ~~ THEN REPLY ~I'll keep this in mind.~ EXIT
END       

IF ~~ THEN BEGIN FirewineBBanter3
SAY ~An orb of sorts, or perhaps a staff. What exactly it looks like will very much depend on the condition we find it in.~
IF ~~ EXIT
END

IF ~~ THEN BEGIN FirewineBBanter4
SAY ~Unlike some of the uncouth members of this party I can actually *read*.~IF ~~ EXIT
IF ~~ EXIT
END

IF ~~ THEN BEGIN yeorgleaving
SAY ~This experience has proven to be a waste of time.~IF ~~ THEN DO ~LeaveParty() SetDialog("k9yeorgp")~ EXIT
END


