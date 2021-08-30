BEGIN k9hood

IF ~NumTimesTalkedTo(0)~ THEN
BEGIN k9irenicus
      SAY ~Yes...intriguing.~
		++ ~Sorry, do I know you?~
 			GOTO k9unsure
		+~~+ ~What is it you want old man?~
			GOTO k9oldman
END

IF ~~ THEN
BEGIN k9unsure
      SAY ~No... I don't believe we've met. That device you carry, where did you find it? Ohh don't be so surprised I know of it. There is very little I don't hear about in these parts, particularly when it involves magical disturbances this extraordinary.~
		++ ~I found it in a temple of Cyric in the Cloudpeaks.~
 			GOTO k9true
		+~~+ ~A passing merchant named Daran.~
			GOTO k9lie
		+~~+ ~That is none of your business.~
		        GOTO k9deflect
END


IF ~~ THEN
BEGIN k9oldman
      SAY ~What I truly want is something you lack the ability to acquire. However, for the moment that rod will do. Ohh don't be so surprised I know of it. There is very little I don't hear about in these parts, particularly when it involves magical disturbances this extraordinary. Tell me, where did you acquire it?~
		++ ~I found it in a temple of Cyric in the Cloudpeaks.~
 			GOTO k9true
		+~~+ ~A passing merchant named Daran.~
			GOTO k9lie
		+~~+ ~That is none of your business.~
		        GOTO k9deflect
END


IF ~~ THEN
BEGIN k9true
      SAY ~Intriguing. I suspect it was once an instrument of worshipers of the dead god Bhaal. Bhaal was known to keep traps in the places of his worship, which at one pointed included this "inn." If the right words were said, or if his high priest wielded this rod, an entire temple could cleansed.~ IF ~~ GOTO k9final
END

IF ~~ THEN
BEGIN k9lie
      SAY ~Intriguing. Perhaps it came into this merchants hands by way of Cyricists. They are the most likely sect to hold such artifacts.~ IF ~~ GOTO k9lie2
END

IF ~~ THEN
BEGIN k9lie2
      SAY ~I suspect it was once an instrument of worshipers of the dead god Bhaal. Bhaal was known to keep traps in the places of his worship, which at one pointed included this "inn." If the right words were said, or if his high priest wielded this rod, an entire temple could cleansed.~ IF ~~ GOTO k9final
END

IF ~~ THEN
BEGIN k9deflect
      SAY ~In truth it matters very little if you are honest with me or not. It probably came from the hands of Banites, or even more likely Cyricists. I suspect it was once an instrument of worshipers of the dead god Bhaal. Bhaal was known to keep traps in the places of his worship, which at one pointed included this "inn." If the right words were said, or if his high priest wielded this rod, an entire temple could cleansed.~ IF ~~ GOTO k9final
END


IF~~ THEN BEGIN k9final
SAY ~Hmm... I detect but a spark of the magic that once must have eminated from it. Whatever purpose the rod had it surely seems to have been depleted.~  IF ~~ GOTO k9final2
END

IF~~ THEN BEGIN k9final2
SAY ~Still, I had hoped this was a sign of *something* more. Unless there is something else I think I will be going.~

+~Global("k9bhaalknows", "GLOBAL", 1)~+ ~Actually yes. I recently learned that I am a <PRO_SONDAUGHTER> of Bhaal.~  GOTO k9final3
++ ~Nothing I can think of.~ GOTO k9final6

END


IF~~ THEN BEGIN k9final3
SAY ~Yes, that would explain why the device activated. Bhaal must have suspected that it would take decades before his children would rise to try to claim the throne for themselves. This device no doubt was intended to act as a failsafe to assist in cleansing his former holds prior to his return.~
IF ~~ GOTO k9final4
END

IF~~ THEN BEGIN k9final4
SAY ~Let it serve then as a reminder Bhaalspawn. You are born of murder, the very essence of that which takes life. You have power, that much is certain, but how will you use it?~
IF ~~ GOTO k9final5
END


IF~~ THEN BEGIN k9final5
SAY ~This is a question you may wish to reflect on...hmm...I don't believe you gave me your name.~
++ ~My name is <CHARNAME>.~  GOTO k9final7
++ ~And you won't be getting it either.~ GOTO k9final8
END

IF~~ THEN BEGIN k9final6
SAY ~Then I will depart.~
IF ~~ THEN DO ~SetGlobal("k9Irenicus","GLOBAL",1) EscapeArea()~ EXIT
END

IF~~ THEN BEGIN k9final7
SAY ~Well <CHARNAME> I will take my leave of you. Be mindful of what I have told you, as well as how many others you share this secret with.~
IF ~~ THEN DO ~SetGlobal("k9Irenicus","GLOBAL",1) EscapeArea()~ EXIT
END

IF~~ THEN BEGIN k9final8
SAY ~Well then I will take my leave of you. Be mindful of what I have told you, as well as how many others you share this secret with.~
IF ~~ THEN DO ~SetGlobal("k9Irenicus","GLOBAL",1) EscapeArea()~ EXIT
END

