BEGIN k9modest

IF ~NumTimesTalkedTo(0) Global("k9ModestTalk", "GLOBAL", 0)~ THEN  BEGIN 0
      SAY ~*Hic*...what...what it is you want?~
      +~Global("k9markasname2","GLOBAL",0)~+ ~Can't be talking to someone much without knowing their name. What's yours friend?~ GOTO 1
      		+~Global("k9darrentalk", "GLOBAL", 1) !PartyHasItem("k9mug")~+ ~If you are who I think you are then word around town is that you served in the Dragonspear wars. That true? If so, Commander Darren asked me to talk to you.~
 			GOTO 2
      		+~Global("k9darrentalk", "GLOBAL", 1) PartyHasItem("k9mug")~+ ~If you are who I think you are then word around town is that you served in the Dragonspear wars. That true? If so, have a drink on me.~
 		DO ~SetGlobal("k9darrensaidtotalk","GLOBAL",1) TakePartyItem("k9mug")~	GOTO 3
		++ ~Nothing really. You just look troubled friend.~
 			GOTO 4
		++ ~Ugh...you reek of the drink! By the gods man, how much have you had?~
			GOTO 5
		++ ~My apologies, I didn't mean to disturb you.~ EXIT
END

IF ~~ THEN        BEGIN 1
	SAY ~My name? It's mind yer own damn business.
        
Unless ye got an ale for me in hand I ain't got nothin more to say to ye.~ IF ~~ THEN EXIT
END


IF ~~ THEN  BEGIN 2
	SAY ~Him again? I'm not interested in talking to him. Unless your gonna buy me a pint we don't have nothin to talk about.~ IF ~~ EXIT
END

IF ~~ THEN      BEGIN 3
	SAY ~Ye I served. What of it?~ 
        ++ ~Commander Darren's been looking for you. You should go by and talk to him.~ GOTO 6
END


IF ~~ THEN  BEGIN 4
	SAY ~Lots of folks look troubled. Why don't you just go there and bother (hic) one of...of em!~ IF ~~ EXIT
END

IF ~~ THEN    BEGIN 5
	SAY ~That's none of yer concern, friend. Go bother someone else.~ IF ~~ EXIT
END



IF ~~ THEN   BEGIN 6
	SAY ~Ye spend yer life helping others, and all ye get in return is a bit o'coin. No friendship, no help when ye really need it.~ IF ~~ THEN GOTO 7
END

IF ~~ THEN     BEGIN 7
	SAY ~Ye say this Darren fellow needs m'help, but why should I stick my neck out for this lot? Bunch o'farmers didn't think ta keep themselves ready for battle. Now they cry for help.~
	++ ~Surely you aren't going to just sit ideally by. Why won't you help?~  GOTO 8
	++ ~Maybe we should change the topic.~ GOTO 9
	++ ~I'll be going now.~ EXIT
	END

IF ~~ THEN BEGIN 8
SAY     ~Bah, I've had enough with the fighting. Too many good folk lost to it cause they didn't know what they were doing. I'll have no part in that.~
       ++ ~You could try teaching them.~ GOTO 11
       ++ ~Then teach them. They aren't going to get any better with just some stoggy leader like Kelddath or Darren leading them.~ GOTO 12
       ++ ~Folks come and go in the realms. When that is is up to the gods to decide. Look, all I know is that Commander Darren's been looking for you. You should go by and talk to him.~  GOTO 13
       ++ ~I haven't the time for this.~ GOTO 14
END


	
IF ~~ THEN BEGIN 9
SAY ~Aye, then. What do ye want to to talk about?~
++ ~The Dragonspear war ended 5 years ago. What have you been doing since?~ GOTO 10
++ ~What brought you to Beregost?~ GOTO 16
++ ~Enough of this. Surely you aren't going to just sit ideally by. Why won't you help?~  GOTO 8
	++ ~I'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 10
SAY ~Mostly adventuring. Had a group of me own awhile back. No longer though.~
++ ~What happened to them?~ GOTO 17
++ ~Let's change the topic~ GOTO 9
++ ~I'll be going now.~ EXIT

IF ~~ THEN   BEGIN 11
	SAY ~And end up burying more of em?~
        ++ ~Look, you yourself admitted most of these folks are farmers by trade. They way I see it is you can help them to avoid that, or you could stand back and let it happen.~ GOTO 18
        ++ ~And that's the risk. But helping sure beats sitting around here waiting for more bodies to appear.~ GOTO 19
        ++ ~Gods, I knew talking to you was a waste of time.~ GOTO 14

END

IF ~~ THEN  BEGIN 12
	SAY ~Bah, Kelddath may well be the finest man round these parts. Bit of an idealist, from what I hear, but he's as good in the heart as he is in the head.~
        ++ ~Look, you yourself admitted most of these folks are farmers by trade. They way I see it is you can help them to avoid that, or you could stand back and let it happen.~ GOTO 18
        ++ ~All I know is that helping sure beats sitting around here waiting for more bodies to appear.~ GOTO 19
        ++ ~Gods, I knew talking to you was a waste of time.~ GOTO 14

END

 IF ~~ THEN   BEGIN 13
	SAY ~Bloodin' soddin hell. I heard ye the first time! Does it seem like I'm interested in helping that sprout of a commander with his problems? No? Bah, just leave me be.~
++ ~I just want to know why you won't help the town?~ GOTO 15
 	++ ~I've got better things to do than to listen to this.~ EXIT
END

IF ~~ THEN   BEGIN 14
	SAY ~Yer just another one looking out fer just yerself. Fine, I've had enough of ye. Leave me be!~ IF ~~ THEN  EXIT
END




IF ~~ THEN BEGIN 15

SAY     ~Bah, like I said I've had enough with the fighting. Too many good folk lost to it cause they didn't know what they were doing. I'll have no more part in in.~
       ++ ~You could try teaching them.~ GOTO 11
       ++ ~Then teach them. They aren't going to get any better with just some stoggy leader like Kelddath or Darren leading them.~ GOTO 12
       ++ ~I haven't the time for this.~ GOTO 14
END



  IF ~~ THEN     BEGIN 16
	SAY ~Came down this way wantin to get away from the past. Start fresh. Was thinking to head down to Athkatla. I've never seen Amn ye know?~ IF ~~ THEN  GOTO 9
END

  IF ~~ THEN  BEGIN 17
	SAY ~Got themselves killed they did. Names were Abagail, Corness, and Brae. Three of t'finest soddin friends ye could hope for.~ 
++ ~Tell me about Abagail~ GOTO 20
++ ~Tell me about Corness~ GOTO 21
++ ~Tell me about Brae~ GOTO 22
END

IF ~~ THEN BEGIN 18
SAY ~Bah, ye have a point. Fine, if it'll get ye off me back I'll talk to this Darren fellow.~ IF ~~ THEN DO ~AddJournalEntry(@109,QUEST) SetGlobal("k9ModestTalk","GLOBAL",2) SetGlobal("ModestHelped","GLOBAL",1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 19
SAY ~Bah, ye have a point. Fine, if it'll get ye off me back I'll talk to this Darren fellow.~ IF ~~ THEN DO ~AddJournalEntry(@109,QUEST) SetGlobal("k9ModestTalk","GLOBAL",2) SetGlobal("ModestHelped","GLOBAL",1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 20
	SAY ~Abagail...was just the sweetest thing. I met her while protecting a caravan in the High Forest ye know. Sassy little thing she was, least for a halfling. Said the forest was under her protection, and that none of us could go any further without her guidance.
        
Funny thing she was. Leaftenders are that way I gather. Still, she proved helpful enough company. Even chose to join us for a time.~
        ++ ~Her death seems to have hurt you deeply.~ GOTO 23
        ++ ~How did she die?~ GOTO 24
        ++ ~and what of Corness and Brae?~ GOTO k9Corness
 	++ ~I've got better things to do than to listen to this.~EXIT
END



IF ~~ THEN     BEGIN 21
	SAY ~Good man that Corness. Bit too lawful if ye ask me. Always trying to convince us in Tyr's ways. Not one to involve myself in the gods affairs really, but his heart was in the right place.~
        ++ ~You seem like you've been adventuring for a long time. You've probably seen many fall around you.~ GOTO 26
        +~!IfValidForPartyDialogue("DORN")~+ ~Did you avenge him?~ GOTO 27
 + ~InParty("DORN")~ + ~Did you avenge him?~ ~~ GOTO 28
        ++ ~and what of Brae?~ GOTO 22
 	++ ~The past is the past. Not much you can do about it. But that doesn't mean you can't help the people here that need you.~ GOTO 15
       	++ ~I've got better things to do than to listen to this.~EXIT
                  END
         

IF ~~ THEN   BEGIN 22
	SAY ~Brae was the timid one. Always fiddling with traps, looking for parts, not really the type to socialize. Still, a good scout and a kind person she was. Light on her feet too. She could be besides you and you'd hardly notice.~
        ++ ~How did she die?~ GOTO 30
 	++ ~The past is the past. Not much you can do about it. But that doesn't mean you can't help the people here that need you.~ GOTO 15
         	++ ~I've got better things to do than to listen to this.~EXIT
                  END
         

IF ~~ THEN  BEGIN 23
	SAY ~Aye, didn't even have the chance to say goodbye. Couldn't afford to go to a cleric neither. Buried her where she died - up in the Sword Mountains.~ IF ~~ GOTO 25
END

IF ~~ THEN   BEGIN 24
	SAY ~Orc raid. The arrow she took an arrow to the knee would have been enough to end her adventurin days. But it was the one to her heart that probably did her in.~ IF ~~ GOTO 25
END


IF ~~ THEN   BEGIN 25
	SAY ~Was there something else ye...(hic)...ye wanted to ask?~
        ++ ~Her death seems to have hurt you deeply.~ GOTO 23
        ++ ~How did she die?~ GOTO 24
        ++ ~and what of Corness~ GOTO 21
        ++ ~and what of Brae?~ GOTO 22
 	++ ~I've got better things to do than to listen to this.~EXIT
END




IF ~~ THEN   BEGIN 26
	SAY ~Aye but he was different. I saw the face of the man when we realized there was someone had to stay behind to hold the orcs back. Stoic as the stone. The man had a child back home in Saradush I think, didn't stop him anyways. Some of us watched from the ramparts as he held off the orcs. He bought us the time we needed and that was that.~ IF ~~ GOTO 29
END


IF ~~ THEN   BEGIN 27
	SAY ~What is to avenge? Orcs are orcs. They are all savages. You put a blade in their gut when ye see one ye hear.~ IF ~~ GOTO 29
END


IF ~~ THEN BEGIN 28
SAY ~What is to avenge? Orcs are orcs. They are all savages. Including half-orcs. You put a blade in their gut when ye see one ye hear.~
  IF ~~ THEN EXTERN ~BDORN~ 0
END

 IF ~~ THEN      BEGIN 29
	SAY ~Was there something else ye...(hic)...ye wanted to ask?~
        ++ ~You seem like you've been adventuring for a long time. You've probably seen many fall around you.~ GOTO 26
        +~!IfValidForPartyDialogue("DORN")~+ ~Did you avenge him?~ GOTO 27
 + ~InParty("DORN")~ + ~Did you avenge him?~ ~~ GOTO 28
        ++ ~and what of Brae?~ GOTO 22
 	++ ~The past is the past. Not much you can do about it. But that doesn't mean you can't help the people here that need you.~ GOTO 15
      	++ ~I've got better things to do than to listen to this.~EXIT
                  END

IF ~~ THEN      BEGIN 30
	SAY ~Got her throat slit by some Red Shields while we were camped out in Kryptgarden Forest. She got the last laugh though. One of the bastards got caught on one of her traps. Nearly bled out by the time we found him the next morning. Never did find out who wanted her dead.~ IF ~~ GOTO 31
END

IF ~~ THEN    BEGIN 31
	SAY ~Ye got somethin else to ask?~
         ++ ~and what of Corness~ GOTO 21
      	++ ~The past is the past. Not much you can do about it. But that doesn't mean you can't help the people here that need you.~ GOTO 15
 	++ ~The more we talk the more I'm convinced that you are just a sad excuse for a man...I expected better from one so highly regarded.~ GOTO 14
      	++ ~I've got better things to do than to listen to this.~EXIT
                  END

   IF ~NumTimesTalkedToGT(0) Global("k9darrentalk", "GLOBAL", 1)~ THEN     BEGIN 32
	SAY ~You again? I have no interest in talking to ya.~
  +~PartyHasItem("k9mug") ~+ ~I got you a pint. How about you tell me why you won't talk to Darren.~ DO ~TakePartyItem("k9mug") ~ GOTO 8
      	+~!PartyHasItem("k9mug")~+ ~If you are who I think you are then word around town is that you served in the Dragonspear wars. That true? If so, Commander Darren asked me to talk to you.~
 			GOTO 33
      		+~PartyHasItem("k9mug")~+ ~If you are who I think you are then word around town is that you served in the Dragonspear wars. That true? If so, have a drink on me.~
 			GOTO 3
	        ++ ~If I get you an ale will you agree to listen to what I have to say?~ GOTO 34
        +~CheckStatLT(LastTalkedToBy,0,LUCK) Global("k9darrentalk", "GLOBAL", 1)~+ ~Hey...(hic)...don't be talkin to me...like that. You and me...we're good pals.~ GOTO 35
		++ ~My apologies, I didn't mean to disturb you.~  EXIT
END

IF ~~ THEN  BEGIN 33
	SAY ~Him again? I'm not interested in talking to him. Unless your gonna join me for a few pints we don't have nothin to talk about.~ IF ~~ EXIT
END

IF ~~ THEN BEGIN 34
	SAY ~Aye, for a pint <GIRLBOY> I'll listen ta what ye have to say.~  IF ~~ EXIT
END


IF ~~ THEN  BEGIN 35
	SAY ~Ho, ho. I haven't seen a <PRO_RACE> as drunk as ye in years. Ye remind me of some of me old companions. Never could hold it down.
 
Ye should really go t'sleep. We can talk another time.~ IF ~~ THEN EXIT
END


IF ~NumTimesTalkedToGT(0) Global("k9darrentalk", "GLOBAL", 0)~ THEN  BEGIN 36
	SAY ~You again? I don't know why yer talkin to me. Go bother someone else.~
        +~CheckStatLT(Player1Fill,0,LUCK)~+ ~You know its funny (hic)...I don't remember why we're talking.~ GOTO 37
		++ ~My apologies, I didn't mean to disturb you.~  EXIT
END


IF ~~ THEN
BEGIN 37
	SAY ~Hehe. Yer down right wasted friend. Maybe go out...get some air. I'm sure you'll remember.~ IF ~~ EXIT
         END