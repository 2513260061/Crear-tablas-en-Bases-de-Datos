package Principal;

import Splash.CargarPrograma;
import java.awt.Dimension;
import java.awt.EventQueue;
import java.awt.Toolkit;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JFileChooser;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.JTextField;
import javax.swing.border.EmptyBorder;
import javax.swing.table.DefaultTableModel;

public class Principal extends JFrame {

	private JPanel contentPane;
	private JTextField txtNombre;
	private JTextField txttipodevalor;
	private JTable table;
	private JButton btnGuardar;
        private JComboBox datos;
        String ruta;
        String ap[]=new String[1000000];
        String am[]=new String[1000000];
        String cv[]=new String[1000000];
        
        Calendar unaFecha;
        String arregloNom[]={"AARON","ABEL","ABELARDO","ABIGAÍL","ABRAHAM","ABRIL"
    ,"ADA","ADALBERTO","ADÁN","ADELA","ADELAIDA"
    ,"ADELINA","ADELMO","ADOLFO","ADRIÁN","ADRIANO"
    ,"ÁGATA","ÁGUEDA","AGUSTÍN","AÍDA","AINARA"
    ,"ALAN","ALBANO","ALBERTO","ALCIRA","ALDO"
    ,"ALEJANDRO","ALEJANDRA","ALEJO","ALFONSO","ALFREDO"
    ,"ALICIA","ALINA","ALMUDENA","ALONSO","ÁLVARO"
    ,"AMADEO","AMALIA","AMANCIO","AMANDA","AMARANTO"
    ,"AMAYA","AMOS","AMBROSIO","AMELIA","AMIRA"
    ,"AMPARO","ANA","ANACLETO","ANASTASIA","ANDER"
    ,"ANDRÉS","ÁNGEL","ÁNGELA","ANGÉLICA","ÁNGELES"
    ,"ANÍBAL","ANICETO","ANGUSTIAS","ANSELMO","ANTONIO"
    ,"ANTONIA","ANTONIETA","APOLO","AQUILES","AQUILINO"
    ,"ARACELI","ARCHIBALDO","ARIADNA","ARIEL","ARÍSTIDES"
    ,"ARMANDO","ARNOLDO","ARTURO","ASUNCIÓN","ATANASIO"
    ,"AUGUSTO","AURELIO","AURELIA","AURORA","AUXILIADORA"
    ,"AXEL","AZUZENA","BALDOMERO","BALTASAR","BARACK"
    ,"BÁRBARA","BARTOLOMÉ","BASILIO","BAUTISTA","BEATRIZ"
    ,"BELÉN","BELINDA","BELTRÁN","BENIGNO","BENITO"
    ,"BENJAMÍN","BERENICE","BERNABÉ","BERNARDINO","BERNARDINA"
    ,"BERNARDO","BERTA","BIANCA","BIBIANA","BLANCA"
    ,"BLAS","BRENDA","BONIFACIO","BORIS","BRÍGIDA"
    ,"BRUNILDA","BRUNO","CALIXTO","CAMELIA","CAMILA"
    ,"CÁNDIDO","CARIDAD","CARINA","CARLOS","CARLA"
    ,"CARMELO","CARMEN","CAROLA","CAROLINA","CASILDA"
    ,"CASIMIRO","CATALINA","CAYETANO","CECILIA","CELESTINA"
    ,"CELIA","CELINA","CRISANTO","CRISTIAN","CRISTINA"
    ,"CELSO","CÉSAR","CESÁREO","CINTIA","CIPRIANO"
    ,"CIRILO","CIRO","CLARA","CLAUDIO","CLAUDIA"
    ,"CLEMENTE","CLEOPATRA","CLOTILDE","CONCEPCIÓN","CONRADO"
    ,"CONSTANCIO","CONSTANTINO","CONSUELO","CORA","CORDELIA"
    ,"CORNELIO","COSME","CRISTÓBAL","CRISÓSTOMO","CRUZ"
    ,"DAGOBERTO","DANA","DANIEL","DARÍO","DAVID"
    ,"DÉBORA","DELIA","DELMIRO","DEMETRIO","DIANA"
    ,"DIEGO","DINA","DIONISIO","DOLORES","DOMINGO"
    ,"DOMINICO","DONATO","DORA","DULCINEA","EDGARDO"
    ,"EDITH","EDMUNDO","EDUARDO","EFRAÍN","EFRÉN"
    ,"ELENA","ELEONOR","ELÍAS","ELISA","ELISABETH"
    ,"ELOISA","ELOY","ELSA","ELVIRA","EMILIA"
    ,"EMILIO","EMA","EMANUEL","EMILIO","ENCARNACIÓN"
    ,"ENGRACIA","ENRIQUE","ERASMO","ERICO","ERIC"
    ,"ERICA","ERNESTO","ESMERALDA","ESPERANZA","ESTEBAN"
    ,"ESTEFANÍA","ESTELA","ESTER","ETEL","EUCLIDES"
    ,"EUDOSIA","EUDOXIO","EUFEMIO","EUFEMIA","EUFRASIO"
    ,"EUFRASIA","EUGENIO","EUGENIA","EULALIO","EULALIA"
    ,"EUSEBIO","EUSTAQUIO","EVA","EVANGELINA","EVARISTO"
    ,"EZEQUIEL","FABIÁN","FABIOLA","FANNY","FÁTIMA"
    ,"FAUSTINO","FAUSTO","FEDERICO","FEDOR","FÉLIX"
    ,"FELIPE","FERMÍN","FERNANDO","FIDEL","FILIBERTO"
    ,"FILOMENO","FLAVIO","FLORA","FLORENCIO","FLORENCIA"
    ,"FLORIDA","FLORINDA","FLORIÁN","FRANCISCO","FRANCO"
    ,"FRIDA","FROILÁN","FULVIO","GABRIEL","GEMA"
    ,"GASPAR","GEDEÓN","GENOVEVA","GERARDO","GERMÁN"
    ,"GERTRUDIS","GILBERTO","GLADIS","GLORIA","GODOFREDO"
    ,"GRACIA","GRACIELA","GREGORIO","GRISEL","GABRIELA"
    ,"GORKA","GUIDO","GUILLERMO","GUSTAVO","HAROLDO"
    ,"HAYDEE","HEBE","HELENA","HELI","HÉCTOR"
    ,"HERIBERTO","HERIBERTA","HERMELANDO","HERMINIO","HERMINIA"
    ,"HERNÁN","HIGINIO","HIGINIA","HILDA","HIPÓLITO"
    ,"HOMERO","HONORIO","HORACIO","HORTENSIA","HORTENSIO"
    ,"HUGO","HUBERTO","HUMBERTO","HELENIA","IDA"
    ,"IDEFONSO","IGNACIO","IMANOL","IMELDA","ÍÑIGO"
    ,"INDALECIO","INÉS","INGRID","IRENE","IRIS"
    ,"IRMA","ISAAC","ISABEL","ISIDORO","ISAÍAS"
    ,"ISRAEL","IVÁN","IVONNE","ISIS","IZASKUN"
    ,"JACINTO","JACOBO","JAQUELINE","JAIRO","JAVIER"
    ,"JAZMÍN","JAIME","JENNIFER","JEREMÍAS","JERÓNIMO"
    ,"JESSICA","JESÚS","JOAQUÍN","JOB","JONATAN"
    ,"JONHATAN","JORGE","JOSÉ","JOSEFA","JOSEFINA"
    ,"JONÁS","JOSUÉ","JUAN","JUANA","JUDÁ"
    ,"JUDIT","JUDITH","JULIA","JULIANA","JULIO"
    ,"JULIÁN","JUSTINIANO","JUSTO","KAREN","KATIA"
    ,"KEVIN","KOLDO","KILIAN","KRISHNA","KEPA"
    ,"KENNETH","KARMELE","KARL","KURT","KALI"
    ,"KARIM","KIRA","KARINA","KERRY","KERMAN"
    ,"KEISI","KENÁN","KATYUSKA","KASSANDRA","LAMBERTO"
    ,"LAURA","LÁZARO","LEANDRO","LEÓN","LEONARDO"
    ,"LEÓNIDAS","LEONOR","LEONORA","LEOPOLDO","LETICIA"
    ,"LÍA","LIDA","LIDIA","LYDIA","LILIANA"
    ,"LINA","LINDA","LORENZO","LUCAS","LUCÍA"
    ,"LUCIANO","LUCIO","LUCRECIA","LUIS","MABEL"
    ,"MACARENA","MAGALÍ","MAGDALENA","MAITE","MALVINA"
    ,"MANUEL","MARCELO","MARCOS","MARGARITA","MARÍA"
    ,"MARIANA","MARTA","MARTÍN","MATEO","MATÍAS"
    ,"MATILDE","MAURICIO","MAURO","MAXIMILIANO","MÁXIMO"
    ,"MIGUEL","MINA","MIRIAM","MIRTA","MOISÉS"
    ,"MÓNICA","NAPOLEÓN","NARCISO","NATALIA","NATÁN"
    ,"NAÚM","NÉLIDA","NÉSTOR","NICOLÁS","NIDIA"
    ,"NOÉ","NORMA","NURIA","NADIR","NOA"
    ,"NAZARET","NEREA","NICOLÁS","NOEMÍ","NADIA"
    ,"OBAMA","OCTAVIO","OFELIA","OLGA","OLIMPIA"
    ,"ÓLIVER","OLIVERIO","OLIVIA","OMAR","ORLANDO"
    ,"ÓSCAR","OSVALDO","OTÓN","OVIDIO","OSIRIS"
    ,"ORIÓN","ORIOL","OLEGUER","OLAYA","PABLO"
    ,"PÁNFILO","PALOMA","PASCUAL","PATRICIA","PAULA"
    ,"PAULINO","PAZ","PEDRO","PENÉLOPE","PERLA"
    ,"PILAR","PIEDAD","PÍO","PRISCILA","PRUDENCIA"
    ,"PURA","PELAYO","POMPEYA","PETRA","QUERUBIN"
    ,"QUINTINA","QUIRICO","QUETZALCOÁTL","QULIDONIA","QUITERIO"
    ,"QUIRIACO","QUIRINA","QUODVULDEO","RAFAEL","RAIMUNDO"
    ,"RAMIRO","RAMONA","RAMÓN","RAQUEL","RAÚL"
    ,"REBECA","REINA","REINALDO","REGINA","REMEDIOS"
    ,"RENATO","RENÉ","RICARDO","RITA","ROBERTO"
    ,"ROCÍO","RODOLFO","RODRIGO","ROGELIO","ROLANDO ROLÁN"
    ,"ROMÁN","ROMEO","ROMILDA","ROMILDO","RONALDO"
    ,"ROQUE","ROSA","ROSALÍA","ROSAMUNDA","ROSANA"
    ,"ROSARIO","ROSENDO","ROXANA","RUBÉN","RUFINO"
    ,"RUPERTO","RUTH","SABINA","SAGRARIO","SALOMÉ"
    ,"SALOMÓN","SALVADOR","SAMANTA","SAMUEL","SANCHO"
    ,"SANDRA","SANSÓN","SANTIAGO","SARA","SAÚL"
    ,"SEBASTIÁN","SEGISMUNDO","SERAFÍN","SERENA","SERGIO"
    ,"SHEILA","SILVANO","SILVESTRE","SILVIA","SIMÓN"
    ,"SIRO","SIXTO","SOCORRO","SOFÍA","SOL"
    ,"SOLANGE","SOLEDAD","SORAYA","SONIA","SUSANA"
    ,"SUYAY","TADEO","TAMARA","TANIA","TATIANA"
    ,"TELMA","TEOBALDO","TEODORO","TEODORICO","TEODOSIO"
    ,"TEÓFILO","TERESA","TIRSO","TITO","TIMOTEO"
    ,"TOBÍAS","TOMÁS","TRINIDAD","TRISTÁN","TRIANA"
    ,"THAIS","ULISES","ULRICO","URBANO","URBANA"
    ,"URIEL","ÚRSULA","URANO","URKO","URSO"
    ,"UNAX","ULFRIDA","USOA","URANIA","UNAI"
    ,"VALENTÍN","VALENTINA","VALERIA","VALERIO","VANESA"
    ,"VENTURA","VELASCO","VERA","VERÓNICA","VICENTE"
    ,"VÍCTOR","VICTORIA","VICTORIANO","VIDA","VILMA"
    ,"VIOLETA","VIRGILIO","VIRGINIA","VIVIANA","VLADIMIR"
    ,"WALTER","WENCESLAO","WILFREDO","WULSTANA","WULFRANO"
    ,"WITERICO","WANG","WENDY","WALID","WILLIAM"
    ,"WALDO","XAVIER","XABIER","XIMENA","XENIA"
    ,"XURXO","XENXO","XIAN","XANA","XUXA"
    ,"XANTHE","XOLA","XANNA","XARIA","XENO"
    ,"YAGO","YERAY","YOLANDA","YONATÁN","YÓLOTL"
    ,"YEUDIL","YEHUDÍ","YAHVÉ","YVONNE","YUSUF"
    ,"YURI","YONE","YASIR","YAIZA","ZACARÍAS"
    ,"ZENOBIA","ZOE","ZITA","ZORAIDA","ZULEMA"
    ,"ZEUS","ZENAIDA","ZENÓN","ZOLTÁN","ZURIÑE"
    ,"ZAIDA","ZAHARA"};
        
    String arregloApe[]={"Abad","Adadia","Abascal","Abella","Abellán","Abril","Acedo","Acevedo","Acero","Acosta","Acuña","Adán","Aguado","Agudo","Águila","Aguilar","Aguilera",
"Aguiló","Aguirre","Agullo","Agustí","Agustín","Álamo","Alarcón","Alba","Alberdi","Albero","Alberola","Alberto","Alcalá","Alcalde","Alcántara","Alcaraz",
"Alcázar","Alcolea","Alegre","Alegria","Alemán","Alemany","Alfaro","Alfonso","Aliaga","Almagro","Almansa","Almazán","Almeida","Alonso","Alsina","Alvarado",
"Álvarez","Álvaro","Aller","Amador","Amat","Amaya","Amigó","Amo","Amor","Amores","Amorós","Anaya","Andrade","Andrés","Andreu","Ángel","Anglada","Angulo","Anguita",
"Antón","Antúnez","Aparicio","Aragón","Aragonés","Aramburu","Arana","Aranda","Araujo","Arce","Arco","Arcos","Arellano","Arenas","Arévalo","Arias","Ariño","Ariza",
"Arjona","Armas","Armengol","Arnaiz","Arnal","Arnau","Aroca","Arranz","Arregui","Arribas","Arrieta","Arroyo","Arteaga","Artigas","Asenjo","Asensio","Atienza",
"Ávila","Avilés","Ayala","Ayllón","Ayuso","Azcona","Aznar","Azorin","Badía","Baena","Báez","Baeza","Balaguer","Ballester","Ballesteros","Baños","Baquero","Barba",
"Barberá","Barbero","Barceló","Bárcena","Barco","Baró","Barón","Barragán","Barral","Barranco","Barreda","Barrena","Barrera","Barriga","Barrio","Barrios","Barros",
"Barroso","Bartolomé","Bas","Bastida","Batalla","Batlle","Bautista","Bauzà","Bayo","Bayón","Bayona","Becerra","Bejarano","Belda","Belmonte","Beltrán","Bellido",
"Bello","Benavent","Benavente","Benavides","Benet","Benítez","Benito","Berenguer","Bermejo","Bermúdez","Bernad","Bernal","Bernat","Berrocal","Bertrán","Bilbao",
"Blanca","Blanco","Blanch","Blanes","Blasco","Blázquez","Boada","Boix","Bolaños","Bonet","Bonilla","Borja","Borrás","Borrego","Borrell","Bosch","Botella","Bou",
"Bravo","Briones","Bru","Buendía","Bueno","Burgos","Busquets","Bustamante","Bustos","Caballero","Cabanillas","Cabañas","Cabello","Cabeza","Cabezas","Cabo",
"Cabrera","Cabrero","Cáceres","Cadenas","Cal","Calatayud","Calderón","Calvet","Calvo","Calleja","Calzada","Camacho","Cámara","Camino","Campillo","Campo","Campos",
"Campoy","Camps","Canales","Canals","Canet","Cano","Cánovas","Cantero","Cantón","Cañas","Cañellas","Cañete","Cañizares","Caparrós","Capdevila","Carballo","Carbajo",
"Carbó","Carbonell","Cárdenas","Cardona","Carlos","Carmona","Carnero","Caro","Carpio","Carranza","Carrasco","Carreño","Carrera","Carreras","Carretero","Carrillo",
"Carrión","Carro","Carvajal","Casado","Casal","Casals","Casanova","Casanovas","Casares","Casas","Cases","Castañeda","Castejón","Castell","Castellanos","Castelló",
"Castells","Castilla","Castillo","Castrillo","Castro","Catalá","Catalán","Cazorla","Cepeda","Cerdá","Cerdán","Cerezo","Cerro","Cervantes","Cervera","Céspedes",
"Cid","Cifuentes","Cisneros","Clavero","Clemente","Cobo","Cobos","Coca","Codina","Coello","Colom","Coloma","Colomer","Coll","Collado","Comas","Company","Conde","Conesa",
"Contreras","Corbacho","Cordero","Córdoba","Cornejo","Corominas","Coronado","Corral","Correa","Cortés","Cortina","Costa","Cózar","Criado","Crespi","Crespo","Cruz",
"Cuadrado","Cuéllar","Cuenca","Cuervo","Cuesta","Cueto","Cuevas","Chacón","Chamorro","Chaparro","Chaves","Checa","Chico","Dalmau","Dávila","Daza","Delgado","Díaz",
"Diego","Diéguez","Díez","Doménech","Domingo","Domínguez","Donaire","Donoso","Duarte","Dueñas","Duque","Durán","Echevarría","Echeverría","Egea","Elías","Elorza",
"Enríquez","Escalona","Escamilla","Escobar","Escolano","Escribano","Escrivá","Escudero","Espada","España","Español","Esparza","Espejo","Espinosa","Esteban",
"Esteve","Estévez","Estrada","Expósito","Fabra","Fábregas","Fabregat","Fajardo","Falcó","Falcón","Farré","Feijoo","Feliu","Fernández","Ferrán","Ferrández",
"Ferrándiz","Ferrando","Ferrer","Ferrera","Ferrero","Ferreras","Figueras","Figueroa","Figuerola","Fiol","Flor","Flores","Folch","Fonseca","Font","Fortuny","Franch",
"Francisco","Franco","Franch","Frías","Frutos","Fuente","Fuentes","Fuertes","Fuster","Gabaldón","Galán","Galiano","Galindo","Galván","Gálvez","Gallardo","Gallart",
"Gallego","Gallo","Gámez","Gárate","Garay","Garcés","García","Gargallo","Garmendia","Garrido","Garriga","Garzón","Gascón","Gaya","Gelabert","Gibert","Gil","Gilabert",
"Giménez","Gimeno","Giner","Giralt","Girón","Girona","Gisbert","Godoy","Goicoechea","Gómez","Gomila","Gomis","González","Gonzalo","Goñi","Gordillo","Gracia","Granados",
"Grande","Gras","Grau","Gual","Guardia","Guardiola","Guerra","Guerrero","Guijarro","Guillén","Guitart","Gutiérrez","Guzmán","Haro","Heras","Heredia","Hernández",
"Hernando","Herranz","Herrera","Herrero","Hervás","Hervia","Hidalgo","Hierro","Higueras","Hoyos","Hoz","Huerta","Huertas","Huguet","Hurtado","Ibáñez","Ibarra","Iborra",
"Iglesia","Iglesias","Infante","Iniesta","Íñigo","Iñiguez","Iriarte","Isern","Izaguirre","Izquierdo","Jaén","Jara","Jaume","Jáuregui","Jerez","Jiménez","Jódar",
"Jordá","Jordán","Jove","Jover","Juan","Juárez","Juliá","Julián","Jurado","Jurado","Laguna","Lamas","Landa","Lara","Larrañaga","Larrea","Lasa","Lastra","Leal",
"Ledesma","Leiva","León","Lerma","Lillo","Linares","Lobato","Lobo","López","Lorenzo","Losa","Losada","Lozano","Lucas","Lucena","Luís","Luján","Lumbreras","Luna","Luque",
"Luz","Llabrés","Lladó","Llamas","Llano","Llanos","Lledó","Llobet","Llopis","Llorens","Llorente","Lloret","Lluch","Macías","Machado","Madrid","Madrigal","Maestre",
"Maldonado","Malo","Mancebo","Manjón","Manrique","Manso","Manuel","Manzanares","Manzano","Marco","Marcos","Marí","Marín","Mariño","Mariscal","Mármol","Marqués",
"Márquez","Martí","Martín","Martínez","Martorell","Mas","Mascaró","Mata","Matas","Mate","Mateo","Mateos","Mateu","Mayo","Mayol","Mayoral","Maza","Medina","Meléndez",
"Melero","Mena","Méndez","Mendizábal","Mendoza","Menéndez","Mercader","Merino","Mesa","Miguel","Milla","Millán","Mínguez","Mir","Miralles","Miranda","Miró",
"Moles","Molina","Moliner","Molins","Moll","Monreal","Montalbán","Montaña","Montenegro","Montero","Montes","Montesinos","Montoya","Montserrat","Mora","Moraleda",
"Morales","Morán","Morante","Morata","Morcillo","Morell","Moreno","Morera","Morillo","Mosquera","Moya","Múgica","Mulet","Múñiz","Muñoz","Mur","Murcia","Murillo",
"Muro","Nadal","Naranjo","Narváez","Navarrete","Navarro","Navas","Nebot","Neira","Nevado","Nicolau","Nicolás","Nieto","Niño","Nogueira","Noguera","Nogués","Noriega",
"Novoa","Núñez","Ocaña","Ochoa","Ojeda","Oliva","Olivares","Olivé","Oliver","Olivera","Oliveras","Olmedo","Olmo","Oller","Ordóñez","Orozco","Ortega","Ortiz",
"Ortuño","Osorio","Osuna","Otero","Pablo","Pacheco","Padilla","Páez","Pagès","Palacio","Palacios","Palau","Palma","Palmer","Palomar","Palomares","Palomino","Palomo",
"Pallarès","Paniagua","Pardo","Paredes","Pareja","Parejo","Parra","Pascual","Pastor","Patiño","Pavón","Paz","Pazos","Pedraza","Pedrero","Pedro","Pedrosa","Peinado",
"Peiró","Peláez","Pelayo","Pellicer","Peña","Peñalver","Peñas","Pera","Peral","Perales","Peralta","Perea","Pereira","Perelló","Perera","Pérez","Pi","Pina","Pineda",
"Pinedo","Pinilla","Pino","Pinto","Pintor","Piña","Piñeiro","Piñol","Piquer","Pizarro","Pla","Plana","Planas","Plaza","Pol","Polo","Pomares","Pombo","Ponce","Pons",
"Pont","Porcel","Porras","Porta","Portero","Portillo","Posada","Pou","Poza","Pozo","Pozuelo","Prada","Prado","Prat","Prats","Priego","Prieto","Puente","Puerta",
"Puga","Puig","Pujadas","Pujol","Pulido","Quero","Querol","Quesada","Quevedo","Quintana","Quintanilla","Quintero","Quiroga","Quirós","Ramírez","Ramis","Ramón",
"Ramos","Raya","Real","Rebollo","Recio","Redondo","Reguera","Reig","Reina","Requena","Revilla","Rey","Reyes","Riba","Ribas","Ribera","Ribes","Ricart","Rico","Riera",
"Rincón","Río","Ríos","Ripoll","Riquelme","Rius","Rivero","Robledo","Robles","Roca","Rocamora","Rocha","Roda","Ródenas","Rodrigo","Rodríguez","Roig","Rojas","Roldán",
"Roma","Román","Romero","Romeu","Ropero","Ros","Rosa","Rosado","Rosales","Rosell","Roselló","Rosselló","Roura","Rovira","Royo","Rozas","Ruano","Rubio","Rueda","Ruiz",
"Saavedra","Sabater","Sacristán","Sáenz","Sáez","Sainz","Sala","Salamanca","Salas","Salazar","Salcedo","Saldaña","Sales","Salgado","Salinas","Salmerón","Salom",
"Salvà","Salvador","Samper","Sanabria","Sánchez","Sancho","Sandoval","Sanjuan","Sanmartín","Sanmiguel","Sans","Santamaría","Santos","Sanz","Sarabia","Sarmiento",
"Sastre","Saura","Sebastián","Seco","Sedano","Segarra","Segovia","Seguí","Segura","Serna","Serra","Serrano","Sevilla","Sevillano","Sierra","Silva","Simó","Sobrino",
"Sola","Solana","Solano","Solé","Soler","Solera","Solís","Solsona","Somoza","Soria","Soriano","Sosa","Sotelo","Soto","Suárez","Sureda","Taboada","Talavera","Tamarit",
"Tamayo","Tapia","Tejada","Tejedor","Tejera","Tejero","Téllez","Tello","Tena","Tenorio","Terrón","Teruel","Tirado","Toledo","Tolosa","Tomás","Tomé","Tormo","Toro",
"Torralba","Torre","Torrecilla","Torrens","Torrent","Torrents","Torres","Torrijos","Tovar","Trillo","Trujill","Tudela","Tur","Ugarte","Ureña","Uría","Uriarte",
"Uribe","Urrutia","Valbuena","Valcárcel","Valderrama","Valdés","Valencia","Valenciano","Valentín","Valenzuela","Valera","Valero","Valverde","Vall","Valle",
"Vallejo","Vallés","Valls","Vaquero","Vara","Varela","Vargas","Vázquez","Vega","Velasco","Velázquez","Vélez","Vendrell","Vera","Verdejo","Verdú","Verdugo","Vergara",
"Viana","Vicente","Vicens","Vidal","Vigil","Vigueras","Vila","Vilanova","Vilalta","Vilaplana","Vilar","Villa","Villalba","Villalobos","Villalonga","Villanueva",
"Villar","Villaverde","Villegas","Villena","Viña","Viñas","Vives","Vizcaíno","Yáñez","Yuste","Zabala","Zabaleta","Zamora","Zamorano","Zapata","Zaragoza","Zorrilla",
"Zurita"};
    
String estado_civil[]={"Soltero/a","Casado/a","Divorciado/a","Viudo/a"};
String Ocupacion[]={"Estudiante","Obrero","Ama de casa",""};
         /**login**/private CargarPrograma splashFrame;
         /**login**/ public Principal(CargarPrograma Splashframe) {
        this.splashFrame=Splashframe;
        setProgress(0, "Crgando Interfaz");
       
        setProgress(10, "Crgando .");
        setProgress(20, "Crgando ..");
        setProgress(30, "Crgando ...");
        setProgress(40, "Crgando .");
        setProgress(50, "Crgando ..");
        setProgress(60, "Crgando ...");
        setProgress(70, "Crgando .");
        setProgress(80, "Crgando ..");
        setProgress(90, "Crgando ...");
        setProgress(100, "Bienvenido al Sistema");                
        setLocationRelativeTo(null);
    }
    /**login**/public void setProgress(int porcentaje,String informacion){
    splashFrame.getJLabel().setText(informacion);
    splashFrame.getprogressBar().setValue(porcentaje);
    try{
    Thread.sleep(1000);
    }catch(InterruptedException e){
        JOptionPane.showMessageDialog(null, "No se pudo ejecutar la Presentación");
    }
    }
       

	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					Principal frame = new Principal();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	public Principal() {
            
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(660, 350, 641, 367);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
                
                Dimension pantallaTamano = Toolkit.getDefaultToolkit().getScreenSize(); 
                this.setLocation((pantallaTamano.width/2)-(this.getWidth()/2), (pantallaTamano.height/2)-(this.getHeight()/2)); 

		
		JLabel lblNombre = new JLabel("Nombre de Columna");
		lblNombre.setBounds(10, 11, 115, 14);
		contentPane.add(lblNombre);
		
		txtNombre = new JTextField();
		txtNombre.setBounds(130, 8,180, 20);
		contentPane.add(txtNombre);
		txtNombre.setColumns(10);
		
		JLabel lblApellidoPaterno = new JLabel("Tipo de dato");
		lblApellidoPaterno.setBounds(340, 11, 104, 14);
		contentPane.add(lblApellidoPaterno);
		
                
                JComboBox datos=new JComboBox();
                datos.setBounds(420, 8, 160, 20);
                contentPane.add(datos);	
                String cont[]={"Seleccione una opción", "Apellido Paterno", "Apellido Materno"/**, "Codigo postal", "Edad"**/, "Estado Civil",/**"Fecha de Nacimiento", "Fecha", "Nombre", "Ocupación"/**, "Telefono"**/};
                for(int i=0;i<cont.length;i++){
                datos.addItem(cont[i]);
                }
                		
		JScrollPane scrollPane = new JScrollPane();
		scrollPane.setBounds(36, 122, 525, 123);
		contentPane.add(scrollPane);
		
		table = new JTable();
		table.setModel(new DefaultTableModel(
			new Object[][] {
			},
			new String[] {
				"Nombre Columna", "Tipo de dato"
			}
		));
		table.getColumnModel().getColumn(1).setPreferredWidth(102);
		
		scrollPane.setViewportView(table);
		
                DefaultTableModel miTabla=(DefaultTableModel) table.getModel();
                //
                JButton btnEliminartodo = new JButton("Eliminar Todo");
		btnEliminartodo.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {	
                            int cantidadfilas=table.getRowCount();
                            if(cantidadfilas==0){
                                
                            JOptionPane.showMessageDialog(null,"La Tabla esta vacia");
                            }else{
                            for(int i=cantidadfilas-1;i>=0;i--){
                            miTabla.removeRow(i);
                            }
                            }
			}
		});
                btnEliminartodo.setEnabled(false);
		btnEliminartodo.setBounds(240, 54, 120, 36);
		contentPane.add(btnEliminartodo);
                //
                JButton btnEliminar = new JButton("Eliminar");
		btnEliminar.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {	
                            int filaseleccionada=table.getSelectedRow();
                            
                            if(filaseleccionada>=0){
                            miTabla.removeRow(filaseleccionada);
                            }else{
                            JOptionPane.showMessageDialog(null,"La Tabla esta vacia o no ha seleccionado una fila");
                            }
			}
		});
                btnEliminar.setEnabled(false);
		btnEliminar.setBounds(371, 54, 89, 36);
		contentPane.add(btnEliminar);
                //
                
		JButton btnAgregar = new JButton("Agregar");
		btnAgregar.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
                                                           
                                if(datos.getSelectedItem().toString()=="Seleccione una opción"){
                                JOptionPane.showMessageDialog(null, "Seleccione un tipod de dato");
                                }else{
                                int cantidadfilas=table.getRowCount();
                            if(cantidadfilas==1){
                                btnEliminartodo.setEnabled(true);
                            }if(cantidadfilas==0){
                                btnEliminar.setEnabled(true);
                            }
                            String tipo=(String) datos.getSelectedItem();
				enviardatosaTabla(tipo);
                                limpiar();
                                }
//                                if(datos.getSelectedItem().toString()=="Apellido Paterno" || datos.getSelectedItem().toString()=="Apellido Materno"){
//                                int seleccionado;
//                                int numero=arregloNom.length;
//                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
//                                valores=arregloNom[seleccionado];
//                                }
//                                if(datos.getSelectedItem().toString()=="Codigo postal"){
//                                for(int i = 1; i<=5; i++)
//                                System.out.println((int)(Math.random()*6 + 1));
//                                valores=(int)(Math.random()*6 + 1)+"";
//                                }
//                                if(datos.getSelectedItem().toString()=="Colonia"){
//                                System.out.println("pendiente");
//                                valores="pendiente";
//                                }
//                                if(datos.getSelectedItem().toString()=="Edad"){
//                                for(int i = 1; i<=2; i++)
//                                System.out.println((int)(Math.random()*6 + 1));
//                                valores=(int)(Math.random()*6 + 1)+"";
//                                }
//                                if(datos.getSelectedItem().toString()=="Estado"){
//                                System.out.println("peniente");
//                                 valores="peniente";
//                                }
//                                if(datos.getSelectedItem().toString()=="Estado Civil"){
//                                int seleccionado;
//                                int numero=estado_civil.length;
//                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(estado_civil[seleccionado]);
//                                valores=estado_civil[seleccionado];
//                                }
//                                if(datos.getSelectedItem().toString()=="Fecha de Nacimiento"){
//                                Random aleatorio;
//                                aleatorio = new Random();
//
//                                unaFecha = Calendar.getInstance();
//                                unaFecha.set (aleatorio.nextInt(50)+1980, aleatorio.nextInt(12)+1, aleatorio.nextInt(30)+1);
//                                SimpleDateFormat sdf = new SimpleDateFormat("dd/MMMMM/yyyy");
//                                System.out.println(sdf.format(unaFecha.getTime()));
//                                valores=sdf.format(unaFecha.getTime());
//                                }
//                                if(datos.getSelectedItem().toString()=="Fecha"){
//                                Random aleatorio;
//                                aleatorio = new Random();
//
//                                unaFecha = Calendar.getInstance();
//                                unaFecha.set (aleatorio.nextInt(50)+1980, aleatorio.nextInt(12)+1, aleatorio.nextInt(30)+1);
//                                SimpleDateFormat sdf = new SimpleDateFormat("dd/MMMMM/yyyy");
//                                System.out.println(sdf.format(unaFecha.getTime()));
//                                valores=sdf.format(unaFecha.getTime());
//                                }
//                                if(datos.getSelectedItem().toString()=="Municipio"){
//                                System.out.println("peniente");
//                                valores="peniente";
//                                }
//                                if(datos.getSelectedItem().toString()=="Nombre"){
//                                int seleccionado;
//                                int numero=arregloNom.length;
//                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
//                                valores=arregloNom[seleccionado];
//                                }
//                                if(datos.getSelectedItem().toString()=="Ocupación"){
//                                int seleccionado;
//                                int numero=Ocupacion.length;
//                                seleccionado=(int) Math.floor(Math.random()*(numero));  
//                                System.out.println(Ocupacion[seleccionado]);
//                                valores=Ocupacion[seleccionado];
//                                }
//                                if(datos.getSelectedItem().toString()=="Telefono"){
//                                for(int i = 1; i<=8; i++)
//                                System.out.println();
//                                valores=(int)(Math.random()*6 + 1)+"";
//                                }
			}
		});
		btnAgregar.setBounds(471, 54, 89, 36);
		contentPane.add(btnAgregar);

		btnGuardar = new JButton("Guardar");
		btnGuardar.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
                            if(miTabla.getRowCount()!=0 && miTabla.getColumnCount()!=-1){
                            
                            
                            
//                            String fila[]=new String[miTabla.getRowCount()];
//                            String colum[]=new String[miTabla.getColumnCount()];
//                            for(int i=0;i<=miTabla.getRowCount();i++){
//                        fila[i]=miTabla.getValueAt(i, 0).toString();
//                        System.out.println("fila "+fila[i]);
//                        colum[i]=miTabla.getValueAt(0, i).toString();
//                            System.out.println(i+"columna "+colum[i]);
//                            }
String con[]=new String[miTabla.getRowCount()];
                    int cols = miTabla.getColumnCount(); 
                    int fils = miTabla.getRowCount(); 
                    for(int i=0; i<fils; i++) { 
                    for(int j=0; j<cols; j++){ 
                        con[i]=miTabla.getValueAt(i,j).toString();
           System.out.println(i+con[i]); 
           if(miTabla.getValueAt(i,j).toString()=="Apellido Paterno"){
                                int seleccionado;
                                int numero=arregloApe.length;
                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloApe[seleccionado]);
                                ap[v]=arregloApe[seleccionado]+"ap";
                                }
                                }
           if(miTabla.getValueAt(i,j).toString()=="Apellido Materno"){
           int seleccionado;
                                int numero=arregloApe.length;
                                for(int v1=0;v1<1000000;v1++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloApe[seleccionado]);
                                am[v1]=arregloApe[seleccionado]+"am";
                                
                                }
                                
           }
           if(miTabla.getValueAt(i,j).toString()=="Estado Civil"){
           int seleccionado;
                                int numero=estado_civil.length;
                                for(int v2=0;v2<1000000;v2++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(estado_civil[seleccionado]);
                                cv[v2]=estado_civil[seleccionado];
                                }
                                
           }                     
                                              
                                    
//                    System.out.println(miTabla.getValueAt(i,j)); 
                    con[i]=miTabla.getValueAt(i,0).toString();
           //System.out.println(i+con[i]); 
                    }}
                    
                                
           
                    
       Principal ar=new Principal();
        try { 
            ar.escribirArchivo(ar.crearArchivo(),con,ap,am,cv);
        } catch (Exception ex) {
            Logger.getLogger(Principal.class.getName()).log(Level.SEVERE, null, ex);
        }
        }else{
                            JOptionPane.showMessageDialog(null,"Esta vacia la Tabla, ingrese algunos datos");
                            }
			}
		});
		btnGuardar.setBounds(471, 256, 89, 42);
		contentPane.add(btnGuardar);
		
		
	}

	protected void enviardatosaTabla( String tipo) {
  
                String nombre=txtNombre.getText();
		DefaultTableModel miTabla=(DefaultTableModel) table.getModel();
		int fila=miTabla.getRowCount();
		miTabla.addRow(new Object[1]);
		miTabla.setValueAt(nombre, fila, 0);
		miTabla.setValueAt(tipo, fila, 1);
            
	}
	public void limpiar(){
		txtNombre.setText(null);
	}
        public PrintWriter crearArchivo() throws IOException{
    //Las siguientes 3 líneas nos permite crear un archivo y escribir en el
    
    JFileChooser filecoose=new JFileChooser();
        int opcion=filecoose.showSaveDialog(this);
       ruta=filecoose.getSelectedFile().getPath();
    System.out.println(ruta);
    
    File archivo = new File(ruta+".csv");
    
     //System.out.println(nombre);
    FileWriter writer = new FileWriter(archivo);
    PrintWriter salida = new PrintWriter(writer);
    return salida;
  }

    public PrintWriter escribirArchivo(PrintWriter salida,String a[],String d[],String d2[],String d3[])throws Exception{
    //Este método permite escribir en el archivo
    for(int i=0;i<a.length;i++){
        
        salida.append(a[i]);
        if(i<a.length-1){
        salida.append(";");
        }
    }
    salida.println();
    for(int j=0;j<d.length;j++){
        if(d[0]==null){
        salida.append(d2[j]);
        if(a.length==2){
        if(j<d2.length-1){
        salida.append(";"+d3[j]);
        }
        }
        }
        if(d2[0]==null){
        if(d[0]!=null){
        if(d3[0]!=null){
        salida.append(d[j]);
        if(a.length==2){
        if(j<d.length-1){
        salida.append(";"+d3[j]);
        }}}
        }
        }

        
        if(d3[0]==null){
        if(d[0]!=null){
        if(d2[0]!=null){
        salida.append(d[j]);
        if(a.length==2){
        if(j<d.length-1){
        salida.append(";"+d2[j]);
        }}}
        }
        }
        
        salida.println();
    }
    
    //System.out.println(nl);
    //Este método sirve para dar un salto de línea
//    salida.println();
    salida.close();
    return salida;
  }
}
