BEGIN k9demon

IF ~~ THEN BEGIN 0
SAY ~Hssss....if you insist master.

What does the <PRO_RACE> wish to know?... I was exsssiled from the Abysss. I found myself in Sssigil. Was tricked into coming here.~
++ ~Who tricked you?~ GOTO 11
++ ~The Abyss?~ GOTO 2
END



IF ~~ THEN BEGIN 1
SAY ~The Lady of Pain. The ruler of Sssigil.

To not know of this...where does this one come from Cyric? Is it more prime material vermin?~
++ ~The Abyss?~ GOTO 2
++ ~I've heard enough.~ EXTERN k9cyric1 42
END


IF ~~ THEN BEGIN 2
SAY ~Place of demonsss.~
++ ~The Lady?~ GOTO 1
++ ~I've heard enough.~ EXTERN k9cyric1 42
END


IF ~Global("k9demonTalk","GLOBAL",0)~ THEN BEGIN 3 
SAY ~What do you want <PRO_RACE>?~
++ ~Cyric seems to think one of you is lying to him. That you plan to seek to betray him shortly. You're hardly a member of a race known for their honesty. So, fess up, is it you?~ GOTO 4
++ ~So, what's it like living under the rule of a madman like Cyric?~ GOTO 5
END

IF ~~ THEN BEGIN 4
SAY ~I answer to Cyric, not his petsss...I have no further business with you.~
++ ~Come on, you're a demon. You lie, you kill, you hate. I've heard the stories.~ GOTO 6
++ ~What are you hiding?~ GOTO 6
END


IF ~~ THEN BEGIN 5
SAY ~I have lived far too long to die over such a question. Perhaps another one of the beastlings here will speak more of this to you, but I won't.~ IF ~~ THEN DO ~SetGlobal("k9demonTalk","GLOBAL",1)~ EXIT
END


IF ~~ THEN BEGIN 6
SAY ~Hssss...go away <PRO_RACE>.~ IF ~~ THEN DO ~AddJournalEntry(@66064337,QUEST) SetGlobal("k9demonTalk","GLOBAL",1)~ EXIT
END

IF ~Global("k9demonTalk","GLOBAL",2)~ THEN BEGIN 7
SAY ~What is it <PRO_RACE>?~
++ ~Cyric seemed to think that you know something. If you tell me what it is I'll leave you alone.~ GOTO 8
++ ~I've seen through your lies, fiend.~ GOTO 9
END


IF ~~ THEN BEGIN 8
SAY ~If it will get you out of my sight then fine. The old man...is not what he appears to be.~
++ ~How so?~  GOTO 10
END


IF ~~ THEN BEGIN 9
SAY ~You know nothing, <PRO_RACE>.~ IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN 10
SAY ~I can smell the Art on him...seems to have driven him mad. Also issss strange for a human to have travelled here.~ IF ~~ THEN DO ~SetGlobal("k9demonTalk","GLOBAL",3) AddJournalEntry(@66064334,QUEST)~ EXIT
END


IF ~~ THEN BEGIN 11
SAY ~Could have been by one of the ladysss followers.~
++ ~The Lady?~ GOTO 1
++ ~The Abyss?~ GOTO 2
END








