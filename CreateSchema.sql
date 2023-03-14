CREATE SCHEMA tabella;
USE tabella;


create table Cliente(
CF varchar(30) NOT NULL,
Prenotazioni_effettuate int NOT NULL,
Mail varchar(30) NOT NULL,
Nome_cli varchar(30) NOT NULL,
Cognome varchar(30) NOT NULL,
Ind_cli varchar(100) NOT NULL,
Tel_cli varchar(30) NOT NULL,
primary key (CF)
);

create table Tessera(
ID_tessera int NOT NULL,
Validità varchar(30) NOT NULL,
Scadenza date NOT NULL,
Sconto_effettivo varchar(30),
TipoTessera varchar(30) NOT NULL,
ClienteTesserato varchar(30) NOT NULL,
primary key(ID_tessera,Validità,Scadenza),
foreign key(ClienteTesserato) references Cliente(CF)
ON UPDATE CASCADE ON DELETE CASCADE 
);

create table Agenzia_viaggi(
Nome_ag varchar(30) NOT NULL,
Siti_disponibili varchar(100),
primary key (Nome_ag)
);

create table Struttura(
Nome_stru varchar(30) NOT NULL,
Ind_stru varchar(100) NOT NULL,
Città varchar(50) NOT NULL,
Prezzo int NOT NULL,
A_iscrizione date NOT NULL,
data_inizio date NOT NULL,
Vani float,
Tel_stru varchar(30) NOT NULL,
M_quadri float,
Tipo_stanza varchar(30),
Ospiti int,
Descr_servizi varchar(100) NOT NULL,
TipoStruttura varchar(30) NOT NULL,
primary key (Nome_stru,Ind_stru)
);

create table Punto_interesse(
Nome_punto varchar(50) NOT NULL,
Descrizione varchar(100) NOT NULL,
Città varchar(30) NOT NULL,
Tipo varchar(30) NOT NULL,
primary key(Nome_punto)
);

create table Distante(
NomeStruttura varchar(30) NOT NULL references Struttura(Nome_stru),
IndirizzoStruttura varchar(100) NOT NULL references Struttura(Ind_stru),
NomePunto varchar(30) NOT NULL references Punto_interesse(Nome_punto),
Dist_km varchar(5) NOT NULL,
primary key(NomeStruttura,IndirizzoStruttura,NomePunto)
);

create table Prenotazione(
ID int NOT NULL,
Note varchar(100),
Data_pre datetime NOT NULL,
Data_in datetime NOT NULL,
Data_out datetime NOT NULL,
Prezzo_totale int NOT NULL,
CfCliente varchar(30) NOT NULL,
NomeAgenzia varchar(30) NOT NULL,
NomeStruttura varchar(30) NOT NULL,
IndirizzoStruttura varchar(100) NOT NULL,
primary key (ID),
constraint Fk_struttura foreign key(NomeStruttura,IndirizzoStruttura)
references Struttura(Nome_stru,Ind_stru)
ON UPDATE CASCADE ON DELETE CASCADE,
foreign key(CfCliente) references Cliente(CF)
ON UPDATE CASCADE ON DELETE CASCADE, 
foreign key(NomeAgenzia) references Agenzia_viaggi(Nome_ag)
ON UPDATE CASCADE ON DELETE CASCADE 
);