
 BEGIN k9Barco2



IF ~RandomNum(3,1)~ THEN
BEGIN Bartalk

SAY ~Despite your best efforts this person seems to take no interest in your existence. Instead they continue talking to the patron nearest to them. Its almost as if they don't even know you are here.~  IF ~~ EXIT

END

IF ~RandomNum(3,2)~ THEN
BEGIN Bartalk2

SAY ~This person appears to be casually minding their own business. No amount of you waving your hand in front of them seems to catch their interest.~  IF ~~ EXIT

END

IF ~RandomNum(3,3)~ THEN
BEGIN Bartalk3

SAY ~This person appears completely oblivious to your existence. Given the loud sounds you've been yelling into their ear you can't help but wonder how this even possible.~  IF ~~ EXIT

END