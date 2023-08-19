// Add dialogue option to Joster

EXTEND_BOTTOM SHTH05 0
  IF ~  !Global("TalkedToJoster","GLOBAL",0)
~ THEN REPLY @9000 /* ~Évidemment...~ */ GOTO 3
  IF ~  !Global("TalkedToJoster","GLOBAL",0)
~ THEN REPLY @9001 /* ~J'ai une requête au sujet du tribut~ */ GOTO JOJOSTER3 
END

APPEND SHTH05
IF ~~ THEN BEGIN JOJOSTER3 // from: JOJOSTER3
	SAY @9002 /* ~Y-a t'il un problème~ */
		IF ~  PartyGoldGT(10000)
~ THEN REPLY @9003 /* ~Je souhaiterais payer mon tribu pour les cinquante prochains jours~ */ DO ~TakePartyGold(10000)
~ GOTO JOJOSTER13
		IF ~  PartyGoldGT(6000)
~ THEN REPLY @9004 /* ~Je souhaiterais payer mon tribu pour les trente prochains jours~ */ DO ~TakePartyGold(6000)
~ GOTO JOJOSTER131
		IF ~  PartyGoldGT(4000)
~ THEN REPLY @9005 /* ~Je souhaiterais payer mon tribu pour les vingt prochains jours~ */ DO ~TakePartyGold(4000)
~ GOTO JOJOSTER132
		IF ~  PartyGoldGT(2000)
~ THEN REPLY @9006 /* ~Je souhaiterais payer mon tribu pour les dix prochains jours~ */ DO ~TakePartyGold(2000)
~ GOTO JOJOSTER133
	IF ~~ THEN REPLY @9007 /* ~Non, tout va bien continue.~ */ GOTO 3
END


IF ~~ THEN BEGIN JOJOSTER13 // from: JOJOSTER313
  SAY @9008 /* ~C'est toi le patron, mais sache que pendant ton absence et sans ta supervision tes voleurs n'engrangerons plus d'argent après cinq jours. Quoi qu'il en soit, c'est un plaisir de faire affaire avec toi. Renal sera très satisfait de tes services. Je te souhaite un bon voyage~ ~C'est toi la patronne, mais sache que pendant ton absence et sans ta supervision tes voleurs n'engrangerons plus d'argent après cinq jours. Quoi qu'il en soit, c'est un plaisir de faire affaire avec toi. Renal sera très satisfait de tes services. Je te souhaite un bon voyage~ */
  IF ~~ THEN DO ~IncrementGlobal("PGQuota","GLOBAL",1)
SetGlobal("JosterLeave","GLOBAL",1)
SetGlobal("JoJOsterDelay","GLOBAL",5)
SetGlobalTimer("JosterReturn","GLOBAL",FIFTY_DAYS)
EscapeArea()
EraseJournalEntry(55541)
~ SOLVED_JOURNAL @9009 /* ~Quartier général de la guilde des voleurs : paiement des factures !

J'ai payé le montant que je devais au questeur pour les 50 prochains jours. Renal sera satisfait de mon tribut.~ */ EXIT
END


IF ~~ THEN BEGIN JOJOSTER131 // from: JOJOSTER313
  SAY @9008
  IF ~~ THEN DO ~IncrementGlobal("PGQuota","GLOBAL",1)
SetGlobal("JosterLeave","GLOBAL",1)
SetGlobal("JoJOsterDelay","GLOBAL",3)
SetGlobalTimer("JosterReturn","GLOBAL",THIRTY_DAYS)
EscapeArea()
EraseJournalEntry(55541)
~ SOLVED_JOURNAL @9010 /* ~Quartier général de la guilde des voleurs : paiement des factures !

J'ai payé le montant que je devais au questeur pour les 30 prochains jours. Renal sera satisfait de mon tribut.~ */ EXIT
END


IF ~~ THEN BEGIN JOJOSTER132 // from: JOJOSTER313
  SAY @9008
  IF ~~ THEN DO ~IncrementGlobal("PGQuota","GLOBAL",1)
SetGlobal("JosterLeave","GLOBAL",1)
SetGlobal("JoJOsterDelay","GLOBAL",2)
SetGlobalTimer("JosterReturn","GLOBAL",TWENTY_DAYS)
EscapeArea()
EraseJournalEntry(55541)
~ SOLVED_JOURNAL @9011 /* ~Quartier général de la guilde des voleurs : paiement des factures !

J'ai payé le montant que je devais au questeur pour les 20 prochains jours. Renal sera satisfait de mon tribut.~ */ EXIT
END


IF ~~ THEN BEGIN JOJOSTER133 // from: JOJOSTER313
  SAY @9008
  IF ~~ THEN DO ~IncrementGlobal("PGQuota","GLOBAL",1)
SetGlobal("JosterLeave","GLOBAL",1)
SetGlobal("JoJOsterDelay","GLOBAL",1)
SetGlobalTimer("JosterReturn","GLOBAL",TEN_DAYS)
EscapeArea()
EraseJournalEntry(55541)
~ SOLVED_JOURNAL @9012 /* ~Quartier général de la guilde des voleurs : paiement des factures !

J'ai payé le montant que je devais au questeur pour les 10 prochains jours. Renal sera satisfait de mon tribut.~ */ EXIT
END

END
