

BEGIN k9tranor

 IF ~AreaCheck("AR3321")~ THEN BEGIN AR3321
 SAY ~Good tidings <CHARNAME>. You will be perhaps relieved to know that passage for Baskor has been arranged on aboard the ship Celeste. He should be arriving in Cormyr within the week.~ IF ~~ THEN GOTO AR3321A
 END

 IF ~~ THEN BEGIN AR3321A
 
 SAY ~As for the situation in Beregost. The militia seems to have everything well in hand defensively. However, I have noticed that only myself and Thalantyr seem to have any capabilities with arcane magic. Arranging for any further War Wizards to travel here would simply not be practical, but I may yet be able to train some of the more capable members of the Fist in several of our fighting techniques.~
  IF ~~ THEN EXIT
 END


IF ~True()~ THEN BEGIN 0
SAY ~By Tyr's light. This is a place of worship. Unless you have something important to speak to me about I'd ask that you quietly leave me to my prayer.~
+~Global("k9Tranor","GLOBAL",1)~+ ~Baskor sent me. He's concerned you were sent to kill him.~ GOTO 1
++ ~Tyr? Isn't this templed dedicated to Helm?~ GOTO 14
++ ~Sorry. I'll be on my way now.~ EXIT
END

IF ~~ THEN BEGIN 1
SAY ~Of that I have no doubt. Still, did the fool think he could escape justice by hiring simple thugs? Theft of any kind is not tolerated in the city of Suzial, let alone in any part of Cormyr. The War Wizards will not allow one of their spellbooks to fall into the hands of a criminal.~
++ ~We're hardly simple thugs. I'll have you know that we are the party that defeated the bandits in the Woods of Sharp Teeth AND cleared the Nashkel Mines of the sinister forces that had poisoned its ore.~ GOTO 2
++ ~Arguing over this seems pointless. It would be easier to just kill you and be done with this.~ DO ~Enemy()  ReputationInc(-1) AddJournalEntry(@531126,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 2
SAY ~Hmm... and yet you cavort with criminals. That alone speaks to your true nature.~
+~CheckStatGT(LastTalkedToBy,14,CHR)~+ ~Look, we don't want to fight you. But we have need Baskor's assistance. The people of Beregost fear that a war may break out and are seeking anyone willing to offer advice. In exchange for convincing you to leave him be he has agreed to assist the town. You claim he is someone deserving of being hunted. Yet he would put himself in harms way to provide advice to this town. Can you not see you are mistaken about this man? Have you not considered someone else as the thief?~ GOTO 6
+~CheckStatLT(LastTalkedToBy,15,CHR)~+ ~Look, we don't want to fight you. But we have need Baskor's assistance. Is there no way to convince you to leave this matter alone?~ GOTO 7
++ ~Had I known that he was indeed the criminal you claim I would not have chosen to work with him.~ GOTO 5
+~Global("k9BeregostSearch","GLOBAL",1) Global("k9tranor","GLOBAL",1)~+ ~You make a good point. How about this. If I give you his location will you agree to return a favor?~ GOTO 3
END



IF ~~ THEN BEGIN 3
SAY ~That depends very much on the nature of that favor.~
++ ~If you weren't aware Beregost is looking for advisors in the event of a coming war. They fear reprisal from Amn should relations deteriorate further and are looking for an experienced hand to help guide them. If I agree to provide you with his location would you agree to assist the town?~ GOTO 4
++ ~Nevermind then. He sent me to kill you and I see no reason not to just do so and be done with this.~ DO ~Enemy() AddJournalEntry(@531126,QUEST)~  EXIT
END


IF ~~ THEN BEGIN 4
SAY ~It seems I underestimated you. Perhaps you respect law as much, if not more, than the common folk of this city.

Hmm...in exchange for his location I could do provide the help you seek. Of course that itself comes at a price. If I alone cannot travel with him I will require a suitable arrangement to ensure his safe passage back to Cormyr.~
++ ~Very well. I can provide you with some gold to assist with his transportation back to Cormyr. Would 100 gold be sufficient?~ GOTO 5
++ ~Tough luck. If the royals of Cormyr want to pay for his transport they are welcome to do so. But I won't.~ EXIT
END

IF ~~ THEN BEGIN 5
SAY ~More than sufficient. Thank you for the assistance friend. The people of Cormyr owe you a great debt for removing this vermin from civil society.~
++ ~Happy to help. You can find him in the Sorcerous Sundries. Once you have done what you need to secure him make your way to Beregost. Kelddath will wish to speak with you.~ DO ~ AddJournalEntry(@531128,QUEST) TakePartyGold(100) SetGlobal("k9magicteach","GLOBAL",1) IncrementGlobal("k9beregostprepared","GLOBAL",1) SetGlobal("k9Laspeera","GLOBAL",1) EscapeArea()~ EXIT
++ ~One second thought, if the royals of Cormyr want to pay for his transport they are welcome to do so. But I won't be.~ EXIT
END

IF ~~ THEN BEGIN 6
SAY ~Our investigation was thorough I assure you. He is the thief. Even our own royal guards identified him as such.~
++ ~If this is merely a matter of his word against theirs then I hardly see cause for you to travel such a distance. Was there no physical evidence connecting him to the theft of this spellbook?~ GOTO 8
++ ~Regardless you have no jurisdiction here. What right do you have to apprehend this man?~ GOTO 12
++ ~You travelled all this way merely for the theft of a single spellbook? Imagine what good you could have done in the world had you instead taken that time to instead protect those in need.~ GOTO 11
END

IF ~~ THEN BEGIN 7
SAY ~Enough of this. You are clearly a sympathizer of the man and will not accept even the word of our own guards. Guards sworn to uphold the king's justice. I'll not have any further dealings with the likes of you.~
++ ~I'm sorry then but I must insist you end your quest of justice. Whatever crime he may or may not have committed, Baskor is simply too valuable for Beregost to give up so easily. If that means ending your life then so be it.~ GOTO 10
++ ~Well Baskor paid me to get rid of you. He didn't care how. So it looks like the body collectors will have more work tonight.~ DO ~Enemy() AddJournalEntry(@531126,QUEST)~  EXIT
++ ~I'm quite done with dealing with either of you two.~ EXIT
END

IF ~~ THEN BEGIN 8
SAY ~No physical evidence tied him to the scene. However, under our laws none is required. For one of the royal guards to have seen him carry out the act is sufficient cause by itself. That not one but two guards saw him only seals his fate.~
++ ~Well I don't agree. So where does that leave us?~ GOTO 9
++ ~Regardless you have no jurisdiction here. What right do you have to apprehend this man?~ GOTO 12
++ ~You travelled all this way merely for the theft of a single spellbook? Imagine what good you could have done in the world had you instead taken that time to instead protect those in need.~ GOTO 11
END



IF ~~ THEN BEGIN 9
SAY ~It leaves you with knowingly choosing to hide his location from me. How do you expect me to respond to this?~ 
++ ~Truthfully I don't think it matters. You know as well as I that you won't survive a fight against us. Leave now and when the matters in Beregost are handled you can have your justice against him.~ GOTO 13
++ ~I don't really care. I'm quite done with dealing with either of you two.~ EXIT
END

IF ~~ THEN BEGIN 10
SAY ~Then there is nothing more to say. I will simply get his location from you with force.~ IF ~~ THEN DO ~Enemy() AddJournalEntry(@531125,QUEST)~  EXIT
END

IF ~~ THEN BEGIN 11
SAY ~Those that are in need of help are not my concern. I have been sent here with one task in mind and I intend to complete it.~
++ ~Well I don't agree with what you are doing here. So where does that leave us?~ GOTO 9
++ ~Regardless you have no jurisdiction here. What right do you have to apprehend this man?~ GOTO 12
END

IF ~~ THEN BEGIN 12
SAY ~While I respect the laws of this land my duty to the crown supercedes them. Should it become necessary to take actions that ensure that justice prevails make no mistake that I will take them.~
++ ~Well I don't agree with what you are doing here. So where does that leave us?~ GOTO 9
++ ~You travelled all this way merely for the theft of a single spellbook? Imagine what good you could have done in the world had you instead taken that time to instead protect those in need.~ GOTO 11
END

IF ~~ THEN BEGIN 13
SAY ~Very well then, I can see well enough that I am outmatched. Know this however. The hand of the Maimed God will fall upon Baskor sooner than later. Should you further shield him from it you will face the same fate.~ IF ~~ THEN DO ~SetGlobal("k9TranorFlee","GLOBAL",1) AddexperienceParty(7000)  AddJournalEntry(@531124,QUEST) EscapeArea()~  EXIT
END

IF ~~ THEN BEGIN 14
SAY ~Indeed. However many who worship one of the Triad also have great reverence for Helm.~ 
+~Global("k9Tranor","GLOBAL",1)~+ ~Baskor sent me. He's concerned you were sent to kill him.~ GOTO 1
++ ~Sorry. I'll be on my way now.~ EXIT
END