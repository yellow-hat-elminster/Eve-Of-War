BEGIN k9jasha


IF ~NumTimesTalkedTo(0)~ THEN
BEGIN k9Jasha
      SAY ~Hold! I don't know you and there nah be a foot set in this town without coin given to the Frostmaiden. If ye want to walk these peak tops in safety you'll given yur moneys worth!~
               ++ ~We just want a drink at the tavern. This hardly seems a courteous way to treat anyone.~ DO ~SetGlobal("k9Jashamet","GLOBAL",1)~	GOTO k9courtesy
		+~Class(Player1,Cleric) CheckStatLT(Player1Fill,9,INT)~+ ~Whats dis? I ain't given no coin to no god that ain't of my choice. Now get outta my way.~	GOTO k9dumbcleric
		++ ~I most certainly will not!~ DO ~SetGlobal("k9Jashamet","GLOBAL",1)~ GOTO k9nice
 		++ ~Alright, alright. I'll give you coin. I'm surprised you get away with this racket.~ DO ~Weather(SNOW) SetGlobal("k9Jashamet","GLOBAL",1)~	GOTO k9good
		++ ~We've better things to do than to give our gold to a madwoman.~ GOTO k9madwoman
		++ ~Ha! That's not about to happen.~ DO ~SetGlobal("k9Jashamet","GLOBAL",1)~	GOTO k9freeze

END



IF ~~ THEN
BEGIN k9dumbcleric
	SAY ~Think again there. There be many travellers frozen stiff amongst these peak tops that ave only wished for Auril to ave granted em this level of courtesy.

Now give me 200 gold. I'll not ask again.~  
        +~PartyGoldLT(200)~+ ~Here, take everything that I have!~ DO ~TakePartyGold(200) AddJournalEntry(@444901,INFO)~ EXIT
	+~PartyGoldGT(199)~+ ~Here, take it.~ DO ~TakePartyGold(200) AddJournalEntry(@444901,INFO)~ EXIT
	+~~+ ~Did I not make myself clear the first time? It's not happening.~ DO~SetGlobal("k9aurilswrath","GLOBAL",1) Weather(SNOW)~ GOTO k9nope
        END



IF ~~ THEN
BEGIN k9nice
	SAY ~Oh aye ye will. Ye see this snow? This is just a taste of what the Frostmaiden will do if ye not pay up.

Specting ye ave much to learn from the townsfolk here. Townsfolk know better than to challenge this. With good iron scarce and plows breakin an early frost is not what the farmers need, so they pay. So pay! 200 gold is all I need.~
	++ ~I don't see any snow.~ GOTO k9nosnow
        +~PartyGoldLT(200)~+ ~Here, take everything that I have!~ DO ~TakePartyGold(200) AddJournalEntry(@444901,INFO)~ EXIT
	+~PartyGoldGT(199)~+ ~Here, take it.~ DO ~TakePartyGold(200) AddJournalEntry(@444901,INFO)~ EXIT
	+~~+ ~Did I not make myself clear the first time? It's not happening.~ DO~SetGlobal("k9aurilswrath","GLOBAL",1) Weather(SNOW)~ GOTO k9nope
        END



IF ~~ THEN
BEGIN k9courtesy
	SAY ~Courtesy? I am given ya courtesy. There be many travellers frozen stiff amongst these peak tops that ave only wished for Auril to ave granted em this level of courtesy.

Now give me 100 gold. I'll not ask again.~  	
        +~PartyGoldLT(100)~+ ~Here, take everything that I have!~ DO ~TakePartyGold(100) AddJournalEntry(@444901,INFO)~ EXIT
	+~PartyGoldGT(99)~+ ~Here, take it.~ DO ~TakePartyGold(100) AddJournalEntry(@444901,INFO)~ EXIT
	+~~+ ~That's not happening.~ DO~SetGlobal("k9aurilswrath","GLOBAL",1) Weather(SNOW)~ GOTO k9nope
        END


IF ~~ THEN
BEGIN k9good
	SAY ~Ye may not be seein it now but there's a storm on the way. Mark my word there be snow fallin soon. This is just a taste of what the Frostmaiden will do if ye not pay yer way.

You ave much to learn from the folks here. Berrun Ghastkill is a stocky little fella too scared to face a cold winter, and Nalin ain't much better. Up in the peak tops folks know better than to challenge Auril. With good iron scarce and plows breakin an early frost is not what the farmers need, so they pay. So pay! Give me 100 gold.~
	+~PartyGoldLT(100)~+ ~Here, take everything that I have!~ DO ~TakePartyGold(100) AddJournalEntry(@444901,INFO)~ EXIT
	+~PartyGoldGT(99)~+ ~Here, take it.~ DO ~TakePartyGold(100) AddJournalEntry(@444901,INFO)~ EXIT
	+~~+ ~That's not happening.~ DO~SetGlobal("k9aurilswrath","GLOBAL",1) Weather(SNOW)~ GOTO k9nope
        END

IF ~~ THEN
BEGIN k9freeze
	SAY ~Think again there. There be many travellers frozen stiff amongst these peak tops that ave only wished for Auril to ave granted em this level of courtesy.

Now give me 200 gold. I'll not ask again.~
	+~PartyGoldLT(200)~+ ~Here, take everything that I have!~ DO ~TakePartyGold(200) AddJournalEntry(@444901,INFO)~ EXIT
	+~PartyGoldGT(199)~+ ~Here, take it.~ DO ~TakePartyGold(200) AddJournalEntry(@444901,INFO)~ EXIT
	+~~+ ~That's not happening.~ DO~SetGlobal("k9aurilswrath","GLOBAL",1) Weather(SNOW)~ GOTO k9nope
END

IF ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN k9Jashacharmed
SAY ~Some of the townsfolk burned down my temple. Have t'build a new one now. They didn't be thinkin they'd be seein Auril's wrath, but I be knowin better. New temple ain't gonna be cheap though.~ IF ~~ THEN EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN
BEGIN k9JashaG
      SAY ~Ay? What you be wantin now?~
                ++ ~I'd like to see your services.~  DO ~StartStore("k9Auril",LastTalkedToBy(Myself))~ EXIT
                +~ReputationLT(player1,6)~+ ~I've heard you offer your finest goods to those who are in Auril's favour. What can you offer me?~  DO ~StartStore("k9Auril2",LastTalkedToBy(Myself))~ EXIT
		+~PartyGoldGT(99) GlobalLT("k9aurilswrath","GLOBAL",1)~+ ~I've come to support the Frostmaiden. Take this 100 gold.~  DO ~ TakePartyGold(100) ReputationInc(-1)~ EXIT
		+~PartyGoldGT(199) GlobalLT("k9aurilswrath","GLOBAL",1)~+ ~I've come to support the Frostmaiden. Take this 200 gold and tell others that the Frostmaiden has a new ally.~  DO ~ TakePartyGold(200) ReputationInc(-2)~ EXIT
		+~Global("k9aurilswrath","GLOBAL",1)~+ ~Jasha I haven't seen one winter wolf that stands a chance against me. Auril's wrath? Bah. I'll be freeing this town from Auril's clutches by killing you.~  DO ~ Enemy() SetGlobal("k9aurilswrath","GLOBAL",2)~ EXIT
		+~PartyGoldGT(199) Global("k9aurilswrath","GLOBAL",1)~+ ~I took a leave of my senses earlier. Here's 200 gold. I don't want Auril's wrath.~  DO ~ TakePartyGold(200) SetGlobal("k9aurilswrath","GLOBAL",0) AddJournalEntry(@444902,INFO)~ EXIT
		++ ~Ohh nevermind.~  EXIT

END

IF ~~ THEN BEGIN k9nope
SAY ~Y'ul regret dis.~ IF ~~ THEN DO ~AddJournalEntry(@444900,INFO)~ EXIT
END

IF ~~ THEN BEGIN k9nosnow
SAY ~Aye, for now. But it be comin soon. If ye now want t'be seeing it ye better give away yer gold. 200 and y'can be off.~ 
         +~PartyGoldLT(200)~+ ~Here, take everything that I have!~ DO ~TakePartyGold(200) AddJournalEntry(@444901,INFO)~ EXIT
	+~PartyGoldGT(199)~+ ~Here, take it.~ DO ~TakePartyGold(200) AddJournalEntry(@444901,INFO)~ EXIT
	++ ~That's not happening.~ DO~SetGlobal("k9aurilswrath","GLOBAL",1) Weather(SNOW)~ GOTO k9nope
END



IF ~~ THEN BEGIN k9madwoman
SAY ~Ye think me mad? Ye see this snow? This is just a taste of what the Frostmaiden will do if ye not pay.

Specting ye ave much to learn from the townsfolk here. Townsfolk know better than to challenge this. With good iron scarce and plows breakin an early frost is not what the farmers need, so they pay. So pay! 200 gold is all I need.~ 
	++ ~You seem pretty mad. I don't see any snow.~ GOTO k9nosnow
        +~PartyGoldLT(200)~+ ~Here, take everything that I have!~ DO ~TakePartyGold(200)~ EXIT
	+~PartyGoldGT(199)~+ ~Here, take it.~ DO ~TakePartyGold(200)~ EXIT
	+~~+ ~Did I not make myself clear the first time? It's not happening.~ DO~SetGlobal("k9aurilswrath","GLOBAL",1) Weather(SNOW)~ GOTO k9nope
        END

