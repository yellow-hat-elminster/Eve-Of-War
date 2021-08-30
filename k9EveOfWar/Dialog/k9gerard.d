APPEND NOBL10


IF WEIGHT #-99 ~True() OR(2) NumTimesTalkedTo(0) NumTimesTalkedToGT(0)~ THEN BEGIN k98
  SAY ~Hold your place. No need for us to get off on the wrong foot. I rather like company occasionally, but most of the townsfolk are a bit standoffish.~

  +~GlobalLT("Chapter", "GLOBAL", 3)~+ ~Understandable all things considered. I take it you are a member of the Town Council?~ GOTO k9Council
  ++ ~As they should be. With bandit raids and the iron crisis I would expect nothing less.~ GOTO k9bandit
  +~GlobalLT("Chapter", "GLOBAL", 3)~+ ~Are things truly so dire? Surely things are not so bad as to warrant this level of suspicion?~ GOTO k9concern
  +~GlobalGT("Chapter", "GLOBAL", 2)~+ ~Are things truly so dire? Surely things are not so bad as to warrant this level of suspicion?~ GOTO k9concern2
END

IF ~~ THEN BEGIN k9Council
  SAY ~Indeed I am. As you can see we are largely all assembled here already. Sadly, bandits raided the caravan of one of our council members on his return trip from Baldur's Gate. Kelddath could tell you more about our efforts to find a suitable replacement.~ IF ~~ EXIT
END

IF ~~ THEN BEGIN k9bandit
  SAY ~Oh those nasty bandits. They've already taken the life of one of our own. Lady Craumerdaun was a long time member of this council. Most recently she was travelling back from Baldur's Gate when her caravan was ambushed by bandits.

Sadly it seems we have been left in a terrible bind. Kelddath might be willing to tell you more about our efforts to find a suitable replacement.~ IF ~~ EXIT
END

IF ~~ THEN BEGIN k9concern
  SAY ~Indeed they are. Bandits have been raiding the countryside, killing merchants and plundering caravans. They seem to be interested in both gold and iron, an odd pair if I do say so. Even a member of our Town Council had her caravan attacked by them recently. If you have the time you would do me a great favour to speak to Kelddath and Commander Darren about assisting the watch.~ IF ~~ EXIT
END

IF ~~ THEN BEGIN k9concern2
  SAY ~Indeed they are. Bandits have been raiding the countryside, killing merchants and plundering caravans. They seem to be interested in both gold and iron, an odd pair if I do say so. Even a member of our Town Council had her caravan attacked by them recently. Though as you can see our town has taken some precautions now to help protect us from further attacks.~ IF ~~ EXIT
END
END