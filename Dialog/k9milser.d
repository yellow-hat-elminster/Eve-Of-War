BEGIN k9milser


IF ~OR (2) NumTimesTalkedTo(0) NumTimesTalkedToGT(0)~ THEN BEGIN 0

SAY ~Alright <GIRLBOY> what is it? Unless you are looking to join up I don't have time for you. These raw recruits need training and no one else seems to know what they are doing around here.~
+~ Global("k9milsertalkedcleric","GLOBAL",0) Class(Player1Fill,Cleric_all)
                !Alignment(Player1Fill,MASK_EVIL)~+~I can't help but notice this group could use some encouragement. Perhaps a blessing on your recruits might bolster their spirits?~ GOTO goodcleric
+~Global("k9milsertalkedcleric","GLOBAL",0) Class(Player1Fill,Cleric_all)  Alignment(Player1Fill,MASK_EVIL)~+~This group would do far better if you struck fear into their hearts. Allow me to say a few words and to give a blessing of sorts.~ GOTO evilcleric
+~Global("k9milsertalkedfighter","GLOBAL",0) OR(4) Class(Player1Fill,Fighter_all) Class(Player1Fill,Paladin_all) Class(Player1Fill,Monk) Class(Player1Fill,Ranger_all) ~+~I couldn't help but notice they are holding their weapons poorly. If you'd like I could point out fighting techniques that could be of use.~ GOTO fighter
+~OR(2) Global("k9milsertalkedcleric","GLOBAL",2) Global("k9milsertalkedfighter","GLOBAL",2)~+ ~Just checking in. Wanted to see how you were faring.~ GOTO checkingin
++ ~Ohh uhh, sorry for bothering you.~ EXIT
++ ~I'll talk to whoever I wanna talk to.~ EXIT
END

IF ~~ THEN BEGIN goodcleric

SAY ~Huh. I guess, sure. Hells, we'll take whatever help we can get.~
+~!Kit(Player1Fill,GODLATHANDER) !Kit(Player1Fill,GODHELM)~+ ~May you all be blessed in your upcoming battles... ~ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0) SetGlobal("k9waitfade","GLOBAL",1) SetGlobal("k9milsertalkedcleric","GLOBAL",1) AddexperienceParty(300)~ SOLVED_JOURNAL @130173 EXIT
+~Kit(Player1Fill,GODLATHANDER)~+ ~Very well.  Gather around everyone. Let the light of Lathander fill your hearts... ~ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0) SetGlobal("k9waitfade","GLOBAL",1) SetGlobal("k9milsertalkedcleric","GLOBAL",1) AddexperienceParty(300)~ SOLVED_JOURNAL @130173 EXIT
+~Kit(Player1Fill,GODHELM)~+ ~Very well.  Gather around everyone. On this day Helm shall preserve you... ~ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0) SetGlobal("k9waitfade","GLOBAL",1) SetGlobal("k9milsertalkedcleric","GLOBAL",1) AddexperienceParty(300)~ SOLVED_JOURNAL @130173 EXIT
END

IF ~~ THEN BEGIN evilcleric

SAY ~Huh. I guess, sure. Hells, we'll take whatever help we can get.~
+~!Kit(Player1Fill,GODTALOS)~+ ~Know this...the gods are watching. Your enemies will not stand to see you live. Be merciless... ~ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0) SetGlobal("k9milsertalkedcleric","GLOBAL",1) SetGlobal("k9milserevilcleric","GLOBAL",1) AddexperienceParty(300)~ SOLVED_JOURNAL @130174 EXIT
+~Kit(Player1Fill,GODTALOS)~+ ~Know that Talos the Destroyer watches over you all. Be merciless and destroy your enemies... ~ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0) SetGlobal("k9milsertalkedcleric","GLOBAL",1) SetGlobal("k9milserevilcleric","GLOBAL",1) AddexperienceParty(300)~ SOLVED_JOURNAL @130174 EXIT
END

IF ~~ THEN BEGIN fighter
SAY ~Ohh you think you know anything? This will be rich. Well, get to it!~
++ ~Many of you have probably never held a weapon before. The first thing you should learn about is your footing. Keeping yourself flat footed and in control will do far more for you during combat than any simple maneuver. Next, remember the importance of... ~ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0) SetGlobal("k9milsertalkedfighter","GLOBAL",1) AddexperienceParty(300)~ SOLVED_JOURNAL @130172 EXIT
END



IF ~~ THEN BEGIN checkingin
SAY ~We're doing as well as can be expected. All things considered, anyways.~ IF ~~ THEN EXIT
END


