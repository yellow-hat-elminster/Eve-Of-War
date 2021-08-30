APPEND TAEROM

IF WEIGHT #-55 ~PartyHasItem("cdrem") Global("k9armormade","GLOBAL",0)
~ THEN BEGIN k916
  SAY ~An interesting piece o' material you got there. Remhoraz, if I had to guess. I never seen one personally, but if I remember correctly, they've been known to make a fine helm for folks up in the dales. If you're willing to part with your shell I'll give you 3000 gold for it.~
  IF ~~ THEN REPLY ~I'm not interested in selling it just now, though it would be to you if I do.~ GOTO k917
  IF ~~ THEN REPLY ~Maybe later. Could you instead show us what you have for sale?~ DO ~StartStore("Taerum",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY ~Sure! A pleasure doing business with you.~ DO ~TakePartyItemNum("cdrem",1)
  DestroyItem("cdrem")
GiveGoldForce(3000)~ SOLVED_JOURNAL @130167 EXIT
  IF ~~ THEN REPLY ~Hardly a fair price for the trouble I went through to get it. Double your offer, and consider it done.~ GOTO k918
  IF ~~ THEN REPLY ~Nothing at the moment.~ DO ~AddJournalEntry(@130168,QUEST)~ EXIT
END




IF ~~ THEN BEGIN k917
  SAY ~Hmm...Taerom himself would be interested in this one. We could try to make a helm for ya. Might not be as good as what t' northerners can craft, but it'll be a fine helm all the same. Take a few days though. Won't do it for any less than 7,500 gold either.~
  IF ~CheckStatGT(Player1,16,CHR) ~ THEN REPLY ~Though your offer is generous, it is more than I can afford right now.~ GOTO k919
  IF ~CheckStatGT(Player1,9,CHR) CheckStatLT(Player1,17,CHR)~ THEN REPLY ~Though your offer is generous, it is more than I can afford right now.~ GOTO k920
  IF ~CheckStatLT(Player1,10,CHR)~ THEN REPLY ~What a lousy offer. I wanna see better than that!~ GOTO k921
  IF ~PartyGoldGT(7499)~ THEN REPLY ~A fair price for the workmanship of Taerom Thunderhammer. 7,500 gold it is.~ DO ~TakePartyItemNum("cdrem",1)
DestroyItem("cdrem")
TakePartyGold(7500) AddJournalEntry(@130165,QUEST)~ GOTO k922
  IF ~~ THEN REPLY ~I'll come back later.~ DO ~AddJournalEntry(@130168,QUEST)~ EXIT
END


IF ~~ THEN BEGIN k918
SAY ~Heh, its a nice hide but we're not that desperate! 3,000 gold or nothing, and you can take it or leave it!~
IF ~~ THEN REPLY ~Ok fine. I'll take the offer.~ 
DO ~ TakePartyItemNum("cdrem",1)
DestroyItem("cdrem")
GiveGoldForce(3000)~ SOLVED_JOURNAL @130167 EXIT
IF ~~ THEN REPLY ~I'll show myself out.~ DO ~AddJournalEntry(@130168,QUEST)~ EXIT
END

IF ~~ THEN BEGIN k919
SAY ~Hmm, well suppose we could do it for less. Maybe 5,500 gold?~
IF ~PartyGoldGT(5499)~ THEN REPLY ~Ok fine. I'll take the offer.~
DO ~ TakePartyItemNum("cdrem",1)
DestroyItem("cdrem")
TakePartyGold(5500)
AddJournalEntry(@130164,QUEST)~ GOTO k922
IF ~~ THEN REPLY ~I'll show myself out.~ DO ~AddJournalEntry(@130168,QUEST)~ EXIT
END

IF ~~ THEN BEGIN k920
SAY ~Hmm, well I'm afraid that is our final offer.~
IF ~PartyGoldGT(7499)~ THEN REPLY ~Ok fine. I'll take the offer.~
DO ~ TakePartyItemNum("cdrem",1)
DestroyItem("cdrem")
TakePartyGold(7500) AddJournalEntry(@130165,QUEST)
~ GOTO k922
IF ~~ THEN REPLY ~I'll show myself out.~ DO ~AddJournalEntry(@130168,QUEST)~ EXIT
END

IF ~~ THEN BEGIN k921
SAY ~Hmm, well if you are going to be rude then that will be 8,500 gold.~
IF ~PartyGoldGT(8499)~ THEN REPLY ~Ok fine. I'll take the offer.~
DO ~ TakePartyItemNum("cdrem",1)
DestroyItem("cdrem")
TakePartyGold(8500) AddJournalEntry(@130166,QUEST)
~ GOTO k922
IF ~~ THEN REPLY ~I'll show myself out.~ DO ~AddJournalEntry(@130168,QUEST)~ EXIT
END

IF ~~ BEGIN k922
SAY ~Aye, it'll be ready in a few days. Check back then.~ IF ~~ THEN DO ~ SetGlobal("k9armormade","GLOBAL",1) SetGlobalTimer("k9armortimer","GLOBAL",TWO_DAYS)~ EXIT
END

IF WEIGHT #-65 ~GlobalTimerExpired("k9armortimer","GLOBAL") Global("k9armormade","GLOBAL",1)~ THEN BEGIN k923
SAY ~Aye, yer back. I've got the helm right here.~ IF ~~ THEN DO ~SetGlobal("k9armormade","GLOBAL",2) GiveItemCreate("cdrelm",LastTalkedToBy(Myself),1,0,0)~ EXIT
END

IF WEIGHT #-60 ~PartyHasItem("cdrem") GlobalGT("k9armormade","GLOBAL",0)
~ THEN BEGIN k924
  SAY ~Another Remhoraz shell I take it? Fraid I don't have all the materials needed to make another helm, but if you're willing to part with your shell I'll give you 3000 gold for it.~
  IF ~~ THEN REPLY ~Maybe later. Could you instead show us what you have for sale?~ DO ~StartStore("Taerum",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY ~Sure! A pleasure doing business with you.~ DO ~TakePartyItemNum("cdrem",1)
  DestroyItem("cdrem")
GiveGoldForce(3000)~ SOLVED_JOURNAL @130169 EXIT
  IF ~~ THEN REPLY ~Hardly a fair price for the trouble I went through to get it. Double your offer, and consider it done.~ GOTO k925
  IF ~~ THEN REPLY ~Nothing at the moment.~ DO ~AddJournalEntry(@130168,QUEST)~ EXIT
END

IF ~~ THEN BEGIN k925
SAY ~Heh, its a nice hide but we're not that desperate! 3,000 gold or nothing, and you can take it or leave it!~
IF ~~ THEN REPLY ~Ok fine. I'll take the offer.~
DO ~ TakePartyItemNum("cdrem",1)
DestroyItem("cdrem")
GiveGoldForce(3000) EraseJournalEntry(@130164) EraseJournalEntry(@130165) EraseJournalEntry(@130166) EraseJournalEntry(@130168)~ SOLVED_JOURNAL @130169 EXIT
IF ~~ THEN REPLY ~I'll show myself out.~ DO ~AddJournalEntry(@130168,QUEST)~ EXIT
END



END