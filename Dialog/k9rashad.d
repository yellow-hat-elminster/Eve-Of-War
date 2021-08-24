ADD_TRANS_TRIGGER RASHAD  0 ~!Global("k9thiefhelps","GLOBAL",4)~  1 2

EXTEND_BOTTOM RASHAD 0
  ++ ~I'm afraid we are going to have to insist that you step aside.~  GOTO 55
END


APPEND RASHAD

IF ~~ BEGIN 55
SAY ~Ignorant meat! How dare you barge in here and demand anything of me. GUARDS! Before my guards get here, I should be able to deal with you myself.~ IF ~~ THEN  DO ~ApplySpell(Myself,DOPPLEGANGER_CHANGE_DEFAULT) ~ EXIT
END
END