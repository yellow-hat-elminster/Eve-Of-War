 BEGIN k9baskor

 IF ~AreaCheck("AR3321")~ THEN BEGIN AR3321
 SAY ~Ahh, we meet again. I must say Kelddath's strategy seems sound but lacks any committment to teaching the townsfolk magic. Understandable, given his own limitations, but there may yet be some who possess the intelligence to learn a few defensive spells in the short time we have. Something is, as they say, better than nothing.~ IF ~~ THEN EXIT
 END

IF ~NumTimesTalkedTo(0)~ THEN
BEGIN 0
	SAY ~...Kid, just grab the book and get out. No sense taking so long about it.~
	  IF ~~ THEN EXTERN ~k9kid2~ 0
END

IF ~~ THEN
BEGIN 1
	SAY ~Book first, spells later kid.~ 
        +~Dead("k9tranor")~+ ~We killed Laspeera. I expect that you will now hold up your end of the bargain and travel to Beregost to advise the town.~ GOTO 11
	+~Global("k9TranorFlee","GLOBAL",1)~+ ~We chased off Laspeera. I expect that you will now hold up your end of the bargain and travel to Beregost to advise the town.~ GOTO 11
        ++ ~Hiring a child for this is hardly respectable behaviour.~ GOTO 3
	++ ~Excellent. Children are such an underutilized resource.~ GOTO 4
END

IF ~~ THEN
BEGIN 2
	SAY ~Why don't you tell them my whole plan while you are at it kid? You think I wanted to hire you? Halbazzer almost certainly has protections against magic users like myself from grabbing the book. You on the otherhand...~
	++ ~Hiring a child for this is hardly respectable behaviour.~ GOTO 3
	++ ~Excellent. I've always thought that children are such an underutilized resource.~ GOTO 4
END

IF ~~ THEN
BEGIN 3
	SAY ~Aye? And who made you captain of the Fist? If getting access to that spellbook saves lives in the city. Then that's what I'm going to do.
 
And if he has protections that I can use myself. Then all the better.~
+~Global("k9BeregostSearch","GLOBAL",1) Global("k9baskor","GLOBAL",0)~+ ~If you fear for your safety then you should consider leaving the city. Beregost currently is looking for advisors in the event of a coming war. Thalantyr isn't one to take on apprentices, so I can't say you'll find any more spells there, but perhaps whoever is looking for you is less likely to find you there?~ GOTO 5
++ ~If lives are on the line then could you not simply ask Halbazzer to teach you the spells?~ GOTO 6
END

IF ~~ THEN
BEGIN 4
	SAY ~Aren't they? Don't get me wrong slavery is a terrible thing. But no child has ever been harmed by having a stiff back after a hard days work. That's what I was always taught anyways.~
+~Global("k9BeregostSearch","GLOBAL",1)  Global("k9baskor","GLOBAL",0)~+ ~This is the kind of attitude Beregost needs. They are currently looking for advisors in the event of a coming war. Someone like yourself, someone clearly with an aptitude for doing what needs to be done, could be valuable to them.~ GOTO 5
++ ~Why do you need the book though? Could you not simply ask Halbazzer to teach you whatever spells interest you?~ GOTO 6
END

IF ~~ THEN
BEGIN 5
	SAY ~Hmm... I might be inclined to do as ye ask but only in return for a favor. This business with Halbazzer is rather minor by comparison. I fear I am being hunted by a woman named Laspeera Inthre. She and her wizarding friends will stop at nothing until they have found me! I need you to take care of her. Kill her, scare her off. I don't care. As long as she and her goons stay well away from me.~
++ ~Understood. Any ideas on where we can find her?~ GOTO 7
++ ~I'm not interested.~ EXIT
END

IF ~~ THEN
BEGIN 6
	SAY ~That watery old tart would never waste the time. Look at him, does he look the sort to help another in need? That gruff old wizard made his fortune with a spell that banishes mildew. Even sells the thing for 12 gold per casting. 12 gold! He then went on to create a spell that drives all moisture from things without harming them. You guessed it! 10 gold per casting. He's gotten all the offers in the world and still refuses to sell this knowledge.~
++ ~I guess I'm not seeing how removing mildew will save lives.~ GOTO 8
++ ~Well that is enough for me. I think I'll be heading out.~ EXIT
END

IF ~~ THEN
BEGIN 7
	SAY ~If I knew with any certainty I'd deal with her myself. But if I would wager a guess, she's probably praying to that damnable god Helm up in the northern part of the city.~
++ ~I'll take a look.~ DO ~SetGlobal("k9Tranor","GLOBAL",1)  AddJournalEntry(@531123,QUEST)~ EXIT
++ ~I'm not going to kill or hurt anyone for you. In fact, I think I'm through with talking to you.~ EXIT
END

IF ~~ THEN
BEGIN 8
	SAY ~I'll have you know that the spontaneous growth of mildew is one of the greatest public health threats facing this very city. I should think anyone with any degree of sense would be greatly concerned about it.~
++ ~Surely the iron crisis is a bigger concern.~ GOTO 9
++ ~Well that is enough for me. I think I'll be heading out.~ EXIT
END

IF ~~ THEN
BEGIN 9
	SAY ~The iron crisis? We've plenty of mercantile operations in the city. Even if some of the iron is contaminated I'm certain more will be shipped soon from elsewhere.
        
Besides, a few less soldiers with pointy sticks is hardly a concern. I've seen what passes for a Flaming Fist recruit. They are as likely to hurt themselves as they are to hurt others.~
+~Global("k9BeregostSearch","GLOBAL",1) Global("k9baskor","GLOBAL",0)~+ ~You certainly seem opinionated. As it so happens Beregost is looking for advisors in the event of a coming war. They could use someone of your spirit. Would you be interested?~ GOTO 5
++ ~Well that is enough for me. I think I'll be heading out.~ EXIT
END

IF ~True()~ THEN
BEGIN 10
	SAY ~...Kid, we've been over this already. Just grab the book and get out. How many times do I need to tell you this?~
	  IF ~~ THEN EXTERN ~k9kid2~ 0
END

IF ~~ THEN
BEGIN 11
	SAY ~Excellent. One lest pest to bother me.
        
Hmm... You there, boy, enough of this. Just get the spellbook and we can be on our way. Quietly now, yes, yes.~
	  IF ~~ THEN EXTERN ~k9kid2~ 3
END

IF ~~ THEN BEGIN 12
SAY ~In time, in time. Once we are out of this place.

As for you, <CHARNAME> was it? If nothing else I am a man of my word. I'll help your little town.~
++ ~Great. Speak to Kelddath at their town hall.~ DO ~SetGlobal("k9baskor","GLOBAL",1) SetGlobal("k9magicteach","GLOBAL",1) IncrementGlobal("k9beregostprepared","GLOBAL",1) AddexperienceParty(1000)  AddJournalEntry(@531127,QUEST) EscapeArea()~ EXIT
END


