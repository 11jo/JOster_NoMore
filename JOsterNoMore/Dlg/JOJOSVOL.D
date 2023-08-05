BEGIN ~JOJOSVOL~

// Dialogues

IF ~!Global("JOJosterWendySpoiler","GLOBAL",1)
Global("JOJosterBiffIsHere","GLOBAL",2)
~ THEN BEGIN JOJosVolIsHere
  SAY @4900
  IF ~~ THEN DO ~ClearActions("JOJosVol") MoveToPointNoInterrupt([710.185]) SetGlobal("JOJosVolShowOff","GLOBAL",1) SetGlobal("JOJosterShowOff","GLOBAL",1)~ EXIT
END

IF ~Global("JOJosterBiffIsHere","GLOBAL",2)
Global("JOJosterWendySpoiler","GLOBAL",1)~ THEN BEGIN JOJosVolIsWen
  SAY @5000
  IF ~~ THEN DO ~ClearActions("JOJosVol") MoveToPointNoInterrupt([710.185]) SetGlobal("JOJosVolShowOff","GLOBAL",1) SetGlobal("JOJosterShowOff","GLOBAL",1) SetGlobal("JOJosterWendySpoiler","GLOBAL",0)~ EXIT
END

IF ~Global("JOJosterDownstair","GLOBAL",1)
~ THEN BEGIN JOJosterBiffDownstair
  SAY @4901
  IF ~~ THEN DO ~ClearActions("JOJosVol") MoveToPointNoInterrupt([710.185]) SetGlobal("JOJosterWendySpoiler","GLOBAL",1)~ EXIT
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


