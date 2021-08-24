
EXTEND_BOTTOM KEEPER 1
  +~GlobalGT("AttackedCandleKeep","GLOBAL",0)  PartyHasItem("book87") Global("Chapter","GLOBAL",6)~+ ~Yes I have a rare book. In fact it was written by the hand of Balduran himself.~  GOTO k99
END


EXTEND_BOTTOM KEEPER 1
  +~Global("AttackedCandleKeep","GLOBAL",0)  PartyHasItem("book87") Global("Chapter","GLOBAL",6)~+ ~Yes I have a rare book. In fact it was written by the hand of Balduran himself.~  GOTO 4
END

EXTEND_BOTTOM KEEPER 1
  +~GlobalGT("AttackedCandleKeep","GLOBAL",0)  PartyHasItem("book68") Global("Chapter","GLOBAL",6)~+ ~I have the book you require.~  GOTO k99
END

APPEND KEEPER

IF ~~ THEN BEGIN k99
SAY ~Very well. Understand however that the scars you left here run deep. Whatever your business here I suggest you move quickly. Many here wish to see you punished for your transgressions.~    


IF ~~ THEN DO ~ClearAllActions()
StartCutScene("Ch6cut01")
~ EXIT
END

END