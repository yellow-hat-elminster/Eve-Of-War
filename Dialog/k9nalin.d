EXTEND_BOTTOM NALIN 0
  IF ~NumTimesTalkedToGT(0) Global("k9auriltalknalin","GLOBAL",0)~ THEN  GOTO k97
END

APPEND NALIN

IF ~~ THEN BEGIN k96
SAY ~The frost worshiper? She is known to many in town as a priestess of Auril - perhaps one of the more vengeful gods in the realms. If only for that reason alone I would advise caution when dealing with that one.~ IF ~~ THEN DO ~SetGlobal("k9auriltalknalin","GLOBAL",1)~ GOTO k97
END

IF ~~ THEN BEGIN k97
SAY ~Can the Vigilant One be of service to you today?~
 ++ ~Looks like you aren't the only priest in town. What can you tell me of Jasha Istor?~ GOTO k96
++ ~What kind of services do you provide?~ DO ~StartStore("Tem4802",LastTalkedToBy(Myself))~ EXIT
++ ~I need nothing at the moment.~ EXIT
END


END