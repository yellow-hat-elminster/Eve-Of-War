BEGIN k9jenor

IF ~NumTimesTalkedTo(0)~ THEN
BEGIN 0
	SAY ~Hold a moment. There are many here that have waited hours for much needed supplies. What makes you think you can ignore our needs and step in front of all of us?~
		++ ~I'm on an urgent mission from the grand dukes.~ GOTO 25
                ++ ~I'm the hero of Baldur's Gate. I'll go where I wish.~ GOTO 1
		++ ~My apologies. I'll admit stepping ahead of the line was inconsiderate.~ GOTO 2
                ++ ~Who are *you* to judge me?~ GOTO 10
		++ ~Stuff your tongue. I'll go where I want, when I want.~ GOTO 3
END

IF ~~ THEN
BEGIN 1
	SAY ~Hmph, were I to believe the common folk I would have assumed your attitude to be much better. No matter. In the future please bare in mind the plight of those besides yourself.~
		++ ~My apologies.~ GOTO 11
		++ ~I'm not interested in anything you have to say.~ DO ~Setglobal("k9Jenoraspawn","GLOBAL",4)~ EXIT
		++ ~I'll have to take a pass on that. I think I'll be going now.~ DO ~Setglobal("k9Jenoraspawn","GLOBAL",4)~ EXIT
END

IF ~~ THEN
BEGIN 2
	SAY ~That it was. In the future please consider the hardships of those besides yourself.~
		++ ~You seem a capable enough warrior. I have been tasked with journeying north to defeat Caelar. Would you be interested in joining my party?~ GOTO 5
		++ ~I'll have to take a pass on that. I'll be going now.~ DO ~Setglobal("k9Jenoraspawn","GLOBAL",4)~  EXIT
END

 IF ~~ THEN
BEGIN 3
	SAY ~Hmph, were I to believe the common folk I would have assumed your attitude to be considerably better. No matter. A firm knock to the head will serve you well.~
		++ ~Stay your hand. Lets not allow this to become violent. I'll admit my actions here were inconsiderate.~ GOTO 4
		++ ~I have no time for this.~ GOTO 6
		++ ~There is no need for violence. I'll be going now.~ EXIT
                ++ ~Defend yourself.~ DO ~Enemy() Setglobal("k9Jenoraspawn","GLOBAL",4)~  EXIT
END


IF ~~ THEN
BEGIN 4
	SAY ~That they were. In the future you would be wise to think of the plight of those besides yourself.~
		++ ~You seem a capable enough warrior. I have been tasked with journeying north to defeat Caelar. Would you be interested in joining my party?~ GOTO 5
		++ ~You make a fair point. Still, I think I'll be going now.~ DO ~Setglobal("k9Jenoraspawn","GLOBAL",4)~  EXIT
		++ ~I'll have to take a pass on that. I'll be going now.~ DO ~Setglobal("k9Jenoraspawn","GLOBAL",4)~  EXIT
END

IF ~~ THEN
BEGIN 5
	SAY ~Caelar has proven to be destabilizing in the region. I'll agree that action is warranted. But what are your intentions with her? I would hope you would believe as I do that she should be tried. If not by the Grand Dukes than by another figure in the region.~
                ++ ~Look around. Have you not sufficiently seen Caelar's impact for yourself? If you seek to return stability to the region you will find no better place than in my company.~ GOTO 7
		++ ~I can't say I'm impartial towards her myself, but why have you passed judgement on Caelar? You've not even met the woman.~ GOTO 8
		++ ~Why trust some stuffy lord or lady to pass judgement on Caelar? The woman rampages across the north. The time for judgements will be on the battlefield.~ GOTO 12
		++ ~I'll be going now.~ DO ~Setglobal("k9Jenoraspawn","GLOBAL",4)~  EXIT
END

IF ~~ THEN
BEGIN 6
	SAY ~Hmph, perhaps it would be best then that you leave.~ IF ~~ THEN  DO ~Setglobal("k9Jenoraspawn","GLOBAL",4)~  EXIT

END

IF ~~ THEN
BEGIN 7
	SAY ~I suppose we will have to see about that. Very well, I will join this expedition.~ IF ~~ THEN DO ~ SetGlobal("k9JenorJoined","GLOBAL",1) Setglobal("k9Jenoraspawn","GLOBAL",4) JoinParty()~  EXIT
END

IF ~~ THEN
BEGIN 8
	SAY ~I have seen the imbalance her actions have created. That is proof enough for me.~ 
        ++ ~So will you join my party?~ GOTO 13
        ++ ~What makes you so sure of your stance?~ GOTO 15
        ++ ~Not the best attitude but I'm not about to argue. I think I'll be going now.~ DO ~Setglobal("k9Jenoraspawn","GLOBAL",4)~ EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN
BEGIN 9
      SAY ~I see you continue to put your own needs ahead of the needs of others. The line, as you can no doubt see, begins behind me.~
                ++ ~In fairness, it doesn't seem to be moving much. I've no time to wait.~ GOTO 24
                ++ ~I have been tasked with journeying north to defeat Caelar. Would you be interested in joining my party?~ GOTO 5
		++ ~I'll be going now.~ DO ~Setglobal("k9Jenoraspawn","GLOBAL",4)~  EXIT

 END
 

 IF ~~ THEN
BEGIN 10
	SAY ~Really...if you are the <MANWOMAN> I think you to be I'd have expected better from you.~
  			++ ~My apologies.~ GOTO 11
  			++ ~I suppose stepping ahead of the line was inconsiderate.~ GOTO 2
                        ++ ~Stuff your tongue. I'll go where I want, when I want.~ GOTO 3
 END

 IF ~~ THEN
BEGIN 11
	SAY ~Very well.~
  	++ ~I have been tasked with journeying north to defeat Caelar. You seem the capable sort. Would you be interested in joining my party?~ GOTO 14
        ++ ~I'll be going now.~ DO ~Setglobal("k9Jenoraspawn","GLOBAL",4)~ EXIT
 END
 
 IF ~~ THEN
BEGIN 12
	SAY ~If that is what is required then so be it.~
  	++ ~So would you be interested in joining my party?~ GOTO 13
        ++ ~Can't say I have a problem with that. I think I'll be leaving now. Farewell.~ DO ~Setglobal("k9Jenoraspawn","GLOBAL",4)~ EXIT
 END
 
IF ~~ THEN
BEGIN 13
	SAY ~If that is what is required to bring a breathe of sanity to this situation then so be it.~ IF ~~ THEN DO ~ SetGlobal("k9JenorJoined","GLOBAL",1) Setglobal("k9Jenoraspawn","GLOBAL",4) JoinParty()~  EXIT
END

IF ~~ THEN
BEGIN 14
	SAY ~And what makes you think I have any interest in travelling with the likes of you?~
	++ ~Speaking of being rude...~ GOTO 16
        ++ ~I suppose I've been a bit rude.~ GOTO 17
        ++ ~Hey, you could very well have doubts. Frankly I have my doubts about you.~ GOTO 18
        ++ ~I think I'm finished with this conversation. I'll be going now.~ DO ~Setglobal("k9Jenoraspawn","GLOBAL",4)~ EXIT
END

IF ~~ THEN
BEGIN 15
	SAY ~And what makes you so confident to ask otherwise? What reasons do you have to travel northward - if not to defeat her outright?~
        ++ ~Its true I seek to stop her crusade. I was merely curious in your interest in the matter.~ GOTO 19
        ++ ~She threatens the regions stability. I find many have less need for an adventurer for hire when they worry about broader matters.~ GOTO 20
        ++ ~She tried to have me killed.~ GOTO 21
        ++ ~A close friend of mine was poisoned by her assassins.~ GOTO 21
        ++ ~My reasons are my own.~ GOTO 22
        ++ ~That is none of your business. I think I'm finished with this conversation. I'll be going now.~ DO ~Setglobal("k9Jenoraspawn","GLOBAL",4) SetGlobal("k9CaelarJenoraAsk","GLOBAL",2)~ EXIT
         END
         
 IF ~~ THEN
BEGIN 16
	SAY ~I am sorry if my words were harsh. This business with Caelar is troubling. I had thought to travel northward myself to assist in whatever way possible.~
  	++ ~Then you should join my party.~ GOTO 23
        ++ ~I'll be going now.~ DO ~Setglobal("k9Jenoraspawn","GLOBAL",4)~ EXIT
 END

 IF ~~ THEN
BEGIN 17
	SAY ~True, very true. Was there something else you wish to discuss?~
  	++ ~I have been tasked with journeying north to defeat Caelar. We may have gotten off to the wrong start, but you seem the capable sort. Would you be interested in joining my party?~ GOTO 23
        ++ ~I'll be going now.~ DO ~Setglobal("k9Jenoraspawn","GLOBAL",4)~ EXIT
 END

 IF ~~ THEN
BEGIN 18
	SAY ~An unwarranted concern, I can assure you.~
  	++ ~I have been tasked with journeying north to defeat Caelar. We may have gotten off to the wrong start, but you seem the capable sort. Would you be interested in joining my party?~ GOTO 23
        ++ ~I'll be going now.~ DO ~Setglobal("k9Jenoraspawn","GLOBAL",4)~ EXIT
 END
 
 IF ~~ THEN
BEGIN 19
	SAY ~I travelled here out of concern over the rise of Caelar. I believe her success thus far risks bringing uncertainty to both the Lord's Alliance and to the region as a whole. I travelled here from Berdusk hoping I could assist in any way possible, though I can't say I expected this extent of a refugee problem.~
  	++ ~I have been tasked with journeying north to defeat Caelar. We may have gotten off to the wrong start, but you seem the capable sort. Would you be interested in joining my party?~ DO ~SetGlobal("k9CaelarJenoraAsk","GLOBAL",2) ~ GOTO 23
        ++ ~I'll be going now.~ DO ~Setglobal("k9Jenoraspawn","GLOBAL",4) SetGlobal("k9CaelarJenoraAsk","GLOBAL",2)~ EXIT
 END

 IF ~~ THEN
BEGIN 20
	SAY ~So you journey to fulfill your own selfish interests then? Tis not an original position, I'll grant you, but one that does not seem to be uncommon from your sort.~
  	++ ~I have been tasked with journeying north to defeat Caelar. We may have gotten off to the wrong start, but you seem the capable sort. Would you be interested in joining my party?~ DO ~SetGlobal("k9CaelarJenoraAsk","GLOBAL",2)~ GOTO 23
        ++ ~I'll be going now.~ DO ~Setglobal("k9Jenoraspawn","GLOBAL",4) SetGlobal("k9CaelarJenoraAsk","GLOBAL",2)~ EXIT
 END

 IF ~~ THEN
BEGIN 21
	SAY ~So you travel northward to have your revenge? Tis not an original position, I'll grant you, but one that does not seem to be uncommon for adventurers like yourself.~
  	++ ~I have been tasked with journeying north to defeat Caelar. We may have gotten off to the wrong start, but you seem the capable sort. Would you be interested in joining my party?~ DO ~SetGlobal("k9CaelarJenoraAsk","GLOBAL",2)~ GOTO 23
        ++ ~I'll be going now.~ DO ~Setglobal("k9Jenoraspawn","GLOBAL",4) SetGlobal("k9CaelarJenoraAsk","GLOBAL",2)~ EXIT
 END
 
  IF ~~ THEN
BEGIN 22
	SAY ~So you would have me explain my reasoning but not hold the same standard for yourself? Tis not an original position, I'll grant you, but one that does not seem to be uncommon from your sort.~
  	++ ~I have been tasked with journeying north to defeat Caelar. We may have gotten off to the wrong start, but you seem the capable sort. Would you be interested in joining my party?~ DO ~SetGlobal("k9CaelarJenoraAsk","GLOBAL",2)~ GOTO 23
        ++ ~I'll be going now.~ DO ~Setglobal("k9Jenoraspawn","GLOBAL",4) SetGlobal("k9CaelarJenoraAsk","GLOBAL",2)~ EXIT
 END

IF ~~ THEN
BEGIN 23
	SAY ~I should hope I will not regret this. Very well, I will join this expedition.~ IF ~~ THEN DO ~ SetGlobal("k9JenorJoined","GLOBAL",1) Setglobal("k9Jenoraspawn","GLOBAL",4) JoinParty()~  EXIT
END

  IF ~~ THEN
BEGIN 24
	SAY ~Then you should make the time.~
  	++ ~I have been tasked with journeying north to defeat Caelar. We may have gotten off to the wrong start, but you seem the capable sort. Would you be interested in joining my party?~ GOTO 14
        ++ ~I'll be going now.~ DO ~Setglobal("k9Jenoraspawn","GLOBAL",4)~ EXIT
 END
 
IF ~~ THEN
BEGIN 25
	SAY ~So urgent as to deprive the people of necessities? Tell me now, how does a well stocked adventurer like yourself find themselves in need of supplies? Surely your past adventures brought you plenty.~
	++ ~The grand dukes have allowed it. Who are you to challenge their word?~ GOTO 26
        ++ ~What can I say? I like stuff.~ GOTO 27
        ++ ~I don't answer to you.~ GOTO 28
        ++ ~I'll be going now.~ DO ~Setglobal("k9Jenoraspawn","GLOBAL",4)~ EXIT
END

  IF ~~ THEN
BEGIN 26
	SAY ~Their decision here breeds chaos - even if only for a few. What is gained by it? It only harms those in desperate need of supplies. You, I'm sure, can manage without them. Others are not so fortunate.~
  	++ ~I have been tasked with journeying north to defeat Caelar. We may have gotten off to the wrong start, but you seem the capable sort. Would you be interested in joining my party?~ GOTO 23
        ++ ~I'll be going now.~ DO ~Setglobal("k9Jenoraspawn","GLOBAL",4)~ EXIT
 END

  IF ~~ THEN
BEGIN 27
	SAY ~Tis a selfish attitude you hold. Take your place in the back of the line.~
  	++ ~I have been tasked with journeying north to defeat Caelar. We may have gotten off to the wrong start, but you seem the capable sort. Would you be interested in joining my party?~ GOTO 23
        ++ ~I think I'll pass on that.~ DO ~Setglobal("k9Jenoraspawn","GLOBAL",4)~ EXIT
        ++ ~I think I'll be going now.~ DO ~Setglobal("k9Jenoraspawn","GLOBAL",4)~ EXIT
 END
 
  IF ~~ THEN
BEGIN 28
	SAY ~Indeed. Still, you would be wise to heed my words and learn some respect for the rules of our society. It is always worth remembering that there are others in more need than you.~
  	++ ~I have been tasked with journeying north to defeat Caelar. We may have gotten off to the wrong start, but you seem the capable sort. Would you be interested in joining my party?~ GOTO 23
        ++ ~I think I'll pass on that.~ DO ~Setglobal("k9Jenoraspawn","GLOBAL",4)~ EXIT
        ++ ~Sound enough advice. I think I'll be going now.~ DO ~Setglobal("k9Jenoraspawn","GLOBAL",4)~ EXIT
 END



