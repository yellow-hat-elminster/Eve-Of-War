//Burning Wizard bartender
//AR3307
//Level 1 dialogue
EXTEND_TOP BART13 0

  IF ~Global("k9Wizardpint", "GLOBAL", 0) GlobalLT("k9pints", "GLOBAL", 2) Global("k9militiapint", "GLOBAL", 1) Global("k9burwiz","GLOBAL",0)~ THEN REPLY ~Hello friend. I couldn't help but hear from the town's watch that your mead here is very expensive. Any reasons for that?~ GOTO 2
  IF ~Global("k9burwiz","GLOBAL",2)~ THEN REPLY ~I visited the winery in Gullykin. They can supply you with the local wine you'll need.~ GOTO 4

END

APPEND BART13

//Wisdom dialogue
IF ~~ THEN BEGIN 2
  SAY ~Been awhile before I've heard anyone has complain about my prices. This ain't no fancy Feldpost Inn after all. These brews are as cheap and varied as to be expected I recken.
  
Course, the bandit's haven't made things easy. Days past I might've been able to offer the fine folks of the watch something better, but with supplies running thin around here it's out of my hands. Had the gods had any mercy for these poor sods there'd be a winery in every town to buy from. As is, the nearest one would be half way to Ashbravn along the Uldoon Trail. ~
  IF ~~ THEN REPLY ~If you didn't have to buy your beer or wines from such far away places I'm sure you could manage a cheaper price. If I come across a more local winery or brewery in my travels I could inform you if you'd like. It might help lower your costs a little.~ GOTO 3
  END
  
IF ~~ THEN BEGIN 3
  SAY ~Aye, if ye hear back about anythin let me know. I'll be waitin.~ IF ~~ THEN DO ~SetGlobal("k9burwiz","GLOBAL",1) AddJournalEntry(@122,QUEST)~ EXIT
  END
  
IF ~~ THEN BEGIN 4
  SAY ~Aye, yer a <MANWOMAN> of yer word. I'll get'in touch with the fella that runs the place. If it pans out, then you'll be seein prices round here drop in no time.~ IF ~~ THEN DO ~SetGlobal("k9burwiz","GLOBAL",4) SetGlobal("k9Wizardpint", "GLOBAL", 1) AddJournalEntry(@125,QUEST) AddexperienceParty(200)~ EXIT
  END
  
IF ~~ THEN BEGIN 5
SAY ~Just what are you calling swine?~ IF ~~ THEN EXIT
END
 END
