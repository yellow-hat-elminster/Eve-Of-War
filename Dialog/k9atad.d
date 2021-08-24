BEGIN k9atad


IF ~NumTimesTalkedTo(0)~ THEN
BEGIN 0
      SAY ~Hmm...travellers to the village. A rare sight in these parts. What brings you here?~
    +~Global("k9snakefreedom","GLOBAL",2) PartyHasItem("k9bookyu")~+ ~I found this book while searching the Yuan-Ti ruins underneath the town. Don't suppose you know what it says.~ GOTO 4
    ++ ~Who are you?~ GOTO 5
    ++ ~Don't you know? The mayor sent for us.~ GOTO 1
    ++ ~Just seeing the sights.~ GOTO 2
END   

IF ~~ THEN
BEGIN 1
      SAY ~Hmm...yes, I suppose the situation calls for such. The community seems to have proven to be rather useless at solving this themselves after all.~
     ++ ~Speaking of which, who are you?~ GOTO 5
     ++ ~What do you know about what has happened here?~ GOTO 3
END

IF ~~ THEN
BEGIN 2
      SAY ~I find this to be unlikely. I think it would be best if you did your wandering...elsewhere.~
    ++ ~Speaking of which, who are you?~ GOTO 5
    ++ ~What do you know about what has happened here?~ GOTO 3
END

IF ~~ THEN
BEGIN 3
      SAY ~Some spell or another clearly cursed this place to be stuck in winter. Beyond that I doubt I know any more than you.~
    ++ ~Speaking of which, who are you?~ GOTO 5
    ++ ~What do you know about what has happened here?~ GOTO 3
END

IF ~~ THEN
BEGIN 4
      SAY ~I have seen the markings on this book throughout the forest. These snake creatures seem to use them to warn of danger. Hmmm...I think it speaks of an affliction set upon the people of this village. Beyond that I do not know. I do not know many in town that would know this language. Though that ranger of theirs may know more.~ IF ~~ THEN DO ~AddJournalEntry(@66091,QUEST)~ EXIT
END

IF ~~ THEN
BEGIN 5
      SAY ~Have the townspeople not spoken of me? I am Atad. I serve as a guide to those few wayward adventurers that travel to this place. So...what of it? Have you come seeking my assistance?~
    ++ ~What would possibly interest adventurers to this place? These people hardly seem wealthy.~ GOTO 25
    ++ ~This seems like an odd place to wait for travellers. Why are you on the outskirts of town?~ GOTO 6
END

IF ~~ THEN
BEGIN 6
      SAY ~I prefer to stay out of the village.~
++ ~And why is that?~ GOTO 7
++ ~Very well. I think I'll be going now.~ EXIT
END

IF ~~ THEN
BEGIN 7
       SAY ~You are a persistent one, yes? The people of the village are unnerved by my appearance. I don't wish to startle them. So I stay away, and, in return, folks in the village guide adventurers my way should they ask for a local guide.~
    ++ ~What kind of deformity do you have?~ GOTO 8
++ ~Rough luck. Well, that's all the information I wanted. I think I'll be going now.~ EXIT
END

IF ~~ THEN
BEGIN 8
      SAY ~(Atad reveals his face to you. Piercing yellow eyes now stare in your direction)

I would think it obvious now yes?~
    ++ ~So you were born that way?~ GOTO 9
    +~InParty("Khalid") InParty("Jaheira")~+ ~A demon child!~ GOTO 10
    +~!InParty("Khalid") InParty("Jaheira")~+ ~A demon child!~ GOTO 11
    +~InParty("Khalid") !InParty("Jaheira")~+ ~A demon child!~ GOTO 12
    +~!InParty("Khalid") !InParty("Jaheira")~+ ~A demon child!~ GOTO 13
++ ~That's unfortunate. Well, I think I'll be going now. Best of luck with everything.~ EXIT
++ ~Yikes. Well, I think I've hit my limit on seeing ugly people for the day. See ya.~ EXIT
END

IF ~~ THEN
BEGIN 9
      SAY ~Yes.~
    ++ ~So what are you then?~ GOTO 15
    +~InParty("Khalid") InParty("Jaheira")~+ ~So does that make you some kind of demon child?~ GOTO 10
    +~!InParty("Khalid") InParty("Jaheira")~+ ~So does that make you some kind of demon child?~ GOTO 11
    +~InParty("Khalid") !InParty("Jaheira")~+ ~So does that make you some kind of demon child?~ GOTO 12
    +~!InParty("Khalid") !InParty("Jaheira")~+ ~So does that make you some kind of demon child?~ GOTO 13
    ++ ~That's unfortunate. Well, I think I'll be going now. Best of luck with everything.~ EXIT
++ ~Yikes. Well, I think I've hit my limit on seeing ugly people for the day. See ya.~ EXIT
END

IF ~~ THEN
BEGIN 10
      SAY ~Heh, I had not thought the ward of Gorion had such a spirited mind.~ IF ~~ THEN GOTO 14
     END

IF ~~ THEN
BEGIN 11
      SAY ~Heh, I had not thought the ward of Gorion had such a spirited mind.~ IF ~~ THEN GOTO 15
     END

    IF ~~ THEN
BEGIN 12
      SAY ~Heh, I had not thought the ward of Gorion had such a spirited mind.~ IF ~~ THEN GOTO 16
     END

 IF ~~ THEN
BEGIN 13
      SAY ~Heh, I had not thought the ward of Gorion had such a spirited mind.~ IF ~~ THEN GOTO 17
     END



IF ~~ THEN BEGIN 14
SAY ~Does my knowledge of who you are surprise you? Did you think I did not know what you are bhaalspawn? Does no one in your group recognize the pin of one of Those Who Harps?~
    ++ ~So what are you then?~ GOTO 22
    ++ ~I doubt they expected one of your own in a place like this. How do you even know who I am?~ GOTO 18
END

IF ~~ THEN
BEGIN 15
      SAY ~Does my knowledge of who you are surprise you? Did you think I did not know what you are bhaalspawn? Does neither you nor Jaheira not recognize the pin of one of Those Who Harps?~
    ++ ~So what are you then?~ GOTO 22
    ++ ~I doubt she expected one of your own in a place like this. How do you even know who I am?~ GOTO 18
END


IF ~~ THEN
BEGIN 16
      SAY ~Does my knowledge of who you are surprise you? Did you think I did not know what you are bhaalspawn? Does neither you nor Khalid recognize the pin of one of Those Who Harps?~
    ++ ~So what are you then?~ GOTO 22
    ++ ~I doubt he expected one of your own in a place like this. How do you even know who I am?~ GOTO 18
END


IF ~~ THEN
BEGIN 17
      SAY ~Does my knowledge of who you are surprise you? Did you think I did not know what you are bhaalspawn? Do you not recognize the pin of one of Those Who Harps?~
    ++ ~So what are you then?~ GOTO 22
    ++ ~I can't say I expected one of your own in a place like this. How do you even know who I am?~ GOTO 18
END

IF ~~ THEN BEGIN 18
SAY ~The Harpers are well versed in the affairs of the Bhaalspawn. Especially the former ward of Gorion.~
++ ~Then what are you doing here?~ GOTO 20
END


IF ~~ THEN BEGIN 19
SAY ~This is not a topic I wish to discuss further.~
+~CheckStatGT(Player1,12,INT)~+ ~I recognize your pin. You are one of the Harpers are you not? What are you doing here?~ GOTO 20
++ ~Very well. I think I'll be on my way.~ EXIT
END

IF ~~ THEN BEGIN 20
SAY ~I suppose there is little risk in revealing to you my purpose for being here. Your help may even prove to be useful.~ IF ~~ THEN GOTO 23
END


IF ~~ THEN BEGIN 21
SAY ~Hopefully now the balance will be restored. If what you say is true however I will need to return to the others to report these findings.~
++ ~Very well then.~ DO ~SetGlobal("k9atadHelped","GLOBAL",1) AddJournalEntry(@434343334, QUEST_DONE) AddexperienceParty(500)  EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 22
SAY ~This is not a topic I wish to discuss further.~
++ ~Fine then. What are you doing here?~ GOTO 20
++ ~Very well. I think I'll be on my way.~ EXIT
END

IF ~~ THEN BEGIN 23
SAY ~I am here because the Harpers have grown concerned about the catastrophy facing this village. I was tasked to access the situation to see who was responsible.~
+~Global("k9serpentsolved","GLOBAL",3) PartyHasItem("k9Scrl2I") ~+ ~I found enough evidence to convince the mayor that Shaja was responsible. Apparently this was the work of Aurilites.~ GOTO 21
++ ~Very well. I think I'll be on my way.~ EXIT
END


IF ~NumTimesTalkedToGT(0)~ THEN
BEGIN 24
      SAY ~Here to speak to me again I see. Why have you returned?~
    +~Global("k9snakefreedom","GLOBAL",2) PartyHasItem("k9bookyu")~+ ~I found this book while searching the Yuan-Ti ruins underneath the town. Don't suppose you know what it says.~ GOTO 4
    ++ ~I wanted to know who are you?~ GOTO 5
    ++ ~I'm looking for information about what has happened around here. The mayor sent for us.~ GOTO 1
    ++ ~Just wandered bye. I'm here just seeing the sights.~ GOTO 2
END

IF ~~ THEN BEGIN 25
SAY ~Indeed they are not. But the dragon lairs around the village offer enough treasure to last a lifetime. Heh...not that any of the fools ever survive long enough to see it.~
    ++ ~Not to change the topic, but why are you all the way out here on the outskirts of town?~ GOTO 6
    ++ ~That's all I really wanted to ask you. Farewell.~ EXIT
END

