/* 13. SCRIPT SQL CONTROLLO DELL'ACCESSO */

CREATE ROLE Utente;

GRANT USAGE ON SCHEMA "gameplatform" TO Utente;
GRANT INSERT, SELECT ON "gameplatform".sfida TO Utente;
GRANT INSERT, UPDATE, DELETE, SELECT ON "gameplatform".squadra TO Utente;
GRANT INSERT, DELETE, SELECT ON "gameplatform".utenti_squadre TO Utente;
GRANT INSERT, UPDATE, DELETE, SELECT ON "gameplatform".utente TO Utente;

CREATE ROLE Giocatore;

GRANT USAGE ON SCHEMA "gameplatform" TO Giocatore;
GRANT Utente TO Giocatore;
GRANT INSERT, SELECT ON "gameplatform".consegna_risposta TO Giocatore;
GRANT INSERT, UPDATE(selezionato), SELECT ON "gameplatform".file TO Giocatore;
GRANT INSERT, SELECT ON "gameplatform".partecipa TO Giocatore;

CREATE ROLE GameAdmin;

GRANT USAGE ON SCHEMA "gameplatform" TO GameAdmin;
GRANT UPDATE(valutazione), SELECT ON "gameplatform".file TO GameAdmin;

CREATE ROLE GameCreator;

GRANT USAGE ON SCHEMA "gameplatform" TO GameCreator;
GRANT INSERT, UPDATE, DELETE, SELECT ON "gameplatform".casella TO GameCreator;
GRANT INSERT, UPDATE, DELETE, SELECT ON "gameplatform".dadi_disponibili TO GameCreator;
GRANT INSERT, UPDATE, DELETE, SELECT ON "gameplatform".dado TO GameCreator;
GRANT INSERT, UPDATE, DELETE, SELECT ON "gameplatform".gioco TO GameCreator;
GRANT INSERT, UPDATE, DELETE, SELECT ON "gameplatform".immagine TO GameCreator;
GRANT INSERT, UPDATE, DELETE, SELECT ON "gameplatform".quiz TO GameCreator;
GRANT INSERT, UPDATE, DELETE, SELECT ON "gameplatform".quiz_caselle TO GameCreator;
GRANT INSERT, UPDATE, DELETE, SELECT ON "gameplatform".risposta TO GameCreator;
GRANT INSERT, UPDATE, DELETE, SELECT ON "gameplatform".set TO GameCreator;
GRANT INSERT, UPDATE, DELETE, SELECT ON "gameplatform".task TO GameCreator;