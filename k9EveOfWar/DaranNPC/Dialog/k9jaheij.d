APPEND bdjaheij

IF ~Global("k9jaheirdaran","GLOBAL",2)~ THEN
BEGIN 108
	SAY ~I have met many dwarves in my time, yet none have mentioned the "vermin slayers." What am I to make of this?~ IF ~~ THEN DO ~SetGlobal("k9jaheirdaran","GLOBAL",3)~ EXTERN ~k9daranj~ 11
END

 IF ~~ THEN
BEGIN 109
	SAY ~Indeed. Human and dwarf culture seem to both dislike the natural world. Much of it seems to be thought as little more than a nuisance.~ IF ~~ EXIT
END
END