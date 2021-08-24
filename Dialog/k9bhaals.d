BEGIN k9bhaals

//level 1

IF ~ NumTimesTalkedTo(0) OR(3) Alignment(Player1,CHAOTIC_EVIL) Alignment(Player1,NEUTRAL_EVIL) Alignment(Player1,LAWFUL_EVIL)~ THEN BEGIN k9slaughter

SAY ~At last you have come before me my <PRO_SONDAUGHTER>.~   IF ~~ GOTO k9evilthings
END

IF ~ NumTimesTalkedTo(0) OR(3) Alignment(Player1,CHAOTIC_NEUTRAL) Alignment(Player1,LAWFUL_NEUTRAL) Alignment(Player1,NEUTRAL)~ THEN BEGIN k9bhaal

SAY ~At last you have come before me my <PRO_SONDAUGHTER>.~ IF ~~ GOTO k9neutralthings
END

IF ~ NumTimesTalkedTo(0) OR(3) Alignment(Player1,CHAOTIC_GOOD) Alignment(Player1,NEUTRAL_GOOD) Alignment(Player1,LAWFUL_GOOD)~ THEN BEGIN k9bhaal2

SAY ~At last you have come before me my <PRO_SONDAUGHTER>.~ IF ~~ GOTO k9goodthings

END



IF ~~ THEN BEGIN k9goodthings

SAY ~I feel you resist me. Hoping to be the loose thread in the tapestry. Confused as to why you are here. Terrified at the thought of being a child of murder. Trying to hold yourself back from claiming your birthright. Do not contest this. You are but a piece of the father bred in the child - but a strong one at that. You will be what you were born to be.~ IF ~~ GOTO k9slaughter2
END

IF ~~ THEN BEGIN k9neutralthings

SAY ~I feel you resist me. Hoping to be the loose thread in the tapestry. Confused as to why you are here. Concerned over the blood of the innocent that you may one day spill. Trying to hold yourself back from claiming your birthright. Do not contest this. You are a child of murder - one of many. If you are here you are indeed strong. Become what you were born to be.~ IF ~~ GOTO k9slaughter2
END

IF ~~ THEN BEGIN k9evilthings

SAY ~I feel your fears loosen. Hoping to be the strongest thread in the tapestry. Excited at the thought of being a child of murder. Little will hold you back from claiming your birthright. If you are here you are indeed strong. Do not forget this.~ IF ~~ GOTO k9slaughter2
END


IF ~~ THEN BEGIN k9slaughter2

SAY ~Take hold and grasp the power of this place. Others have and will seek to influence your mind, clouding it with thoughts that aren't your own. You are young yet you resist. This is promising.~ IF ~~ THEN DO ~GiveItemCreate("k9wand13", Player1,5,0,0)~ GOTO k9slaughter3
END



IF ~~ THEN BEGIN k9slaughter3

SAY ~Shut out these other voices. Claim our heritage as your own. Slay the common rabble in this room! Use your power for yourself and be the legacy of your *true* father!~
		++ ~Is this a dream?~ GOTO k9slaughterslaughter
                +~CheckStatGT(Player1Fill, 6, INT)~+ ~It seems I have my work cut out for me then.~ DO ~SetGlobal("k9cyrictalk", "GLOBAL", 1) AddJournalEntry(@15006,QUEST)~ EXIT
                +~CheckStatLT(Player1Fill, 7, INT)~+ ~Urrr...me smash em up.~ DO ~SetGlobal("k9cyrictalk", "GLOBAL", 1) AddJournalEntry(@15006,QUEST)~  EXIT
		+~CheckStatGT(Player1Fill, 6, INT)~+ ~I refuse your offer.~ DO ~SetGlobal("k9cyrictalk","GLOBAL",2)~ EXIT
		+~CheckStatLT(Player1Fill, 7, INT)~+ ~Me no wanna.~ DO ~SetGlobal("k9cyrictalk","GLOBAL",2)~ EXIT
END

IF ~    OR(2) Global("k9cyrictalk", "GLOBAL", 1)  Global("k9cyrictalk", "GLOBAL", 2)
        GlobalGT("k9CommonersDead", "GLOBAL", 9)
        Global("k9CookDead", "GLOBAL", 1)
	Global("k9BentleyDead", "GLOBAL", 1)
	Global("k9JopiDead", "GLOBAL", 1)
	Global("k9NessieDead", "GLOBAL", 1)
	Global("k9SurreyDead", "GLOBAL", 1)
	Global("k9WhelpDead", "GLOBAL", 1)~ THEN BEGIN k9slaughter4

SAY ~Excellent! You have been bathed in the blood of the murdered and the tears of the dying. At its heart these are the actions that will sustain you.~  IF ~~ THEN DO ~SetGlobal("k9cyrictalk", "GLOBAL", 3) SetGlobal("k9bhaalaccept", "GLOBAL", 1) AddJournalEntry(@15002,QUEST) ClearAllActions()
StartCutSceneMode()
StartCutScene("k9cutbha")~ EXIT
END


IF ~   Global("k9cyrictalk", "GLOBAL", 2)~ THEN BEGIN k9slaughter5

SAY ~You betray what you were born to be! There *will* be a price to pay.~
+~CheckStatGT(Player1Fill, 6, INT)~+ ~Then I accept your offer.~ DO ~SetGlobal("k9cyrictalk", "GLOBAL", 1) ~ SOLVED_JOURNAL @15005 EXIT
+~CheckStatLT(Player1Fill, 7, INT)~+ ~Urrr...me smash em up.~ DO ~SetGlobal("k9cyrictalk", "GLOBAL", 1) ~ SOLVED_JOURNAL @15005 EXIT
+~CheckStatGT(Player1Fill, 6, INT)~+ ~No, I will not do as you ask.~ DO ~SetGlobal("k9cyrictalk", "GLOBAL", 3) SetGlobal("k9bhaalreject", "GLOBAL", 1)  ClearAllActions()
StartCutSceneMode()
StartCutScene("k9cutbha")~ SOLVED_JOURNAL @15004 EXIT
+~CheckStatLT(Player1Fill, 7, INT)~+ ~Me say no.~ DO ~SetGlobal("k9cyrictalk", "GLOBAL", 3) SetGlobal("k9bhaalreject", "GLOBAL", 1)  ClearAllActions()
StartCutSceneMode()
StartCutScene("k9cutbha")~ SOLVED_JOURNAL @15004 EXIT


END

IF ~~ THEN BEGIN k9slaughterslaughter

SAY ~I feel your fears loosen. Hoping to be the strongest thread in the tapestry. Excited at the thought of being a child of murder. Little will hold you back from claiming your birthright. If you are here you are indeed strong. Do not forget this.~ IF ~~ GOTO k9slaughter3
END

