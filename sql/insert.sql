USE PROGETTON;

INSERT INTO USERS (USERNAME, PWD, NOME, SURNAME, BIRTHDATE, NATION, EMAIL) 
		VALUES ('aaa', 'aaa', 'NomeProva', 'CognomeProva', '1996-02-03', 'Italy', 'prova@prova.it');
INSERT INTO USERS (USERNAME, PWD, NOME, SURNAME, BIRTHDATE, NATION, EMAIL) 
		VALUES ('alessandrabianchi', 'passworda', 'Alessandra', 'Bianchi', '1999-06-06', 'Italy', 'alessandrabianchi@prova.it');
INSERT INTO USERS (USERNAME, PWD, NOME, SURNAME, BIRTHDATE, NATION, EMAIL) 
		VALUES ('brunorossi', 'passwordb', 'Bruno', 'Rossi', '1981-02-01', 'Italy', 'brunorossi@prova.it');
INSERT INTO USERS (USERNAME, PWD, NOME, SURNAME, BIRTHDATE, NATION, EMAIL) 
		VALUES ('claudiaverdi', 'passwordc', 'Claudia', 'Verdi', '1990-05-24', 'Italy', 'claudiaverdi@esempio.it');
INSERT INTO USERS (USERNAME, PWD, NOME, SURNAME, BIRTHDATE, NATION, EMAIL) 
		VALUES ('damianorossi', 'passwordd', 'Damiano', 'Rossi', '1975-07-10', 'Italy', 'damianorossi@esempio.it');
INSERT INTO USERS (USERNAME, PWD, NOME, SURNAME, BIRTHDATE, NATION, EMAIL) 
		VALUES ('enricoverdi', 'passworde', 'Enrico', 'Verdi', '1985-12-13', 'Italy', 'enricoverdi@italia.it');
INSERT INTO USERS (USERNAME, PWD, NOME, SURNAME, BIRTHDATE, NATION, EMAIL) 
		VALUES ('francescabianchi', 'passwordf', 'Francesca', 'Bianchi', '1992-11-18', 'Italy', 'francescabianchi@italia.it');
INSERT INTO USERS (USERNAME, PWD, NOME, SURNAME, BIRTHDATE, NATION, EMAIL) 
		VALUES ('giorgiorossi', 'passwordg', 'Giorgio', 'Rossi', '1971-01-08', 'Italy', 'giorgiorossi@ciaomondo.it');
INSERT INTO USERS (USERNAME, PWD, NOME, SURNAME, BIRTHDATE, NATION, EMAIL) 
		VALUES ('lucarossi', 'passwordl', 'Luca', 'Rossi', '1993-04-07', 'Italy', 'lucarossi@ciaomondo.it');
INSERT INTO AIRPORTS (IATA, NOME, CITY, NATION)
		VALUES ('BGY', 'Bergamo Orio al Serio', 'Bergamo', 'Italy');
INSERT INTO AIRPORTS (IATA, NOME, CITY, NATION)
		VALUES ('LIN', 'Milano Linate', 'Milano', 'Italy');
INSERT INTO AIRPORTS (IATA, NOME, CITY, NATION)
		VALUES ('MXP', 'Milano Malpensa', 'Milano', 'Italy');
INSERT INTO AIRPORTS (IATA, NOME, CITY, NATION)
		VALUES ('VCE', 'Venezia - Tessera', 'Venezia', 'Italy');
INSERT INTO AIRPORTS (IATA, NOME, CITY, NATION)
		VALUES ('AOI', 'Ancona - Falconara', 'Ancona', 'Italy');
INSERT INTO AIRPORTS (IATA, NOME, CITY, NATION)
		VALUES ('BRI', 'Bari - Palese', 'Bari', 'Italy');
INSERT INTO AIRPORTS (IATA, NOME, CITY, NATION)
		VALUES ('GOA', 'Genova Cristoforo Colombo', 'Genova', 'Italy');
INSERT INTO AIRPORTS (IATA, NOME, CITY, NATION)
		VALUES ('TRN', 'Torino - Caselle', 'Torino', 'Italy');
INSERT INTO AIRPORTS (IATA, NOME, CITY, NATION)
		VALUES ('FCO','Roma Fiumicino', 'Roma', 'Italy');
INSERT INTO AIRPORTS (IATA, NOME, CITY, NATION)
		VALUES ('CAG','Cagliari - Elmas', 'Cagliari', 'Italy');
INSERT INTO AIRPLANES (ID, ECONOMY, BUSINESS)
		VALUES ('PN001', 60, 40);
INSERT INTO AIRPLANES (ID, ECONOMY, BUSINESS)
		VALUES ('PN002', 60, 40);
INSERT INTO AIRPLANES (ID, ECONOMY, BUSINESS)
		VALUES ('PN003', 60, 40);
INSERT INTO AIRPLANES (ID, ECONOMY, BUSINESS)
		VALUES ('PN004', 60, 40);
INSERT INTO AIRPLANES (ID, ECONOMY, BUSINESS)
		VALUES ('PN005', 80, 20);
INSERT INTO AIRPLANES (ID, ECONOMY, BUSINESS)
		VALUES ('PN006', 60, 40);
INSERT INTO AIRPLANES (ID, ECONOMY, BUSINESS)
		VALUES ('PN007', 60, 40);
INSERT INTO AIRPLANES (ID, ECONOMY, BUSINESS)
		VALUES ('PN008', 20, 80);
INSERT INTO FLIGHTS (ID, DEPARTURE, ARRIVE, DATED, DATEA, AIRPLANE)
		VALUES ('MXPFCO001', 'MXP', 'FCO', '06:34:00', '08:00:00', 'PN001');
INSERT INTO FLIGHTS (ID, DEPARTURE, ARRIVE, DATED, DATEA, AIRPLANE)
		VALUES ('MXPFCO002', 'MXP', 'FCO', '11:05:00', '12:20:00', 'PN002');        
INSERT INTO FLIGHTS (ID, DEPARTURE, ARRIVE, DATED, DATEA, AIRPLANE)
		VALUES ('FCOMXP001', 'FCO', 'MXP', '09:05:00', '10:20:00', 'PN001');
INSERT INTO FLIGHTS (ID, DEPARTURE, ARRIVE, DATED, DATEA, AIRPLANE)
		VALUES ('FCOMXP002', 'FCO', 'MXP', '17:15:00', '18:25:00', 'PN002');         

        
