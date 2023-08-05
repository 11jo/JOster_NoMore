BEGIN ~JOJoster~

// Dialogues

IF ~AreaCheck("AR0322")
	Global("JOJosterBiffIsHere","GLOBAL",2)
	!Global("JOJosterVolUpstair","GLOBAL",1)~ THEN BEGIN JOJosterBiffIsHere
SAY @2000
	IF ~~ THEN DO ~
		ClearActions("JOJoster")
		SetGlobal("JOJosVolShowOff","GLOBAL",1)
		SetGlobal("JOJosterShowOff","GLOBAL",1)
		MoveToPointNoInterrupt([833.220])~ EXIT
END

IF ~AreaCheck("AR0322")
	Global("JOJosterVolUpstair","GLOBAL",1)~ THEN BEGIN JOJosterVolUpstair
SAY @3024
	IF ~~ THEN DO ~
		ClearActions("JOJoster")
		MoveToPointNoInterrupt([833.220])~ EXIT
END

IF ~AreaCheck("AR0321")
	Global("JOJosterDownstair","GLOBAL",1)~ THEN BEGIN JOJosterDownstair
SAY @3032
	IF ~~ THEN REPLY @3033 DO ~
		Wait(2)
		DisplayStringHead(Myself,@3034)	
		MoveToPointNoInterrupt([279.516])
		DisplayStringHead(Myself,@3035)	
		Wait(3)
		SetGlobal("JOJosterDownstair","GLOBAL",0)
		SetGlobal("JOJosterThieves","GLOBAL",1)
		MoveBetweenAreas("AR0322",[833.220],S)~ EXIT
END

// First dialogue


IF ~NumTimesTalkedTo(0) See([PC]) Global("JOJosterBiffIsHere","GLOBAL",1)~ THEN BEGIN 0
SAY @1001
	IF ~~ THEN REPLY @1002 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @1003
  IF ~~ THEN REPLY @1004 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @1005
  IF ~~ THEN REPLY @1006 EXTERN ~JOJosVol~ 1JOJosVol
END

IF ~~ THEN BEGIN 2.1
  SAY @1055
  IF ~~ THEN REPLY @1056 GOTO 2.2
END

IF ~~ THEN BEGIN 2.2
  SAY @1057
  IF ~~ THEN EXTERN ~JOJosVol~ 4JOJosVol
END

IF ~~ THEN BEGIN 3
  SAY @1007
  IF ~~ THEN REPLY @1008 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @1009
  IF ~~ THEN REPLY @1010 GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @1011
  IF ~~ THEN REPLY @1012 GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @1013
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @1014
  IF ~~ THEN EXTERN ~JOJosVol~ 5JOJosVol
END

IF ~~ THEN BEGIN 8
  SAY @1060
  IF ~~ THEN DO ~
  GiveItemCreate("JOJoster",[PC],0,0,0)
  SetGlobal("JOJosterBiffIsHere","GLOBAL",2)
  ~ EXIT
END


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


