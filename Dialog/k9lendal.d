BEGIN k9Lendal

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 1
SAY ~You there. Hold a moment. I am Lendali Firehair, a member of the Flaming Fist. Word has reached my ears of slavers profiting off the miners of the Cloakwood Forest.~ IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
SAY ~Tracking you down it seems was not so difficult. Now that we have, we've come to put a stop to your evil. Prepare yourself!~    IF ~~ THEN DO ~Enemy() Shout(99) AddJournalEntry(@66003, INFO)~ EXIT
END