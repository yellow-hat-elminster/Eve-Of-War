EXTEND_BOTTOM INNKN2 0
  +~CheckStatGT(Player1Fill,14,CHR) Global("k9NasInn", "GLOBAL", 0)~+ ~What made a mage like yourself set about to live in this remote place?~  GOTO k93
  +~CheckStatLT(Player1Fill,15,CHR) Global("k9NasInn", "GLOBAL", 0)~+ ~What made a mage like yourself set about to live in this remote place?~  GOTO k94
  END


APPEND INNKN2


IF WEIGHT #-99 ~True() Global("k9NasInn", "GLOBAL", 0)~ THEN BEGIN k92
  SAY ~More intrepid adventurers no doubt at the door. I am Reis Kensiddar, innkeeper and magician. What can I help you for?~

  +~InParty("VICONIA") InParty("BAELOTH") Kit(player1,DARK_MOON)~+ ~What can you give me today?~ GOTO k9ViconiaBaelothMonk
  +~InParty("VICONIA") InParty("BAELOTH") !Kit(player1,DARK_MOON)~+ ~What can you give me today?~ GOTO k9ViconiaBaeloth
  +~InParty("VICONIA") !InParty("BAELOTH") Kit(player1,DARK_MOON)~+ ~What can you give me today?~ GOTO k9ViconiaMonk
  +~InParty("VICONIA") !InParty("BAELOTH") !Kit(player1,DARK_MOON)~+ ~What can you give me today?~ GOTO k9Viconia
  +~!InParty("VICONIA") InParty("BAELOTH") Kit(player1,DARK_MOON)~+ ~What can you give me today?~ GOTO k9BaelothMonk
  +~!InParty("VICONIA") InParty("BAELOTH") !Kit(player1,DARK_MOON)~+ ~What can you give me today?~ GOTO k9Baeloth
  +~!InParty("VICONIA") !InParty("BAELOTH") Kit(player1,DARK_MOON)~+ ~What can you give me today?~ GOTO k9Monk
  +~!InParty("VICONIA") !InParty("BAELOTH") !Kit(player1,DARK_MOON)~+ ~So much conflict around these parts. Is this truly a safe place to rest?~ GOTO 0
  ++ ~I don't need anything at the moment.~ /* ~I don't need anything at the moment.~ */ EXIT
END

IF ~~ THEN BEGIN k9ViconiaBaelothMonk
  SAY ~Wait, there is something wrong about you. Some say one of the best Diviners from here to Neverwinter. Yes, I can see it in the eyes of you and your companions. I never would have thought Shar worshippers and their Drow allies would be so bold! Shar will have to do better than this if she wishes me dead.~ IF ~~ THEN DO ~ Enemy() SetGlobal("k9NasInn", "GLOBAL", 1)~ EXIT
END

IF ~~ THEN BEGIN k9ViconiaBaeloth
  SAY ~Wait, there is something wrong about some of your companions? Why do they hide their faces from me? Unless...

Deceiver! You have in your party two dark elves! These cretins have no doubt chased me here. They cannot be allowed to live.~ IF ~~ THEN DO ~ Enemy() SetGlobal("k9NasInn", "GLOBAL", 1)~ EXIT
END

IF ~~ THEN BEGIN k9ViconiaMonk
  SAY ~Wait, there is something wrong about you. Some say one of the best Diviners from here to Neverwinter. Yes, I can see it in the eyes of you and your companion. I never would have thought Shar worshippers and their Drow allies would be so bold! Shar will have to do better than this if she wishes me dead.~ IF ~~ THEN DO ~ Enemy() SetGlobal("k9NasInn", "GLOBAL", 1)~ EXIT
END

IF ~~ THEN BEGIN k9Viconia
  SAY ~Wait, there is something wrong about one of your companions. Why do they hide their face so? Unless...

Deceiver! You have in your party one of the dark elves! This cretin has no doubt tracked me down here. They cannot be allowed to live.~ IF ~~ THEN DO ~ Enemy() SetGlobal("k9NasInn", "GLOBAL", 1)~ EXIT
END

IF ~~ THEN BEGIN k9BaelothMonk
  SAY ~My magic wards sense something wrong about you. Its as though you have a soul filled with darkness. Also why does your companion hide their face so? What possible reason could there be for this except...

Ahh yes I see. I stand before a Dark Moon Monk and their filthy Drow accomplice. Shar will have to do better than this if she wishes me dead.~ IF ~~ THEN DO ~ Enemy() SetGlobal("k9NasInn", "GLOBAL", 1)~ EXIT
END

IF ~~ THEN BEGIN k9Baeloth
  SAY ~Wait, there is something wrong about one of your companions. Why do they hide their face so? Unless...

Deceiver! You have in your party one of the dark elves! This cretin has no doubt tracked me down here. They cannot be allowed to live.~ IF ~~ THEN DO ~ Enemy() SetGlobal("k9NasInn", "GLOBAL", 1)~ EXIT
END

IF ~~ THEN BEGIN k9Monk
  SAY ~Wait, there is something wrong about you. Some say one of the best Diviners from here to Neverwinter. Yes, I can see it your eyes. I never would have thought a Shar worshipper would have been so bold! You'll never take me alive!~ IF ~~ THEN DO ~ Enemy() SetGlobal("k9NasInn", "GLOBAL", 1)~ EXIT
END


IF ~~ THEN BEGIN k93
SAY ~In truth? I came here some time back to investigate a band of Sharan monks operating out of the Cloud Peak Mountains. But I since have realized I haven't the taste for treking through snow to deal with them.

Nasty bunch those Sharans. It makes me quite glad to see that Rasaad fellow outside. He even called my inn "his favour inn in all of Nashkel," which as you know only helps my promotional opportunities.~

  ++ ~Promotional opportunities? We're in the middle of a cold and depressing hovel. What possible opportunities could arise from this?~ GOTO k95
  ++ #15275 /* ~What can you give me today?~ */ DO ~StartStore("Inn4801",LastTalkedToBy(Myself))
~ EXIT
  ++ #15276 /* ~I don't need anything at the moment.~ */ EXIT
END

IF ~~ THEN BEGIN k94
SAY ~Ohh I love the great outdoors. Yes, thats it. Is there something else you need?~
  ++ #15275 /* ~What can you give me today?~ */ DO ~StartStore("Inn4801",LastTalkedToBy(Myself))
~ EXIT
  ++ #15276 /* ~I don't need anything at the moment.~ */ EXIT
END

IF ~~ THEN BEGIN k95
SAY ~Ever met a monk that didn't love a remote hovel? I know I haven't.~
  ++ #15275 /* ~What can you give me today?~ */ DO ~StartStore("Inn4801",LastTalkedToBy(Myself))
~ EXIT
  ++ #15276 /* ~I don't need anything at the moment.~ */ EXIT
END

END


