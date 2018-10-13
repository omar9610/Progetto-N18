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
INSERT INTO FLIGHTS (ID, DEPARTURE, ARRIVE, DATED, DATEA, AIRPLANE)
		VALUES ('MXPAOI001', 'MXP', 'AOI', '06:34:00', '08:00:00', 'PN003');
INSERT INTO FLIGHTS (ID, DEPARTURE, ARRIVE, DATED, DATEA, AIRPLANE)
		VALUES ('MXPAOI002', 'MXP', 'AOI', '11:05:00', '12:20:00', 'PN004');        
INSERT INTO FLIGHTS (ID, DEPARTURE, ARRIVE, DATED, DATEA, AIRPLANE)
		VALUES ('AOIMXP001', 'AOI', 'MXP', '09:05:00', '10:20:00', 'PN003');
INSERT INTO FLIGHTS (ID, DEPARTURE, ARRIVE, DATED, DATEA, AIRPLANE)
		VALUES ('AOIMXP002', 'AOI', 'MXP', '17:15:00', '18:25:00', 'PN004'); 
INSERT INTO FLIGHTS (ID, DEPARTURE, ARRIVE, DATED, DATEA, AIRPLANE)
		VALUES ('MXPCAG001', 'MXP', 'CAG', '06:34:00', '08:00:00', 'PN005');
INSERT INTO FLIGHTS (ID, DEPARTURE, ARRIVE, DATED, DATEA, AIRPLANE)
		VALUES ('MXPCAG002', 'MXP', 'CAG', '11:05:00', '12:20:00', 'PN006');        
INSERT INTO FLIGHTS (ID, DEPARTURE, ARRIVE, DATED, DATEA, AIRPLANE)
		VALUES ('CAGMXP001', 'CAG', 'MXP', '09:05:00', '10:20:00', 'PN005');
INSERT INTO FLIGHTS (ID, DEPARTURE, ARRIVE, DATED, DATEA, AIRPLANE)
		VALUES ('CAGMXP002', 'CAG', 'MXP', '17:15:00', '18:25:00', 'PN006');  
INSERT INTO PAYMENTS (ID, METHOD, HOLDER)
		VALUES ('123456781234501', 'CREDITCARD', 'alessandrabianchi');
INSERT INTO PAYMENTS (ID, METHOD, HOLDER)
		VALUES ('1234567891234502', 'CREDITCARD', 'brunorossi');
INSERT INTO PAYMENTS (ID, METHOD, HOLDER)
		VALUES ('1234567891234503', 'CREDITCARD', 'claudiaverdi');
INSERT INTO PAYMENTS (ID, METHOD, HOLDER)
		VALUES ('1234567891234504', 'CREDITCARD', 'damianorossi');
INSERT INTO PAYMENTS (ID, METHOD, HOLDER)
		VALUES ('1234567891234505', 'CREDITCARD', 'enricoverdi');
INSERT INTO PAYMENTS (ID, METHOD, HOLDER)
		VALUES ('1234567891234506', 'CREDITCARD', 'francescabianchi');
INSERT INTO PAYMENTS (ID, METHOD, HOLDER)
		VALUES ('1234567891234507', 'CREDITCARD', 'giorgiorossi');
INSERT INTO PAYMENTS (ID, METHOD, HOLDER)
		VALUES ('1234567891234508', 'CREDITCARD', 'lucarossi');  
INSERT INTO PAYMENTS (ID, METHOD, HOLDER)
		VALUES ('1234567891234509', 'CREDITCARD', 'aaa');
INSERT INTO PAYMENTS (ID, METHOD, HOLDER)
		VALUES ('123456789123410', 'CREDITCARD', 'aaa');
INSERT INTO PAYMENTS (ID, METHOD, HOLDER)
		VALUES ('1234567891234511', 'CREDITCARD', 'alessandrabianchi');
INSERT INTO PAYMENTS (ID, METHOD, HOLDER)
		VALUES ('1234567891234512', 'CREDITCARD', 'brunorossi');  
INSERT INTO TICKETS (ID, FLIGHTUSER, HOLDER, FLIGHT, DDATE, BAGGAGE, SEAT, CHECKED)
		VALUES ('MXPFCO001E6030102018','aaa', 'Aaa Aaa', 'MXPFCO001', '2018-10-30', 'HAND','ECONOMY', '1');    
INSERT INTO TICKETS (ID, FLIGHTUSER, HOLDER, FLIGHT, DDATE, BAGGAGE, SEAT, CHECKED)
		VALUES ('MXPFCO001E5930102018','alessandrabianchi', 'Alessandra Bianchi', 'MXPFCO001','2018-10-30','HAND','ECONOMY', '0');  
INSERT INTO TICKETS (ID, FLIGHTUSER, HOLDER, FLIGHT, DDATE, BAGGAGE, SEAT, CHECKED)
		VALUES ('MXPFCO001E5830102018','brunorossi','Bruno Rossi', 'MXPFCO001','2018-10-30','HAND','ECONOMY', '0');  
INSERT INTO TICKETS (ID, FLIGHTUSER, HOLDER, FLIGHT, DDATE,BAGGAGE, SEAT, CHECKED)
		VALUES ('MXPFCO001E5730102018','claudiaverdi', 'Claudia Verdi', 'MXPFCO001','2018-10-30','HAND','ECONOMY', '1'); 
INSERT INTO TICKETS (ID, FLIGHTUSER, HOLDER, FLIGHT, DDATE, BAGGAGE, SEAT, CHECKED)
		VALUES ('MXPFCO001E5630102018','damianorossi', 'Damiano Rossi', 'MXPFCO001','2018-10-30','HAND','ECONOMY', '1'); 
INSERT INTO TICKETS (ID, FLIGHTUSER, HOLDER, FLIGHT, DDATE, BAGGAGE, SEAT, CHECKED)
		VALUES ('MXPFCO001E5530102018','enricoverdi', 'Enrico Verdi', 'MXPFCO001','2018-10-30','HAND','ECONOMY', '0'); 
INSERT INTO TICKETS (ID, FLIGHTUSER, HOLDER, FLIGHT, DDATE, BAGGAGE, SEAT, CHECKED)
		VALUES ('MXPFCO001E5430102018','francescabianchi', 'Francesca Bianchi', 'MXPFCO001','2018-10-30','HAND','ECONOMY', '1'); 
INSERT INTO TICKETS (ID, FLIGHTUSER, HOLDER, FLIGHT, DDATE, BAGGAGE, SEAT, CHECKED)
		VALUES ('MXPFCO001E5330102018','giorgiorossi', 'Giorgio Rossi', 'MXPFCO001','2018-10-30','HAND','ECONOMY', '1'); 
INSERT INTO TICKETS (ID, FLIGHTUSER, HOLDER, FLIGHT, DDATE, BAGGAGE, SEAT, CHECKED)
		VALUES ('MXPFCO001E5230102018','lucarossi', 'Luca Rossi', 'MXPFCO001','2018-10-30','HAND','ECONOMY', '1');         
INSERT INTO BOOKEDFLIGHTS(NUM, ID, DDATE, ESEAT, BSEAT)
		VALUES(1, 'MXPFCO001', '2018-10-30', 51, 40)