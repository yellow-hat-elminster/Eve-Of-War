BEGIN k9lichta


IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0

SAY ~Who disturbs me?... Speak!~
+~PartyHasItem("k9phylac") CheckStatGT(Player1,15,INT)~+ ~This wouldn't happen to be your phylactery. Would it?~ GOTO 1
+~PartyHasItem("k9phylac")~+ ~You wouldn't happen to know what this is would you?~ GOTO 1
++ ~We are adventurers tasked with clearing out this stronghold of Cyric.~ DO ~AddJournalEntry(@66061,INFO)~ GOTO 3
++ ~I didn't mean to disrupt you. I was clearing out this temple and came across your sarcophogus.~ GOTO 3
++ ~Gods grant me strength. Whatever you are I cannot allow you to live.~ GOTO 4
END

IF ~~ THEN BEGIN 1
SAY ~The small minded cannot begin to understand the power contained within that vessel. Give that to me immediately mortal. I'll not ask again.~
++ ~Why, what is it?~ GOTO 2
++ ~Here you go.~ DO ~TakePartyItemAll("k9phylac")~ GOTO 8
++ ~I think I'll be keeping it.~ GOTO 2
+~CheckStatGT(Player1,16,INT) ~+ ~Actually, I figured this was your phylactery. I guess I'll be destroying it.~ DO ~Enemy() 	DisplayStringHead(Myself,@99990101)       TakePartyItemAll("k9phylac") SetGlobal("k9_lichkillable","GLOBAL",1) ~ EXIT
++ ~Actually, I think I'll be destroying it.~ DO ~Enemy() 	DisplayStringHead(Myself,@99990101)       TakePartyItemAll("k9phylac") SetGlobal("k9_lichkillable","GLOBAL",1) ~ EXIT
END

IF ~~ THEN BEGIN 2
SAY ~Enough of this. I'll just take it from your corpse.~ IF ~~ THEN DO ~ SetGlobal("k9lichinvisibile","GLOBAL",1) AddJournalEntry(@66060,INFO)~ EXIT
END



IF ~~ THEN BEGIN 3

SAY ~You have done well. The Cyricists had grown weak concerning themselves with simple raids and rituals to their foolish god. They were not worthy to hold this place. We will see if you are.~
++ ~What brought you to this place?~ GOTO 5
++ ~You seem extremely powerful. Why not just remove them?~ GOTO 9
++ ~A being as dark and powerful as you cannot be permitted to freely travel the realms!~ DO ~Enemy()~ EXIT
++ ~I'll enjoy taking the valuables off your corpse!~ DO ~Enemy()~ EXIT
++ ~I think I'll be going then.~ EXIT
END




IF ~~ THEN BEGIN 4
SAY ~You wish to fight me? You are brave for a mortal. Foolish, but brave.~
++ ~On second thought, I'd like to know what brought you here.~ GOTO 5
++ ~You seem extremely powerful. Why allow these Cyricists access to this place?~ GOTO 9
++ ~A being as dark and powerful as you cannot be permitted to freely travel the realms!~ DO ~Enemy()~ EXIT
++ ~I'll enjoy taking the valuables off your corpse!~ DO ~Enemy()~ EXIT
++ ~I think I'll be going then.~ EXIT
END


IF ~~ THEN BEGIN 5

SAY ~My master Bane once held this place. Here his priests raised armies seeking to destroy the forces of those gods that opposed even him. In life and in lichdom I worked to spread the name of my master.~ IF ~~ GOTO 6
END

IF ~~ THEN BEGIN 6

SAY ~And so I did until the Time of Troubles. In attempting to steal the Tablets of Fate, Bane challenged a power far greater than his own. The mortality forced upon him during the Godswar proved too much for even him, and now you see the result. Another rose in his place.~
++ ~Why are you telling me all this?~ GOTO 7
++ ~Why are you still here? Surely there are other places you can go.~ GOTO 13
++ ~A being as dark and powerful as you cannot be permitted to freely travel the realms!~ DO ~Enemy()~ EXIT
++ ~I'll enjoy taking the valuables off your corpse!~ DO ~Enemy()~ EXIT
++ ~I think I'll be going then.~ EXIT
END

IF ~~ THEN BEGIN 7

SAY ~There was a time that I followed my master with little doubt in his power or worth. Now I remain here, cursed in a state I fought to acquire so long ago.~ IF ~~ GOTO 9
END




IF ~True()~ THEN BEGIN 8
SAY ~Is there some other reason why you are still here?~
++ ~I'd like to know what brought you here.~ GOTO 5
++ ~This place seems too remote to be much use.~ GOTO 12
++ ~Surely there are other places you can go. Why stay here?~ GOTO 13
++ ~A being as dark and powerful as you cannot be permitted to freely travel the realms!~ DO ~Enemy()~ EXIT
++ ~I'll enjoy taking the valuables off your corpse!~ DO ~Enemy()~ EXIT
++ ~I think I'll be going then.~ EXIT
END


IF ~~ THEN BEGIN 9

SAY ~Because only the worthy seek to come to this place. Tell me mortal. Was your journey here easy? Even in the times this place bustled under the rule of Bane, only the strongest among mortals came to this place. It is through this strength that tyranny is forged.

The Cyricists, for all their foolish notions, proved their worth to hold this place. Until now.~ IF ~~ THEN GOTO 8
END



IF ~~ THEN BEGIN 10
SAY ~It is a strange thing, mortal, to see oneself degraded by the shackles of time. To see your hair fray, your skin fall apart, your bones exposed. To what end? To see the brevity that was once your existence as providing more freedom than undeath? To be forever disfigured by the magics of a dead god?~ IF ~~ GOTO 10
END

IF ~~ THEN BEGIN 11
SAY ~In life I was careful mortal. Lichdom was the end of my plotting and scheming, true, but I was cautious in how I acquired it. I had thought Bane equally cautious.

I tell you this mortal so that you understand - even the gods are not eternal. Use the life which you have left wisely. If you wish to carve your name into the history of the Realms you will have to take what you want by force. There is no other way. Should you wish it. This place could serve that aim nicely.~
++ ~Is this not a rather remote place for that?~ GOTO 12
++ ~Surely there are other places you can go. Why stay here?~ GOTO 13
++ ~I think I'll be going then.~ EXIT
END

IF ~~ THEN BEGIN 12
SAY ~Only to those with narrow ambitions. Even just by coming here you have forged your own path in blood. I suspect this is but one part of your journey. But should you wish it, this is place is yours to use as you see fit.~ IF ~~ THEN DO ~AddJournalEntry(@66061,INFO)~ GOTO 8
END

IF ~~ THEN BEGIN 13
SAY ~My master was a fool. But not all his teachings were. Through this place I see the greatest of the Realms being forged. Many who deserve to rule, in tyranny or otherwise, will find themselves here first. From here I will guide them.~ IF ~~ THEN GOTO 8
END
