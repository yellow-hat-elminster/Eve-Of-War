BEGIN k9minebd


IF ~True()~ THEN
BEGIN 0
      SAY ~Well look who it is boys and girls, it's <CHARNAME>. Fresh from killing the brothers and sisters of the Talon. Even found the time to run <HISHER> *own* mine. I say we teach the ass a lesson.~
    ++ ~Woah what's this about? Surely we can come to some kind of an arrangement here.~ GOTO 1
    ++ ~In my defence, your colleagues were pretty ugly.~ GOTO 2
    ++ ~You might want to rethink this plan of yours. I've killed far better equipped bandits than you.~ GOTO 3
    ++ ~Draw your weapons!~ GOTO 4
    ++ ~I'm going to enjoy gutting you.~ GOTO 4
END

IF ~~ THEN
BEGIN 1
      SAY ~Fine, you give us ownership of the mine and we'll look past what ya done before.~
    ++ ~I guess I don't have much of a choice. Fine, the mine is yours.~ GOTO 5
    ++ ~I'm sick and tired of every god damned bandit, war dog, skeleton, and hobgoblin along the Coast Way harassing me on every one of my god damn trips. It's enough to drive a <MANWOMAN> mad! Get out of my way. There isn't any way in hell I'm handing that mine over to some shat-faced virgin.~ GOTO 6
    ++ ~I'm going to enjoy gutting you.~ GOTO 4
END


IF ~~ THEN
BEGIN 2
      SAY ~Ha! Look at the tongue on this one. It'll make a fine souvenir.~ IF ~~ THEN DO ~Shout(99) Enemy()~ EXIT
END


IF ~~ THEN
BEGIN 3
      SAY ~Ha! I'll enjoy spilling your guts.~ IF ~~ THEN DO ~ Shout(99) Enemy()~ EXIT
END

IF ~~ THEN
BEGIN 4
      SAY ~I'd love to see you try.~ IF ~~ THEN DO ~  Shout(99) Enemy()~ EXIT
END

IF ~~ THEN
BEGIN 5
      SAY ~Guess we've got ourselves a new mine boys and girls. Let's head on out.~ IF ~~ THEN DO ~SetGlobal("k9MineOwned","GLOBAL",3) EscapeArea()~ EXIT
END

IF ~~ THEN
BEGIN 6
      SAY ~Looks like we've got a lively one here. Bit of a tongue too. That'll make a fine souvenir.~ IF ~~ THEN DO ~  Shout(99) Enemy()~ EXIT
END
