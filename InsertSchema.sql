INSERT INTO Agenzia_viaggi (Nome_ag, Siti_disponibili) values ('Annunziata Viaggi', 'Booking.com, Trivago.it, Airbnb.it');
INSERT INTO Agenzia_viaggi (Nome_ag, Siti_disponibili) values ('SiVola', 'Viaggigiovani.it, Trivago.it, Hostel.com');

INSERT INTO Struttura (Nome_stru, Ind_stru, Città, Prezzo, A_iscrizione, data_inizio, Tel_stru, M_quadri, Tipo_stanza,
			Ospiti, Descr_servizi, TipoStruttura) values('Alma Rome','Via Angelo Poliziano, 17', 'Roma', 150, '2010-09-25', '2022-09-22','0620406673', null, 'Matrimoniale', 3, 'Hotel con SPA','Hotel');

INSERT INTO	Struttura (Nome_stru, Ind_stru, Città, Prezzo, A_iscrizione, data_inizio,Tel_stru, M_quadri, Tipo_stanza,
			Ospiti, Descr_servizi, TipoStruttura) values('Hotel Miramare','Via Nuova Provinciale Chiunzi, 5', 'Maiori', 330, '2018-03-14', '2022-03-24', '0814070635' , null, 'Suite Imperiale', 5, 'Suite di lusso, con bagno turco e 3 bagni','Hotel');

INSERT INTO Struttura (Nome_stru, Ind_stru, Città, Prezzo, A_iscrizione, data_inizio, Tel_stru, M_quadri, Tipo_stanza,
			Ospiti, Descr_servizi, TipoStruttura) values('YellowSquare','Via Serviliano Lattuada, 14', 'Milano', 30, '2015-01-02', '2022-12-02', '0282396603', null , null , null, 'Stanza 6 letti misto','Ostello');

INSERT INTO Struttura (Nome_stru, Ind_stru, Città, Prezzo, A_iscrizione,  data_inizio, Vani, Tel_stru, M_quadri, Tipo_stanza,
			Ospiti, Descr_servizi, TipoStruttura) values('Novella''s ' 'House','Piazza della Repubblica, 12', 'Firenze', 130, '2021-09-12', '2022-10-11', 2, '055219922', 120, null, null, 'Appartamento in pieno centro','Appartamento');

INSERT INTO Struttura (Nome_stru, Ind_stru, Città, Prezzo, A_iscrizione, data_inizio, Tel_stru, M_quadri, Tipo_stanza,
			Ospiti, Descr_servizi, TipoStruttura) values('Uptown Place','Via Carlo Crivelli, 112', 'Milano', 35, '2016-02-21', '2022-04-28', '0233090088', null, null, null , 'Ostello molto centrale','Ostello');

INSERT INTO	Struttura (Nome_stru, Ind_stru, Città, Prezzo, A_iscrizione, data_inizio, Tel_stru, M_quadri, Tipo_stanza,
			Ospiti, Descr_servizi, TipoStruttura) values('Hotel Petit Palais','Via Tuscolana, 5', 'Roma', 100, '2018-06-19', '2022-07-01', '061121787' , null, 'Camera per 2 persone', 2, 'Camera per due persone con Kingsize Bed','Hotel');

INSERT INTO Struttura (Nome_stru, Ind_stru, Città, Prezzo, A_iscrizione, data_inizio, Tel_stru, M_quadri, Tipo_stanza,
			Ospiti, Descr_servizi, TipoStruttura) values('Ostello Hintown','Via Borgogna, 14', 'Firenze', 30, '2015-01-09', '2022-11-23' ,'024099887', null , null , null, 'Stanza 6 letti misto','Ostello');

INSERT INTO Struttura (Nome_stru, Ind_stru, Città, Prezzo, A_iscrizione, data_inizio, Vani, Tel_stru, M_quadri, Tipo_stanza,
			Ospiti, Descr_servizi, TipoStruttura) values('Malpensa House','Via Claudio Sisto, 233', 'Milano', 180, '2021-07-22', '2022-07-22', 2, '062893872', 80, null, null, 'Appartamento vicino al terminal 1 di Malpensa MXP','Appartamento');

INSERT INTO Cliente (CF, Prenotazioni_effettuate, Mail, Nome_cli, Cognome, Ind_cli, Tel_cli) values ('GRNRZO97T12M361X', 3,'grinzosi.oracio@libero.it','Orazio','Grinzosi','Corso Vittorio Emanuele II, 11, Brescia', 393398701212);
INSERT INTO Cliente (CF, Prenotazioni_effettuate, Mail, Nome_cli, Cognome, Ind_cli, Tel_cli) values ('GSTRMN61R46L245P', 1,'augustoerminia@icloud.com','Erminia','Augusto','Via Vecchia Lavorate 47, Sarno', 393386446516);
INSERT INTO Cliente (CF, Prenotazioni_effettuate, Mail, Nome_cli, Cognome, Ind_cli, Tel_cli) values ('LCCMDA69A14D704Q', 7,'amelucchesi@gmail.com','Amedeo','Lucchesi','Via Tullio Mansi 44, Forlì', 39338625531);
INSERT INTO Cliente (CF, Prenotazioni_effettuate, Mail, Nome_cli, Cognome, Ind_cli, Tel_cli) values ('GROLVC80L12H501L', 4,'lodovico.gori@outlook.it','Lodovico','Gori','Via Provinciale Amendola 11C, Cava De Tirreni', 39335231840);
INSERT INTO Cliente (CF, Prenotazioni_effettuate, Mail, Nome_cli, Cognome, Ind_cli, Tel_cli) values ('MNTTNO00A41F205X', 9,'tonia.montanelli@gmail.com','Tonia','Montanelli','Via Carrara Lo Porto 11, Striano', 393332544652);
INSERT INTO Cliente (CF, Prenotazioni_effettuate, Mail, Nome_cli, Cognome, Ind_cli, Tel_cli) values ('QRNFRC72M57D612L', 2,'fefyquerini@gmail.com','Federica','Querini','Via Fulvio Cresta 889, Firenze', 393358709157);
INSERT INTO Cliente (CF, Prenotazioni_effettuate, Mail, Nome_cli, Cognome, Ind_cli, Tel_cli) values ('RCCGRG65A01I422C', 11,'riccigiorgio@gmail.com','Giorgio','Ricci','Via Claudio Versa 33, Sapri', 393392356882);
INSERT INTO Cliente (CF, Prenotazioni_effettuate, Mail, Nome_cli, Cognome, Ind_cli, Tel_cli) values ('CSTDRA01D47F205X', 3,'costadaria@yahoo.com','Daria','Costalonga','Via Lima 31, Milano', 393376651298);
INSERT INTO Cliente (CF, Prenotazioni_effettuate, Mail, Nome_cli, Cognome, Ind_cli, Tel_cli) values ('TRTBNC80A41H501I', 7,'biancatart@gmail.com','Bianca','Tartini','Via Catania 85, Torino', 393324374761);
INSERT INTO Cliente (CF, Prenotazioni_effettuate, Mail, Nome_cli, Cognome, Ind_cli, Tel_cli) values ('CLLSMN98A01I438I', 8,'collinasimo12@gmail.com','Simone','Collina','Via Cannellone 85, Sarno', 393364328713);
INSERT INTO Cliente (CF, Prenotazioni_effettuate, Mail, Nome_cli, Cognome, Ind_cli, Tel_cli) values ('DRNFLV99A01I438O', 7,'odiernafu@yahoo.com','Fulvio','Odierna','Via Costigliola 31, Sarno', 39333264870);
INSERT INTO Cliente (CF, Prenotazioni_effettuate, Mail, Nome_cli, Cognome, Ind_cli, Tel_cli) values ('DNLVGL98A01I978A', 7,'virgyadinolfi@yahoo.com','Virgilio','Adinolfi','Via Palermo 52, Firenze', 393889438111);
INSERT INTO Cliente (CF, Prenotazioni_effettuate, Mail, Nome_cli, Cognome, Ind_cli, Tel_cli) values ('STBRMN97A41D612G', 1,'ramonastabia@gmail.com','Ramona','Stabia','Via Marco Polo 1, Riccione', 393301254888);


INSERT INTO Punto_interesse (Nome_punto, Descrizione, Città, Tipo) values ('Colosseo', 'Antica Arena Romana', 'Roma', 'Anfiteatro');
INSERT INTO Punto_interesse (Nome_punto, Descrizione, Città, Tipo) values ('Duomo di Milano', 'Cattedrale Gotica Italiana', 'Milano', 'Chiesa');
INSERT INTO Punto_interesse (Nome_punto, Descrizione, Città, Tipo) values ('Piazza Venezia', 'Piazza Antica Romana', 'Roma', 'Piazza');
INSERT INTO Punto_interesse (Nome_punto, Descrizione, Città, Tipo) values ('Piazza Navona', 'Piazza Antica Romana', 'Roma', 'Piazza');
INSERT INTO Punto_interesse (Nome_punto, Descrizione, Città, Tipo) values ('Fontana di Trevi', 'Fontana Antica Romana', 'Roma', 'Fontana');
INSERT INTO Punto_interesse (Nome_punto, Descrizione, Città, Tipo) values ('Duomo di Amalfi', 'Duomo', 'Amalfi', 'Chiesa');
INSERT INTO Punto_interesse (Nome_punto, Descrizione, Città, Tipo) values ('Cattedrale di Santa Maria del Fiore', 'Cattedrale del Rinascimento', 'Firenze', 'Cattedrale');
INSERT INTO Punto_interesse (Nome_punto, Descrizione, Città, Tipo) values ('Palazzo Pitti', 'Palazzo del Rinascimento', 'Firenze', 'Palazzo');
INSERT INTO Punto_interesse (Nome_punto, Descrizione, Città, Tipo) values ('Teatro della Scala', 'Antico Teatro', 'Milano', 'Arte');
INSERT INTO Punto_interesse (Nome_punto, Descrizione, Città, Tipo) values ('Basilica San Lorenzo Maggiore', 'Basilica', 'Milano', 'Chiesa');



INSERT INTO Tessera(ID_tessera, Validità, Scadenza, Sconto_effettivo, TipoTessera, ClienteTesserato) values (001, '3 anni', '2024-11-07', '30%', 'Premium','GRNRZO97T12M361X');
INSERT INTO Tessera(ID_tessera, Validità, Scadenza, Sconto_effettivo, TipoTessera, ClienteTesserato) values (002, '3 anni', '2023-01-22', null, 'Standard','GSTRMN61R46L245P');
INSERT INTO Tessera(ID_tessera, Validità, Scadenza, Sconto_effettivo, TipoTessera, ClienteTesserato) values (003, '3 anni', '2024-12-12', '30%', 'Premium','LCCMDA69A14D704Q');
INSERT INTO Tessera(ID_tessera, Validità, Scadenza, Sconto_effettivo, TipoTessera, ClienteTesserato) values (004, '3 anni', '2023-12-30', '30%', 'Premium','GROLVC80L12H501L');
INSERT INTO Tessera(ID_tessera, Validità, Scadenza, Sconto_effettivo, TipoTessera, ClienteTesserato) values (005, '3 anni', '2024-10-01', null, 'Standard','MNTTNO00A41F205X');
INSERT INTO Tessera(ID_tessera, Validità, Scadenza, Sconto_effettivo, TipoTessera, ClienteTesserato) values (006, '3 anni', '2023-11-04', '30%', 'Premium','QRNFRC72M57D612L');
INSERT INTO Tessera(ID_tessera, Validità, Scadenza, Sconto_effettivo, TipoTessera, ClienteTesserato) values (007, '3 anni', '2024-11-06', null, 'Standard','RCCGRG65A01I422C');
INSERT INTO Tessera(ID_tessera, Validità, Scadenza, Sconto_effettivo, TipoTessera, ClienteTesserato) values (008, '3 anni', '2023-03-07', null, 'Standard','CSTDRA01D47F205X');
INSERT INTO Tessera(ID_tessera, Validità, Scadenza, Sconto_effettivo, TipoTessera, ClienteTesserato) values (009, '3 anni', '2024-01-09', '30%', 'Premium','TRTBNC80A41H501I');
INSERT INTO Tessera(ID_tessera, Validità, Scadenza, Sconto_effettivo, TipoTessera, ClienteTesserato) values (010, '3 anni', '2024-09-22', '30%', 'Premium','CLLSMN98A01I438I');
INSERT INTO Tessera(ID_tessera, Validità, Scadenza, Sconto_effettivo, TipoTessera, ClienteTesserato) values (011, '3 anni', '2024-03-22', '30%', 'Premium','DRNFLV99A01I438O');
INSERT INTO Tessera(ID_tessera, Validità, Scadenza, Sconto_effettivo, TipoTessera, ClienteTesserato) values (012, '3 anni', '2024-08-21', '30%', 'Premium','DNLVGL98A01I978A');
INSERT INTO Tessera(ID_tessera, Validità, Scadenza, Sconto_effettivo, TipoTessera, ClienteTesserato) values (013, '3 anni', '2024-10-20', '30%', 'Premium','STBRMN97A41D612G');

INSERT INTO Prenotazione(ID, Note, Data_pre, Data_in, Data_out, Prezzo_totale, CfCliente, NomeAgenzia, NomeStruttura, IndirizzoStruttura) values (00164, 'note', '2022-12-11 18:43:11', '2022-12-23 15:00:00', '2022-12-28 09:00:00', 750, 'GRNRZO97T12M361X', 'SiVola', 'Alma Rome','Via Angelo Poliziano, 17, Roma');
INSERT INTO Prenotazione(ID, Note, Data_pre, Data_in, Data_out, Prezzo_totale, CfCliente, NomeAgenzia, NomeStruttura, IndirizzoStruttura) values (00165, 'note', '2022-07-01 07:11:34','2022-07-13 19:30:00', '2022-07-16 11:00:00', 990, 'GSTRMN61R46L245P', 'SiVola', 'Hotel Miramare','Via Nuova Provinciale Chiunzi, 5, Maiori');
INSERT INTO Prenotazione(ID, Note, Data_pre, Data_in, Data_out, Prezzo_totale, CfCliente, NomeAgenzia, NomeStruttura, IndirizzoStruttura) values (00166, 'note', '2022-12-01 11:46:02', '2023-01-15 19:00:00', '2023-01-18 09:00:00', 200, 'LCCMDA69A14D704Q', 'Annunziata Viaggi', 'Uptown Place','Via Carlo Crivelli, 112');
INSERT INTO Prenotazione(ID, Note, Data_pre, Data_in, Data_out, Prezzo_totale, CfCliente, NomeAgenzia, NomeStruttura, IndirizzoStruttura) values (00167, 'note', '2022-12-06 22:22:02', '2023-01-22 20:30:00', '2023-01-26 09:00:00', 400, 'DRNFLV99A01I438O', 'Annunziata Viaggi', 'Hotel Petit Palais','Via Tuscolana, 5');


INSERT INTO Distante(NomeStruttura, IndirizzoStruttura, NomePunto, Dist_km) values ('Alma Rome','Via Angelo Poliziano, 17, Roma', 'Colosseo', '2 km');
INSERT INTO Distante(NomeStruttura, IndirizzoStruttura, NomePunto, Dist_km) values ('YellowSquare','Via Serviliano Lattuada, 14, Milano', 'Duomo di Milano', '10km');
INSERT INTO Distante(NomeStruttura, IndirizzoStruttura, NomePunto, Dist_km) values ('Hotel Petit Palais','Via Tuscolana, 5', 'Piazza Venezia', '5km');
INSERT INTO Distante(NomeStruttura, IndirizzoStruttura, NomePunto, Dist_km) values ('Malpensa House','Via Claudio Sisto, 233', 'Teatro della Scala', '20km');
INSERT INTO Distante(NomeStruttura, IndirizzoStruttura, NomePunto, Dist_km) values ('Uptown Place','Via Carlo Crivelli, 112', 'Basilica San Lorenzo Maggiore', '4km');