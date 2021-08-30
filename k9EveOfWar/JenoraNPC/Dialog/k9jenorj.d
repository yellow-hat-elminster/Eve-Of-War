BEGIN k9jenorj

IF ~Global("k9JenorJoined","GLOBAL",1) ~ THEN
BEGIN 0
	SAY ~Before we leave the city we should visit the Sorcerous Sundries. Dragonspear Castle is quite some distance from the city. It would be in our interest to pick up what we can now.~
		++ ~Agreed.~ DO ~SetGlobal("k9JenorJoined","GLOBAL",2)~ EXIT
                ++ ~I'll consider it~ DO ~SetGlobal("k9JenorJoined","GLOBAL",2)~  EXIT
		++ ~Will you now finally shut up about us butting-in on the damn line?~ DO ~SetGlobal("k9JenorJoined","GLOBAL",2)~ GOTO 1
        	++ ~No, we've wasted enough time in the city as is.~ DO ~SetGlobal("k9JenorJoined","GLOBAL",2)~  EXIT
END

IF ~~ THEN
BEGIN 1
	SAY ~Has anyone ever told you how truly insufferable you are? How the Grand Dukes retain any trust in you is truly beyond me. With an attitude like yours it is a wonder you have yet to experience their ire.~
 ++ ~I apologize. These last few weeks have been difficult...to say the least.~ GOTO 2
 +~Dead("RIELTAR") GlobalLT("k9CaelarJenoraAsk","GLOBAL",2) ~+ ~I am the hero of Baldur's Gate. Have you not heard? I killed Sarevok. I killed his followers. The Iron Throne's leaders died in MY hands. This city owes me everything. Frankly I don't give a damn if your feelings are hurt over my "attitude". I've done more for this city than you ever will.~ GOTO 3
+~!Dead("RIELTAR") GlobalLT("k9CaelarJenoraAsk","GLOBAL",2) ~+ ~I am the hero of Baldur's Gate. Have you not heard? I killed Sarevok. I killed his followers. The Iron Throne fell because of me. This city owes me everything. Frankly I don't give a damn if your feelings are hurt over my "attitude". I've done more for this city than you ever will.~ GOTO 4
 ++ ~Stow it. I knew taking you in this group was a mistake. I have no time for anyone who can't take even a bit of prodding.~ GOTO 5
END

IF ~~ THEN BEGIN 2
SAY ~For everyone here no doubt. Very well, shall we continue?~ IF ~~ EXIT
END

IF ~~ THEN BEGIN 3
SAY ~Indeed, but why? What drove you to thwart Sarevok's plans?~
++ ~He killed someone close to me.~ DO ~IncrementGlobal("k9personal","GLOBAL",1) SetGlobal("k9historyJenora","GLOBAL",1)~ GOTO 6
++ ~He sought to bring war between Baldur's Gate and Amn. I couldn't allow that to happen.~ DO ~SetGlobal("k9historyJenora","GLOBAL",1)~ GOTO 7
++ ~He threatened my life at every turn. I had no other choice.~ DO ~IncrementGlobal("k9personal","GLOBAL",1) SetGlobal("k9historyJenora","GLOBAL",1)~ GOTO 8
END

IF ~~ THEN BEGIN 4
SAY ~Indeed, yet with all your blundering you have scarcely explained why. What drove you to thwart the bhaalspawn's plans?~
++ ~He killed someone close to me.~ DO ~IncrementGlobal("k9personal","GLOBAL",1) SetGlobal("k9historyJenora","GLOBAL",1)~ GOTO 6
++ ~He sought to bring war between Baldur's Gate and Amn. I couldn't allow that to happen.~ DO ~SetGlobal("k9historyJenora","GLOBAL",1)~ GOTO 7
++ ~He threatened my life at every turn. I had no other choice.~ DO ~IncrementGlobal("k9personal","GLOBAL",1) SetGlobal("k9historyJenora","GLOBAL",1)~ GOTO 8
++ ~That's none of your concern.~ GOTO 9
END

IF ~~ THEN BEGIN 5
SAY ~(Jenora mumbles under her breath as she walks away)~ IF ~~ THEN DO ~LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 6
SAY ~So for you this was just about revenge?~
++ ~He also sought to bring war between Baldur's Gate and Amn. I couldn't allow that to happen.~ DO ~IncrementGlobal("k9personal","GLOBAL",1)~ GOTO 10
++ ~He also threatened my life at every turn. I had no other choice.~ DO ~IncrementGlobal("k9personal","GLOBAL",1)~ GOTO 11
++ ~That's none of your concern.~ GOTO 9
END

IF ~~ THEN BEGIN 7
SAY ~And what of it? Countless wars have been fought since you were born. I have little doubt that countless more will be fought before you are dead. What made this war special?~
++ ~A war would threaten Candlekeep - the place I grew up.~ DO ~IncrementGlobal("k9personal","GLOBAL",1)~ GOTO 13
++ ~He also threatened my life at every turn. If killing him stopped a war and the threat to me I certainly have no regrets about it.~ DO ~IncrementGlobal("k9personal","GLOBAL",1)~ GOTO 11
+~CheckStatGT(Player1,12,WIS)~+ ~A war between these powers would have had broader implications. What of its impact on trade, the proliferation of arms, the creation of refugees, and the cost of lives? There was too much at stake to let it happen.~  DO ~IncrementGlobal("k9broader","GLOBAL",1)~  GOTO 15
+~CheckStatGT(Player1,6,WIS) CheckStatLT(Player1,13,WIS)~+ ~Guess I figured it could cause some problems for a lot of people. It was nothing personal, just didn't want to see one man throw the area into chaos.~  DO ~IncrementGlobal("k9broader","GLOBAL",1)~ GOTO 15
+~CheckStatLT(Player1,7,WIS) CheckStatGT(Player1,6,INT)~+ ~Guess I figured it could cause some problems for a lot of people. It was nothing personal, just didn't want to see one man throw the area into chaos.~ DO ~IncrementGlobal("k9broader","GLOBAL",1)~  GOTO 15
+~CheckStatLT(Player1,7,WIS) CheckStatLT(Player1,7,INT)~+ ~Big war cause big problems. Not just little problem.~ DO ~IncrementGlobal("k9broader","GLOBAL",1)~  GOTO 16
++ ~That's none of your concern.~ GOTO 9
END

IF ~~ THEN BEGIN 8
SAY ~So for you this was just about self preservation? Was there no other reason?~
++ ~He also sought to bring war between Baldur's Gate and Amn. I couldn't allow that to happen.~ DO ~IncrementGlobal("k9personal","GLOBAL",1)~ GOTO 10
++ ~He also killed someone close to me.~ DO ~IncrementGlobal("k9personal","GLOBAL",1)~ GOTO 11
++ ~That's none of your concern.~ GOTO 9
END

IF ~~ THEN BEGIN 9
SAY ~I see. If that is your answer then I think it would be best if we were on our way.~ IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10
SAY ~Indeed, yet there have been many wars fought since you were born. Clearly this meant more to you than that.~
++ ~Let's just get going already.~ EXIT
END

IF ~~ THEN BEGIN 11
SAY ~I see.~
++ ~Let's just get going already.~ EXIT
END

IF ~~ THEN BEGIN 13
SAY ~So you wished to protect your home? I understand.~
++ ~Let's just get going already.~ EXIT
END

IF ~~ THEN BEGIN 15
SAY ~And yet it is rare for any one person to prevent war - let alone stop one. Caelar is devoted to spreading her armies across the Sword Coast. How do you propose we stop her?~
++ ~We need to negotiate. Caelar must have her reasons for doing what she is doing. If we learn what those are perhaps we can end this conflict before it further escalates.~ GOTO 17
++ ~As they say "Cut off the head and the rest will follow." Caelar must be stopped. Once she is dead her army will disband and this conflict will be over.~ GOTO 18
++ ~We may want to consider attempting to capture Caelar, perhaps while she is asleep. Caelar's forces may treat her as a martyr if she is killed. If we captured her we could use her as leverage to end this conflict.~ GOTO 19
++ ~Perhaps the best approach would be to assassinate her. If Caelar is killed her followers will be easy targets for our forces to crush.~ GOTO 20
++ ~I say kill her and be done with this. As long as I'm not involved with the fallout I don't care about it.~ GOTO 21
++ ~I'm not sure what we should do.~ GOTO 28
END

IF ~~ THEN BEGIN 16
SAY ~Very true. This is certainly something you should consider on our march to Dragonspear.~ IF ~~ THEN DO ~IncrementGlobal("k9CaelarJenora","GLOBAL",1) SetGlobal("k9CaelarJenoraAsk","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 17
SAY ~Negotiations may work, though I would not rely on such things wholeheartedly. King Haedrak III of Tethyr certainly had little success himself in attempting it in the lands south of here - and he was in a position of far greater authority. Either way, this is certainly something you should be considering on our march to Dragonspear.~ IF ~~ THEN DO ~IncrementGlobal("k9CaelarJenora","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 18
SAY ~That is possible, though it is certainly also possible that such an action will fracture her followers and force many back into the country roads to work as bandits. Others may simply treat their fallen comrade as a martyr. Either way, this is certainly something you should be considering on our march to Dragonspear.~ IF ~~ THEN DO ~IncrementGlobal("k9CaelarJenora","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 19
SAY ~Such an ill-concieved plan would almost certainly fail. No, it would be best that you spend our time travelling to Dragonspear to think of an alternative.~ IF ~~ THEN DO ~IncrementGlobal("k9CaelarJenora","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 20
SAY ~Finding someone capable enough to reach Caelar, let alone kill her, would undoubtedly prove to be extremely difficult. I doubt the Fist could muster someone capable enough for this. Who would you turn to then? No, it would be best that you spend our time travelling to Dragonspear to think of an alternative.~ IF ~~ THEN DO ~IncrementGlobal("k9CaelarJenora","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 21
SAY ~No regard for the consequences? I suppose I should not have thought anything else of you.~ IF ~~ THEN DO ~IncrementGlobal("k9CaelarJenora","GLOBAL",1)~ EXIT
END



IF ~Global("k9CaelarJenoraAsk","GLOBAL",1) ~ THEN BEGIN 22
SAY ~I have been wondering... it is rare for any one person to prevent war - let alone stop one. Yet you did so with Sarevok. You understand that Caelar is devoted to spreading her armies across the Sword Coast. How do you propose we stop her?~
++ ~We need to negotiate. Caelar must have her reasons for doing what she is doing. If we learn what those are perhaps we can end this conflict before it further escalates.~ GOTO 23
++ ~As they say "Cut off the head and the rest will follow." Caelar must be stopped. Once she is dead her army will disband and this conflict will be over.~ GOTO 24
++ ~We may want to consider attempting to capture Caelar, perhaps while she is asleep. Caelar's forces may treat her as a martyr if she is killed. If we captured her we could use her as leverage to end this conflict.~ GOTO 25
++ ~Perhaps the best approach would be to assassinate her. If Caelar is killed her followers will be easy targets for our forces to crush.~ GOTO 26
++ ~I say kill her and be done with this. As long as I'm not involved with the fallout I don't care about it.~ GOTO 27
++ ~I'm not sure what we should do.~ GOTO 28
END

IF ~~ THEN BEGIN 23
SAY ~Negotiations may work, though I would not rely on such a thing wholeheartedly. If Caelar has gathered a force large enough to make the cities of Waterdeep and Baldur's Gate wary it would be rather foolish to think words alone will end this. I think it would be wise for you to consider this on our march to Dragonspear.~ IF ~~ THEN DO ~IncrementGlobal("k9CaelarJenora","GLOBAL",1) SetGlobal("k9CaelarJenoraAsk","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 24
SAY ~That is possible, though it is certainly also possible that such an action will fracture her followers and force many back into the country roads to work as bandits. Others may simply treat their fallen comrade as a martyr. Either way, this is certainly something you should be considering on our march to Dragonspear.~ IF ~~ THEN DO ~IncrementGlobal("k9CaelarJenora","GLOBAL",1) SetGlobal("k9CaelarJenoraAsk","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 25
SAY ~Such an ill-concieved plan would almost certainly fail. No, it would be best that you spend our time travelling to Dragonspear to think of an alternative.~ IF ~~ THEN DO ~IncrementGlobal("k9CaelarJenora","GLOBAL",1) SetGlobal("k9CaelarJenoraAsk","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 26
SAY ~Finding someone capable enough to reach Caelar, let alone kill her, would undoubtedly prove to be extremely difficult. I doubt the Fist could muster someone capable enough for this. Who would you turn to then? No, it would be best that you spend our time travelling to Dragonspear to think of an alternative.~ IF ~~ THEN DO ~IncrementGlobal("k9CaelarJenora","GLOBAL",1) SetGlobal("k9CaelarJenoraAsk","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 27
SAY ~No regard for the consequences? I suppose I should not have expected anything else of you.~ IF ~~ THEN DO ~IncrementGlobal("k9CaelarJenora","GLOBAL",1) SetGlobal("k9CaelarJenoraAsk","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 28
SAY ~Such a statement shows more wisdom than you realize.~ IF ~~ THEN DO ~IncrementGlobal("k9CaelarJenora","GLOBAL",1) SetGlobal("k9CaelarJenoraAsk","GLOBAL",2)~ EXIT
END



 IF ~Global("Chapter","GLOBAL",9) Global("k9CaelarJenoraTimer","GLOBAL",3) Global("k9CaelarJenora","GLOBAL",3) Global("k9CaelarJenoraAsk","GLOBAL",2) ~ THEN BEGIN 29
 SAY ~I wonder, have you considered what I asked of you earlier? How will we deal with Caelar?~
 ++ ~I'm not sure I'm the one you should ask. I don't seem to have much of a say over any of this.~ GOTO 30
END


IF ~~ THEN BEGIN 30
SAY ~True, though perhaps that is a blessing in and of itself. Such freedom comes with its own benefits.~ IF ~~ GOTO 31
 END

IF ~~ THEN BEGIN 31
SAY ~In any case, our camp is likely to only remain here for a few days. Before we press forward towards Dragonspear we would be wise to spend our time exploring what we can of this region.~  IF ~~ EXIT
END