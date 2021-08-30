  EXTEND_BOTTOM OUBLEK 9

+ ~PartyHasItem("k9misc15")~+ ~I have the head of Tynnos Argrim here, the leader of the Cloudpeak Cyricists. Do you know of any bounties on this man?~ GOTO k92
  END
  
  
    EXTEND_BOTTOM OUBLEK 10

+ ~PartyHasItem("k9misc15")~+ ~I have the head of Tynnos Argrim here, the leader of the Cloudpeak Cyricists. Do you know of any bounties on this man?~ GOTO k94
  END



  APPEND OUBLEK 


   IF  ~~ THEN BEGIN k92
  SAY ~Aye. But for nothing as grandious as a Cyricist leader. He and his band out there have been suspected of raiding caravans for some time. Few though were willing to brave the mountains to find him. Least not for what was being offered for him. Certainly looks to be him. I'll give you that.

You've been an honorable sort so far. So I'll take you at your word and offer you what I can for him. The best I can offer is 500 gold. It's not much, at least given what you've no doubt gone through, but coin is coin.~
  ++ ~Stuff that. You can do better.~ GOTO k93
  ++ ~Very well. Good tidings friend.~ DO ~GivePartyGold(500) AddJournalEntry(@15020, QUEST) TakePartyItem("k9misc15")~ EXIT
  END
  
     IF  ~~ THEN BEGIN k93
  SAY ~Look around you friend. If you thought you were in the halls of the Council of Six you'd be mistaken. I've nothing more to give.~
  ++ ~I guess its 500 gold then.~ DO ~GivePartyGold(500) AddJournalEntry(@15020, QUEST) TakePartyItem("k9misc15")~ EXIT
   ++ ~I'll think about it.~ EXIT
  END


    IF  ~~ THEN BEGIN k94
  SAY ~Aye. But not for you. Not for a bounty as unlikely as that one. It's probably not even his head. A thief like you would say anything for coin. Now go away. I have other things to do.~ IF ~~ THEN EXIT
  END

  END