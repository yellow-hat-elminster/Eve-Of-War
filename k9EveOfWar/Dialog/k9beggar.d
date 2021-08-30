EXTEND_BOTTOM BEGGBA 0

  +~ReputationLT(Player1,4) PartyGoldGT(0)~+ #8513 DO ~TakePartyGold(1)~ GOTO k914
END

ADD_TRANS_TRIGGER BEGGBA 0 ~ReputationGT(Player1,3)~ DO 0

EXTEND_BOTTOM BEGGBA 1

  +~ReputationLT(Player1,4) PartyGoldGT(0)~+ #8513 DO ~TakePartyGold(1)~ GOTO k914
END

ADD_TRANS_TRIGGER BEGGBA 1 ~ReputationGT(Player1,3)~ DO 2




APPEND BEGGBA

IF ~~ THEN BEGIN k914
SAY #8511 IF ~~ THEN DO ~ReputationInc(1)~ EXIT
END

END