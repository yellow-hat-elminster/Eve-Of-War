ADD_TRANS_ACTION DELTAN BEGIN 0 END  BEGIN 0 1 2 END
~SetGlobal("k9knowsEltan","GLOBAL",1)~

REPLACE_TRANS_ACTION DELTAN BEGIN 3 END BEGIN 0 END ~DialogueInterrupt(FALSE)~ ~SetGlobal("k9eltanrejected","GLOBAL",1)~

REPLACE_TRANS_ACTION DELTAN BEGIN 3 END BEGIN 0 END ~ActionOverride(Player1,MakeUnselectable(999))~ ~~

REPLACE_TRANS_ACTION DELTAN BEGIN 3 END BEGIN 0 END ~ActionOverride(Player2,MakeUnselectable(999))~ ~~

REPLACE_TRANS_ACTION DELTAN BEGIN 3 END BEGIN 0 END ~ActionOverride(Player3,MakeUnselectable(999))~ ~~

 REPLACE_TRANS_ACTION DELTAN BEGIN 3 END BEGIN 0 END ~ActionOverride(Player4,MakeUnselectable(999))~ ~~
 REPLACE_TRANS_ACTION DELTAN BEGIN 3 END BEGIN 0 END ~ActionOverride(Player5,MakeUnselectable(999))~ ~~
 REPLACE_TRANS_ACTION DELTAN BEGIN 3 END BEGIN 0 END ~ActionOverride(Player6,MakeUnselectable(999))~ ~~
 REPLACE_TRANS_ACTION DELTAN BEGIN 3 END BEGIN 0 END ~MoveToObject(Player1)~ ~~
 REPLACE_TRANS_ACTION DELTAN BEGIN 3 END BEGIN 0 END ~SetSequence(SEQ_ATTACK_SLASH)~ ~~
 REPLACE_TRANS_ACTION DELTAN BEGIN 3 END BEGIN 0 END ~SmallWait(6)~ ~~
 REPLACE_TRANS_ACTION DELTAN BEGIN 3 END BEGIN 0 END ~Kill(Player1)~ ~~




ALTER_TRANS DELTAN BEGIN 3 END BEGIN 0 END BEGIN "EPILOGUE"  ~GOTO 17~ END

APPEND DELTAN


IF WEIGHT #-99 ~~ THEN BEGIN 17
SAY ~Hmm...a less forgiving man would have killed you for that. Don't return here unless you have something useful to tell me.~ IF ~~ THEN EXIT

END

END






ADD_STATE_TRIGGER DELTAN2 0 ~Global("k9skip","GLOBAL",0) ~

ADD_STATE_TRIGGER DELTAN2 2 ~Global("k9skip","GLOBAL",0) Dead("Rashad")~


APPEND DELTAN2


IF ~~ THEN BEGIN 3
SAY ~*Cough*, Guards hold a moment. I can personally attest to the character of <CHARNAME> and their group. If it weren't for their recent actions I might not have been alive long enough to tell you this. Someone in the city has conspired to work against the Grand Dukes, that much is clear, but I am not convinced that <CHARNAME> is responsible.~ IF ~~ THEN EXTERN ~SAREVO~ 27

END


IF ~~ THEN BEGIN 4
SAY ~This city is ancient and it contains many secret passageways and corridors. If Sarevok is attempting to leave the city he likely plans to take advantage of them. There is only one group I know of in this city that knows more about the hidden corners of the city than anyone. Seek out the city's Thieves' Guild.~ IF ~~ THEN DO ~SetGlobal("DukeThanks","GLOBAL",1) AddJournalEntry(@66040,QUEST)~ EXIT

END

IF WEIGHT #-99 ~Global("k9skip","GLOBAL",1)~ THEN BEGIN 5
SAY ~This city truly is in your debt for your help in uncovering Sarevok. When I am recovered we shall speak again.~ IF ~~ THEN DO ~SetGlobal("k9SoDEltan","GLOBAL",1)~ EXIT

END

IF WEIGHT #-98 ~Global("k9thiefhelps","GLOBAL",4) AreaCheck("AR0608")~ BEGIN 6
SAY #16991
++ ~Actually I'm here to kill you.~ DO ~GiveItemCreate("SCRL2R",LastTalkedToBy,0,0,0) Enemy()~ EXIT
++ ~You misunderstand, I'm not here to rescue you. Alatos wants you dead.~ DO ~SetGlobal("k9alatosnamed","GLOBAL",1) GiveItemCreate("SCRL2R",LastTalkedToBy,0,0,0) Enemy()~ EXIT
++ ~Then to the Harbor Master we will go.~ DO ~GiveItemCreate("MISC55",LastTalkedToBy,0,0,0)     SetGlobal("k9thiefhelps","GLOBAL",99)
GiveItemCreate("SCRL2R",LastTalkedToBy,0,0,0)
AddJournalEntry(26959,QUEST) DestroySelf()~  EXIT
END

END

ADD_TRANS_ACTION DELTAN2 BEGIN 1  END BEGIN  0 END ~SetGlobal("k9Belt","GLOBAL",1)~