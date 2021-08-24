BEGIN Bk9shart

CHAIN IF ~InParty("Sharteel")  InParty("Edwin")
See("Edwin")
See("Sharteel")
!ActuallyInCombat()
Global("k9SharteelEdwin","GLOBAL",1) GlobalGT("BD_Plot","GLOBAL",0) !AreaCheck("BD0120") !AreaCheck("BD0130")~ THEN bdshartj k9SharteelEdwin1
~Strange, I remembered you to be far more competent. Clearly I was mistaken.~
DO ~SetGlobal("k9SharteelEdwin","GLOBAL",2)~
== BDEDWINJ ~(Were <CHARNAME> not likely to intervene I'd turned this woman inside out) I see you are still alive, Shar-Teel... what a pity.~
== bdshartj ~How would you like my sword tickling your innards?~ [SHART34]
== BDEDWINJ ~Had I known <CHARNAME> would align with the veritably insane I would have not joined this little group.~
EXIT



CHAIN IF ~InParty("Sharteel")  InParty("Corwin")
See("Corwin")
See("Sharteel")
!ActuallyInCombat()
Global("k9SharteelCorwin","GLOBAL",1)  ~ THEN bdshartj k9SharteelCorwin1
~A single mother who continues to serve the whims of the men around her. Tell me Corwin, when you joined the Flaming Fist did you forgo all of your dignity? Or has a tiny spark remained?~
DO ~SetGlobal("k9SharteelCorwin","GLOBAL",2)~
== BDCORWIJ ~<CHARNAME> may be willing to take your insults. I won't. Best you be mindful of that.~
EXIT


CHAIN IF ~InParty("Sharteel")  InParty("Corwin")
See("Corwin")
See("Sharteel")
!ActuallyInCombat()
Global("k9SharteelCorwin","GLOBAL",3)  ~ THEN bdshartj k9SharteelCorwin2
~Still chained to your Flaming Fist masters? Really, Corwin, I expected better of you.~
DO ~SetGlobal("k9SharteelCorwin","GLOBAL",4)~
== BDCORWIJ ~The Flaming Fist has the respect of much of the Sword Coast. Not that you know anything about respect.~
== bdshartj ~And you wish the same respect as these bastards? Respect, my dear, is something to be earned from battle. These men don't deserve yours.~
EXIT


CHAIN IF ~InParty("Sharteel")  InParty("Dynaheir")
See("Dynaheir")
See("Sharteel")
!ActuallyInCombat()   InParty("Minsc")
Global("k9SharteelDynaheir","GLOBAL",1)  ~ THEN bdshartj k9SharteelDynaheir1
~You are a smarter than I expected, Dynaheir.~
DO ~SetGlobal("k9SharteelDynaheir","GLOBAL",2)~
== BDDynahj ~What exactly is thou saying?~
== bdshartj ~Using that man of yours as a shield. How positively brilliant.~
== BDDynahj ~Thou speaks of Minsc most unfairly. 'Tis a bit dim, certainly, but he hath more courage than thee!~
EXIT



CHAIN IF ~InParty("Sharteel")  InParty("MKHIIN")
See("Mkhiin")
See("Sharteel")
!ActuallyInCombat()
Global("k9SharteelMkhiin","GLOBAL",1)  ~ THEN bdshartj k9SharteelMKHIIN1
~Now what made you crawl out of your little hole.~
DO ~SetGlobal("k9SharteelMkhiin","GLOBAL",2)~
== BDMKHIIJ ~Goblins don't dig many holes. Mostly use caverns. Not much point in digging out what's been dug.~
EXIT



CHAIN IF ~InParty("Sharteel")  
InParty("Jaheira")
InParty("Khalid")
See("Khalid")
See("Jaheira")
See("Sharteel")
!ActuallyInCombat()
Global("k9SharteelJaheira","GLOBAL",1)  ~ THEN bdshartj k9SharteelJaheira1
~Jaheira, my dear, why keep that stuttering idiot around?~
DO ~SetGlobal("k9SharteelJaheira","GLOBAL",2)~
== BDJAHEIJ ~I could ask the same of you. Why *does* <CHARNAME> insist on keeping you around?~
== bdshartj ~What a t-timely question, my dear! I suppose it would be best that I answer it without s...stuttering any further.~
== BDJAHEIJ ~You will watch your tongue lest I rip it from your mouth!~
= ~I'll not have you speak of Khalid any further. I swear, I do not understand *what* <CHARNAME> sees in you.~
EXIT















