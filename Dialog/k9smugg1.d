IF WEIGHT #1
~  NumberOfTimesTalkedTo(0)
~ THEN BEGIN 0
  SAY ~Hey there, travelers, y'all seem rather road worn. Perhaps there's a reason for that, eh? Well, I shan't come across as rude: My name's Tomlin, and I'm the owner of a small trading coster that operates out of Beregost. Who do you happen ta be?~
  IF ~~ THEN REPLY ~We're just travelers, on our way to Baldur's Gate.~ GOTO 2
  IF ~~ THEN REPLY ~We're adventurers, fighting against the depravity of the Iron Throne.~ GOTO 3
  IF ~~ THEN REPLY ~It's none of your concern.~ GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY ~Ya needn't be so rude.~
  IF ~~ THEN EXIT
~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY ~Ha ha, I think there's more to you than that. I recognize you from all the wanted posters that have been put up. I think if you guys want to get into the big city, you're going to need some help. Lucky for you, I can give you that help, for a price.~
  IF ~~ THEN REPLY ~We don't need any of your help.~ GOTO 4
  IF ~~ THEN REPLY ~How can you help us?~ GOTO 8
  IF ~~ THEN REPLY ~How did wanted posters of us get around so fast?~ GOTO 7
END

IF ~~ THEN BEGIN 3 // from: 0.1
  SAY ~So you are the guys who've been stirring up all the trouble in the region. There's wanted posters out for you all over. So where are you guys headed now?~
  IF ~~ THEN REPLY ~None of your business, we'll be on our way now.~  UNSOLVED_JOURNAL #27137  ~Duke Eltan's Illness
A smuggler we charmed told us that Duke Eltan is sick with some sort of disease and that his second-in-command, Scar, is dead.~  GOTO 4
  IF ~~ THEN REPLY ~We're headed to Baldur's Gate.  GOTO 6
  IF ~~ THEN REPLY ~We're headed to Amn.~  GOTO 5
  IF ~~ THEN REPLY ~How did wanted posters get put up so fast?~  GOTO 7
END

IF ~~ THEN BEGIN 4
  SAY ~If that's the way you want to be, I guess I'll be on my way. Just a bit of warning though. I recognize you well. There's wanted posters out for you throughout the city.~
  IF ~~ THEN JOURNAL #27437 EXIT
END

IF ~~ THEN BEGIN 5
  SAY ~It's too bad we're going opposite directions. I guess I should be going now.~
  IF ~~ THEN JOURNAL #27437  EXIT
END

IF ~~ THEN BEGIN 6
  SAY ~You'll never make it into Baldur's Gate without some help. You're wanted men now, and as such I can offer up my services to help you into the big city. It'll cost you, but will definitely be worth it.~
  IF ~~ THEN REPLY ~We don't need your help.~ GOTO 4
  IF ~~ THEN REPLY ~In what way could you help us?~ GOTO 8
END

IF ~~ THEN BEGIN 7
  SAY ~How should I know? Do you want my help or not?~
  IF ~~ THEN REPLY ~No! We don't need your help.~  GOTO 4
  IF ~~ THEN REPLY ~Okay, how are you going to help us get into Baldur's Gate.~  GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY ~I'm a smuggler. I smuggle illicit goods from Amn into Baldur's Gate. If you pay me 100 gold, I'll smuggle the lot of you into the big city.~
  IF ~~ THEN REPLY ~We can find our own way into the city.~  GOTO 4
  IF ~  PartyGoldGT(99)
~ THEN REPLY #1725 ~100 gold, we can afford that.~ GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY ~What you can do then, is to follow me into town. I will take care of you, and you won't have any problems at all. I hope you don't have any difficulties with my instructions.~
  IF ~~ THEN DO ~TakePartyGold(100)
SetGlobal("SmugglerMove","GLOBAL",1) SetGlobal("k9SmugglerMove","GLOBAL",0)
MoveToPoint([4371.3412])
~ JOURNAL #27437 EXIT
END

IF ~~ THEN BEGIN 10
  SAY ~Aren't you coming. It doesn't bother me a bit, you've already paid, after all.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2
~  Global("SmugglerMove","GLOBAL",1)
~ THEN BEGIN 11
  SAY ~That wasn't too hard, now, was it? Guess there wasn't the large guard contingent that I thought there would be. Well, I wish you all the gods' luck in the city. You're going to need it. Bye now.~
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 12
  SAY ~Well... I've been hearing all kinda things about what's been going on in the city. The commander of the Flaming Fist, Duke Eltan, went and got sick. His second-in-command got a wee bit worse luck and got himself killed. There's some fella named Sarevok who's been causin' quite the stir among the upper crust.~
  IF ~~ THEN JOURNAL #7166  EXIT
END

IF ~~ THEN BEGIN 13
  SAY ~You've made no friends here! Move along!~
  IF ~~ THEN EXIT
END
