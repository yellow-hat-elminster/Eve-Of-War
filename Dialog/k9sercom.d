BEGIN k9sercom


IF ~RandomNum(8,1)~ THEN
BEGIN 0
	SAY ~Town's frozen cold. Can't plant no harvest in this dirt.~ IF ~~ EXIT
END

IF ~RandomNum(8,2)~ THEN
BEGIN 1
	SAY ~Whatcha lookin at me fer? Ye ask me Hendern's responsible for dis mess.~ IF ~~ EXIT
END

IF ~RandomNum(8,3) ~ THEN
BEGIN 2
	SAY ~Gonna get me an ale over at da tavern. Heh, til the taps freeze at least.~
	  IF ~~ EXIT
END


IF ~RandomNum(8,4)~ THEN
BEGIN 3
	SAY ~Caelar this, Caelar that. One things for sure. She ain't done nothin for us here.~
	  IF ~~  EXIT
END


IF ~RandomNum(8,5) ~ THEN
BEGIN 4
	SAY ~Looked into the woods one day and saw some glowin eyes starring back at me. We ain't alone out here.~ IF ~~ EXIT
END


 IF ~RandomNum(8,6) ~ THEN
BEGIN 5
	SAY ~Shack out in the east of town looks like it be addin a cellar o' sorts. Can't go diggin too much round here though, lest we risk another attack by da snake folk.~ IF ~~ EXIT
END

 IF ~RandomNum(8,7)~ THEN
BEGIN 6
	SAY ~Can't believe the hero of Baldur's Gate came all da way out here ta help us.~ IF ~~ EXIT
END

IF ~RandomNum(8,8)~ THEN
BEGIN 7
	SAY ~Thinkin about leavin town myself. No point stickin round here if its gonna remain like dis.~ IF ~~ EXIT
END
