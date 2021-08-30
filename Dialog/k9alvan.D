EXTEND_BOTTOM Alvahe 0

  IF ~Global("k9burwiz","GLOBAL",1) ~ THEN REPLY ~Hello friend. I see that you have quite a bit of wine produced here. There is a tavern in Beregost called the Burning Wizard that is looking for a new supplier. I was wondering if you'd be interested.~ GOTO k92

END

APPEND Alvahe

IF ~~ THEN BEGIN k92
SAY ~Speak truth to me <GIRLBOY>. This tavern owner. They the trustable sort?~
+~CheckStatGT(Player1Fill,17,CHR)~+ ~Ohh yes, absolutely.~  GOTO k94
+~CheckStatLT(Player1Fill,16,CHR)~+ ~Ohh yes, absolutely.~  GOTO k95
++ ~I'm afraid I don't know them well enough to say.~   GOTO k94
END



IF ~~ THEN BEGIN k94
  SAY ~Well at least ye speak the truth. That's all the Provider can ask of any of us. As I said the Provider provides. Shipping will be tough, and ye should be thankful that I knows a trick or two there. Shouldn't be too long to get my goods over 'ere.~ IF ~~ THEN DO ~SetGlobal("k9burwiz","GLOBAL",2) AddJournalEntry(@124,QUEST)~ EXIT
  END
  
IF ~~ THEN BEGIN k95
  SAY ~Protector test me. Bet you were thinking poor Alvanhendar would believe every word out of yer mouth. Well, yer a poorer liar than ya think. Still, I suppose I could use the business. Just leave me to m'casks, I'll work out the rest.~ IF ~~ THEN DO ~SetGlobal("k9burwiz","GLOBAL",2)  AddJournalEntry(@123,QUEST)~ EXIT
  END

END