BEGIN k9grave

IF ~Global("k9snakefreedom","GLOBAL",1)~ THEN BEGIN k9done
SAY ~Oy, ye through guttin all em snake folk? I can be gettin ye out in a minute there. Just hold on a bit and stand back.~ IF ~~ THEN DO ~SetGlobal("k9snakefreedom","GLOBAL",2) ClearAllActions()
StartCutSceneMode()
StartCutScene("k9grave2")~ EXIT
END

IF ~GlobalGT("k9snakefreedom","GLOBAL",1)~ THEN BEGIN k9done
SAY ~Oy, what are ye grubblin 'round here fer? I got nothing more t'say to any of ya.~ IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
SAY ~Oy, and what are ye doing round here ehh? Half scared me t'death being about this place.~
++ ~We were just looking around.~ GOTO 1
++ ~That's none of your business.~ GOTO 2
++ ~We didn't meant to disturb you. We'll be going now.~ EXIT
END


IF ~~ THEN BEGIN 1
SAY ~Just lookin around? Made me think ye were one of them snake folk, sneaking up like that.~
++ ~Snake folk?~ GOTO 3
++ ~We didn't meant to disturb you. We'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 2
SAY ~Oy? Ye it is. Tis not right for ye to be wanderin round here. What ye here for anyways?~
++ ~We were just looking around.~ GOTO 1
++ ~We didn't meant to disturb you. We'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 3
SAY ~Ye know, one of them snake folk. Big o'head, scales. Not seen one before I take it?~
++ ~Sure we have.~ GOTO 4
++ ~No I don't think we have.~ GOTO 4
++ ~We didn't meant to disturb you. We'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 4
SAY ~Well, I can tell ya one thing. Had ye really seen one ye wouldn't be wanting to go rumbling about in this ol'place. Used to be a temple dedicated to the cretins beneath 'ere. Ye can even see what's left of the passage right over ere. All that red glow.

Worrisome too. Nobody's been down there for a century. Hoping they all dead we are, but not about to check heh.~
++ ~We could go down and check for you.~ GOTO 5
++ ~We didn't meant to disturb you. We'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 5
SAY ~Now why would you be wanting to be doing that? Place'll be crawling with the buggers. Nah, ye be better off dealin with any o' the other troubles folks round here been havin.~
++ ~We can't well leave these vermin under your feet and not do something about it while we are here.~ GOTO 8
++ ~From the sounds of things there could be valuable treasures down there. Could be worth a look.~ GOTO 8
++ ~Actually I think we'll be going now.~ EXIT
END





IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 6
SAY ~Oy, yer back again round here ehh? What can I help ye with?~
+~Global("k9SerpentPermission","GLOBAL",1)~+ ~The mayor has given me permission to explore the temple.~ GOTO 7
++ ~We were just looking around.~ GOTO 1
++ ~That's none of your business.~ GOTO 2
++ ~We didn't meant to disturb you. We'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 7
SAY ~Aye, I heard 'bout that. When yer ready I can take ye in there. But there will be no coming out til the deed be done.

Don't be going 'bout taking yer sweet time either in there. Can't guarantee we won't seal ye in fer good if ya take too long down there.~
++ ~Very well. We're ready.~ DO ~SetGlobal("k9SerpentPermission","GLOBAL",2) AddJournalEntry(@66081,QUEST)  ClearAllActions()
StartCutSceneMode()
StartCutScene("k9grave1")~ EXIT
++ ~On second thought I think we want to get ready first.~ EXIT
END

IF ~~ THEN BEGIN 8
SAY ~ Well, without the mayor's thoughts ye ain't going either way. Come back once ye've had a talk with em. Maybe he'll set ye straight.~
++ ~We'll do just that.~ DO ~SetGlobal("k9YuanTi","GLOBAL",1) AddJournalEntry(@66079,QUEST)~ EXIT
++ ~I think we'll pass on that for now. Take care.~ EXIT
END
