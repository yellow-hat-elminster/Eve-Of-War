BEGIN bk9Jenor

CHAIN IF ~Global("k9JenoraNeera","GLOBAL",1)~ THEN bk9Jenor 0
~I have watched your casting with some trepidation, wild mage. I wonder, how did you come to learn spellcasting?~
DO ~SetGlobal("k9JenoraNeera","GLOBAL",2)~
== BDNEERAJ ~I learned to cast when I lived in the High Forest. Had a mentor there, Frixis, taught me about reading and controlling magic. Kind of a boring old coot really. Never really understood why it was we were always studying, when magic just seems so easy. Ya know?~
=  ~Anyways, there was kind of an accident. It wasn't really my fault. Well, ok, kind of I suppose. My magic just can be a bit rough at times. Anyways, old Frixis, wasn't having any of it. Had to get out of there.~
== bk9Jenor ~I understand. The temptation to draw directly upon the Weave is present for all mages, but we must remember to trust in the wisdom of Azuth and seek to better understand the Weave. To ignore our boundaries would be foolhardy - if not dangerous.~
== BDNEERAJ ~Ugh, I DON'T need a lecture. Can we just drop this?~
EXIT

CHAIN IF ~Global("k9JenoraNeera","GLOBAL",3)~ THEN bk9Jenor 1
~I wonder Neera, you say you are from the High Forest. Have you ever heard of Karse?~
DO ~SetGlobal("k9JenoraNeera","GLOBAL",4)~
== BDNEERAJ ~Yea, isn't that some ruin? Frixis never seemed to keen on any of us to go there. I think I recall reading something about a lich. What about it?~
== bk9Jenor ~I think you may connect with the story of its creation more than you think. Tell me, have you ever been taught the tale of Karsus's Folly?~
== BDNEERAJ ~Let me guess, some old guy did something involving wild magic and now *everyone* talks about it as every wild mage might be the next Karsus. Am I that far off?~
== bk9Jenor ~You are somewhat mistaken. Karsus was no wild mage - at least not as far as I'm aware. Rather he existed at a time when mages had far more freedoms on what magic they could cast.~
= ~Karsus was an extraordinary mage for his time you see, and like many mages before him he let this power control his actions. He felt strongly in his worth in becoming a god and with that goal in mind he created and cast a spell that would drain the powers of a god into him. The goddess that he chose for this was the first incarnation of the goddess of magic - Mystryl.~
== BDNEERAJ ~You really aren't going to drop this whole lecturing thing. Now aren't you? Fine, I'll play along. Let me guess, something went wrong. Now every new mage from here to Calimshan has to hear about it.~
== bk9Jenor ~You are quite correct.~
= ~You see, Karsus's spell succeeded for but a brief moment. However, the consequences were devastating. Mystryl was forced to sacrifice herself to save the Weave. Karsus was petrified and fell to the ground. Some say that at Karse lies his final resting place.~
== BDNEERAJ ~So I should avoid casting spells that will cause the end of the world. Got it.~
EXIT



CHAIN IF ~Global("k9JenoraDorn","GLOBAL",1)~ THEN bk9Jenor 2
~Tell me of yourself Half-Orc. How did you come to know <CHARNAME>?~
DO ~SetGlobal("k9JenoraDorn","GLOBAL",2)~
== BDDORNJ ~You stand before the Butcher of Barrow and this is what you ask? <CHARNAME> has so far proven themself to be worthy of my time. What more is there to be said?~
== bk9Jenor ~Surely there is more to you than just killing?~
== BDDORNJ ~Fulfilling my master's wishes leaves little time for any other pleasures.~
== bk9Jenor ~Your master? To whom do you serve?~
== BDDORNJ ~That is none of your concern.~
= ~<CHARNAME> if you wish the cleric to live you'll keep your pet on a shorter leash.~
EXIT

CHAIN IF ~Global("k9JenoraViconia","GLOBAL",1)~ THEN bk9Jenor 3
~I should think <CHARNAME> had more sense to trust one of your kind. Tell me, why exactly are you here?~
DO ~SetGlobal("k9JenoraViconia","GLOBAL",2)~
== BDVICONJ ~L'og'elend telanthe. Speak carefully, wael, lest I gut you where you stand.~
== bk9Jenor ~It seems your reputation is well earned, dark one.~
== BDVICONJ ~Dos ph'Hij'ik. Begone, inlu'thi, return to the trees. <CHARNAME> no longer requires your presence here.~
EXIT

CHAIN IF ~Global("k9JenoraMinsc","GLOBAL",1) InParty("Dynaheir") See("Dynaheir")~ THEN bk9Jenor 4
~Tell me Minsc, why do you travel with a hamster?~
DO ~SetGlobal("k9JenoraMinsc","GLOBAL",2)~
== BDDYNAHJ  ~Why indeed? If thou learns themselves an answer to this I would be most interested in hearing it.~
== BDMINSCJ ~Boo is no ordinary hamster. He is a miniature giant space hamster! Never could you ask for a finer companion.~
== bk9Jenor ~Forgive me Minsc but that does not seem plausible. I have read much on travel between our world and others. Never have I heard of space hamsters, let alone a spacefaring species of them.~
== BDDYNAHJ ~Perhaps thou should consider focussing on other, more serious, matters.~
== bk9Jenor ~I would think Minsc capable of answering my question himself.~
== BDMINSCJ ~The little lady doesn't believe in you Boo. See how he squeeks? Boo knows more than either of us I think.~
== bk9Jenor ~Surely any hamster squeeks. Dynaheir, can you not see this man is ill?~
== BDDYNAHJ ~Tis not the place for such questions. If thou wishes we can speak more on this later. Alone.~

EXIT

CHAIN IF ~Global("k9JenoraMinsc","GLOBAL",1) !InParty("Dynaheir")~ THEN bk9Jenor 5
~Tell me Minsc, why do you travel with a hamster?~
DO ~SetGlobal("k9JenoraMinsc","GLOBAL",2)~
== BDMINSCJ ~Boo is no ordinary hamster. He is a miniature giant space hamster! Never could you ask for a finer companion.~
== bk9Jenor ~Forgive me Minsc but that does not seem plausible. I have read of skyships and the travel between our world and others. Never have I heard of space hamsters, let alone a spacefaring species of them.~
== BDMINSCJ ~The little lady doesn't believe in you Boo. See how he squeeks? Boo knows more than either of us I think.~
EXIT

CHAIN IF ~Global("k9JenoraBaeloth","GLOBAL",1)~ THEN bk9Jenor 6
~It would seem <CHARNAME> has a shred of faith in you. What else could explain your presence here dark skin?~
DO ~SetGlobal("k9JenoraBaeloth","GLOBAL",2)~
== BDBAELOJ ~What an excellent, evoking, epitome. Enamore yourself elsewhere, elf. I have plans to expedite.~
EXIT

CHAIN IF ~Global("k9JenoraCorwin","GLOBAL",1)~ THEN bk9Jenor 7
~Hold a moment, Corwin. I would have words with you.~
DO ~SetGlobal("k9JenoraCorwin","GLOBAL",2)~
== BDCORWIJ ~Fine, but let's make this quick. I'd like to head out soon. We have a long road ahead of us.~
== bk9Jenor ~Then I will be blunt. Why you are even here? Surely there are others who could have taken this assignment.~
== BDCORWIJ ~I'm here to assist <CHARNAME> in defeating Caelar. Not much more to be said than that.~
EXIT

CHAIN IF ~Global("k9JenoraCorwin","GLOBAL",3)~ THEN bk9Jenor 8
~I would speak with you again Corwin, if you will hear it.~
DO ~SetGlobal("k9JenoraCorwin","GLOBAL",4)~
== BDCORWIJ ~Sure, I guess. What's this about?~
== bk9Jenor ~I wish to apologize for my line of questioning earlier. I suppose it was rude of me to question your reasons for being here.~
== BDCORWIJ ~Don't think much of it. Can't say I'd be here today if I couldn't handle a few questions.~
EXIT



