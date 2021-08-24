APPEND HICK

IF WEIGHT #-99 ~See("Brage") !Global("OublekBounty1","GLOBAL",1)~ THEN BEGIN k93
  SAY ~Hey, Who told ya that ya could come in here?! This place is only for members of the Amnian soldiery. Hey, who's that with ya? Brage ehh? Never thought I'd see your face back around here.~
  IF ~  Dead("NALIN")~ THEN REPLY ~Well Nalin's dead. I didn't have much choice in bringing him here.~  GOTO k94
   IF ~~ THEN REPLY ~He deserves to be heard by his peers.~ GOTO k96
  IF ~~ THEN REPLY ~He deserves some measure of justice.~ GOTO k96
END

IF  ~~ THEN BEGIN k94
  SAY ~Could have just slit his throat and carted along the body. Would have saved you some trouble.~ IF ~~ THEN GOTO k95
END

IF  ~~ THEN BEGIN k95
  SAY ~Has he nothin to say for himself? Murderin his wife like that. Awful lot o'men got lost out lookin for the bastard too.~ IF ~~ THEN EXTERN BRAGE 12
END


IF  ~~ THEN BEGIN k96
  SAY ~Aye, I suppose. Has he nothin to say for himself? Murderin his wife like that. Awful lot o'men got lost out lookin for the bastard too.~ IF ~~ EXTERN BRAGE 12
END



IF  ~~ THEN BEGIN k97
  SAY ~That so? Well, that'll make choppin your head a little easier.~ 
  IF ~PartyHasItem("Sw2h03")~ THEN REPLY ~Brage's actions were influenced by his sword. He cannot be held responsible for what he did.~ GOTO k98
  IF ~!PartyHasItem("Sw2h03")~ THEN REPLY ~Brage's actions were influenced by his sword. He cannot be held responsible for what he did.~ GOTO k99
    IF ~~ THEN REPLY ~Do what you want with him. I just want a reward.~ GOTO k910
END

IF  ~~ THEN BEGIN k98
  SAY ~Heard the very same tales myself. But at least ye have the sword to back up what ye've be sayin. Brage'll live, fer now.~ IF ~~ THEN GOTO k910
END
IF  ~~ THEN BEGIN k99
  SAY ~Heard the very same tales myself. Also heard of a dragon seen flying around Beregost. I don't put much faith in tall tales.~ IF ~~ THEN GOTO k911
END

IF ~~ THEN BEGIN k910
  SAY ~Here's yer reward.~ IF ~~ THEN DO ~
  EraseJournalEntry(26830) // The Tale of Captain Brage Brage, the captain of the guard in Nashkel, apparently changed greatly after acquiring his new sword.
EraseJournalEntry(26830) // The Tale of Captain Brage Brage, the captain of the guard in Nashkel, apparently changed greatly after acquiring his new sword.
EraseJournalEntry(26831) // The Tale of Captain Brage There is a large reward for the head of Brage! His former comrades seem unwilling to try to collect it, however.
EraseJournalEntry(26832) // The Tale of Captain Brage A large force of men from Nashkel went to reclaim Brage a week ago. None have returned.
EraseJournalEntry(26833) // The Tale of Captain Brage The change in Captain Brage astonishes everyone. The people of Nashkel liked and respected him before his rampage.
EraseJournalEntry(26834) // The Tale of Captain Brage Some believe Brage to be under an evil enchantment. It's certainly possible.
EraseJournalEntry(26838) // The Tale of Captain Brage Even if Captain Brage were to be captured alive, he would most assuredly be put to death for his crimes.
EraseJournalEntry(27105) // The Tale of Captain Brage The captain of the guard in Nashkel has apparently committed a number of violent murders. It's as though his whole personality has changed.
EraseJournalEntry(27292) // The Tale of Captain Brage Not even his own guards have been able to find Captain Brage.
EraseJournalEntry(27303) // The Tale of Captain Brage Nalin at the Temple of Helm in Nashkel seems to think that Brage might be under the influence of some evil force. If I return Brage to the temple, he might not be killed for his crimes.
EraseJournalEntry(26887) // The Tale of Captain Brage I have had to kill the berserking Brage, and I need but return his body to Nashkel for my reward. I must decide whether to return it to the garrison or to the temple.
EraseJournalEntry(26888) // The Tale of Captain Brage I have captured the supposedly murderous Brage. Now I need but return him to Nashkel, to either the garrison or the temple. If he is delivered to the garrison he will surely be killed, but I know not what the temple intends.
EraseJournalEntry(27507) // The Tale of Captain Brage Rumor from Volo: I hear that Commander Brage of the Amnian guard has been missing for some weeks now, following a strange alteration in his behavior. Where once he was a well-thought-of family man, he turned to senseless mayhem, effecting a rampage the likes of which I have never heard. His fellow soldiers noted nothing out of sorts that could trigger such a transformation, but one notable item seems relevant. If not for the iron shortage it would have gone unnoticed but, prior to his mad rage, the commander procured a new sword. The importance of this information, I have no way of verifying.
SetGlobal("OublekBounty1","GLOBAL",1)
GiveGoldForce(1000) ~ EXIT
END

IF ~~ THEN BEGIN k911
  SAY ~Doubt Ghastkill's gonna let him live either. But ye should have thought of that before comin up with such tales. Here's yer reward. Now get outta here!~ IF ~~ THEN DO ~  EraseJournalEntry(26830) // The Tale of Captain Brage Brage, the captain of the guard in Nashkel, apparently changed greatly after acquiring his new sword.
EraseJournalEntry(26830) // The Tale of Captain Brage Brage, the captain of the guard in Nashkel, apparently changed greatly after acquiring his new sword.
EraseJournalEntry(26831) // The Tale of Captain Brage There is a large reward for the head of Brage! His former comrades seem unwilling to try to collect it, however.
EraseJournalEntry(26832) // The Tale of Captain Brage A large force of men from Nashkel went to reclaim Brage a week ago. None have returned.
EraseJournalEntry(26833) // The Tale of Captain Brage The change in Captain Brage astonishes everyone. The people of Nashkel liked and respected him before his rampage.
EraseJournalEntry(26834) // The Tale of Captain Brage Some believe Brage to be under an evil enchantment. It's certainly possible.
EraseJournalEntry(26838) // The Tale of Captain Brage Even if Captain Brage were to be captured alive, he would most assuredly be put to death for his crimes.
EraseJournalEntry(27105) // The Tale of Captain Brage The captain of the guard in Nashkel has apparently committed a number of violent murders. It's as though his whole personality has changed.
EraseJournalEntry(27292) // The Tale of Captain Brage Not even his own guards have been able to find Captain Brage.
EraseJournalEntry(27303) // The Tale of Captain Brage Nalin at the Temple of Helm in Nashkel seems to think that Brage might be under the influence of some evil force. If I return Brage to the temple, he might not be killed for his crimes.
EraseJournalEntry(26887) // The Tale of Captain Brage I have had to kill the berserking Brage, and I need but return his body to Nashkel for my reward. I must decide whether to return it to the garrison or to the temple.
EraseJournalEntry(26888) // The Tale of Captain Brage I have captured the supposedly murderous Brage. Now I need but return him to Nashkel, to either the garrison or the temple. If he is delivered to the garrison he will surely be killed, but I know not what the temple intends.
EraseJournalEntry(27507) // The Tale of Captain Brage Rumor from Volo: I hear that Commander Brage of the Amnian guard has been missing for some weeks now, following a strange alteration in his behavior. Where once he was a well-thought-of family man, he turned to senseless mayhem, effecting a rampage the likes of which I have never heard. His fellow soldiers noted nothing out of sorts that could trigger such a transformation, but one notable item seems relevant. If not for the iron shortage it would have gone unnoticed but, prior to his mad rage, the commander procured a new sword. The importance of this information, I have no way of verifying.
SetGlobal("OublekBounty1","GLOBAL",1)
GiveGoldForce(1000) ~ EXIT
END

IF WEIGHT #-98 ~True()~ THEN BEGIN k912 SAY ~What are you doin here?~ IF ~~ THEN EXIT
END


END