package Progetto;

import java.sql.*;

public class Connect {

	private Connection con = null;
	private String server, port, database, username, password;
	
	public Connect(String server, String port, String database, String username, String password) {
		this.server = server;
		this.port = port;
		this.database = database;
		this.username = username;
		this.password = password;
	}
	
	public void DBconnect() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://"+this.server+":"+this.port+"/"+this.database
					+ "?useUnicode=true&useJDBCCompliantTimezoneShift=true"
					+ "&useLegacyDatetimeCode=false&serverTimezone=UTC";
			con = DriverManager.getConnection(url, this.username, this.password);
		}
		catch (Exception e) {
			System.out.println("CONNESSIONE FALLITA!");
		}
		
	}
	
	private void executeQuery1() throws SQLException{
		/* Registrazione di un cliente */
		if(con == null) {
			this.DBconnect();
		}
		String query = "INSERT INTO Cliente (CF, Prenotazioni_effettuate, Mail, Nome_cli, Cognome, Ind_cli, Tel_cli)" + 
						"VALUES ('RSSMRA94L12L383W', 3,'rossimario@libero.it','Mario','Rossi','Via emanuele II, 45', 393398701212)";
		
		Statement pquery = con.createStatement();
		pquery.executeUpdate(query);
		System.out.println("Query numero uno conclusa!\n");
	}
	
	private void executeQuery2() throws SQLException{
		/* Registrazione di una struttura ricettiva */
		if(con == null) {
			this.DBconnect();
		}
		String query = "INSERT INTO Struttura (Nome_stru, Ind_stru, Città, Prezzo, A_iscrizione, Tel_stru, M_quadri, Tipo_stanza,"
				+ "Ospiti, Descr_servizi, TipoStruttura) VALUES('Hotel Roma Rei','Via Gaio Dotti, 43', 'Roma', 130, '2011-08-25', 0813578590, null,'Matrimoniale', 5, 'Hotel con SPA','Hotel')";
		
		Statement pquery = con.createStatement();
		pquery.executeUpdate(query);	
		System.out.println("Query numero due conclusa!\n");
	}
	
	private void executeQuery3() throws SQLException{
		/* Prenotazione di una struttura ricettiva da parte di un cliente */
		if(con == null) {
			this.DBconnect();
		}
		String query = "INSERT INTO Prenotazione(ID, Note, Data_pre, Data_in, Data_out, Prezzo_totale, CfCliente, NomeAgenzia, NomeStruttura, IndirizzoStruttura)"
				+ "VALUES (00168, 'note', '2022-12-06 18:00:00', '2023-01-22 20:30:00', '2023-01-26 09:00:00', 400, 'DRNFLV99A01I438O', 'Annunziata Viaggi', 'Hotel Roma Rei', 'Via Gaio Dotti, 43')";
		
		Statement pquery = con.createStatement();
		pquery.executeUpdate(query);	
		System.out.println("Query numero tre conclusa!\n");	
	}
	
	private void executeQuery4() throws SQLException{
		/* Attribuzione ad un cliente di una tessera con fidelizzazione premium */
		if(con == null) {
			this.DBconnect();
		}
		String query = "INSERT INTO Tessera(ID_tessera, Validità, Scadenza, Sconto_effettivo, TipoTessera, ClienteTesserato) values (014, '3 anni', '2030-11-07', '30%', 'Premium','RSSMRA94L12L383W')";
		
		Statement pquery = con.createStatement();
		pquery.executeUpdate(query);	
		System.out.println("Query numero quattro conclusa!\n");	
	}
	
	private void executeQuery5() throws SQLException{
		/* Visualizzazione di tutte le strutture ricettive per città */
		if(con == null) {
			this.DBconnect();
		}
		String query = "SELECT * FROM Struttura GROUP BY Città";
		
		Statement pquery = con.createStatement();
		ResultSet result = pquery.executeQuery(query);
		
		while(result.next()) {
			String Nome_stru = result.getString(1);
			String Ind_stru = result.getString(2);
			String Città = result.getString(3);

			System.out.println(Nome_stru + "\t" + Ind_stru + "\t" + Città);
		}
		
		System.out.println("Query numero cinque conclusa!\n");		
		
	}
	
	private void executeQuery6() throws SQLException{
		/*Visualizzazione di tutte le strutture ricettive disponibili in un periodo di tempo specificato*/
		
		if(con == null) {
			this.DBconnect();
		}
		String query = "SELECT Nome_stru FROM Struttura"
				+ "WHERE data_inizio BETWEEN '2022-03-23' AND '2022-12-31'";
		
		Statement pquery = con.createStatement();
		ResultSet result = pquery.executeQuery(query);
		System.out.println("Ecco tutte le strutture disponibili tra il 23/03/2022 e il 31/12/2022: \n");
		while(result.next()) {
			String Nome_stru = result.getString(1);
			String Ind_stru = result.getString(2);
			String Città = result.getString(3); 

			System.out.println(Nome_stru + "\t" + Ind_stru + "\t" + Città);
		}
		
		System.out.println("Query numero sei conclusa!\n");		
		
	}

	private void executeQuery7(int x) throws SQLException{
		/*Visualizzazione di tutte le strutture ricettive disponibili in un periodo di tempo specificato il cui prezzo a notte non superi i 50€*/
		
		if(con == null) {
			this.DBconnect();
		}
		String query = "SELECT * FROM Struttura"
				+ "WHERE data_inizio BETWEEN '2022-03-23' AND '2022-12-31' AND Prezzo <=" +x;
		
		Statement pquery = con.createStatement();
		ResultSet result = pquery.executeQuery(query);
		System.out.println("Ecco tutte le strutture disponibili che non superano i 50€: \n");
		while(result.next()) {
			String Nome_stru = result.getString(1);
			String Ind_stru = result.getString(2);
			String Città = result.getString(3);
			double Prezzo = result.getDouble(4); 

			System.out.println(Nome_stru + "\t" + Ind_stru + "\t" + Città + "\t" + Prezzo);
		}
		
		System.out.println("Query numero sette conclusa!\n");		
		
	}
	
	private void executeQuery8() throws SQLException{
		/*Visualizzazione del numero di prenotazioni effettuate da tutti i clienti nell’ultimo mese*/
		
		if(con == null) {
			this.DBconnect();
		}
		String query = "SELECT Prenotazioni_effettuate COUNT(*) as numero_prenotazioni_effettuate"
				+ "FROM Prenotazioni"
				+ "WHERE Data_pre >= DATE_ADD(Month, -1, GETDATE())";
		
		Statement pquery = con.createStatement();
		ResultSet result = pquery.executeQuery(query);
		System.out.println("Ecco il numero di prenotazioni effettuate dai clienti nello scorso mese: \n");
		while(result.next()) {
			int prenotazioni_effettuate = result.getInt(1);
			
			System.out.println("Prenotazioni effettuate:" + prenotazioni_effettuate + "\n");
		}
		
		System.out.println("Query numero otto conclusa!\n");		
		
		
	}	
	
	private void executeQuery9() throws SQLException{
		/*Visualizzazione dei migliori 10 clienti premium che abbiano effettuato il maggior numero di prenotazioni nelle diverse strutture ricettive*/
		
		if(con == null) {
			this.DBconnect();
		}
		String query = "SELECT Cliente.Cf, COUNT(Prenotazioni_effettuate) AS numero_prenotazioni"
				+ "FROM Cliente"
				+ "INNER JOIN Prenotazione	ON Cliente.Cf = Prenotazione.CfCliente"
				+ "ORDER BY numero_prenotazioni DESC"
				+ "LIMIT 10";
		
		Statement pquery = con.createStatement();
		ResultSet result = pquery.executeQuery(query);
		System.out.println("Ecco ii 10 migliori clienti premium: \n");
		while(result.next()) {
			String ClienteCf = result.getString(1);
			int numero_prenotazioni = result.getInt(2);
			
			System.out.println(ClienteCf +"\t" +  numero_prenotazioni);
		}
		
		System.out.println("Query numero nove conclusa!\n");		
		
		
	}

	private void executeQuery10() throws SQLException{
		/*Visualizzazione degli ostelli per i quali non è stato mai registrata una prenotazione di più di 7 giorni*/
		
		if(con == null) {
			this.DBconnect();
		}
		String query = "SELECT *"
				+ "FROM Struttura s"
				+ "WHERE s.TipoStruttura = 'Ostello' AND s.Nome_stru NOT IN(SELECT s.Nome_stru"
				+ "FROM Struttura s "
				+ "INNER JOIN Prenotazione p ON s.Nome_stru = p.NomeStruttura"
				+ "WHERE (p.Data_in - p.Data_out >= 7))";
		
		Statement pquery = con.createStatement();
		ResultSet result = pquery.executeQuery(query);
		
		while(result.next()) {
			String Nome_stru = result.getString(1);
			String Ind_stru = result.getString(2);
			String Città = result.getString(3);

			System.out.println(Nome_stru + "\t" + Ind_stru + "\t" + Città);
		}
		
		System.out.println("Query numero dieci conclusa!\n");		
		
		
	}

	private void executeQuery11(int z) throws SQLException{
		/*Visualizzazione delle strutture ricettive che hanno una distanza di 10km specifica da un punto di interesse*/
		
		if(con == null) {
			this.DBconnect();
		}
		String query = "SELECT s.Nome_stru"
				+ "FROM Struttura s"
				+ "INNER JOIN Distante d ON s.Nome_stru = d.NomeStruttura"
				+ "INNER JOIN Punto_interesse p ON d.NomePunto = p.Nome_punto"
				+ "HAVING Distanza <= " +z;
		
		Statement pquery = con.createStatement();
		ResultSet result = pquery.executeQuery(query);
		
		while(result.next()) {
			String Nome_stru = result.getString(1);

			System.out.println(Nome_stru);
		}
		
		System.out.println("Query numero undici conclusa!\n");		
		
	}

	private void executeQuery12() throws SQLException{
		/*Visualizzazione della somma degli incassi ottenuti dalle strutture ricettive registrate sulla piattaforma*/
		
		if(con == null) {
			this.DBconnect();
		}
		String query = "SELECT SUM(Prezzo) AS totale_incasso"
				+ "FROM Struttura";
		
		Statement pquery = con.createStatement();
		ResultSet result = pquery.executeQuery(query);
		
		while(result.next()) {
			float Totale_incasso = result.getFloat(1);

			System.out.println(Totale_incasso);
		}
		
		System.out.println("Query numero dodici conclusa!\n");		
		
	}

	private void executeQuery13() throws SQLException{
		/* Stampa dei dati dei clienti che hanno prenotato solo appartamenti e ostelli*/
		
		if(con == null) {
			this.DBconnect();
		}
		String query = "SELECT c.*"
				+ "FROM Cliente c"
				+ "INNER JOIN Struttura s ON c.CF = s.CfCliente"
				+ "WHERE NOT EXISTS (SELECT 1 FROM Prenotazione p WHERE p.CfCliente = c.CF AND (TipoStruttura = 'Hotel' OR TipoStruttura = 'Ostello'))";
		
		Statement pquery = con.createStatement();
		ResultSet result = pquery.executeQuery(query);
		
		while(result.next()) {
			String CF = result.getString(1);
			int prenotazioni_effettuate = result.getInt(2);
			String mail = result.getString(3);
			String nome_cli = result.getString(4);
			String cognome_cli = result.getString(5);
			String ind_cli = result.getString(6);
			String tel_cli = result.getString(7);


			System.out.println(CF + "\t" + prenotazioni_effettuate + "\t" + mail + "\t" + nome_cli + "\t" + cognome_cli + "\t" + ind_cli + "\t" + tel_cli);
		}
		
		System.out.println("Query numero tredici conclusa!\n");
	}

	private void executeQuery14() throws SQLException{
		/* Stampa di un report che mostri i dati delle agenzie di viaggio compreso il numero totale di prenotazioni effettuate*/
		
		if(con == null) {
			this.DBconnect();
		}
		String query = "SELECT a.Nome_ag, COUNT(*) AS num_prenotazioni"
				+ "FROM Agenzia_viaggi a JOIN Prenotazione p ON a.Nome_ag = p.NomeAgenzia"
				+ "GROUP BY a.Nome_ag";
		
		Statement pquery = con.createStatement();
		ResultSet result = pquery.executeQuery(query);
		
		while(result.next()) {
			String Nome_ag = result.getString(1);
			int prenotazioni = result.getInt(2);
			
			System.out.println(Nome_ag + "\t" + prenotazioni);
		}
		
		System.out.println("Query numero quattordici conclusa!\n");
	}
	
	private void executeQuery15(int y) throws SQLException{
		/*Stampa di un report che mostri i dati delle strutture ricettive per una specifica città e che hanno ricevuto meno di 3 prenotazioni*/
		
		if(con == null) {
			this.DBconnect();
		}
		String query = "SELECT s.Nome_stru, COUNT(p.ID) AS num_prenotazioni"
				+ "FROM Struttura s"
				+ "LEFT JOIN Prenotazione p ON p.NomeStruttura = s.Nome_stru"
				+ "WHERE s.Città = 'Roma'"
				+ "HAVING COUNT(p.id) <" +y;
		
		Statement pquery = con.createStatement();
		ResultSet result = pquery.executeQuery(query);
		
		while(result.next()) {
			String Nome_stru = result.getString(1);
			String Ind_stru = result.getString(2);
			String Città = result.getString(3);

			System.out.println(Nome_stru + "\t" + Ind_stru + "\t" + Città);
		}
		
		System.out.println("Query numero quindici conclusa!\n");		
		
	}	

	private void executeQuery16() throws SQLException{
		/*Stampa di un report che mostri i dati delle strutture ricettive per una specifica città e che hanno ricevuto meno di 3 prenotazioni*/
		
		if(con == null) {
			this.DBconnect();
		}
		String query = "SELECT p.ID,"
				+ "FROM Prenotazione p"
				+ "INNER JOIN clienti c ON p.CfCliente = c.CF"
				+ "INNER JOIN Struttura s ON p.NomeStruttura = s.Nome_stru"
				+ "WHERE p.Data_in > CURRENT_DATE";
		
		Statement pquery = con.createStatement();
		ResultSet result = pquery.executeQuery(query);
		
		while(result.next()) {
			int ID = result.getInt(1);

			System.out.println(ID);
		}
		
		System.out.println("Query numero sedici conclusa!\n");		
		
	}	
	
	
	
	public static void main(String[] args) {
		
		Connect s = new Connect("localhost", "3306", "tabella", "root", "Fasolino");
		try {
			System.out.print("Query 1: \n");
			s.executeQuery1();
			System.out.print("Query 2: \n");
			s.executeQuery2();
			System.out.print("Query 3: \n");
			s.executeQuery3();
			System.out.print("Query 4: \n");
			s.executeQuery4();
			System.out.print("Query 5: \n");
			s.executeQuery5();
			System.out.print("Query 6: \n");
			s.executeQuery6();
			System.out.print("Query 7: \n");
			s.executeQuery7(50);
			System.out.print("Query 8: \n");
			s.executeQuery8();
			System.out.print("Query 9: \n");
			s.executeQuery9();
			System.out.print("Query 10: \n");
			s.executeQuery10();
			System.out.print("Query 11: \n");
			s.executeQuery11(10);
			System.out.print("Query 12: \n");
			s.executeQuery12();
			System.out.print("Query 13: \n");
			s.executeQuery13();
			System.out.print("Query 14: \n");
			s.executeQuery14();
			System.out.print("Query 15: \n");
			s.executeQuery15(3);
			System.out.print("Query 16: \n");
			s.executeQuery16();

		}
		catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
