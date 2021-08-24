

EXTEND_BOTTOM Shop05 0
  +~Global("k9MineOwned", "GLOBAL", 1)  RandomNum(6,1)~+ ~I hear you are the one that recieves my ore. Well, where's my money?~  GOTO k91
  +~Global("k9MineOwned", "GLOBAL", 1)  RandomNum(6,2)~+ ~I hear you are the one that recieves my ore. Well, where's my money?~  GOTO k92
  +~Global("k9MineOwned", "GLOBAL", 1)  RandomNum(6,3)~+ ~I hear you are the one that recieves my ore. Well, where's my money?~  GOTO k93
  +~Global("k9MineOwned", "GLOBAL", 1)  RandomNum(6,4)~+ ~I hear you are the one that recieves my ore. Well, where's my money?~  GOTO k94
  +~Global("k9MineOwned", "GLOBAL", 1)  RandomNum(6,5)~+ ~I hear you are the one that recieves my ore. Well, where's my money?~  GOTO k95
  +~Global("k9MineOwned", "GLOBAL", 1)  RandomNum(6,6)~+ ~I hear you are the one that recieves my ore. Well, where's my money?~  GOTO k96
  +~Global("k9MineOwned", "GLOBAL", 2)  RandomNum(6,1) GlobalTimerExpired("k9_ore_timer","global")~+ ~Its been three days. Where's my money?~  GOTO k97
  +~Global("k9MineOwned", "GLOBAL", 2)  RandomNum(6,2) GlobalTimerExpired("k9_ore_timer","global")~+ ~Its been three days. Where's my money?~  GOTO k98
  +~Global("k9MineOwned", "GLOBAL", 2)  RandomNum(6,3) GlobalTimerExpired("k9_ore_timer","global")~+ ~Its been three days. Where's my money?~  GOTO k99
  +~Global("k9MineOwned", "GLOBAL", 2)  RandomNum(6,4) GlobalTimerExpired("k9_ore_timer","global")~+ ~Its been three days. Where's my money?~  GOTO k910
  +~Global("k9MineOwned", "GLOBAL", 2)  RandomNum(6,5) GlobalTimerExpired("k9_ore_timer","global")~+ ~Its been three days. Where's my money?~  GOTO k911
  +~Global("k9MineOwned", "GLOBAL", 2)  RandomNum(6,6) GlobalTimerExpired("k9_ore_timer","global")~+ ~Its been three days. Where's my money?~  GOTO k912
END




APPEND Shop05

 IF ~~ THEN BEGIN k91
  SAY ~Ohh yes I've been expecting you. Production was rather low I'm afraid, probably due to your rampaging through the mines. Well, heres hoping things clear up shortly. Anyways, here is your gold.~
  
  IF ~~ THEN DO ~SetGlobal("k9MineOwned", "GLOBAL", 2) GiveGoldForce(150) SetGlobalTimer("k9_ore_timer","global",THREE_DAYS)~ EXIT

END




 IF ~~ THEN BEGIN k92
  SAY ~Ohh yes I've been expecting you. Production was rather low I'm afraid, probably due to your rampaging through the mines. Well, heres hoping things clear up shortly. Anyways, here is your gold.~
  
  IF ~~ THEN DO ~SetGlobal("k9MineOwned", "GLOBAL", 2) GiveGoldForce(200) SetGlobalTimer("k9_ore_timer","global",THREE_DAYS)~ EXIT

END


 IF ~~ THEN BEGIN k93
  SAY ~Ohh yes I've been expecting you. The convoy was rather light I'm afraid. I hope to see better results as things settle down. Here is your gold.~
  
  IF ~~ THEN DO ~SetGlobal("k9MineOwned", "GLOBAL", 2) GiveGoldForce(500) SetGlobalTimer("k9_ore_timer","global",THREE_DAYS)~ EXIT

END

 IF ~~ THEN BEGIN k94
  SAY ~Ohh yes I've been expecting you. The convoy was rather light I'm afraid. I hope to see better results as things settle down. Here is your gold.~

  IF ~~ THEN DO ~SetGlobal("k9MineOwned", "GLOBAL", 2) GiveGoldForce(600) SetGlobalTimer("k9_ore_timer","global",THREE_DAYS)~ EXIT

END


 IF ~~ THEN BEGIN k95
  SAY ~Ohh yes I've been expecting you. The mine's production this week was adequate. Hopefully with Davaeorn out of the way things will improve. Still has a ways to go before things get back to normal. Anyways, if they can keep this up I look forward to working with you. Here is your gold.~
  
  IF ~~ THEN DO ~SetGlobal("k9MineOwned", "GLOBAL", 2) GiveGoldForce(600) SetGlobalTimer("k9_ore_timer","global",THREE_DAYS)~ EXIT

END

 IF ~~ THEN BEGIN k96
  SAY ~Ohh yes I've been expecting you. The mine's production this week was adequate. Hopefully with Davaeorn out of the way things will improve. Still has a ways to go before things get back to normal. Anyways, if they can keep this up I look forward to working with you. Here is your gold.~
  
  IF ~~ THEN DO ~SetGlobal("k9MineOwned", "GLOBAL", 2) GiveGoldForce(600) SetGlobalTimer("k9_ore_timer","global",THREE_DAYS)~ EXIT

END



 IF ~~ THEN BEGIN k97
  SAY ~Ohh yes you. Your money is right here. Production in the last few days was rather low I'm afraid. Well, heres hoping things clear up shortly. Anyways, here is your gold.~
  
  IF ~~ THEN DO ~ GiveGoldForce(450) SetGlobalTimer("k9_ore_timer","global",THREE_DAYS)~ EXIT

END




 IF ~~ THEN BEGIN k98
  SAY ~Ohh yes you. Your money is right here. Production in the last few days was rather low I'm afraid. Well, heres hoping things clear up shortly. Anyways, here is your gold.~
  
  IF ~~ THEN DO ~ GiveGoldForce(500) SetGlobalTimer("k9_ore_timer","global",THREE_DAYS)~ EXIT

END


 IF ~~ THEN BEGIN k99
  SAY ~Ohh yes you. Your money is right here. The ore volumes these last few days were adequate. Here is your gold.~
  
  IF ~~ THEN DO ~ GiveGoldForce(1000) SetGlobalTimer("k9_ore_timer","global",THREE_DAYS)~ EXIT

END

 IF ~~ THEN BEGIN k910
  SAY ~Ohh yes you. Your money is right here. The ore volumes these last few days were adequate. Here is your gold.~
  
  IF ~~ THEN DO ~ GiveGoldForce(1200) SetGlobalTimer("k9_ore_timer","global",THREE_DAYS)~ EXIT

END


 IF ~~ THEN BEGIN k911
  SAY ~Ohh yes you. Your money is right here. If only you had killed Davaeorn sooner. The mine has been very productive these last few days. Anyways, if they can keep this up I look forward to continuing to work with you. Here is your gold.~
  
  IF ~~ THEN DO ~ GiveGoldForce(1500) SetGlobalTimer("k9_ore_timer","global",THREE_DAYS)~ EXIT

END

 IF ~~ THEN BEGIN k912
  SAY ~Ohh yes you. Your money is right here. If only you had killed Davaeorn sooner. The mine has been extremely productive these last few days. Anyways, if they can keep this up I look forward to continuing to work with you. Here is your gold.~
  
  IF ~~ THEN DO ~ GiveGoldForce(1800) SetGlobalTimer("k9_ore_timer","global",THREE_DAYS)~ EXIT

END










END






