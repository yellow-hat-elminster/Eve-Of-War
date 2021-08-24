BEGIN k9CenteT


IF ~Global("k9whateveritis", "GLOBAL", 2)~ THEN BEGIN 0

SAY ~Ha! Your pitiful magics were just strong enough. I have lifted what was left of his curse! That wretched Jon Irenicus shall pay.~ IF ~~ THEN DO ~SetGlobal("k9CenteolBye","GLOBAL",2) ~ GOTO 1

END

IF ~~ THEN BEGIN 1

SAY ~There may come a time when you will encounter the wrath of Jon Irenicus, much that I have. Would you like to hear my tale of him? It is knowledge that could serve you well.~
 ++ ~Very well.~  GOTO 2
   ++ ~That won't be necessary.~  GOTO 11
END


IF ~~ THEN BEGIN 2

SAY ~He came to this region searching for wealth and power. Irenicus first was drawn to Lady Tanova, a powerful mage and noble of Baldur's Gate. He loved her deeply and it was only a few months after they had first met that they were married.

Together they were a powerful couple and their marriage was the talk of the city.~ IF ~~ GOTO 3

END


IF ~~ THEN BEGIN 3
SAY ~I myself met him at a party in the Siamorphe estate. It was an elegant night of dancing and enriching conversation. 

It was then that I discovered that the more I learned of Irenicus the more I yearned for him. After learning of his marriage to Lady Tanova I stalked her day and night, learning her habits in the process. Soon she would be dead and Irenicus would be at my side.

As soon as I was able I enacted a plan to kill Tanova. Through it was difficult I managed to sneak into their estate in the dead of night. Once there I placed a deadly poison into one of her drinks. That night as I quietly travelled back to my tower Irenicus watched as his wife was slowly dying at the hands of my poison. Sensing her death close at hand he became furious and divined the location of her killer.~ IF ~~ GOTO 4

END

IF ~~ THEN BEGIN 4
SAY ~Upon her death he teleported himself to the doors of my tower. Desirous to finally consummate our love I allowed him entry.

Jon disabled me with his spells, then he cursed me to that horrid body and set spiders to feed me and keep me alive. So you see, this is how you have come to find me. This is the man you should fear.~

 ++ ~It seems as though *you* are the one who wronged him. Why should I have any reason to fear him?~  GOTO 6
 ++ ~You say Irenicus believed that Lady Tanova had died, yet you clearly believe this not to be the case. What makes you so sure?~  GOTO 7


END

IF ~~ THEN BEGIN 6
SAY ~Irenicus hid his intentions well, but I am not so blind as to have not seen through at least some of his aims. He seeks wealth and power to restore something that has been lost to him, that much is clear. What that is I do not know, but you would be wise to stay out of his way.~

   ++ ~You say Irenicus believed that Lady Tanova had died, yet you clearly believe this not to be the case. What makes you so sure?~  GOTO 8

END

IF ~~ THEN BEGIN 7
SAY ~In the time I spent following Lady Tanova I learned that she spent much of her time with Irenicus's sister, Bodhi. The two of them seemed close. However, learning more of Bodhi proved to be difficult. She seemed to only leave her house at odd hours - only to disappear into the shadows each time I or my associates attempted to follow her.

It is possibly, and not entirely unlikely, that Irenicus's sister is afflicted with vampirism. It is not a fate most of the nobility would gladly accept, but it would explain her behaviour. If that is the case then given her strong bond with Lady Tanova it is possible she saved Tanova from death at the hands of my poison.~

 ++ ~It seems as though *you* are the one who wronged Irenicus. Why should I fear this him?~  GOTO 9


END



IF ~~ THEN BEGIN 8
SAY ~In the time I spent following Lady Tanova I learned that she spent much of her time with Irenicus's sister, Bodhi. The two of them seemed close. However, learning more of Bodhi proved to be difficult. She seemed to only leave her house at odd hours - only to disappear into the shadows each time I or my associates attempted to follow her.

It is possibly, and not entirely unlikely, that Irenicus's sister is afflicted with vampirism. It is not a fate most of the nobility would gladly accept, but it would explain her behaviour. If that is the case then given her strong bond with Lady Tanova it is possible she saved Tanova from death at the hands of my poison.~ IF ~~  GOTO 10

END

IF ~~ THEN BEGIN 9
SAY ~Irenicus hid his intentions well, but I am not so blind as to have not seen through at least some of his aims. He seeks wealth and power to restore something that has been lost to him, that much is clear. What that is I do not know, but you would be wise to stay out of his way.~ IF ~~  GOTO 10

END


IF ~~ THEN BEGIN 10
SAY ~Well my dear we have chatted long enough. If you are smart you will heed my advice. Avoid Irenicus if at all possible.~ IF ~~ THEN DO ~ AddexperienceParty(3000) EscapeArea()~ SOLVED_JOURNAL @66001 EXIT

END



IF ~~ THEN BEGIN 11
SAY ~Very well. Goodbye.~ IF ~~ THEN DO ~ AddexperienceParty(10000) EscapeArea()~ SOLVED_JOURNAL @66001 EXIT

END