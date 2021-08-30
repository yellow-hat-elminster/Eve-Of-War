BEGIN k9tynnos

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
SAY ~What is the status of the intruder? How did he even find us? I want an answer NOW.

Hmm... nevermind all that. It would seem our visitor is not one to waste precious time.~ IF ~~ THEN GOTO 1
END


IF ~~ THEN BEGIN 1

SAY ~Impressive that you have made it this far. I did not expect this level of boldness from anyone, least of all from a mere <PRO_RACE>. What am I to make of this incursion? Speak!~
++ ~I have come seeking Tynnos Argrim. Would that be you?~ GOTO 4
+~~ + ~Who are you?~ GOTO 2
+~~ + ~What is this place?~ GOTO 3
++ ~I go where I please.~ GOTO 5

END



IF ~~ THEN BEGIN 2

SAY ~The chosen call me the Watchful Skull. You may call me Tynnos Argrim. The more important question remains - who are you?~
+~Global("k9bhaalknows","GLOBAL",1) CheckStatGT(Player1,14,CHR)~+ ~I am a child of Bhaal.~ GOTO 6
+~Global("k9bhaalknows","GLOBAL",1) CheckStatLT(Player1,15,CHR)~+ ~I am a child of Bhaal.~ GOTO 7
++ ~My name is <CHARNAME>.~ GOTO 8
++ ~My name is not important.~ GOTO 9

END

IF ~~ THEN BEGIN 3

SAY ~Surely you jest. This is the Mountain of Skulls - a temple devoted to our lord Cyric, the Black Sun. Where did you think you were?~
++ ~To be honest I wasn't sure.~  GOTO 10
++ ~Waterdeep.~ GOTO 11
+~CheckStatLT(Player1,15,INT) CheckStatGT(Player1,8,INT)~+ ~The Twin Towers.~ GOTO 12
END


IF ~~ THEN BEGIN 4

SAY ~Perhaps. But tell me, why have you come here?~
+~Global("k9bhaalknows","GLOBAL",1) CheckStatGT(Player1,14,CHR)~+ ~Listen you Cyricist. I'm a child of Bhaal. I go where I want. How I want. With who I want.~ GOTO 6
+~Global("k9bhaalknows","GLOBAL",1) CheckStatLT(Player1,15,CHR)~+ ~Listen you Cyricist. I'm a child of Bhaal. I go where I want. How I want. With who I want. And there is nothing you or your backstabbing, ugly ass god can do about it.~ GOTO 30
++ ~I encountered a man named Bassilus near Beregost. His journal led me here.~ GOTO 13
++ ~I had heard rumours of a fortress of Cyric's followers built amongst the Cloud Peaks. I was curious and wanted to see such a place for myself.~ GOTO 14
END

IF ~~ THEN BEGIN 5

SAY ~Do you? And where has this attitude taken you now? Your path is more set than you realize.~ IF ~~ THEN GOTO 15
END


IF ~~ THEN BEGIN 6

SAY ~A Bhaalspawn? Here? Tell me, what did you hope to achieve by coming to this place?~
++ ~I encountered a man named Bassilus near Beregost. His journal led me here.~ GOTO 16
++ ~I had heard rumours of a fortress of Cyric's followers built amongst the Cloud Peaks. I was curious and wanted to see such a place for myself.~ GOTO 17
END



IF ~~ THEN BEGIN 7

SAY ~A Bhaalspawn? Here? You've made a fatal error in coming here child of Bhaal.~ IF ~~ THEN DO ~Enemy() Shout(99)~ EXIT
END

IF ~~ THEN BEGIN 8

SAY ~<CHARNAME>? Is that supposed to mean something to me?~
+~Global("k9bhaalknows","GLOBAL",1) CheckStatGT(Player1,14,CHR)~+ ~By itself I suppose not. Though the fact that I am a child of Bhaal might interest you.~ GOTO 6
+~Global("k9bhaalknows","GLOBAL",1) CheckStatLT(Player1,15,CHR)~+ ~By itself I suppose not. Though the fact that I am a child of Bhaal might interest you.~ GOTO 7
+~Global("k9Berrun","GLOBAL",1)~+ ~I helped clear Nashkel's mines of some kobolds and prevented its iron from being further tainted.~ GOTO 18
++ ~I suppose not.~ GOTO 19
END

IF ~~ THEN BEGIN 9

SAY ~True. Tell me, why have you come here?~
++ ~I'm the <PRO_SONDAUGHTER> of a god. I don't have the answer to you.~ GOTO 28
++ ~I encountered a man named Bassilus near Beregost. His journal led me here.~ GOTO 13
++ ~I had heard rumours of a fortress of Cyric's followers built amongst the Cloud Peaks. I was curious and wanted to see such a place for myself.~ GOTO 14
END

IF ~~ THEN BEGIN 10

SAY ~Do you normally traipse across Faerun with no clue as to your destination? Enough of this. Guards, kill them!~ IF ~~ THEN DO ~Enemy() Shout(99)~ EXIT
END

IF ~~ THEN BEGIN 11

SAY ~Does this look like the City of Splendors to you? Has your mind been set upon the busty servers of the Dripping Dagger?~
++ ~That last question was far too specific to not be describing a personal experience.~ GOTO 20
++ ~I won't dignify that with a response.~ GOTO 15
END


IF ~~ THEN BEGIN 12

SAY ~You think this is the Twin Towers??? DO YOU SEE TWO TOWERS? Enough of this. I'll not stand here and be compared to Haarken Akhmelere, the pusillanimous and feeble moron that he is. GUARDS TO ARMS. KILL THESE INTRUDERS!~ IF ~~ THEN DO ~Enemy() Shout(99)~ EXIT
END

IF ~~ THEN BEGIN 13

SAY ~Bassilus? Strange that he was found near Beregost. I recall him doing the Prince's work out in Zhentil's Keep I believe. Bah, what is your real reason for being here? What use could this journal be to anyone?

Wait...could this be one of Cyric's games? You don't seem the sort to be cavorting with my lord, but the thoughts of Cyric are a difficult thing to predict. Bah, I must know more. I must see this journal.~
++ ~Sure. Do you understand anything from it?~ DO ~TakePartyItem("k9scrl3f")~ GOTO 21
++ ~That won't be happening.~ GOTO 22
END

IF ~~ THEN BEGIN 14

SAY ~How touching. Truly. But I'm afraid you've done far too much damage here for me to let you live. Guards, kill them!~ IF ~~ THEN DO ~Enemy() Shout(99)~ EXIT
END

IF ~~ THEN BEGIN 15

SAY ~Enough of this. I will not stand to see my forces slaughtered!~ IF ~~ THEN DO ~Enemy() Shout(99)~ EXIT
END

IF ~~ THEN BEGIN 16

SAY ~Bassilus? Strange that he was found near Beregost. I recall him doing the Prince's work out in Zhentil's Keep I believe.

Why waste your time on someone as small as him? You are the spawn of a former god. Why lower yourself to dealing with the matters of such a trival person?~ 

++ ~I'm the <PRO_SONDAUGHTER> of a god. I don't have the answer to you.~ GOTO 28
++ ~Because I was curious where it might lead me.~ GOTO 23
++ ~My reasons are my own concern.~ GOTO 23

END

IF ~~ THEN BEGIN 17

SAY ~Do you normally traipse across Faerun with no clue as to your destination? You are the spawn of a former god. Why lower yourself to wandering the backwaters of the realms looking for menial work?

You must surely understand your place in this world. Most who walk the realms matter little in the end. They are tools to be discarded, nothing more. This was certainly Bhaal's plan for you, but his plans do not have to come to fruition. You are one of only a few that may choose their own path. Why would you not instead strive to carve a place for yourself among the gods?~ IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 18

SAY ~Indeed? Then you should know I owe you thanks. We've been raiding caravans for weeks looking for better quality iron.~ IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 19

SAY ~Enough of this. I will not stand to see my forces slaughtered at the hands of such an imbecile!~ IF ~~ THEN DO ~Enemy() Shout(99)~ EXIT
END

IF ~~ THEN BEGIN 20

SAY ~(One of Tynnos's guards snickers)~ IF ~~ THEN GOTO 25
END


IF ~~ THEN BEGIN 21

SAY ~Hmm...this journal is... interesting. Bassilus's thoughts are scattered, but with enough time I believe I can grow to understand them. I'm afraid I'll have to be keeping this. I simply can't be rid of it so soon.~ IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 22

SAY ~Then I'll take it off your corpse.~ IF ~~ THEN DO ~Enemy() Shout(99)~ EXIT
END


IF ~~ THEN BEGIN 23

SAY ~Bah, why do I bother? You waste your time here when you could be doing far greater things. Tis like speaking to a child. Very well, other Bhaalspawn will take what you refuse to. In the meantime I'm certain Cyric will reward me greatly for your death.~ IF ~~ THEN DO ~Enemy() Shout(99)~ EXIT
END


IF ~~ THEN BEGIN 24

SAY ~Still, can't have you running around my fortress slaughtering whomever you please. Guards, dispose of them!~ IF ~~ THEN DO ~Enemy() Shout(99)~ EXIT
END


IF ~~ THEN BEGIN 25

SAY ~I will not tolerate this insolence. Guards, dispose of them!~ IF ~~ THEN DO ~Enemy() Shout(99)~ EXIT
END



IF ~~ THEN BEGIN 26
SAY ~Wait, what is that over there? 

Don't you see them? The shadows.~ IF ~~ THEN GOTO 27
END


IF ~~ THEN BEGIN 27
SAY ~Mother! Father! What are you doing here? I killed you. I killed all of you! How is this possible? Intruder, I don't know what magic is at work here. But, I'll flay you alive for this!~ IF ~~ THEN DO ~Enemy() Shout(99)~ EXIT
END

IF ~~ THEN BEGIN 28
SAY ~Ahh, one glimmer out of you that suggests that you are something more than a complete moron. Very well, out of respect for the strength you have shown here today I will allow you to leave this place intact. But do not test my patience.~ IF ~~ THEN DO ~ SetGlobal("k9tynnosattack", "GLOBAL", 1) AddJournalEntry(@150180,QUEST)~  EXIT
END


IF ~~ THEN BEGIN 30
SAY ~That is where you are wrong. I suspect Cyric will reward us greatly for your death. Guards, kill these intruders!~ IF ~~ THEN DO ~Enemy() Shout(99)~ EXIT
END


