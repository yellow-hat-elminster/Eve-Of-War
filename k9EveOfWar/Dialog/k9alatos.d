
ADD_TRANS_ACTION ALATOS BEGIN 20  END BEGIN  0 END ~SetGlobal("k9thiefhelps","GLOBAL",1)~

ADD_TRANS_ACTION NIKLOS BEGIN 10  END BEGIN  0 END ~GiveItemCreate("k9scrlAL",Player1,0,0,0) AddJournalEntry(@660465,QUEST) SetGlobal("k9alatosfind","GLOBAL",1)~

ADD_STATE_TRIGGER ALATOS 0 ~GlobalLT("k9thiefhelps","GLOBAL",1)~
ADD_STATE_TRIGGER ALATOS 11 ~GlobalLT("k9thiefhelps","GLOBAL",1)~
ADD_STATE_TRIGGER ALATOS 12 ~GlobalLT("k9thiefhelps","GLOBAL",1)~
ADD_STATE_TRIGGER ALATOS 13 ~GlobalLT("k9thiefhelps","GLOBAL",1)~
ADD_STATE_TRIGGER ALATOS 20 ~GlobalLT("k9thiefhelps","GLOBAL",1)~

APPEND ALATOS

IF WEIGHT #-99 ~Global("k9thiefhelps","GLOBAL",1) GlobalLT("HelpEltan","GLOBAL",1)~  BEGIN k921
SAY ~My apologies, but no time for idle chatter. Is there something you need of the guild? [ALATOS THUIBULD 2] ~
++ ~Yes, I need to know what you know of the Iron Throne. I plan to investigate them. Any information you have could prove useful.~ GOTO k922
++ ~Is there any other work you might need me for?~ GOTO k925
++ ~Nothing really. Sorry for bothering you.~ EXIT
END

IF ~~  BEGIN k922
SAY ~The Iron Throne? Yes, I suspected you would be interested in it. In truth, I know very little of what has been transpiring in the mercantile businesses of this city over the last few months. The Iron Throne included. I've heard the rumors of course; strange decisions being made, suspicious behaviours, and changing faces. Had I not kept such a close eye on my own guild I may have even fallen under whatever influence now has permeated such places. You would be wise to explore the Iron Throne yourself to see what has been happening there. I'll not risk the men, but I will reward any news you provide regarding it.~ IF ~~ THEN DO ~SetGlobal("k9thiefhelps","GLOBAL",2) AddJournalEntry(@66041,QUEST)~ EXIT
END

IF ~Global("k9LettersFound","GLOBAL",1)~  BEGIN k923
SAY ~Hmph...it appears as though the leadership of the Iron Throne is meeting in Candlekeep. A perfect time as any to gather intelligence, and if necessary, eliminate a problem. Here, take this book. It is valuable enough to grant you passage into Candlekeep. Go there, learn what you can about what the Iron Throne is planning, and then report back here.~ IF ~~ THEN DO ~ SetGlobal("k9thiefhelps","GLOBAL",3) SetGlobal("k9LettersFound","GLOBAL",2) AddJournalEntry(@66042,QUEST_DONE) GiveItemCreate("Book68", LastTalkedToBy,1,0,0) EraseJournalEntry(@66043) ClearAllActions()
StartCutSceneMode()
StartCutScene("cutckeep")~ EXIT
END


IF ~~  BEGIN k924
SAY ~The Iron Throne? They are a mercantile business in the city. What of them?~
++ ~The Flaming Fist has taken great interest in their activities. I plan to investigate them and any information you have could prove useful.~ GOTO k922
END


IF ~~  BEGIN k925

SAY ~Hmph... as much as it pains me to admit it the guild is not what it once was. There may be some work yet for you, in time, but nothing at the moment. Is there something else you needed of the guild?~
++ ~Yes, I need to know what you know of the Iron Throne. I plan to investigate them. Any information you have could prove useful.~ GOTO k922
++ ~Good to know. I think I'll be heading out then.~ EXIT
END



IF ~Global("k9thiefhelps","GLOBAL",3) Global("Chapter","GLOBAL",7) Global("k9belt","GLOBAL",0)~  BEGIN k926
SAY ~Ahh, yes <CHARNAME>. You still live. Good, I have need of your... talents.

You are aware of the events unfolding in this city? Yes? Well, with the Fist taking such bold measures against our own I have decided it is time that our guild begin a more active role in these matters. I'll submit to you that the job I have for you is a rather simple one on the surface, though its execution I suspect will prove challenging by itself. 

If I may be so blunt, I require that you take this sword and take care of an adversary for much of the Guild. Murder is such a messy business I'll admit, and not one I'd normally prefer to get so close to, but it is necessary all the same. When you are done simply leave the sword at the scene and return. Nothing more.

The adversary in question currently resides under the care of his healer in the southwestern part of the city. No names need be spoken. I think you understand, yes?~
++ ~Very well. The deed will be done.~ DO ~ SetGlobal("k9thiefhelps","GLOBAL",4) GiveItemCreate("k9alatos", LastTalkedToBy,1,0,0) AddJournalEntry(@660463,QUEST)~ EXIT
++ ~And just why would I want to do that?~ GOTO k927
++ ~This wouldn't have anything to do with Duke Eltan would it?~ GOTO k928
+~Global("k9deadiron","GLOBAL",0)~+ ~Speaking of which you owe me. I have the information you requested about the Iron Throne.~ GOTO k929
++ ~I didn't agree to assist you so that you could use me as a hired killer.~ GOTO k930
++ ~I don't want any part in your plans.~ DO ~AddJournalEntry(@66044,QUEST_DONE)~ EXIT
END

IF ~~ THEN BEGIN k927
SAY ~Perhaps because I know that not only do you still live but that you are now present in this very city. Perhaps because you know as well as I that, regardless of Sarevok's rise to power, there is an opportunity here to expand our operations in this city. With you of course being aptly rewarded for your assistance.

Come now, don't tell me you have not seen it for yourself? The rulers of this city are as complacent and seek only to preserve the status quo. The city is in need of new blood in its mercantile and mercenary businesses and I intend to ensure our very own guild is present to fill those roles as needed.~
++ ~Very well. The deed will be done.~ DO ~ SetGlobal("k9thiefhelps","GLOBAL",4) GiveItemCreate("k9alatos", LastTalkedToBy,1,0,0) AddJournalEntry(@660463,QUEST)~ EXIT
++ ~This wouldn't have anything to do with Duke Eltan would it?~ GOTO k928
+~Global("k9deadiron","GLOBAL",0)~+ ~Speaking of which you owe me. I have the information you requested about the Iron Throne.~ GOTO k929
++ ~I didn't agree to assist you so that you could use me as a hired killer.~ GOTO k930
++ ~I don't want any part in your plans.~ DO ~AddJournalEntry(@66044,QUEST_DONE)~ EXIT
END


IF ~~ THEN BEGIN k928
SAY ~Duke Eltan? What would possess you to think I would wish him murdered? Certainly you must be a fool to think I would so openly speak of such a thing in public. Even in a place as rather unseemly as this.

Of course his death would be marvelous wouldn't it? It would throw the Flaming Fist into chaos, that much I am certain. My associates and I might even have time to gather what resources we have to establish my own place in the mercantile and mercenary operations of the city. Long before the other such operations have fully recovered - the Fist included.

This of course is all mere supposition. I only only need you to kill a sickly man in the southwestern part of the city. Then to place this sword near his remains. Nothing more. Understand?~
++ ~And why would I help you?~ DO ~AddJournalEntry(@66044,QUEST)~ GOTO k927
++ ~Very well. The deed will be done.~ DO ~ SetGlobal("k9thiefhelps","GLOBAL",4) GiveItemCreate("k9alatos", LastTalkedToBy,1,0,0) AddJournalEntry(@66044,QUEST) AddJournalEntry(@660463,QUEST)~ EXIT
+~Global("k9deadiron","GLOBAL",0)~+ ~Speaking of which you owe me. I have the information you requested about the Iron Throne.~ DO ~AddJournalEntry(@66044,QUEST)~ GOTO k929
++ ~I didn't agree to assist you so that you could use me as a hired killer.~ DO ~AddJournalEntry(@66044,QUEST)~ GOTO k930
++ ~What if I don't defeat Sarevok?~ DO ~AddJournalEntry(@66044,QUEST)~ GOTO k931
++ ~I don't want any part in your plans.~ DO ~AddJournalEntry(@66044,QUEST_DONE)~ EXIT
END

IF ~~ BEGIN k929
SAY ~In truth I care very little for whatever information you may have. Merely knowing that their leadership is dead is sufficient for me. Regardless of your role in such matters. But here, I believe a small sum for what you have done for us is in order.~ IF ~~ THEN  DO ~GiveGoldForce(2000) SetGlobal("k9deadiron","GLOBAL",1)~ GOTO k9291
END

IF ~~ THEN BEGIN k9291
SAY ~Now, to the business at hand, will you assist in ending this life?~
++ ~Very well. The deed will be done.~ DO ~  SetGlobal("k9thiefhelps","GLOBAL",4) GiveItemCreate("k9alatos", LastTalkedToBy,1,0,0) AddJournalEntry(@660463,QUEST)~ EXIT
++ ~And just why would I want to do that?~ GOTO k927
++ ~This wouldn't have anything to do with Duke Eltan would it?~ GOTO k928
++ ~I didn't agree to assist you so that you could use me as a hired killer.~ GOTO k930
++ ~I don't want any part in your plans.~ DO ~AddJournalEntry(@66044,QUEST_DONE)~ EXIT
END

IF ~~ BEGIN k930
SAY ~An odd sentiment coming from the one with the blood of the Iron Throne leadership on their hands. Did you tell that to Rieltar as he lay there dying? Hmm? Somehow I doubt it.

Besides, I'm certain that Fenster and the other healers will ultimately restore him to life. Such is the way of things. His death undoubtedly would not be permanent. However, it will send a message. A message I wish to see delivered.~
++ ~Very well. The deed will be done.~ DO ~ SetGlobal("k9thiefhelps","GLOBAL",4) GiveItemCreate("k9alatos", LastTalkedToBy,1,0,0) AddJournalEntry(@660463,QUEST)~ EXIT
++ ~And just why would I want to do that?~ GOTO k927
++ ~This wouldn't have anything to do with Duke Eltan would it?~ GOTO k928
++ ~I don't want any part in your plans.~ DO ~AddJournalEntry(@66044,QUEST_DONE)~ EXIT
END

IF ~~ BEGIN k931
SAY ~I suspect then that it will no longer be your concern. In any case I have other resources I can bring to bear.~
++ ~Very well. The deed will be done.~ DO ~ SetGlobal("k9thiefhelps","GLOBAL",4) GiveItemCreate("k9alatos", LastTalkedToBy,1,0,0) AddJournalEntry(@660463,QUEST)~ EXIT
++ ~This wouldn't have anything to do with Duke Eltan would it?~ GOTO k927
++ ~But where does the death of Duke Eltan fit into all this?~ GOTO k928
++ ~I don't want any part in your plans.~ DO ~AddJournalEntry(@66044,QUEST_DONE)~ EXIT
END

IF ~Global("DukeThanks","GLOBAL",0)~ BEGIN k932
SAY ~As much as I appreciate that I am the person you are seeking out, I suspect you have far more important concerns to deal with. Speak to me after Sarevok's coronation.~ IF ~~ THEN DO ~AddJournalEntry(@660462,QUEST)~ EXIT
END


IF ~Global("k9deadduke","GLOBAL",0) Global("k9dukesword","GLOBAL",0) Global("k9thiefhelps","GLOBAL",4)~ BEGIN k932
SAY ~You have not completed the mission. Disappointing, to say the least.~ IF ~~ THEN EXIT
END

IF ~Global("k9deadduke","GLOBAL",1) Global("k9dukesword","GLOBAL",1) Global("k9thiefhelps","GLOBAL",4)~ BEGIN k933
SAY ~What fools! You did what I asked but did not leave the evidence. My instructions were clear! Do you think I can now let you live? Do you think I would risk in any way the Fist tying you back to my plans? By now I have no doubt the Fist has caught wind that you may be responsible.~ IF ~~ THEN DO ~Shout(1)
Enemy()~ EXIT
END

IF ~Global("k9deadduke","GLOBAL",1) Global("k9dukesword","GLOBAL",2) Global("k9thiefhelps","GLOBAL",4) Global("k9liiadie","GLOBAL",0)~ BEGIN   k934
SAY ~Excellent, your task has been completed and Duke Jannath is likely to tie the death to the Shadow Thieves. You have done well. If you still seek to track down Sarevok you will find him in the maze beneath the Thieves Guild. In the meantime, take this gold so that you may purchase provisions. Our little maze down there is quite deadly. You may yet need them.~ IF ~~ THEN DO ~SetGlobal("k9thiefhelps","GLOBAL",5) GiveGoldForce(4000) AddexperienceParty(2000) AddJournalEntry(@66046,QUEST_DONE)~ EXIT
END

IF ~Global("k9deadduke","GLOBAL",1) Global("k9dukesword","GLOBAL",2) Global("k9thiefhelps","GLOBAL",4) Global("k9beltdie","GLOBAL",0)~ BEGIN k935
SAY ~Excellent, your task has been completed and Duke Belt is likely to tie the death to the Shadow Thieves. You have done well. If you still seek to track down Sarevok you will find him in the maze beneath the Thieves Guild. In the meantime, take this gold so that you may purchase provisions. Our little maze down there is quite deadly. You may yet need them.~ IF ~~ THEN DO ~SetGlobal("k9thiefhelps","GLOBAL",5) GiveGoldForce(4000) AddexperienceParty(2000) AddJournalEntry(@66046,QUEST_DONE)~ EXIT
END

IF ~Global("k9deadduke","GLOBAL",1) Global("k9dukesword","GLOBAL",2) Global("k9thiefhelps","GLOBAL",4) Global("k9beltdie","GLOBAL",1) Global("k9liiadie","GLOBAL",1)~ BEGIN k936
SAY ~Excellent, your task has been completed and Flaming Fist are likely to tie the death to the Shadow Thieves. You have done well. If you still seek to track down Sarevok you will find him him in the maze beneath the Thieves Guild. In the meantime, take this gold so that you may purchase provisions. Our little maze down there is quite deadly. You may yet need them.~ IF ~~ THEN DO ~SetGlobal("k9thiefhelps","GLOBAL",5) GiveGoldForce(4000) AddexperienceParty(2000) AddJournalEntry(@66046,QUEST_DONE)~ EXIT
END

END

