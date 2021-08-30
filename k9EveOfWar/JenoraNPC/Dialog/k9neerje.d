
APPEND BDNEERAJ
IF WEIGHT #-99 ~Global("k9JenoraNeera","GLOBAL",7)~ THEN BEGIN k90
SAY ~Hey, I was just thinking about something Jenora said. Do you think, maybe, I should stop casting wild magic? Just become...you know...a regular old mage?~
++ ~I think you should be whatever you want to be~ GOTO k91
++ ~I mean I wouldn't have otherwise said anything, but its an idea you should consider.~ GOTO k92
++ ~Sounds good to me.~ GOTO k92
END

IF ~~ THEN BEGIN k91
SAY ~Yea... yea! Sure the magic can be a bit rough at times, but that's half the charm. Thanks for the pep talk!~ IF ~~ THEN DO ~IncrementGlobal("k9JenoraNeera","GLOBAL",1) SetGlobal("k9AgreeNeera","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN k92
SAY ~Sure the magic can be a bit rough at times, but that's half the charm. I may need to think on this a bit more.~ IF ~~ THEN DO ~IncrementGlobal("k9JenoraNeera","GLOBAL",1) SetGlobal("k9OtherNeera","GLOBAL",1)~ EXIT
END

IF WEIGHT #-98 ~Global("k9JenoraNeera","GLOBAL",9) Global("k9AgreeNeera","GLOBAL",1)~ THEN BEGIN k93
SAY ~I've thought about it a bit more and I can't believe how wrong Jenora is about all this. Sure my magic can be a *bit* risky, but life is full of risk. She reminds me too much of Frixis, always so careful and scared to face the world. Anyways, I spent months running from the Cowled Wizards because of who I am, I'm not going to let some farm hand tell me to live otherwise.~ IF ~~ THEN DO ~IncrementGlobal("k9JenoraNeera","GLOBAL",1)~ EXIT
END

IF WEIGHT #-97 ~Global("k9JenoraNeera","GLOBAL",9) Global("k9OtherNeera","GLOBAL",1)~ THEN BEGIN k94
SAY ~I've thought about it a bit more and I can't believe how wrong you and Jenora are about all this. Sure my magic can be a *bit* risky, but life is full of risk. She reminds me too much of Frixis, always so careful and scared to face the world. Anyways, I spent months running from the Cowled Wizards because of who I am, I'm not going to let some farm hand tell me to live otherwise.~ IF ~~ THEN DO ~IncrementGlobal("k9JenoraNeera","GLOBAL",1)~ EXIT
END

END