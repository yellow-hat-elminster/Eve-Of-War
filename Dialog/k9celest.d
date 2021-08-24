BEGIN k9celest


IF ~Global("k9CelestTransform","GLOBAL",0)~ THEN BEGIN 0
SAY ~<CHARNAME>, I see that you have come here to this place, by your own will no less.~ IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
SAY ~Know that this is more than a simple test. The Prince of Lies cannot be trusted. It falls to you to ensure that you, and you alone, rise to claim the throne for yourself.~
+~Global("k9bhaalknows","GLOBAL",0)~+ ~What throne?~ DO ~SetGlobal("k9bhaalknows","GLOBAL",1) AddJournalEntry(@66064339,QUEST)~ GOTO 2
++ ~What are you?~ GOTO 3
++ ~Why are you here?~ DO ~AddJournalEntry(@66064338,QUEST) AddJournalEntry(@66064340,QUEST)~  GOTO 4
++ ~Actually I think I'll be going now.~ EXIT
END


IF ~~ THEN BEGIN 2
SAY ~The throne of your late father, Bhaal.~
+~CheckStatGT(Player1Fill, 8, INT)~+ ~Bhaal, the former Lord of Murder, was my father?~ GOTO 5
+~CheckStatLT(Player1Fill, 9, INT)~+ ~I don't understand. Who was Bhaal?~ GOTO 6
END

IF ~~ THEN BEGIN 3
SAY ~I am an archon, a being of light and goodness across the planes.~
+~Global("k9bhaalknows","GLOBAL",0)~+ ~What throne?~ DO ~SetGlobal("k9bhaalknows","GLOBAL",1) AddJournalEntry(@66064339,QUEST)~ GOTO 2
++ ~Why are you here?~ DO ~AddJournalEntry(@66064338,QUEST) AddJournalEntry(@66064340,QUEST)~ GOTO 4
++ ~I'll be going now.~ EXIT
END




IF ~~ THEN BEGIN 4
SAY ~I was dispatched to this place when the Celestial Council learned of Cyric's plans to bring you here.~
+~CheckStatGT(Player1Fill, 14, INT) Global("k9bhaalknows","GLOBAL",0)~+ ~There is no such thing as the Celestial Council.~ DO ~AddJournalEntry(@66064342,QUEST)~ GOTO 7
+~CheckStatGT(Player1Fill, 14, INT) Global("k9bhaalknows","GLOBAL",1)~+ ~There is no such thing as the Celestial Council.~ DO ~AddJournalEntry(@66064341,QUEST)~ GOTO k97
+~CheckStatLT(Player1Fill, 15, INT) CheckStatGT(Player1Fill, 8, INT)~+ ~I've never heard of the Celestial Council.~ GOTO 8
+~Global("k9bhaalknows","GLOBAL",0)~+ ~Earlier you mentioned a throne. What throne was that?~ DO ~SetGlobal("k9bhaalknows","GLOBAL",1) AddJournalEntry(@66064339,QUEST)~ GOTO 2
++ ~What are you?~ GOTO 3
++ ~What are Cyric's plans for me?~  GOTO 9
++ ~I'll be going now.~ EXIT
END


IF ~~ THEN BEGIN 5
SAY ~Yes. I had not realized you had not yet learned of this.~
++ ~What are you?~ GOTO 3
++ ~Why are you here?~ DO ~AddJournalEntry(@66064338,QUEST) AddJournalEntry(@66064340,QUEST)~  GOTO 4
++ ~I'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 6
SAY ~The former Lord of Murder. The one Cyric murdered a decade ago in order to assure his ascent to godhood.~
++ ~So you are saying Bhaal was my father?~ GOTO 5
++ ~What are you?~ GOTO 3
++ ~Why are you here?~ DO ~AddJournalEntry(@66064338,QUEST) AddJournalEntry(@66064340,QUEST)~  GOTO 4
++ ~I'll be going now.~ EXIT
END


IF ~~ THEN BEGIN 7
SAY ~Indeed Bhaalspawn, there is not.~
++ ~Then why are you really here?~ DO ~SetGlobal("k9CelestTransform","GLOBAL",1) ClearAllActions()
StartCutSceneMode()
StartCutScene("k9celest")~ EXIT
END

IF ~~ THEN BEGIN k97
SAY ~Indeed Bhaalspawn, there is not.~
++ ~Then why are you really here?~ DO ~SetGlobal("k9CelestTransform","GLOBAL",1) ClearAllActions()
StartCutSceneMode()
StartCutScene("k9celest")~ EXIT
END

IF ~~ THEN BEGIN 8
SAY ~We do not make ourselves known to mortals lightly.~
+~Global("k9bhaalknows","GLOBAL",0)~+ ~Earlier you mentioned a throne. What throne was that?~ DO ~SetGlobal("k9bhaalknows","GLOBAL",1)~ GOTO 2
++ ~What are you?~ GOTO 3
++ ~What are Cyric's plans for me?~  GOTO 9
++ ~I'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 9
SAY ~Of that we are unsure.~
++ ~What are you?~ GOTO 3
++ ~I'll be going now.~ EXIT
END  

IF ~Global("k9celesttest2","GLOBAL",0)~ THEN BEGIN 10
SAY ~(Suddenly, the voice of the celestial fills your head - yet no words are spoken by it.) 

Cyric is not the only one with allies in this domain. When I sensed your arrival I knew you could be the key to his defeat. Many here seek an end to his mad reign, but far too few to make a difference. However, with the Bhaalspawn matter holding his attention we may yet have an opportunity to be rid of him.~ IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
SAY ~The bhaalspawn have already brought much doubt amongst his followers. To see their god challenged by mere mortals so soon after Cyric's own apotheosis presents a challenge to even his most fervent believers.

Should his worship in the Prime Material falter further, should more of his holdings fall, then perhaps an opportunity will present itself.~   IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
SAY ~It is for this reason that I have been following your exploits for some time. Few of your brethren would have possessed the strength to invade one of Cyric's strongholds, let alone possess the intelligence to see through my lie. I suspect you are one of the few Bhaalspawn capable enough to take the throne of your late father for themselves.~ IF ~~ THEN DO ~AddJournalEntry(@66064343,QUEST)~ GOTO 13
END

IF ~~ THEN BEGIN 13
SAY ~I ask of you a favor. Should it come to pass that you are the last of the Bhaalspawn, let the matter go. Let the Lord of Murder be reborn as was meant and I will ensure you more power and prestige than you could ever imagine. Far more than you would achieve as a god.~
++ ~This all sounds fairly dubious. How do I know I can even trust you?~ DO ~SetGlobal("k9celesttest2","GLOBAL",1)~  GOTO 16
+~Global("k9bhaalknows","GLOBAL",0)~+ ~What exactly do you mean by Bhaalspawn?~ DO ~SetGlobal("k9celesttest2","GLOBAL",1)~   GOTO k914
++ ~Hold on a second, what exactly are you?~ DO ~SetGlobal("k9celesttest2","GLOBAL",1)~  GOTO 14
++ ~Don't be ridiculous. No mortal could have more power or prestige than a god.~ DO ~SetGlobal("k9celesttest2","GLOBAL",1)~ GOTO 15
++ ~How are you in any position to offer me any power?~ DO ~SetGlobal("k9celesttest2","GLOBAL",1)~ GOTO 26
++ ~Why would you want Bhaal's return?~  DO ~SetGlobal("k9celesttest2","GLOBAL",1)~ GOTO 27
+~GlobalGT("k9bhaalknows","GLOBAL",0)~+ ~I agree to your proposal. Should come to be that I am the last of the Bhaalspawn, I will reject godhood in order to allow Bhaal to live again.~  DO ~SetGlobal("k9celesttest2","GLOBAL",1) SetGlobal("k9CelestAgree","GLOBAL",1) AddJournalEntry(@66064349,QUEST_DONE)~ GOTO 28
++ ~I think I'll pass.~ DO ~SetGlobal("k9celesttest2","GLOBAL",1)~  GOTO 17
END


IF ~~ THEN BEGIN 14
SAY ~There was a time, centuries ago, when I walked the halls of Celestia.~ IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN k914
SAY ~You are the spawn of the former Lord of Murder, Bhaal. I had thought you aware of this.~ IF ~~ THEN DO ~SetGlobal("k9bhaalknows","GLOBAL",1) AddJournalEntry(@66064339,QUEST)~ GOTO 20
END

IF ~~ THEN BEGIN 15
SAY ~The gods themselves constantly struggle to maintain their power. Many are killed in the process, left to float amongst the Astral Planes. Can you say you have heard of Malyk, Moander, or Ibrandul? What prestige or influence have they had on your existence? Should you choose to ascend to godhood your fate would likely be no different than these lessor powers.~
++ ~But surely the porfolio of murder gives me an advantage over those others?~ GOTO 24
END

IF ~~ THEN BEGIN 16
SAY ~I may have fallen in the eyes of Mount Celestial long ago, but my word remains as true then as it is now. Should you choose to return Bhaal to his rightful place I will honour our agreement.~ IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 17
SAY ~Hmmm...I had hoped for more from the <PRO_SONDAUGHTER> of Bhaal. Perhaps in time you will grow to better understand the fate that awaits you otherwise. In the meantime, it would be best if this matter were not brought to the attention of Cyric.~ IF ~~ THEN GOTO 20
END

 IF ~~ THEN BEGIN 18
 SAY ~Though that was long ago. Before I fell from their graces. Today I reside here, a divine servant of The Mad God.~
++ ~This all sounds fairly dubious. How do I know I can even trust you?~ DO ~SetGlobal("k9celesttest2","GLOBAL",1)~  GOTO 16
+~Global("k9bhaalknows","GLOBAL",0)~+ ~What exactly do you mean earlier when you said I was a Bhaalspawn?~ DO ~SetGlobal("k9celesttest2","GLOBAL",1)~   GOTO k914
++ ~I take it then that you are some kind of celestial. I didn't think one of your kind could ever serve a being as chaotic and evil as Cyric.~ DO ~SetGlobal("k9celesttest2","GLOBAL",1)~  GOTO 19
++ ~I don't understand. Why the deception?~ DO ~SetGlobal("k9celesttest2","GLOBAL",1)~  GOTO 21
++ ~That offer you spoke of earlier was ridiculous. No mortal could have more power or prestige than a god.~ DO ~SetGlobal("k9celesttest2","GLOBAL",1)~ GOTO 15
++ ~How are you in any position to offer me any power?~ DO ~SetGlobal("k9celesttest2","GLOBAL",1)~ GOTO 26
++ ~Why would you want Bhaal's return?~  DO ~SetGlobal("k9celesttest2","GLOBAL",1)~ GOTO 27
+~GlobalGT("k9bhaalknows","GLOBAL",0)~+ ~I agree to your proposal. Should come to be that I am the last of the Bhaalspawn, I will reject godhood in order to allow Bhaal to live again.~  DO ~SetGlobal("k9celesttest2","GLOBAL",1) SetGlobal("k9CelestAgree","GLOBAL",1) AddJournalEntry(@66064349,QUEST_DONE)~ GOTO 28
++ ~I think I'll be going now.~ DO ~SetGlobal("k9celesttest2","GLOBAL",1)~  EXIT
END

 IF ~~ THEN BEGIN 19
 SAY ~It was never my intention to do so, at least at first. Upon my removal from Mount Celestial I searched through many planes looking to find a new patron. After some time I came to become a servant of your father, Bhaal. Bhaal viewed murder as one might a tool, a necessity to be used with precision. His priest murdered, true, but they did so with a far greater degree of care than those that follow Cyric. In my years of battling evil these are views that I had long ago come to respect, despite the views of my kin.~ IF ~~ THEN GOTO 23
 END

 
 IF ~True()~ THEN BEGIN 20
SAY ~Is there something else?~
++ ~This all sounds fairly dubious. How do I know I can even trust you?~ DO ~SetGlobal("k9celesttest2","GLOBAL",1)~  GOTO 16
+~Global("k9bhaalknows","GLOBAL",0)~+ ~What exactly do you mean earlier when you said I was a Bhaalspawn?~ DO ~SetGlobal("k9celesttest2","GLOBAL",1)~   GOTO k914
++ ~Hold on a second, what exactly are you?~ DO ~SetGlobal("k9celesttest2","GLOBAL",1)~  GOTO 14
++ ~I don't understand. Why the deception about what you really are?~ DO ~SetGlobal("k9celesttest2","GLOBAL",1)~  GOTO 21
++ ~Earlier you said something rather ridiculous. I don't believe any mortal could have more power or prestige than a god.~ DO ~SetGlobal("k9celesttest2","GLOBAL",1)~ GOTO 15
++ ~How are you in any position to offer me any power?~ DO ~SetGlobal("k9celesttest2","GLOBAL",1)~ GOTO 26
++ ~Why would you want Bhaal's return?~  DO ~SetGlobal("k9celesttest2","GLOBAL",1)~ GOTO 27
++ ~I think I'll pass on your earlier offer.~ DO ~SetGlobal("k9celesttest2","GLOBAL",1)~  GOTO 17
+~GlobalGT("k9bhaalknows","GLOBAL",0)~+ ~I agree to your proposal. Should come to be that I am the last of the Bhaalspawn, I will reject godhood in order to allow Bhaal to live again.~  DO ~SetGlobal("k9celesttest2","GLOBAL",1) SetGlobal("k9CelestAgree","GLOBAL",1) AddJournalEntry(@66064349,QUEST_DONE)~ GOTO 28
++ ~I'll be going now.~ DO ~SetGlobal("k9celesttest2","GLOBAL",1)~ EXIT
END

 IF ~~ THEN BEGIN 21
 SAY ~It was necessary until I knew you truly comprehended what we seek to accomplish.~ IF ~~ THEN GOTO 20
 END

 IF ~~ THEN BEGIN 23
SAY ~Faced with little other choice, on his passing I swore allegiance to Cyric.~
++ ~This all sounds fairly dubious. How do I know I can even trust you?~ DO ~SetGlobal("k9celesttest2","GLOBAL",1)~  GOTO 16
+~Global("k9bhaalknows","GLOBAL",0)~+ ~What exactly do you mean earlier when you said I was a Bhaalspawn?~ DO ~SetGlobal("k9celesttest2","GLOBAL",1)~   GOTO k914
++ ~Hold on a second, what exactly are you?~ DO ~SetGlobal("k9celesttest2","GLOBAL",1)~  GOTO 14
++ ~I don't understand. Why the deception about what you really are?~ DO ~SetGlobal("k9celesttest2","GLOBAL",1)~  GOTO 21
++ ~Earlier you said something rather ridiculous. I don't believe any mortal could have more power or prestige than a god.~ DO ~SetGlobal("k9celesttest2","GLOBAL",1)~ GOTO 15
++ ~How are you in any position to offer me any power?~ DO ~SetGlobal("k9celesttest2","GLOBAL",1)~ GOTO 26
++ ~Why would you want Bhaal's return?~  DO ~SetGlobal("k9celesttest2","GLOBAL",1)~ GOTO 27
++ ~I think I'll pass on your earlier offer.~ DO ~SetGlobal("k9celesttest2","GLOBAL",1)~  GOTO 17
+~GlobalGT("k9bhaalknows","GLOBAL",0)~+ ~If it should come to be that I am the last of the Bhaalspawn, I will reject godhood in order to allow Bhaal to live again.~  DO ~SetGlobal("k9celesttest2","GLOBAL",1) SetGlobal("k9CelestAgree","GLOBAL",1) AddJournalEntry(@66064349,QUEST_DONE)~ GOTO 28
++ ~I'll be going now.~ DO ~SetGlobal("k9celesttest2","GLOBAL",1)~  EXIT
END


IF ~~ THEN BEGIN 24
 SAY ~Do you not think that Loviatar or Malar would not seek to further their status in the cosmos with your death? If not then you are sadly mistaken. Even Bhaal was forced to serve Bane to preserve himself.~ IF ~~ THEN GOTO 25
 END

 IF ~~ THEN BEGIN 25
 SAY ~Your life would be one of constant struggle, a struggle to stay alive amongst deities far more experienced in such matters than you.~ IF ~~ THEN  GOTO 20
 END

 IF ~~ THEN BEGIN 26
 SAY ~I have been traveling the planes for centuries. In that time I have acquired my own degree of powerful items. Should you do as I say, such power will be yours.~ IF ~~ THEN  GOTO 20
 END

  IF ~~ THEN BEGIN 27
 SAY ~Cyric is a fool that has shown little regard for the consequences of his actions. He treats the portfolio of murder with reckless disregard for the responsibility that it entails. I seek to bring the true Lord of Murder back from death to return order to the portfolio.~ IF ~~ THEN  GOTO 20
 END
 
 
   IF ~~ THEN BEGIN 28
 SAY ~Then I look forward to that day.~ IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("k9celcut")~ EXIT
 END

