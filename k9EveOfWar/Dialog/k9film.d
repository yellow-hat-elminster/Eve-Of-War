BEGIN k9film

 IF ~AreaCheck("AR3321")~ THEN BEGIN AR3321
 SAY ~Good seeing you again friend. I must say <CHARNAME> morale here is lower than I expected. By Tyr's graces however I will do what I can to raise the spirits of the common folk here. Many of these men and women have left much behind to form this militia and I intend to ensure their sacrifice is shown the appreciation it deserves.~ IF ~~ THEN EXIT
 END

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
SAY ~Hmm, you don't appear to be the scribe I asked for. Not unless Candlekeep has seen more dire days than I'd have hoped. I suppose with what has transpired across the region a few hearty men and women could prove useful in ferrying such things, but it still seems rather unnecessary for protecting the holders of mere parchment. Especially in a keep such as this.

I suppose that begs the question, just what are you here for?~
++ ~Just taking in the keep. I left here some time ago and have just returned. Are you new to the keep?~ GOTO 1
++ ~Nothing really. I'll be on my way now.~ EXIT
END

IF ~~ THEN BEGIN 1
SAY ~Why yes. My work for the Order of the Maimed One has brought me to this place. I was told the library holds the prophecies of Alaundo.

Not that I have had any chance to read them, mind you. I was rather hoping to see more professionalism out of this place. I arranged well in advance for a scribe to meet me here with a copy of the prophecies of Alaundo.~
++ ~I actually spent quite some time in the keep as a young child, under supervision of course. From what I recall what you are looking for can be found on the first floor of the library.~ GOTO 2
++ ~Tough luck.~ EXIT
END

IF ~~ THEN BEGIN 2
SAY ~Hmm... I suppose the scribe has probably gotten himself lost somewhere. I don't suppose you'd consider just fetching them for me? No, I suppose they would restrict such business. I'll just have to find them myself.~
+~PartyHasItem("scrl3e") PartyHasItem("Scrl3d")~+ ~I have several of the scrolls related to the prophecy of Bhaal on me. Would these do?~ GOTO 5
+~Global("k9BeregostSearch","GLOBAL",1) Global("k9Filmarya","GLOBAL",0)~+ ~Actually while I have you here. If you weren't aware Beregost is looking for advisors in the event of a coming war. They fear reprisal from Amn should relations deteriorate further and are looking for an experienced hand to help guide them.  Would you be interested?~ GOTO 3
++ ~I wish you the best of luck.~ EXIT
END

IF ~~ THEN BEGIN 3
SAY ~It is certainly not what I had in mind when I travelled to this place. Still, it is said that Tyr tests us in ways we may not even know. Very well, if Beregost is in such a need then I will answer. My studies of Alaundo can wait.~
++ ~Sounds good. Report to Kelddath Ormyr in the town hall of Beregost.~ DO ~AddJournalEntry(@531116,QUEST) SetGlobal("k9moraleteach","GLOBAL",1) IncrementGlobal("k9beregostprepared","GLOBAL",1) SetGlobal("k9Filmarya","GLOBAL",1)  EscapeArea()~  EXIT
END


IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 4
SAY ~Hmm, good seeing you again. I don't suppose you might know where I might find the prophecies of Alaundo? I had hoped to meet a scribe here with a copy of the work, but they have not yet arrived.~
++ ~I actually spent quite some time in the keep as a young child - under supervision of course. From what I recall what you are looking for can be found on the first floor of the library.~ GOTO 2
++ ~Tough luck.~ EXIT
END

IF ~~ THEN BEGIN 5
SAY ~Hmm...these seem to be copies of several of the original prophecies. Incomplete copies at that. No, I'm afraid these won't do. I'm looking for much more than simply this. But thank you for your help in any case.~
++ ~Best of luck with your search.~ EXIT
END