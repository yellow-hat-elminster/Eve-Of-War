

IF ~  NumTimesTalkedTo(0) Global("smugglermove","GLOBAL",0) ~ THEN BEGIN 0
  SAY ~Hey there, travelers, y'all seem rather road worn. Perhaps there's a reason for that, eh? Well, I shan't come across as rude: My name's Tomlin, and I'm the owner of a small trading coster that operates out of Beregost. Who do you happen ta be?~
  IF ~~ THEN REPLY ~We're just travelers, on our way south.~ GOTO 2
  IF ~~ THEN REPLY ~It's none of your concern.~ GOTO 3
END

IF ~  True()  ~ THEN BEGIN 1
  SAY ~Hey again, travelers. Need to cross the river?~
  IF ~~ THEN REPLY ~We don't need any of your help.~ GOTO 4
  IF ~~ THEN REPLY ~How can you help us?~ GOTO 5
  IF ~~ THEN REPLY ~How did wanted posters of us get around so fast?~ GOTO 6
END


IF ~~ THEN BEGIN 2
  SAY ~Ha ha, I think there's more to you than that. I recognize you from all the wanted posters that have been put up. I think if you guys want to get out of the big city, you're going to need some help. Lucky for you, I can give you that help, for a price.~
  IF ~~ THEN REPLY ~We don't need any of your help.~ GOTO 4
  IF ~~ THEN REPLY ~How can you help us?~ GOTO 5
  IF ~~ THEN REPLY ~How did wanted posters of us get around so fast?~ GOTO 6
END

IF ~~ THEN BEGIN 3
  SAY ~Ya needn't be so rude.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY ~Very well friend. I'll be here if you change your mind.~
  IF ~~ THEN EXIT   JOURNAL #27437
END


IF ~~ THEN BEGIN 5
  SAY  ~I'm a smuggler. I smuggle illicit goods from Amn into Baldur's Gate. If you pay me 100 gold, I'll smuggle the lot of you across the bridge.~
  IF ~~ THEN REPLY ~We can find our own way into the city.~  GOTO 4
  IF ~  PartyGoldGT(99)
~ THEN REPLY ~100 gold, we can afford that.~ GOTO 7
END

IF ~~ THEN BEGIN 6
  SAY ~How should I know? Do you want my help or not?~
  IF ~~ THEN REPLY ~No! We don't need your help.~  GOTO 4
  IF ~~ THEN REPLY ~Okay, how are you going to help us get into Baldur's Gate.~  GOTO 5
END



IF ~~ THEN BEGIN 7
  SAY ~What you can do then, is to be very quiet. I've got some goods going out to Athkatla in a bit. Should have enough room for you and whoever else you've brought with you.~
  IF ~~ THEN DO ~TakePartyGold(100)
SetGlobal("SmugglerMove","GLOBAL",0) SetGlobal("k9SmugglerMove","GLOBAL",1)
~ JOURNAL #27437 EXIT
END



IF WEIGHT #1
~  Global("SmugglerMove","GLOBAL",2)
~ THEN BEGIN 8
  SAY ~That wasn't too hard, now, was it? Guess there wasn't the large guard contingent that I thought there would be. The guards probably looking for you out in the streets. Well, I wish you all the gods' luck. You're going to need it. Bye now.~
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 9
  SAY ~Well... I've been hearing all kinda things about what's been going on in the city. The commander of the Flaming Fist, Duke Eltan, went and got sick. His second-in-command got a wee bit worse luck and got himself killed. There's some fella named Sarevok who's been causin' quite the stir among the upper crust.~
  IF ~~ THEN JOURNAL #7166  EXIT
END

















IF ~  NumTimesTalkedTo(0) Global("k9smugglemove","GLOBAL",0) ~ THEN BEGIN 0
  SAY ~Hey, travelers, y'all seem to be in a bit of a hurry. Perhaps there's a reason for that, eh?~
  IF ~~ THEN REPLY ~We're just travelers, on our way south.~ GOTO 2
  IF ~~ THEN REPLY ~It's none of your concern.~ GOTO 3
END

IF ~  True()  ~ THEN BEGIN 1
  SAY ~Hey again, travelers. Need to cross the river?~
  IF ~~ THEN REPLY ~We don't need any of your help.~ GOTO 4
  IF ~~ THEN REPLY ~How can you help us?~ GOTO 5
  IF ~~ THEN REPLY ~How did wanted posters of us get around so fast?~ GOTO 6
END


IF ~~ THEN BEGIN 2
  SAY ~Ha ha, I think there's more to you than that. I recognize you from all the wanted posters that have been put up. I think if you guys want to get out of the big city, you're going to need some help. Lucky for you, I can give you that help, for a price.~
  IF ~~ THEN REPLY ~We don't need any of your help.~ GOTO 4
  IF ~~ THEN REPLY ~How can you help us?~ GOTO 5
  IF ~~ THEN REPLY ~How did wanted posters of us get around so fast?~ GOTO 6
END

IF ~~ THEN BEGIN 3
  SAY ~Ya needn't be so rude.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY ~Very well friend. I'll be here if you change your mind.~
  IF ~~ THEN EXIT   JOURNAL #27437
END


IF ~~ THEN BEGIN 5
  SAY  ~I'm a smuggler. I smuggle illicit goods from Amn into Baldur's Gate. If you pay me 100 gold, I'll smuggle the lot of you across the bridge.~
  IF ~~ THEN REPLY ~We can find our own way into the city.~  GOTO 3
  IF ~  PartyGoldGT(99)
~ THEN REPLY ~100 gold, we can afford that.~ GOTO 7
END

IF ~~ THEN BEGIN 6
  SAY ~How should I know? Do you want my help or not?~
  IF ~~ THEN REPLY ~No! We don't need your help.~  GOTO 4
  IF ~~ THEN REPLY ~Okay, how are you going to help us get into Baldur's Gate.~  GOTO 5
END



IF ~~ THEN BEGIN 7
  SAY ~What you can do then, is to be very quiet. I've got some goods going out to Athkatla in a bit. Should have enough room for you and whoever else you've brought with you.~
  IF ~~ THEN DO ~TakePartyGold(100)
SetGlobal("SmugglerMove","GLOBAL",0) SetGlobal("k9SmugglerMove","GLOBAL",1)
~ JOURNAL #27437 EXIT
END



IF WEIGHT #1
~  Global("k9SmugglerMove","GLOBAL",2)
~ THEN BEGIN 7
  SAY ~That wasn't too hard, now, was it? Guess there wasn't the large guard contingent that I thought there would be. Well, I wish you all the gods' luck out there. You're going to need it. Bye now.~
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 8
  SAY ~Well... I've been hearing all kinda things about what's been going on in the city. The commander of the Flaming Fist, Duke Eltan, went and got sick. His second-in-command got a wee bit worse luck and got himself killed. There's some fella named Sarevok who's been causin' quite the stir among the upper crust.~
  IF ~~ THEN JOURNAL #7166  EXIT
END
