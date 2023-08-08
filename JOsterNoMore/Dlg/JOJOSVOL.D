BEGIN ~JOJOSVOL~

// Dialogues

IF ~
AreaCheck("AR0322")
!Global("JOJosterDownstair","GLOBAL",1)
Global("JOJosterWendySpoiler","GLOBAL",0)
Global("JOJosterBiffIsHere","GLOBAL",2)
~ THEN BEGIN JOJosVolIsHere
  SAY @4900
  IF ~~ THEN DO ~
  ClearActions("JOJosVol")
  SetGlobal("JOJosVolShowOff","GLOBAL",1)
  SetGlobal("JOJosterShowOff","GLOBAL",1)
  MoveToPointNoInterrupt([710.185])
  ~ EXIT
END

IF ~
AreaCheck("AR0322")
Global("JOJosterBiffIsHere","GLOBAL",2)
Global("JOJosterWendySpoiler","GLOBAL",1)
!Global("JOJosterDownstair","GLOBAL",1)
~ THEN BEGIN JOJosVolIsWen
  SAY @5000
  IF ~~ THEN DO ~
  ClearActions("JOJosVol")
  SetGlobal("JOJosVolShowOff","GLOBAL",1)
  SetGlobal("JOJosterShowOff","GLOBAL",1)
  SetGlobal("JOJosterWendySpoiler","GLOBAL",0)
  MoveToPointNoInterrupt([710.185])
  ~ EXIT
END

IF ~
AreaCheck("AR0322")
Global("JOJosterDownstair","GLOBAL",1)
~ THEN BEGIN JOJosterBiffDownstair
  SAY @4901
  IF ~~ THEN DO ~
  ClearActions("JOJosVol")
  MoveToPointNoInterrupt([710.185])
  ~ EXIT
END

IF ~AreaCheck("AR0323")
	Global("JOJosterVolUpstair","GLOBAL",1)~ THEN BEGIN JOJosVolUpstair
SAY @4024
	IF ~~ THEN REPLY @4025 DO ~
		Wait(2)
		DisplayStringHead(Myself,@4026)	
		Wait(1)
		MoveToPointNoInterrupt([140.579])
		DisplayStringHead(Myself,@4027)	
		Wait(3)
		SetGlobal("JOJosterVolUpstair","GLOBAL",0)
		SetGlobal("JOJosVolThieves","GLOBAL",1)
		MoveBetweenAreas("AR0322",[710.185],S)~ EXIT
END



// First dialogue

IF ~~ THEN BEGIN 1JOJosVol
  SAY @1050
  IF ~~ THEN REPLY @1051 GOTO 2JOJosVol
END

IF ~~ THEN BEGIN 2JOJosVol
  SAY @1052
  IF ~~ THEN REPLY @1053 GOTO 3JOJosVol
END

IF ~~ THEN BEGIN 3JOJosVol
  SAY @1054
  IF ~~ THEN EXTERN JOJoster 2.1
END

IF ~~ THEN BEGIN 4JOJosVol
  SAY @1058
  IF ~~ THEN EXTERN JOJoster 3
END

IF ~~ THEN BEGIN 5JOJosVol
  SAY @1059
  IF ~~ THEN EXTERN JOJoster 8
END


