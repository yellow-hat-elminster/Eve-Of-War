BEGIN k9cystr


IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0

SAY ~You are a far from the Coast Way friend. What brings you out this way?~

++~Wh...what happened here?~ GOTO 1
++~That really is none of your concern.~ GOTO 2
+~InParty("TIAX") PartyHasItem("k9scrl3f") CheckStatGT(Player1Fill,16,STR)~ +~One of your associates, Bassilus, left notes for me to find this place. He was impressed with my tenacity and offered to allow me to join your group.~ GOTO 8
+~InParty("TIAX") PartyHasItem("k9scrl3f") CheckStatGT(Player1Fill,16,CHR)~ +~One of your associates, Bassilus, gave me this set of notes that I was to use to find this place. He said he himself would come along shortly. I wish to join your group.~ GOTO 8
+~InParty("TIAX") PartyHasItem("k9scrl3f") CheckStatGT(Player1Fill,17,CHR)~ +~One of your associates, Bassilus, gave me this set of notes that I was to use to find this place. He said he himself would come along shortly. I wish to join your group.~ GOTO 8
+~!InParty("TIAX") PartyHasItem("k9scrl3f") CheckStatGT(Player1Fill,16,STR)~ +~One of your associates, Bassilus, left notes for me to find this place. He was impressed with my tenacity and offered to allow me to join your group.~ GOTO 3
+~!InParty("TIAX") PartyHasItem("k9scrl3f") CheckStatGT(Player1Fill,16,CHR)~ +~One of your associates, Bassilus, gave me this set of notes that I was to use to find this place. He said he himself would come along shortly. I wish to join your group.~ GOTO 4
+~!InParty("TIAX") PartyHasItem("k9scrl3f") CheckStatLT(Player1Fill,17,CHR)~ +~One of your associates, Bassilus, gave me this set of notes that I was to use to find this place. He said he himself would come along shortly. I wish to join your group.~ GOTO 5
END

IF ~~ THEN BEGIN 1

SAY ~Some misguided travellers came upon our camp. Or perhaps we came upon theirs.~ IF ~~ THEN GOTO  10
END

IF ~~ THEN BEGIN 2

SAY ~I'm afraid it very much is my concern.~ IF ~~ THEN GOTO 6
END


IF ~~ THEN BEGIN 3

SAY ~Hmm... you do seem quite strong. Unfortunately for you we are highly selective of our new members.~ IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 4

SAY ~Had word of Bassilus's death not reached my ears not long ago you might have convinced me.~ IF ~~ THEN GOTO 7
END


IF ~~ THEN BEGIN 5

SAY ~Unfortunately, your story lacks any truth behind it. Word that Bassilus was slain reached my ears quite some time ago.~ IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 6

SAY ~I cannot allow an outsider with knowledge of this place to leave.~ IF ~~ THEN DO ~ Shout(99) Enemy() CreateCreature("skelwa02",[770.2400],N)
CreateCreature("skelwa02",[600.2440],N)  ~ EXIT
END

IF ~~ THEN BEGIN 7

SAY ~I'll admit I'm impressed that you killed him. He was a fairly capable servant himself. Still, I doubt you have the heart to become one of our order. No, its best you be dealt with swiftly.~ IF ~~ THEN DO ~Shout(99) Enemy() CreateCreature("skelwa02",[770.2400],N)
CreateCreature("skelwa02",[600.2440],N) ~ EXIT
END


IF ~~ THEN BEGIN 8

SAY ~Ahh I see that you have Tiax in your group. What are you doing bringing this group here? This is not the will of Cyric.~ IF ~~ THEN EXTERN ~BTIAX~ 18
END

IF ~~ THEN BEGIN 9

SAY ~Then you shall die alongside these disbelievers.~ IF ~~ THEN DO ~Shout(99) Enemy() CreateCreature("skelwa02",[770.2400],N)
CreateCreature("skelwa02",[600.2440],N)  ~ EXIT
END


 IF ~~ THEN BEGIN 10

SAY ~It is the way of things. The strong live and the weak die. I wonder, which are you?~ IF ~~ THEN DO ~ Shout(99) Enemy() CreateCreature("skelwa02",[770.2400],N)
CreateCreature("skelwa02",[600.2440],N)  ~ EXIT
END