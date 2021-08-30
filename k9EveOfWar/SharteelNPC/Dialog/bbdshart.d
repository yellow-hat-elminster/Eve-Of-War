APPEND bshart

CHAIN IF ~InParty("Sharteel")  InParty("Edwin")
See("Edwin")
See("Sharteel")
!ActuallyInCombat()         GlobalGT("chapter","GLOBAL",7)
Global("k9SharteelEdwin","GLOBAL",0)~ THEN BShart k9SharteelEdwin1
~I must admit Edwin, I'm a bit surprised you're still alive.~
DO ~SetGlobal("k9SharteelEdwin","GLOBAL",1)~
== BEDWIN ~Silence your dog <CHARNAME>, I need not stand to listen to this malcontent.~
== Bshart ~Ohh don't be so insulted Edwin. I'm *certain* that other mages just went very easy on you.~
== BEDWIN ~(If we should come across a pack of wolves she should prove a useful distraction) Compared to serving in this group, death might have been preferable.~
EXIT
END

