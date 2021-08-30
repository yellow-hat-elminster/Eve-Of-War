
EXTEND_BOTTOM Laskal 3
  +~Kit(Player1Fill,beastfriend)~+ ~I despise them. They would defile the land and leave this forest ruined. If you stand against them then know you have an ally.~  GOTO k96
    +~Class(Player1Fill,druid) !Kit(Player1Fill,beastfriend)~+ ~They have done great harm to the land. I am here to investigate them. Perhaps they can be convinced to leave this place peacefull.~  GOTO k97
END




APPEND Laskal

 IF ~~ THEN BEGIN k96
  SAY ~Mmm. An ally such as yourself is welcome indeed. I am glad to know that you also oppose this organization. They have been a blight on these woods ever since they reopened the ancient dwarven iron mine. Well, I am glad to know you. Take this; hopefully it will aid you against the Iron Throne. The Iron Throne's fort is located to the east.~

  IF ~~ THEN DO ~GiveItem("POTN11",LastTalkedToBy)
EscapeArea()~ EXIT

END

 IF ~~ THEN BEGIN k97
  SAY ~Mmm. You speak like one of Seniyad's followers. Your kind is not welcome here either. Deal with the Iron Throne as you must, but know that we will not stand their presence in these woods.~

  IF ~~ THEN DO ~
EscapeArea()~ EXIT

END


END

EXTEND_BOTTOM Aldeth 5
  +~Kit(Player1Fill,beastfriend)~+ ~You call them barbarians? You are mistaken. This conversation is over. You will not be leaving these woods.~  GOTO 6
    +~Class(Player1Fill,druid) !Kit(Player1Fill,beastfriend)~+ ~I'm afraid Aldeth that we must side with my druid brethren. Your actions here have been inexcusable and I cannot allow you to escape justice.~  GOTO 6
END




EXTEND_BOTTOM Izefia 2
  +~Kit(Player1Fill,beastfriend)~+ ~You speak to me like this? You trot through these woods like a bear through a salmon stream. Begone from my sight!~  GOTO k96
END



APPEND Izefia

 IF ~~ THEN BEGIN k96
  SAY ~It is you that does great harm to these woods. Your presence here must be reported.~

  IF ~~ THEN DO ~ SetGlobal("k9druidpresence", "GLOBAL", 1)
EscapeArea()~ EXIT

END

END



EXTEND_BOTTOM Takiyah 2
  +~Kit(Player1Fill,beastfriend)~+ ~I seek to destroy that which defiles nature, the Iron Throne.~  GOTO 4
END

EXTEND_BOTTOM Amaran 0
  +~Kit(Player1Fill,beastfriend)~+ ~I seek to destroy the Iron Throne. It is my understanding that you also seek their deaths.~  GOTO k96
END


APPEND Amaran

 IF ~~ THEN BEGIN k96
  SAY ~You seek to destroy that which those heathens have built? Perhaps I have misjudged you. You will find a human fort if you continue north and then go east. It is inhabited by defilers who call themselves the Iron Throne. It would be best if one of our own accompanied you to be sure that your intent is true.

Seek the one named Faldorn; she will join your cause. Her rage at those who would defile this land can barely be contained and will no doubt benefit your cause.
  
Take as well this. It will serve you well against that which defiles nature.

Go now; do not tarry long in this place.~

  IF ~~ THEN DO  ~ GiveItemCreate("blun10",Player1,1,1,0)
EscapeArea()~ EXIT


END


 IF WEIGHT #-99 ~Global("k9druidpresence", "GLOBAL", 1)~ THEN BEGIN 7
  SAY ~Ahh yes the intruder. I have heard of you.~ IF ~~ GOTO 0


END

END

