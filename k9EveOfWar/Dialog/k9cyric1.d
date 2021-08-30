BEGIN k9cyric1

//level 1




IF ~ Global("k9cyrictalk", "GLOBAL", 0)~ THEN
BEGIN k9cyrictalk
      SAY ~Ha ha! I was wondering when one of your kind would dare to try to storm one of my strongholds!
      
I hope you don't mind my insisting on this private conversation. You and I have some talking to do.~
		+~CheckStatGT(Player1Fill, 15, WIS) CheckStatGT(Player1Fill, 6, INT)~+ ~I can feel you reaching into my mind. Who are you?~
			GOTO k9where2
		+~CheckStatGT(Player1Fill, 15, INT)~+ ~Is this some kind of an illusion?~
			GOTO k9where3
		+~CheckStatGT(Player1Fill, 6, INT)~+ ~Wait, where am I?~
 			GOTO k9where
		+~CheckStatLT(Player1Fill, 7, INT)~+ ~Whut is dis?~
			GOTO k9where4
		+~NumInPartyGT(1)~+ ~What have you done to the other members of my group?~
			GOTO k9where5
END




IF ~~ THEN
BEGIN k9where
	SAY ~Of all the questions you could ask while standing before *me* THIS is the best you could muster?~
        ++ ~Ok then. Who are you?~ GOTO k9cyricwho
        ++ ~Well, I'm clearly not back in Candlekeep. Considering the circumstances it seemed a worthy enough question.~ GOTO k9cyricrebuff
END


IF ~~ THEN
BEGIN k9where2
	SAY ~Hmm...I'll admit I didn't think you had the fortitude for that. I can see why Ao is so insistent on my non-interference. What a bothersome affair really, and hardly worth my time, yet here you are interfering in my own affairs.~
        ++ ~Just a minute. Who are you?~ DO ~ ActionOverride("k9cyric",SetName(@66034))~ GOTO k9cyricwho
END



IF ~~ THEN
BEGIN k9where3
	SAY ~Well yes, I suppose you could say so. That is hardly of any consequence at the moment.~ IF ~~ GOTO k9yes
END


IF ~~ THEN
BEGIN k9where4
	SAY ~Ugh of all the spawn of Bhaal I had to find the stupid one.~
        ++~Urr don't be callin me stupid.~ GOTO k9dumb
        ++~Urr you gonna pay for that.~ GOTO k9dumb
END

IF ~~ THEN
BEGIN k9where5
      SAY ~We won't be needing their involvement in this matter. Consider them indisposed for the moment. Don't worry. They are free from harm.~ IF ~~ GOTO k9yes
      END



//level 2   

IF ~~ THEN
BEGIN k9Cyric
	SAY ~Yes, yes, *that* Cyric.~  IF ~~ THEN DO ~ActionOverride("k9cyric",SetName(@66034)) SetGlobal("k9cyricname","GLOBAL",1)~ GOTO k9yes
END

IF ~~ THEN
BEGIN k9cyricrebuff
	SAY ~I suppose. Though really, of *all* the places for your mind to wander to you chose this? How dull.~ IF ~~ THEN GOTO k9benign
 END


IF ~~ THEN 
BEGIN k9benign
SAY ~The place does seem to lack something special - something that will really make it stand out. Perhaps we mount someone's head up on one of the walls. I suppose that would improve this rather drab place.~ IF ~~  GOTO k9cyricrebuff2
END


IF ~~ THEN
BEGIN k9cyricrebuff2
	SAY ~Then again, I suppose that would just clash with the floors. Hmm...what do you think?~
	++ ~Hard to say really. Who are you again?~ DO ~ActionOverride("k9cyric",SetName(@66034))  ~ GOTO k9cyricwho
	++ ~Sorry, who are you?~ DO ~ActionOverride("k9cyric",SetName(@66034))  ~ GOTO k9cyricwho
END

IF ~~ THEN
BEGIN k9cyricwho
	SAY ~What do you mean who am I??? Is it not obvious? I'm Cyric!

Yes, yes, *that* Cyric.~ IF ~~ THEN DO ~SetGlobal("k9cyricname","GLOBAL",1)~ GOTO k9yes
END

IF ~~ THEN
BEGIN k9cyricwho2
	SAY ~What do you mean who am I??? Is it not obvious? I'm Cyric!

Yes, yes, *that* Cyric.~ IF ~~ THEN DO ~SetGlobal("k9cyricname","GLOBAL",1)~ GOTO k9somethingelse
END

IF ~~ THEN
BEGIN k9cyricwho3
	SAY ~Cyric!...

The reigning Lord of Murder? The Prince of Lies? The Mad God? The god of deception, illusion, intrigue, lies, murder, strife? Is none of this ringing any bells? I half expected *you* to have heard of me.~ IF ~~ THEN   GOTO k9somethingelse
END


IF ~~ THEN
BEGIN k9cyricwho4
	SAY ~What do you mean who am I??? Is it not obvious? I'm Cyric!

Yes, yes, *that* Cyric.~ IF ~~ THEN DO ~SetGlobal("k9cyricname","GLOBAL",1) ActionOverride("k9cyric",SetName(@66034))~ GOTO k9NotAnswering2
END



IF ~~ THEN
BEGIN k9dumb
	SAY ~I'm mortified...truly.~ IF ~~  GOTO k9yes
END



//level 3

IF ~~ THEN
BEGIN k9yes
	SAY ~In any case I've brought you here because you and I have to have a little chat. To be honest, I hardly expected someone of *your* lineage to try something this bold. At least so soon.~ IF ~~ THEN GOTO k9cyricbhaal
        END

IF ~~ THEN BEGIN k9cyricbhaal
        SAY ~I just had to see for myself the fool that would do such a thing. Tell me, why would you defile the stronghold of a god?~  
        +~Global("k9cyricname","GLOBAL",0)~+ ~Sorry, who are you?~ DO ~	ActionOverride("k9cyric",SetName(@66034))  ~ GOTO k9cyricwho4
        +~PartyHasItem("k9scrl3f")~+ ~I found this journal that led me here.~ DO ~TakePartyItem("k9scrl3f")~ GOTO k9bassilusus
        ++ ~I don't have to answer to the likes of you.~ GOTO k9NotAnswering
        ++ ~My reasons are my own.~ GOTO k9NotAnsweringOk
END

IF ~~ THEN BEGIN k9bassilusus
        SAY ~What journal? What in blazes are you talking about?

Hmm...this really wasn't meant for you. One of my followers created a magical book. It was to destined to become my greatest work you see. A tome that would perfectly detail my life.~ IF ~~ THEN GOTO k9fools
        END



IF ~~ THEN BEGIN k9fools

SAY ~The magic in it however was flawed. So I had his child do the work instead. And a wonderful job she did too.

In any case, this must be the child's father. The fool had no idea what he was doing. He experimented with magic that was beyond his ability and it clearly drove him mad. Pff... Zhentil's Keep falling. To Giants no less! Total nonsense.

Still, best I keep hold of this. For your own sake of course.~ IF ~~ THEN DO ~AddJournalEntry(@15016, QUEST)~ GOTO k9somethingelse
END



IF ~~ THEN BEGIN k9NotAnsweringOk
        SAY ~That they are. Not that any of this really matters mind you. I doubt you have what it takes to survive what is coming. I suppose us mere immortals will just have to wait and see.~ IF ~~ THEN GOTO k9bye
        END


IF ~~ THEN BEGIN k9NotAnswering
        SAY ~No I suppose you don't. Not that any of this really matters mind you. I doubt you have what it takes to survive what is coming. I suppose us mere immortals will just have to wait and see.~ IF ~~ THEN GOTO k9bye
        END


IF ~~ THEN BEGIN k9NotAnswering2
        SAY ~Hmm...to not even know who I am. I suppose I expected more from you. Not that any of this really matters mind you. I doubt you have what it takes to survive what is coming. I suppose us mere immortals will just have to wait and see.~ IF ~~ THEN GOTO k9bye
        END


IF ~~ THEN BEGIN k9bye
SAY ~Unfortunately, if I keep you here any further I surely risk the other gods involving themselves in this matter. Such an oddity of godhood I'll admit, to have all this power and yet to fear its use, yet here I am.

I suppose I'll just have to send you back to where I found you.~  
++ ~Before you do so I have some questions.~ GOTO k9questions
++ ~Fine by me.~ GOTO k9go
END



IF ~~ THEN BEGIN k9questions
        SAY ~I suppose I could have left this conversation so one sided. Very well, ask your questions.~
        +~Global("k9cyricname","GLOBAL",0)~+ ~Sorry, who are you?~ DO ~	ActionOverride("k9cyric",SetName(@66034))  ~ GOTO  k9cyricwho2
        +~Global("k9cyricname","GLOBAL",1)~+ ~I still don't know who you are.~ GOTO k9cyricwho3
        ++ ~Why did you bring me here again?~ GOTO k9whyhere
        ++ ~So what exactly is this place?~ GOTO k9guests
        ++ ~You mentioned my lineage earlier. What about it?~ GOTO k9lineage
        ++ ~You mentioned other gods being involved. I don't understand what they have to do with me. Care to explain?~ GOTO k9lineage
        +~PartyHasItem("k9scrl3f")~+ ~I found this journal that led me here. I keep seeing ghosts while it is near me. Any ideas on why?~ DO ~TakePartyItem("k9scrl3f")~  GOTO k9bassilusus
        ++ ~On second thought, I think I'm ready to go.~ GOTO k9go
END
        

IF ~~ THEN BEGIN k9whyhere
        SAY ~I wanted to see for myself what kind of a fool would storm one of my strongholds. I must say, I'm rather disappointed.~ IF ~~ THEN GOTO k9somethingelse
        END

IF ~~ THEN BEGIN k9guests
        SAY ~I suppose you could think of it as an illusion. Though the reality is a bit more complicated. Isn't it always? Frankly, you needn't worry of it any further.~ IF ~~ THEN GOTO k9somethingelse
        END

IF ~~ THEN BEGIN k9lineage
        SAY ~Yes I did. Did you not know of your divine heritage? Ahh well, I suppose that is something you can learn of more on your own.~ IF ~~ THEN GOTO k9somethingelse
        END
        

IF ~~ THEN BEGIN k9lineage2
        SAY ~Ugh, why bring them up? What a bunch of bores.

Suffice it to say that my actions with you are being closely monitored. It's all a bit dismal really, but that is the price of godhood I suppose.~ IF ~~ THEN GOTO k9somethingelse
        END
        




IF ~~ THEN BEGIN k9somethingelse
        SAY ~Are you quite finished asking me these questions?~
        +~Global("k9cyricname","GLOBAL",0)~+ ~Sorry, who are you?~ DO ~	ActionOverride("k9cyric",SetName(@66034))  ~ GOTO  k9cyricwho2
        +~Global("k9cyricname","GLOBAL",1)~+ ~I still don't know who you are.~ GOTO k9cyricwho3
        ++ ~Why did you bring me here again?~ GOTO k9whyhere
        ++ ~So what exactly is this place?~ GOTO k9guests
        ++ ~You mentioned my lineage earlier. What about it?~ GOTO k9lineage
        ++ ~You mentioned other gods being involved. I don't understand what they have to do with me. Care to explain?~ GOTO k9lineage2
        +~PartyHasItem("k9scrl3f")~+ ~I found this journal that led me here. I keep seeing ghosts while it is near me. Any ideas on why?~ DO ~TakePartyItem("k9scrl3f")~  GOTO k9bassilusus
        ++ ~I'm ready to go.~ GOTO k9go
END


IF ~~ THEN BEGIN k9go
        SAY ~Well then. I suppose I can leave you to get slaughtered by what's left of my forces. 
        
Just try not to get blood all over its beautiful stone floors.~ IF ~~ THEN DO ~SetGlobal("k9cyrictalk", "GLOBAL", 3)  ClearAllActions()
StartCutSceneMode()
StartCutScene("k9cutcyr") AddJournalEntry(@15017,QUEST)~ EXIT
END




