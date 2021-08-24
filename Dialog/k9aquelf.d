BEGIN k9aquelf


IF ~True()~ THEN
BEGIN k9Aquatalk
      SAY ~Ohh...hello surfacer. Where is Thalantyr? I was expecting him here.~
		+~CheckStatGT(Player1Fill,13,INT)~+ ~Alu'Tel'Quessir, you are far from the ocean. What brings you to these parts?~
 			GOTO k9IntElf
		+~CheckStatLT(Player1Fill,14,INT)~+ ~You look like an elf, yet your skin is so blue. What are you?~
			GOTO k9DumbElf
		+~GlobalGT("Chapter", "GLOBAL", 3)~+ ~Do you know much about this area?~
			GOTO k9ThalantyrElf
		+ ~~ + ~What brings you to this place?~
			GOTO k9place
		++ ~My apologies, I didn't mean to disturb you.~ EXIT
END



IF ~~ THEN
BEGIN k9IntElf
	SAY ~You know of my kind? I offer a trade of knowledge with Thalantyr from time to time. The magic of the Alu'Tel'Quessir is quite foreign to his kind, but he has expressed great interest in learning it. In any case, that is my reason for being here.~ IF ~~ GOTO 6
END

IF ~~ THEN
BEGIN k9DumbElf
	SAY ~I am a Alu'Tel'Quessir, what you might call an Aquatic Elf.~ IF ~~ GOTO 6
END

IF ~~ THEN
BEGIN k9ThalantyrElf
	SAY ~<PRO_RACE>, this area is not my home. Thalantyr can be found to the south-east of here. Perhaps he has the answers you seek.~ IF ~~ GOTO 6
END


IF ~~ THEN
BEGIN k9place
	SAY ~I offer a trade of knowledge with Thalantyr from time to time. The magic of the Alu'Tel'Quessir, what you might call sea elves, is quite foreign to his kind, but he has expressed great interest in learning it. In any case, that is my reason for being here.~ IF ~~ GOTO 6
END

IF ~True()~ THEN
BEGIN 6
      SAY ~Do you know when Thalantyr will arrive?~
		+~CheckStatGT(Player1Fill,13,INT)~+ ~Can you teach me the magic of the Alu'Tel'Quessir?~
 			GOTO 7
		+~CheckStatGT(Player1Fill,13,INT)~+ ~Alu'Tel'Quessir, you are far from the ocean. What brings you to these parts?~
 			GOTO k9IntElf
		+~CheckStatLT(Player1Fill,14,INT)~+ ~You look like an elf, yet your skin is so blue. What are you?~
			GOTO k9DumbElf
		+~GlobalGT("Chapter", "GLOBAL", 3)~+ ~Do you know much about this area?~
			GOTO k9ThalantyrElf
		+ ~~ + ~What brings you to this place?~
			GOTO k9place
		++ ~My apologies, I didn't mean to disturb you.~ EXIT
END

IF ~~ THEN
BEGIN 7
	SAY ~I'm afraid you are far too inexperienced for such things. The Alu'Tel'Quessir spend years studying such matters. Had he not decades of experience in magic I would have never considered such a thing even for Thalantyr.~ IF ~~ GOTO 6
END