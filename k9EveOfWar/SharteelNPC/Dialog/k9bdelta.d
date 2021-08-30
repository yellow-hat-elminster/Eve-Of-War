
EXTEND_BOTTOM bdeltan 10
  ++ ~Could be better. I was wondering though about how well the Flaming Fist is handling the aftermath of the rise of Angelo and Sarevok? ~ GOTO k90
  +~Global("k9eltanSharteelDiscovery","GLOBAL",1)~+ ~Do you have any of Sarevok's collaborators in custody?~ GOTO k92
END


APPEND bdeltan

IF  ~~ THEN BEGIN k90
SAY ~About as well as can be expected. Securing the confidence of the city's noble class has proven to be the most difficult. The infiltration of the coronation ceremony by the dopplegangers has caused many of them to doubt the legitimacy of the leadership of the city.~ IF ~~ THEN DO ~SetGlobal("k9eltanSharteelDiscovery","GLOBAL",1)~ GOTO k91
END

IF ~~ THEN BEGIN k91
SAY ~To make matters worse, a number of our forces were found to have accepted the bribes of Angelo. The worst offenders were removed from their posts of course, but the problem was widespread.~ 
++ ~Do you have any of the collaborators in custody?~ GOTO k92
++ ~I think that answers my questions. Farewell.~ EXIT
END

IF ~~ THEN BEGIN k92
SAY ~Hmm... not at such no. With the refugee situation the city simply lacks the manpower to throw them all in jail. 

We did however capture the daughter of Angelo. I believe her name is Shar-Teel. So far she has resisted our efforts to learn more about the influence of her father on our ranks.~ IF ~~ THEN GOTO k93
END

IF ~~ THEN BEGIN k93
SAY ~If you wish to know more about her you will find her in the Flaming Fist headquarters. I believe she is being held currently in the eastern section of the building.~ IF ~~ THEN DO ~SetGlobal("k9eltanSharteelDiscovery","GLOBAL",2) AddJournalEntry(@665565,QUEST)~ EXIT
END

IF WEIGHT #-99 ~InParty("Sharteel") Global("k9Sharteel_Talk_ELTAN","GLOBAL",0)~ THEN BEGIN k94
SAY ~I'll admit <CHARNAME>, I did not expect you to bring a known criminal before me. Why have you released Shar-Teel from her cell?~
++ ~You want me to help defeat Caelar? Then learn to stop asking so many questions.~ GOTO k97
++ ~It seemed the best way to go about getting answers.~ GOTO k95
++ ~Frankly the Fist had no right to keep her there.~ GOTO k96
++ ~I believed she could be of use to me.~ GOTO k97
++ ~My reasons are none of your concern.~ GOTO k97
END

IF ~~ THEN BEGIN k95
SAY ~A bit more of a direct approach than I would have preferred.~ IF ~~ THEN GOTO k98
END

IF ~~ THEN BEGIN k96
SAY ~That is not in your power to decide.~ IF ~~ THEN GOTO k98
END

IF ~~ THEN BEGIN k97
SAY ~There was a time when I would have struck you down for such insolence. Do not test my patience further <CHARNAME>.~ IF ~~ THEN GOTO k98
END

 IF ~~ THEN BEGIN k98
SAY ~Now that she is here however I have some questions of her.~ IF ~~ THEN GOTO k99
END

IF ~~ THEN BEGIN k99
SAY ~Tell us Shar-Teel, what do you know of your father's plans? Why did he side with Sarevok?~ IF ~~ THEN EXTERN bdshartj 1
END

IF ~~ THEN BEGIN k9100
SAY ~Lord knows how many of these unsavory types you have found useful for your cause. Just promise me that you will be mindful of the lies this fiend would feed you. If you wish to take her on your journey I will not stop you. Just do not make the mistake of trusting her.~ IF ~~ THEN DO ~SetGlobal("k9Sharteel_Talk_ELTAN","GLOBAL",1)~ EXIT
END

END










