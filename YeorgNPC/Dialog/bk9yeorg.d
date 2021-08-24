BEGIN bk9yeorg



// Edwin is mocked by Yeorg
CHAIN IF ~InParty("k9Yeorg")  InParty("Edwin")
See("Edwin")
See("k9Yeorg")
!ActuallyInCombat()
Global("k9YeorgEdwin","GLOBAL",0)~ THEN Bk9Yeorg k9YeorgEdwin1
~I see you continue to remain bound to that spellbook Edwin. Tis a shame someone with so much power could be so inept with it.~
DO ~SetGlobal("k9YeorgEdwin","GLOBAL",1)~
== BEDWIN ~(Is this what I have to work with? Pathetic.) Watch your words when addressing me, lest they be fed to you on the end of my boot!~  [EDWIN 33]
== BK9YEORG ~So the miscreant can speak. Tell me, why leave yourself chained by such an object? Surely you know all these spells by heart by now?~
== BEDWIN ~(The chimp would blow us apart before he showed an understanding of the dangers of the Weave.) Don't test my patience. My grasp of magic is beyond compare.~
EXIT


// Alora is questioned by Yeorg
CHAIN IF ~InParty("k9Yeorg")  InParty("Alora")
See("Alora")
See("k9Yeorg")
!ActuallyInCombat()
Global("k9YeorgAlora","GLOBAL",0)~ THEN Bk9Yeorg k9YeorgAlora1
~I find your constant cheerfulness to be no less than nauseating, yet there is something about you that interests me. You steal yet you consider yourself a *good* person. Why is this?~
DO ~SetGlobal("k9YeorgAlora","GLOBAL",1)~
== BALORA ~Aww, nutbunnies. You really are a downer! The sneaking, the spying, the score. They got nothin to do with good or evil. It's all just so much fun!~
== BK9YEORG ~But is not taking an object that belongs to another considered theft? While your capriciousness towards petty theft is amusing I doubt the guards share in your joy.~
== BALORA ~Bunch o' puffmuffins never could grasp the fun of it all. Stealing don't make a bad person, not unless its all ya get up to.~
EXIT


 // Yeorg mocks Eldoth and it backfires
CHAIN IF ~InParty("k9Yeorg")  InParty("Eldoth")
See("Eldoth")
See("k9Yeorg")
!ActuallyInCombat()
Global("k9YeorgEldoth","GLOBAL",0)~ THEN Bk9Yeorg k9YeorgEldoth1
~Jack of all trades indeed. It is such a pity really. You have the attitude to be successful, you just lack the ability.~
DO ~SetGlobal("k9YeorgEldoth","GLOBAL",1)~
== BELDOT ~With a tongue like that I'd have thought you a woman. Hmm...an ugly one admittedly.~
== BK9YEORG ~...~
== BELDOT ~I think that settles things rather nicely. In fact I should think we should be getting on with much more productive things. Yes?~
EXIT


// Yeorg mocks Garrick

CHAIN IF ~InParty("k9Yeorg")  InParty("Garrick")
See("Garrick")
See("k9Yeorg")
!ActuallyInCombat()
Global("k9YeorgGarrick","GLOBAL",0)~ THEN Bk9Yeorg k9YeorgGarrick1
~Tell me, how did you come to be in the service of Silke?~
DO ~SetGlobal("k9YeorgGarrick","GLOBAL",1)~
== BGARRI ~Ohh, well a few months back Silke offered me a place at her side. Not sure why really, but she may have seen me performing at the Jovial Juggler. It's where I often performed. Beat working for the thugs at Feldpost's anyways.~
== BK9YEORG ~So, when her plans proved to be too risky you fled. Perhaps I've misjudged you.~
== BGARRI ~It was nothing like that! I would have fled the town had I known her intentions.~
EXIT


CHAIN IF ~InParty("k9Yeorg")  InParty("Kagain")
See("Kagain")
See("k9Yeorg")
!ActuallyInCombat()
Global("k9YeorgKagain","GLOBAL",0)~ THEN BKAGAI k9YeorgKagain1
~What are YOU looking at? I swear <CHARNAME> only seems ta find the weird ones.~
DO ~SetGlobal("k9YeorgKagain","GLOBAL",1)~
== BK9YEORG ~I was just admiring your stature. You carry yourself well dwarf.~
== BKAGAI ~Keep yer eyes to the road and to the business at hand.~
EXIT

