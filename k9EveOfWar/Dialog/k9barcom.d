BEGIN k9barcom


IF ~ NumTimesTalkedTo(0) Global("k9superdeadtalk","GLOBAL",0)~ THEN

BEGIN deadtalk

SAY ~Given the position of this body and its posture you suspect that this person likely was trying to leave the room when they collapsed.~ IF ~~ THEN DO ~SetGlobal("k9superdeadtalk","GLOBAL",1)~  EXIT

END


IF ~NumTimesTalkedTo(0)  Global("k9superdeadtalk","GLOBAL",1)~ THEN

BEGIN deadtalk2

SAY ~This persons face appears to have turned blue. The look on their face suggests they were in extreme discomfort when they died.~ IF ~~ THEN DO ~SetGlobal("k9superdeadtalk","GLOBAL",2)~  EXIT

END


IF ~ Global("k9superdeadtalk","GLOBAL",2)~ THEN

BEGIN deadtalk3

SAY ~Given what you have seen elsewhere you suspect everyone in this room died from either poisoning or asphyxiation.~ IF ~~ THEN DO ~SetGlobal("k9superdeadtalk","GLOBAL",3)~ EXIT

END
