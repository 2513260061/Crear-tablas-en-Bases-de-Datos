/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bd;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JFileChooser;

/**
 *
 * @author Isaac
 */
public class datos extends javax.swing.JFrame {

    /**
     * Creates new form datos
     */
    public datos() {
        initComponents();
    }
    String ruta;
    String arreglo[]=new String[1000000];
    String tablas[]=new String[15];

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

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        txtNombreTabla = new javax.swing.JTextField();
        txtNombreVariable = new javax.swing.JTextField();
        jcbSelector = new javax.swing.JComboBox<>();
        txtLongitud = new javax.swing.JTextField();
        jcb = new javax.swing.JCheckBox();
        jcb1 = new javax.swing.JCheckBox();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        btnGuardar = new javax.swing.JButton();
        jLabel5 = new javax.swing.JLabel();
        txtNombreVariable1 = new javax.swing.JTextField();
        jLabel6 = new javax.swing.JLabel();
        jcbSelector1 = new javax.swing.JComboBox<>();
        jLabel7 = new javax.swing.JLabel();
        txtLongitud1 = new javax.swing.JTextField();
        jCheckBox3 = new javax.swing.JCheckBox();
        jCheckBox4 = new javax.swing.JCheckBox();
        jLabel8 = new javax.swing.JLabel();
        txtNombreVariable2 = new javax.swing.JTextField();
        jLabel9 = new javax.swing.JLabel();
        jcbSelector2 = new javax.swing.JComboBox<>();
        jLabel10 = new javax.swing.JLabel();
        txtLongitud2 = new javax.swing.JTextField();
        jCheckBox5 = new javax.swing.JCheckBox();
        jCheckBox6 = new javax.swing.JCheckBox();
        jLabel11 = new javax.swing.JLabel();
        jLabel12 = new javax.swing.JLabel();
        txtNombreVariable3 = new javax.swing.JTextField();
        jcbSelector3 = new javax.swing.JComboBox<>();
        txtLongitud3 = new javax.swing.JTextField();
        jCheckBox7 = new javax.swing.JCheckBox();
        jCheckBox8 = new javax.swing.JCheckBox();
        jLabel13 = new javax.swing.JLabel();
        jLabel14 = new javax.swing.JLabel();
        txtNombreVariable4 = new javax.swing.JTextField();
        jLabel15 = new javax.swing.JLabel();
        jcbSelector4 = new javax.swing.JComboBox<>();
        jLabel16 = new javax.swing.JLabel();
        txtLongitud4 = new javax.swing.JTextField();
        jCheckBox9 = new javax.swing.JCheckBox();
        jCheckBox10 = new javax.swing.JCheckBox();
        jLabel17 = new javax.swing.JLabel();
        jLabel18 = new javax.swing.JLabel();
        txtNombreVariable5 = new javax.swing.JTextField();
        jcbSelector5 = new javax.swing.JComboBox<>();
        txtLongitud5 = new javax.swing.JTextField();
        jCheckBox11 = new javax.swing.JCheckBox();
        jCheckBox12 = new javax.swing.JCheckBox();
        jLabel19 = new javax.swing.JLabel();
        jLabel20 = new javax.swing.JLabel();
        txtNombreVariable6 = new javax.swing.JTextField();
        jLabel21 = new javax.swing.JLabel();
        jcbSelector6 = new javax.swing.JComboBox<>();
        jLabel22 = new javax.swing.JLabel();
        txtLongitud6 = new javax.swing.JTextField();
        jCheckBox13 = new javax.swing.JCheckBox();
        jCheckBox14 = new javax.swing.JCheckBox();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jcbSelector.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Seleccione el tipo", "Apellido Paterno", "Apellido Materno", "Calificacion", "fecha", "Identificador", "Matricula", "Nombre", "Nombre Calificacion", "Nombre de Escuela", "Nombre de Grupo", "Nombre de Materia", "Nombre de Periodo", "Nombre Trabajo", "NombreSalon", "Tipo de Asistencia" }));

        jcb.setText("Llave primaria");

        jcb1.setText("Auto incrementable");

        jLabel1.setText("Nombre de la variable");

        jLabel2.setText("Nombre de la tabla");

        jLabel3.setText("Tipo");

        jLabel4.setText("Longitud");

        btnGuardar.setText("Guardar");
        btnGuardar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnGuardarActionPerformed(evt);
            }
        });

        jLabel5.setText("Nombre de la variable");

        jLabel6.setText("Tipo");

        jcbSelector1.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Seleccione el tipo", "Apellido Paterno", "Apellido Materno", "Calificacion", "fecha", "Identificador", "Matricula", "Nombre", "Nombre Calificacion", "Nombre de Escuela", "Nombre de Grupo", "Nombre de Materia", "Nombre de Periodo", "Nombre Trabajo", "NombreSalon", "Tipo de Asistencia" }));

        jLabel7.setText("Longitud");

        jCheckBox3.setText("Llave primaria");

        jCheckBox4.setText("Auto incrementable");

        jLabel8.setText("Nombre de la variable");

        jLabel9.setText("Tipo");

        jcbSelector2.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Seleccione el tipo", "Apellido Paterno", "Apellido Materno", "Calificacion", "fecha", "Identificador", "Matricula", "Nombre", "Nombre Calificacion", "Nombre de Escuela", "Nombre de Grupo", "Nombre de Materia", "Nombre de Periodo", "Nombre Trabajo", "NombreSalon", "Tipo de Asistencia" }));

        jLabel10.setText("Longitud");

        jCheckBox5.setText("Llave primaria");

        jCheckBox6.setText("Auto incrementable");

        jLabel11.setText("Tipo");

        jLabel12.setText("Longitud");

        jcbSelector3.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Seleccione el tipo", "Apellido Paterno", "Apellido Materno", "Calificacion", "fecha", "Identificador", "Matricula", "Nombre", "Nombre Calificacion", "Nombre de Escuela", "Nombre de Grupo", "Nombre de Materia", "Nombre de Periodo", "Nombre Trabajo", "NombreSalon", "Tipo de Asistencia" }));

        jCheckBox7.setText("Llave primaria");

        jCheckBox8.setText("Auto incrementable");

        jLabel13.setText("Nombre de la variable");

        jLabel14.setText("Nombre de la variable");

        jLabel15.setText("Tipo");

        jcbSelector4.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Seleccione el tipo", "Apellido Paterno", "Apellido Materno", "Calificacion", "fecha", "Identificador", "Matricula", "Nombre", "Nombre Calificacion", "Nombre de Escuela", "Nombre de Grupo", "Nombre de Materia", "Nombre de Periodo", "Nombre Trabajo", "NombreSalon", "Tipo de Asistencia" }));

        jLabel16.setText("Longitud");

        jCheckBox9.setText("Llave primaria");

        jCheckBox10.setText("Auto incrementable");

        jLabel17.setText("Tipo");

        jLabel18.setText("Longitud");

        jcbSelector5.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Seleccione el tipo", "Apellido Paterno", "Apellido Materno", "Calificacion", "fecha", "Identificador", "Matricula", "Nombre", "Nombre Calificacion", "Nombre de Escuela", "Nombre de Grupo", "Nombre de Materia", "Nombre de Periodo", "Nombre Trabajo", "NombreSalon", "Tipo de Asistencia" }));

        jCheckBox11.setText("Llave primaria");

        jCheckBox12.setText("Auto incrementable");

        jLabel19.setText("Nombre de la variable");

        jLabel20.setText("Nombre de la variable");

        jLabel21.setText("Tipo");

        jcbSelector6.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Seleccione el tipo", "Apellido Paterno", "Apellido Materno", "Calificacion", "fecha", "Identificador", "Matricula", "Nombre", "Nombre Calificacion", "Nombre de Escuela", "Nombre de Grupo", "Nombre de Materia", "Nombre de Periodo", "Nombre Trabajo", "NombreSalon", "Tipo de Asistencia" }));

        jLabel22.setText("Longitud");

        jCheckBox13.setText("Llave primaria");

        jCheckBox14.setText("Auto incrementable");

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addGroup(layout.createSequentialGroup()
                                        .addComponent(jLabel1)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED))
                                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                                        .addComponent(jLabel2)
                                        .addGap(20, 20, 20)))
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(txtNombreTabla, javax.swing.GroupLayout.PREFERRED_SIZE, 84, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addGroup(layout.createSequentialGroup()
                                        .addComponent(txtNombreVariable, javax.swing.GroupLayout.PREFERRED_SIZE, 71, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                        .addComponent(jLabel3)
                                        .addGap(18, 18, 18)
                                        .addComponent(jcbSelector, javax.swing.GroupLayout.PREFERRED_SIZE, 138, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                        .addComponent(jLabel4))))
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(jLabel5)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(txtNombreVariable1, javax.swing.GroupLayout.PREFERRED_SIZE, 71, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(jLabel6)
                                .addGap(18, 18, 18)
                                .addComponent(jcbSelector1, javax.swing.GroupLayout.PREFERRED_SIZE, 140, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(jLabel7)))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addComponent(txtLongitud1, javax.swing.GroupLayout.DEFAULT_SIZE, 65, Short.MAX_VALUE)
                            .addComponent(txtLongitud))
                        .addGap(18, 18, 18)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(jcb)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                .addComponent(jcb1))
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(jCheckBox3)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                .addComponent(jCheckBox4))))
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(jLabel13)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(txtNombreVariable2, javax.swing.GroupLayout.PREFERRED_SIZE, 71, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(jLabel11)
                                .addGap(18, 18, 18)
                                .addComponent(jcbSelector3, 0, 140, Short.MAX_VALUE))
                            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                                .addComponent(jLabel8)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(txtNombreVariable3, javax.swing.GroupLayout.PREFERRED_SIZE, 71, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(jLabel9)
                                .addGap(18, 18, 18)
                                .addComponent(jcbSelector2, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel10, javax.swing.GroupLayout.Alignment.TRAILING)
                            .addComponent(jLabel12, javax.swing.GroupLayout.Alignment.TRAILING))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(txtLongitud2, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 65, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(txtLongitud3, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 65, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(18, 18, 18)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(jCheckBox7)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                .addComponent(jCheckBox8))
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(jCheckBox5)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                .addComponent(jCheckBox6))))
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addGroup(javax.swing.GroupLayout.Alignment.LEADING, layout.createSequentialGroup()
                                .addComponent(jLabel19)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(txtNombreVariable4, javax.swing.GroupLayout.PREFERRED_SIZE, 71, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(jLabel17)
                                .addGap(18, 18, 18)
                                .addComponent(jcbSelector5, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                            .addGroup(javax.swing.GroupLayout.Alignment.LEADING, layout.createSequentialGroup()
                                .addComponent(jLabel14)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(txtNombreVariable5, javax.swing.GroupLayout.PREFERRED_SIZE, 71, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(jLabel15)
                                .addGap(18, 18, 18)
                                .addComponent(jcbSelector4, javax.swing.GroupLayout.PREFERRED_SIZE, 140, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(0, 1, Short.MAX_VALUE))
                            .addGroup(javax.swing.GroupLayout.Alignment.LEADING, layout.createSequentialGroup()
                                .addComponent(jLabel20)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(txtNombreVariable6, javax.swing.GroupLayout.PREFERRED_SIZE, 71, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(jLabel21)
                                .addGap(18, 18, 18)
                                .addComponent(jcbSelector6, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(jLabel18)
                                    .addComponent(jLabel16, javax.swing.GroupLayout.Alignment.TRAILING))
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(txtLongitud4, javax.swing.GroupLayout.PREFERRED_SIZE, 65, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(txtLongitud5, javax.swing.GroupLayout.PREFERRED_SIZE, 65, javax.swing.GroupLayout.PREFERRED_SIZE))
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 19, Short.MAX_VALUE)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addGroup(layout.createSequentialGroup()
                                        .addComponent(jCheckBox11)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                        .addComponent(jCheckBox12))
                                    .addGroup(layout.createSequentialGroup()
                                        .addComponent(jCheckBox9)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                        .addComponent(jCheckBox10))))
                            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                                .addComponent(jLabel22)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                                        .addComponent(txtLongitud6)
                                        .addGap(18, 18, 18)
                                        .addComponent(jCheckBox13)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                        .addComponent(jCheckBox14))
                                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                                        .addComponent(btnGuardar)
                                        .addGap(23, 23, 23)))))))
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(26, 26, 26)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txtNombreTabla, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel2))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jcbSelector, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addContainerGap())
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addGroup(javax.swing.GroupLayout.Alignment.LEADING, layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                .addComponent(txtLongitud, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addComponent(jLabel4)
                                .addComponent(jcb)
                                .addComponent(jcb1))
                            .addGroup(javax.swing.GroupLayout.Alignment.LEADING, layout.createSequentialGroup()
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                    .addComponent(txtNombreVariable, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(jLabel1)
                                    .addComponent(jLabel3))
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                    .addComponent(jLabel5)
                                    .addComponent(txtNombreVariable1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(jLabel6)
                                    .addComponent(jcbSelector1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(jLabel7)
                                    .addComponent(txtLongitud1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(jCheckBox3)
                                    .addComponent(jCheckBox4))))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                .addComponent(jLabel12)
                                .addComponent(jCheckBox7)
                                .addComponent(jCheckBox8)
                                .addComponent(txtLongitud2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(layout.createSequentialGroup()
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                    .addComponent(jLabel13)
                                    .addComponent(jLabel11))
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                    .addComponent(jLabel8)
                                    .addComponent(jLabel9)
                                    .addComponent(jcbSelector2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(jLabel10)
                                    .addComponent(jCheckBox5)
                                    .addComponent(jCheckBox6)
                                    .addComponent(txtNombreVariable3, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(txtLongitud3, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                                .addComponent(txtNombreVariable2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addComponent(jcbSelector3, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                .addComponent(jLabel18)
                                .addComponent(jCheckBox11)
                                .addComponent(jCheckBox12)
                                .addComponent(txtLongitud4, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(layout.createSequentialGroup()
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                    .addComponent(jLabel19)
                                    .addComponent(jLabel17)
                                    .addComponent(txtNombreVariable4, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                    .addComponent(jLabel14)
                                    .addComponent(jLabel15)
                                    .addComponent(jcbSelector4, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(jLabel16)
                                    .addComponent(jCheckBox9)
                                    .addComponent(jCheckBox10)
                                    .addComponent(txtNombreVariable5, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(txtLongitud5, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                            .addComponent(jcbSelector5, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel20)
                            .addComponent(txtNombreVariable6, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel21)
                            .addComponent(jcbSelector6, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel22)
                            .addComponent(txtLongitud6, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jCheckBox13)
                            .addComponent(jCheckBox14))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 89, Short.MAX_VALUE)
                        .addComponent(btnGuardar))))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btnGuardarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnGuardarActionPerformed
        // TODO add your handling code here:
        datos ar=new datos();
        String con="",con2="",con3="",con4="",con5="",con6="",con7="",fin="",tipo="",tipo2="",tipo3="",tipo4="",tipo5="",tipo6="",tipo7="";
        String insert="",insert1="",insert2="",insert3="",insert4="",insert5="",insert6="",cons="";
        if(txtNombreVariable.getText().length()!=0){
        if(jcbSelector.getSelectedItem()=="Apellido Paterno"){
        tipo="varchar("+txtLongitud.getText()+")";
        }
        if(jcbSelector.getSelectedItem()=="Apellido Materno"){
        tipo="varchar("+txtLongitud.getText()+")";
        }
        if(jcbSelector.getSelectedItem()=="Calificacion"){
        tipo="double("+txtLongitud.getText()+")";
        }
        if(jcbSelector.getSelectedItem()=="fecha"){
        tipo="date";
        }
        if(jcbSelector.getSelectedItem()=="Identificador"){
        tipo="int("+txtLongitud.getText()+")";
        }
        if(jcbSelector.getSelectedItem()=="Matricula"){
        tipo="varchar("+txtLongitud.getText()+")";
        }
        if(jcbSelector.getSelectedItem()=="Nombre"){
        tipo="varchar("+txtLongitud.getText()+")";
        }
        if(jcbSelector.getSelectedItem()=="Nombre Calificacion"){
        tipo="varchar("+txtLongitud.getText()+")";
        }
        if(jcbSelector.getSelectedItem()=="Nombre de Escula"){
        tipo="varchar("+txtLongitud.getText()+")";
        }
        if(jcbSelector.getSelectedItem()=="Nombre de Grupo"){
        tipo="varchar("+txtLongitud.getText()+")";
        }
        if(jcbSelector.getSelectedItem()=="Nombre de Materia"){
        tipo="varchar("+txtLongitud.getText()+")";
        }
        if(jcbSelector.getSelectedItem()=="Nombre de Periodo"){
        tipo="varchar("+txtLongitud.getText()+")";
        }
        if(jcbSelector.getSelectedItem()=="Nombre Trabajo"){
        tipo="varchar("+txtLongitud.getText()+")";
        }
        if(jcbSelector.getSelectedItem()=="NombreSalon"){
        tipo="varchar("+txtLongitud.getText()+")";
        }if(jcbSelector.getSelectedItem()=="Tipo de Asistencia"){
        tipo="varchar("+txtLongitud.getText()+")";
        }
        con=txtNombreVariable.getText()+" "+tipo;
        }else if(txtNombreVariable.getText()==""){
        con="";
        tipo="";
        }
        if(txtNombreVariable1.getText().length()!=0){
        if(jcbSelector1.getSelectedItem()=="Apellido Paterno"){
        tipo2="varchar("+txtLongitud1.getText()+")";
        }
        if(jcbSelector1.getSelectedItem()=="Apellido Materno"){
        tipo2="varchar("+txtLongitud1.getText()+")";
        }
        if(jcbSelector1.getSelectedItem()=="Calificacion"){
        tipo2="double("+txtLongitud1.getText()+")";
        }
        if(jcbSelector1.getSelectedItem()=="fecha"){
        tipo2="date";
        }
        if(jcbSelector1.getSelectedItem()=="Identificador"){
        tipo2="int("+txtLongitud1.getText()+")";
        }
        if(jcbSelector1.getSelectedItem()=="Matricula"){
        tipo2="varchar("+txtLongitud1.getText()+")";
        }
        if(jcbSelector1.getSelectedItem()=="Nombre"){
        tipo2="varchar("+txtLongitud1.getText()+")";
        }
        if(jcbSelector1.getSelectedItem()=="Nombre Calificacion"){
        tipo2="varchar("+txtLongitud1.getText()+")";
        }
        if(jcbSelector1.getSelectedItem()=="Nombre de Escula"){
        tipo2="varchar("+txtLongitud1.getText()+")";
        }
        if(jcbSelector1.getSelectedItem()=="Nombre de Grupo"){
        tipo2="varchar("+txtLongitud1.getText()+")";
        }
        if(jcbSelector1.getSelectedItem()=="Nombre de Materia"){
        tipo2="varchar("+txtLongitud1.getText()+")";
        }
        if(jcbSelector1.getSelectedItem()=="Nombre de Periodo"){
        tipo2="varchar("+txtLongitud1.getText()+")";
        }
        if(jcbSelector1.getSelectedItem()=="Nombre Trabajo"){
        tipo2="varchar("+txtLongitud1.getText()+")";
        }
        if(jcbSelector1.getSelectedItem()=="NombreSalon"){
        tipo2="varchar("+txtLongitud1.getText()+")";
        }if(jcbSelector1.getSelectedItem()=="Tipo de Asistencia"){
        tipo2="varchar("+txtLongitud1.getText()+")";
        }
        con2=","+txtNombreVariable1.getText()+" "+tipo2;
        }else if(txtNombreVariable1.getText()==""){
        con2="";
        tipo2="";
        }
        if(txtNombreVariable2.getText().length()!=0){
        if(jcbSelector2.getSelectedItem()=="Apellido Paterno"){
        tipo3="varchar("+txtLongitud2.getText()+")";
        }
        if(jcbSelector2.getSelectedItem()=="Apellido Materno"){
        tipo3="varchar("+txtLongitud2.getText()+")";
        }
        if(jcbSelector2.getSelectedItem()=="Calificacion"){
        tipo3="double("+txtLongitud2.getText()+")";
        }
        if(jcbSelector2.getSelectedItem()=="fecha"){
        tipo3="date";
        }
        if(jcbSelector2.getSelectedItem()=="Identificador"){
        tipo3="int("+txtLongitud2.getText()+")";
        }
        if(jcbSelector2.getSelectedItem()=="Matricula"){
        tipo3="varchar("+txtLongitud2.getText()+")";
        }
        if(jcbSelector2.getSelectedItem()=="Nombre"){
        tipo3="varchar("+txtLongitud2.getText()+")";
        }
        if(jcbSelector2.getSelectedItem()=="Nombre Calificacion"){
        tipo3="varchar("+txtLongitud2.getText()+")";
        }
        if(jcbSelector2.getSelectedItem()=="Nombre de Escula"){
        tipo3="varchar("+txtLongitud2.getText()+")";
        }
        if(jcbSelector2.getSelectedItem()=="Nombre de Grupo"){
        tipo3="varchar("+txtLongitud2.getText()+")";
        }
        if(jcbSelector2.getSelectedItem()=="Nombre de Materia"){
        tipo3="varchar("+txtLongitud2.getText()+")";
        }
        if(jcbSelector2.getSelectedItem()=="Nombre de Periodo"){
        tipo3="varchar("+txtLongitud2.getText()+")";
        }
        if(jcbSelector2.getSelectedItem()=="Nombre Trabajo"){
        tipo3="varchar("+txtLongitud2.getText()+")";
        }
        if(jcbSelector2.getSelectedItem()=="NombreSalon"){
        tipo3="varchar("+txtLongitud2.getText()+")";
        }if(jcbSelector2.getSelectedItem()=="Tipo de Asistencia"){
        tipo3="varchar("+txtLongitud2.getText()+")";
        }
        con3=","+txtNombreVariable2.getText()+" "+tipo3;
        }else if(txtNombreVariable2.getText()==""){
        con3="paso algo";
        tipo3="";
        }
        if(txtNombreVariable3.getText().length()!=0){
        if(jcbSelector3.getSelectedItem()=="Apellido Paterno"){
        tipo4="varchar("+txtLongitud3.getText()+")";
        }
        if(jcbSelector3.getSelectedItem()=="Apellido Materno"){
        tipo4="varchar("+txtLongitud3.getText()+")";
        }
        if(jcbSelector3.getSelectedItem()=="Calificacion"){
        tipo4="double("+txtLongitud3.getText()+")";
        }
        if(jcbSelector3.getSelectedItem()=="fecha"){
        tipo4="date";
        }
        if(jcbSelector3.getSelectedItem()=="Identificador"){
        tipo4="int("+txtLongitud3.getText()+")";
        }
        if(jcbSelector3.getSelectedItem()=="Matricula"){
        tipo4="varchar("+txtLongitud3.getText()+")";
        }
        if(jcbSelector3.getSelectedItem()=="Nombre"){
        tipo4="varchar("+txtLongitud3.getText()+")";
        }
        if(jcbSelector3.getSelectedItem()=="Nombre Calificacion"){
        tipo4="varchar("+txtLongitud3.getText()+")";
        }
        if(jcbSelector3.getSelectedItem()=="Nombre de Escula"){
        tipo4="varchar("+txtLongitud3.getText()+")";
        }
        if(jcbSelector3.getSelectedItem()=="Nombre de Grupo"){
        tipo4="varchar("+txtLongitud3.getText()+")";
        }
        if(jcbSelector3.getSelectedItem()=="Nombre de Materia"){
        tipo4="varchar("+txtLongitud3.getText()+")";
        }
        if(jcbSelector3.getSelectedItem()=="Nombre de Periodo"){
        tipo4="varchar("+txtLongitud3.getText()+")";
        }
        if(jcbSelector3.getSelectedItem()=="Nombre Trabajo"){
        tipo4="varchar("+txtLongitud3.getText()+")";
        }
        if(jcbSelector3.getSelectedItem()=="NombreSalon"){
        tipo4="varchar("+txtLongitud3.getText()+")";
        }if(jcbSelector3.getSelectedItem()=="Tipo de Asistencia"){
        tipo4="varchar("+txtLongitud3.getText()+")";
        }
        con4=","+txtNombreVariable3.getText()+" "+tipo4;
        }else if(txtNombreVariable3.getText()==""){
        con4="";
        tipo4="";
        }
        if(txtNombreVariable4.getText().length()!=0){
        if(jcbSelector4.getSelectedItem()=="Apellido Paterno"){
        tipo5="varchar("+txtLongitud4.getText()+")";
        }
        if(jcbSelector4.getSelectedItem()=="Apellido Materno"){
        tipo5="varchar("+txtLongitud4.getText()+")";
        }
        if(jcbSelector4.getSelectedItem()=="Calificacion"){
        tipo5="double("+txtLongitud4.getText()+")";
        }
        if(jcbSelector4.getSelectedItem()=="fecha"){
        tipo5="date";
        }
        if(jcbSelector4.getSelectedItem()=="Identificador"){
        tipo5="int("+txtLongitud4.getText()+")";
        }
        if(jcbSelector4.getSelectedItem()=="Matricula"){
        tipo5="varchar("+txtLongitud4.getText()+")";
        }
        if(jcbSelector4.getSelectedItem()=="Nombre"){
        tipo5="varchar("+txtLongitud4.getText()+")";
        }
        if(jcbSelector4.getSelectedItem()=="Nombre Calificacion"){
        tipo5="varchar("+txtLongitud4.getText()+")";
        }
        if(jcbSelector4.getSelectedItem()=="Nombre de Escula"){
        tipo5="varchar("+txtLongitud4.getText()+")";
        }
        if(jcbSelector4.getSelectedItem()=="Nombre de Grupo"){
        tipo5="varchar("+txtLongitud4.getText()+")";
        }
        if(jcbSelector4.getSelectedItem()=="Nombre de Materia"){
        tipo5="varchar("+txtLongitud4.getText()+")";
        }
        if(jcbSelector4.getSelectedItem()=="Nombre de Periodo"){
        tipo5="varchar("+txtLongitud4.getText()+")";
        }
        if(jcbSelector4.getSelectedItem()=="Nombre Trabajo"){
        tipo5="varchar("+txtLongitud4.getText()+")";
        }
        if(jcbSelector4.getSelectedItem()=="NombreSalon"){
        tipo5="varchar("+txtLongitud4.getText()+")";
        }if(jcbSelector4.getSelectedItem()=="Tipo de Asistencia"){
        tipo5="varchar("+txtLongitud4.getText()+")";
        }
        con5=","+txtNombreVariable4.getText()+" "+tipo5;
        }else if(txtNombreVariable4.getText()==""){
        con5="";
        tipo5="";
        }
        if(txtNombreVariable5.getText().length()!=0){
        if(jcbSelector5.getSelectedItem()=="Apellido Paterno"){
        tipo6="varchar("+txtLongitud5.getText()+")";
        }
        if(jcbSelector5.getSelectedItem()=="Apellido Materno"){
        tipo6="varchar("+txtLongitud5.getText()+")";
        }
        if(jcbSelector5.getSelectedItem()=="Calificacion"){
        tipo6="double("+txtLongitud5.getText()+")";
        }
        if(jcbSelector5.getSelectedItem()=="fecha"){
        tipo6="date";
        }
        if(jcbSelector5.getSelectedItem()=="Identificador"){
        tipo6="int("+txtLongitud5.getText()+")";
        }
        if(jcbSelector5.getSelectedItem()=="Matricula"){
        tipo6="varchar("+txtLongitud5.getText()+")";
        }
        if(jcbSelector5.getSelectedItem()=="Nombre"){
        tipo6="varchar("+txtLongitud5.getText()+")";
        }
        if(jcbSelector5.getSelectedItem()=="Nombre Calificacion"){
        tipo6="varchar("+txtLongitud5.getText()+")";
        }
        if(jcbSelector5.getSelectedItem()=="Nombre de Escula"){
        tipo6="varchar("+txtLongitud5.getText()+")";
        }
        if(jcbSelector5.getSelectedItem()=="Nombre de Grupo"){
        tipo6="varchar("+txtLongitud5.getText()+")";
        }
        if(jcbSelector5.getSelectedItem()=="Nombre de Materia"){
        tipo6="varchar("+txtLongitud5.getText()+")";
        }
        if(jcbSelector5.getSelectedItem()=="Nombre de Periodo"){
        tipo6="varchar("+txtLongitud5.getText()+")";
        }
        if(jcbSelector5.getSelectedItem()=="Nombre Trabajo"){
        tipo6="varchar("+txtLongitud5.getText()+")";
        }
        if(jcbSelector5.getSelectedItem()=="NombreSalon"){
        tipo6="varchar("+txtLongitud5.getText()+")";
        }if(jcbSelector5.getSelectedItem()=="Tipo de Asistencia"){
        tipo6="varchar("+txtLongitud5.getText()+")";
        }
        con6=","+txtNombreVariable5.getText()+" "+tipo6;
        }else if(txtNombreVariable5.getText()==""){
        con6="";
        tipo6="";
        }
        if(txtNombreVariable6.getText().length()!=0){
        if(jcbSelector6.getSelectedItem()=="Apellido Paterno"){
        tipo7="varchar("+txtLongitud6.getText()+")";
        }
        if(jcbSelector6.getSelectedItem()=="Apellido Materno"){
        tipo7="varchar("+txtLongitud6.getText()+")";
        }
        if(jcbSelector6.getSelectedItem()=="Calificacion"){
        tipo7="double("+txtLongitud6.getText()+")";
        }
        if(jcbSelector6.getSelectedItem()=="fecha"){
        tipo7="date";
        }
        if(jcbSelector6.getSelectedItem()=="Identificador"){
        tipo7="int("+txtLongitud6.getText()+")";
        }
        if(jcbSelector6.getSelectedItem()=="Matricula"){
        tipo7="varchar("+txtLongitud6.getText()+")";
        }
        if(jcbSelector6.getSelectedItem()=="Nombre"){
        tipo7="varchar("+txtLongitud6.getText()+")";
        }
        if(jcbSelector6.getSelectedItem()=="Nombre Calificacion"){
        tipo7="varchar("+txtLongitud6.getText()+")";
        }
        if(jcbSelector6.getSelectedItem()=="Nombre de Escula"){
        tipo7="varchar("+txtLongitud6.getText()+")";
        }
        if(jcbSelector6.getSelectedItem()=="Nombre de Grupo"){
        tipo7="varchar("+txtLongitud6.getText()+")";
        }
        if(jcbSelector6.getSelectedItem()=="Nombre de Materia"){
        tipo7="varchar("+txtLongitud6.getText()+")";
        }
        if(jcbSelector6.getSelectedItem()=="Nombre de Periodo"){
        tipo7="varchar("+txtLongitud6.getText()+")";
        }
        if(jcbSelector6.getSelectedItem()=="Nombre Trabajo"){
        tipo7="varchar("+txtLongitud6.getText()+")";
        }
        if(jcbSelector6.getSelectedItem()=="NombreSalon"){
        tipo7="varchar("+txtLongitud6.getText()+")";
        }if(jcbSelector6.getSelectedItem()=="Tipo de Asistencia"){
        tipo7="varchar("+txtLongitud6.getText()+")";
        }
        con7=","+txtNombreVariable6.getText()+" "+tipo7;
        }else if(txtNombreVariable6.getText()==""){
        con7="";
        tipo7="";
        }
        fin="create table "+txtNombreTabla.getText()+"("+con+con2+con3+con4+con5+con6+con7+")engine=innodb;";
        
//        System.out.print(fin);
//        System.out.println("");
        
        for(int v=0;v<1000000;v++){
        if(jcbSelector.getSelectedItem()=="Apellido Paterno"){
        int seleccionado;
                                int numero=arregloApe.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloApe[seleccionado]);
                                insert="'"+arregloApe[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector.getSelectedItem()=="Apellido Materno"){
        int seleccionado;
                                int numero=arregloApe.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloApe[seleccionado]);
                                insert="'"+arregloApe[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector.getSelectedItem()=="Calificacion"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert=""+arregloNom[seleccionado]+"";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector.getSelectedItem()=="fecha"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert="'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector.getSelectedItem()=="Identificador"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert=""+arregloNom[seleccionado]+"";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector.getSelectedItem()=="Matricula"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert="'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector.getSelectedItem()=="Nombre"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert="'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector.getSelectedItem()=="Nombre Calificacion"){
        int seleccionado;
                                int numero=arregloNom.length;
////                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
////                                System.out.println(arregloNom[seleccionado]);
                                insert="'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector.getSelectedItem()=="Nombre de Escula"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert="'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector.getSelectedItem()=="Nombre de Grupo"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert="'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector.getSelectedItem()=="Nombre de Materia"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert="'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector.getSelectedItem()=="Nombre de Periodo"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert="'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector.getSelectedItem()=="Nombre Trabajo"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert="'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector.getSelectedItem()=="NombreSalon"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert="'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }if(jcbSelector.getSelectedItem()=="Tipo de Asistencia"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert="'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        
        
        if(jcbSelector1.getSelectedItem()=="Apellido Paterno"){
        int seleccionado;
                                int numero=arregloApe.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloApe[seleccionado]);
                                insert1=",'"+arregloApe[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector1.getSelectedItem()=="Apellido Materno"){
        int seleccionado;
                                int numero=arregloApe.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloApe[seleccionado]);
                                insert1=",'"+arregloApe[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector1.getSelectedItem()=="Calificacion"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert1=","+arregloNom[seleccionado]+"";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector1.getSelectedItem()=="fecha"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert1=",'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector1.getSelectedItem()=="Identificador"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert1=","+arregloNom[seleccionado]+"";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector1.getSelectedItem()=="Matricula"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert1=",'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector1.getSelectedItem()=="Nombre"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert1=",'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector1.getSelectedItem()=="Nombre Calificacion"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert1=",'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector1.getSelectedItem()=="Nombre de Escula"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert1=",'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector1.getSelectedItem()=="Nombre de Grupo"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert1=",'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector1.getSelectedItem()=="Nombre de Materia"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert1=",'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector1.getSelectedItem()=="Nombre de Periodo"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert1=",'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector1.getSelectedItem()=="Nombre Trabajo"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert1=",'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector1.getSelectedItem()=="NombreSalon"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert1=",'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }if(jcbSelector1.getSelectedItem()=="Tipo de Asistencia"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert1=",'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        
        if(jcbSelector2.getSelectedItem()=="Apellido Paterno"){
        int seleccionado;
                                int numero=arregloApe.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloApe[seleccionado]);
                                insert2=",'"+arregloApe[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector2.getSelectedItem()=="Apellido Materno"){
        int seleccionado;
                                int numero=arregloApe.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloApe[seleccionado]);
                                insert2=",'"+arregloApe[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector2.getSelectedItem()=="Calificacion"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert2=","+arregloNom[seleccionado]+"";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector2.getSelectedItem()=="fecha"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert2=",'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector2.getSelectedItem()=="Identificador"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert2=","+arregloNom[seleccionado]+"";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector2.getSelectedItem()=="Matricula"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert2=",'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector2.getSelectedItem()=="Nombre"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert2=",'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector2.getSelectedItem()=="Nombre Calificacion"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert2=",'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector2.getSelectedItem()=="Nombre de Escula"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert2=",'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector2.getSelectedItem()=="Nombre de Grupo"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert2=",'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector2.getSelectedItem()=="Nombre de Materia"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert2=",'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector2.getSelectedItem()=="Nombre de Periodo"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert2=",'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector2.getSelectedItem()=="Nombre Trabajo"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert2=",'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector2.getSelectedItem()=="NombreSalon"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert2=",'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }if(jcbSelector2.getSelectedItem()=="Tipo de Asistencia"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert2=",'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        
        if(jcbSelector3.getSelectedItem()=="Apellido Paterno"){
        int seleccionado;
                                int numero=arregloApe.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloApe[seleccionado]);
                                insert3=",'"+arregloApe[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector3.getSelectedItem()=="Apellido Materno"){
        int seleccionado;
                                int numero=arregloApe.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloApe[seleccionado]);
                                insert3=",'"+arregloApe[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector3.getSelectedItem()=="Calificacion"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert3=","+arregloNom[seleccionado]+"";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector3.getSelectedItem()=="fecha"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert3=",'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector3.getSelectedItem()=="Identificador"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert3=","+arregloNom[seleccionado]+"";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector3.getSelectedItem()=="Matricula"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert3=",'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector3.getSelectedItem()=="Nombre"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert3=",'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector3.getSelectedItem()=="Nombre Calificacion"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert3=",'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector3.getSelectedItem()=="Nombre de Escula"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert3=",'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector3.getSelectedItem()=="Nombre de Grupo"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert3=",'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector3.getSelectedItem()=="Nombre de Materia"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert3=",'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector3.getSelectedItem()=="Nombre de Periodo"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert3=",'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector3.getSelectedItem()=="Nombre Trabajo"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert3=",'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector3.getSelectedItem()=="NombreSalon"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert3=",'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }if(jcbSelector3.getSelectedItem()=="Tipo de Asistencia"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert3=",'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        
        
        if(jcbSelector4.getSelectedItem()=="Apellido Paterno"){
        int seleccionado;
                                int numero=arregloApe.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloApe[seleccionado]);
                                insert4=",'"+arregloApe[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector4.getSelectedItem()=="Apellido Materno"){
        int seleccionado;
                                int numero=arregloApe.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloApe[seleccionado]);
                                insert4=",'"+arregloApe[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector4.getSelectedItem()=="Calificacion"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert4=","+arregloNom[seleccionado]+"";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector4.getSelectedItem()=="fecha"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert4=",'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector4.getSelectedItem()=="Identificador"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert4=","+arregloNom[seleccionado]+"";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector4.getSelectedItem()=="Matricula"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert4=",'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector4.getSelectedItem()=="Nombre"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert4=",'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector4.getSelectedItem()=="Nombre Calificacion"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert4=",'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector4.getSelectedItem()=="Nombre de Escula"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert4=",'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector4.getSelectedItem()=="Nombre de Grupo"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert4=",'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector4.getSelectedItem()=="Nombre de Materia"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert4=",'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector4.getSelectedItem()=="Nombre de Periodo"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert4=",'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector4.getSelectedItem()=="Nombre Trabajo"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert4=",'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector4.getSelectedItem()=="NombreSalon"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert4=",'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }if(jcbSelector4.getSelectedItem()=="Tipo de Asistencia"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert4=",'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        
        
        if(jcbSelector5.getSelectedItem()=="Apellido Paterno"){
        int seleccionado;
                                int numero=arregloApe.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloApe[seleccionado]);
                                insert5=",'"+arregloApe[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector5.getSelectedItem()=="Apellido Materno"){
        int seleccionado;
                                int numero=arregloApe.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloApe[seleccionado]);
                                insert5=",'"+arregloApe[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector5.getSelectedItem()=="Calificacion"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert5=","+arregloNom[seleccionado]+"";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector5.getSelectedItem()=="fecha"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert5=",'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector5.getSelectedItem()=="Identificador"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert5=","+arregloNom[seleccionado]+"";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector5.getSelectedItem()=="Matricula"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert5=",'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector5.getSelectedItem()=="Nombre"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert5=",'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector5.getSelectedItem()=="Nombre Calificacion"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert5=",'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector5.getSelectedItem()=="Nombre de Escula"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert5=",'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector5.getSelectedItem()=="Nombre de Grupo"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert5=",'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector5.getSelectedItem()=="Nombre de Materia"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert5=",'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector5.getSelectedItem()=="Nombre de Periodo"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert5=",'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector5.getSelectedItem()=="Nombre Trabajo"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert5=",'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector5.getSelectedItem()=="NombreSalon"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert5=",'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }if(jcbSelector5.getSelectedItem()=="Tipo de Asistencia"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert5=",'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        
        if(jcbSelector6.getSelectedItem()=="Apellido Paterno"){
        int seleccionado;
                                int numero=arregloApe.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloApe[seleccionado]);
                                insert6=",'"+arregloApe[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector6.getSelectedItem()=="Apellido Materno"){
        int seleccionado;
                                int numero=arregloApe.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloApe[seleccionado]);
                                insert6=",'"+arregloApe[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector6.getSelectedItem()=="Calificacion"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert6=","+arregloNom[seleccionado]+"";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector6.getSelectedItem()=="fecha"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert6=",'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector6.getSelectedItem()=="Identificador"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert6=","+arregloNom[seleccionado]+"";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector6.getSelectedItem()=="Matricula"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert6=",'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector6.getSelectedItem()=="Nombre"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert6=",'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector6.getSelectedItem()=="Nombre Calificacion"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert6=",'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector6.getSelectedItem()=="Nombre de Escula"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert6=",'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector6.getSelectedItem()=="Nombre de Grupo"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert6=",'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector6.getSelectedItem()=="Nombre de Materia"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert6=",'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector6.getSelectedItem()=="Nombre de Periodo"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert6=",'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector6.getSelectedItem()=="Nombre Trabajo"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert6=",'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        if(jcbSelector6.getSelectedItem()=="NombreSalon"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert6=",'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }if(jcbSelector6.getSelectedItem()=="Tipo de Asistencia"){
        int seleccionado;
                                int numero=arregloNom.length;
//                                for(int v=0;v<1000000;v++){
                                seleccionado=(int) Math.floor(Math.random()*(numero));
//                                System.out.println(arregloNom[seleccionado]);
                                insert6=",'"+arregloNom[seleccionado]+"'";
//                                ap[v]=arregloApe[seleccionado]+"ap";
//                                }
        }
        cons="insert into "+txtNombreTabla.getText()+" values ("+insert+insert1+insert2+insert3+insert4+insert5+insert6+");";
        
        
        arreglo[v]=cons;
//        System.out.print(cons);
        }
        
        
        try { 
            ar.escribirArchivo(ar.crearArchivo(),fin,arreglo);
        } catch (Exception ex) {
            Logger.getLogger(datos.class.getName()).log(Level.SEVERE, null, ex);
        }
        txtNombreTabla.setText("");
        txtNombreVariable.setText("");
        txtNombreVariable1.setText("");
        txtNombreVariable2.setText("");
        txtNombreVariable3.setText("");
        txtNombreVariable4.setText("");
        txtNombreVariable5.setText("");
        txtNombreVariable6.setText("");
        txtLongitud.setText("");
        txtLongitud1.setText("");
        txtLongitud2.setText("");
        txtLongitud3.setText("");
        txtLongitud4.setText("");
        txtLongitud5.setText("");
        txtLongitud6.setText("");
        jcbSelector.setSelectedItem("Seleccione el tipo");
        jcbSelector1.setSelectedItem("Seleccione el tipo");
        jcbSelector2.setSelectedItem("Seleccione el tipo");
        jcbSelector3.setSelectedItem("Seleccione el tipo");
        jcbSelector4.setSelectedItem("Seleccione el tipo");
        jcbSelector5.setSelectedItem("Seleccione el tipo");
        jcbSelector6.setSelectedItem("Seleccione el tipo");
    }//GEN-LAST:event_btnGuardarActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(datos.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(datos.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(datos.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(datos.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new datos().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnGuardar;
    private javax.swing.JCheckBox jCheckBox10;
    private javax.swing.JCheckBox jCheckBox11;
    private javax.swing.JCheckBox jCheckBox12;
    private javax.swing.JCheckBox jCheckBox13;
    private javax.swing.JCheckBox jCheckBox14;
    private javax.swing.JCheckBox jCheckBox3;
    private javax.swing.JCheckBox jCheckBox4;
    private javax.swing.JCheckBox jCheckBox5;
    private javax.swing.JCheckBox jCheckBox6;
    private javax.swing.JCheckBox jCheckBox7;
    private javax.swing.JCheckBox jCheckBox8;
    private javax.swing.JCheckBox jCheckBox9;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel12;
    private javax.swing.JLabel jLabel13;
    private javax.swing.JLabel jLabel14;
    private javax.swing.JLabel jLabel15;
    private javax.swing.JLabel jLabel16;
    private javax.swing.JLabel jLabel17;
    private javax.swing.JLabel jLabel18;
    private javax.swing.JLabel jLabel19;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel20;
    private javax.swing.JLabel jLabel21;
    private javax.swing.JLabel jLabel22;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JCheckBox jcb;
    private javax.swing.JCheckBox jcb1;
    private javax.swing.JComboBox<String> jcbSelector;
    private javax.swing.JComboBox<String> jcbSelector1;
    private javax.swing.JComboBox<String> jcbSelector2;
    private javax.swing.JComboBox<String> jcbSelector3;
    private javax.swing.JComboBox<String> jcbSelector4;
    private javax.swing.JComboBox<String> jcbSelector5;
    private javax.swing.JComboBox<String> jcbSelector6;
    private javax.swing.JTextField txtLongitud;
    private javax.swing.JTextField txtLongitud1;
    private javax.swing.JTextField txtLongitud2;
    private javax.swing.JTextField txtLongitud3;
    private javax.swing.JTextField txtLongitud4;
    private javax.swing.JTextField txtLongitud5;
    private javax.swing.JTextField txtLongitud6;
    private javax.swing.JTextField txtNombreTabla;
    private javax.swing.JTextField txtNombreVariable;
    private javax.swing.JTextField txtNombreVariable1;
    private javax.swing.JTextField txtNombreVariable2;
    private javax.swing.JTextField txtNombreVariable3;
    private javax.swing.JTextField txtNombreVariable4;
    private javax.swing.JTextField txtNombreVariable5;
    private javax.swing.JTextField txtNombreVariable6;
    // End of variables declaration//GEN-END:variables
 public PrintWriter crearArchivo() throws IOException{
    //Las siguientes 3 líneas nos permite crear un archivo y escribir en el
    
    JFileChooser filecoose=new JFileChooser();
        int opcion=filecoose.showSaveDialog(this);
       ruta=filecoose.getSelectedFile().getPath();
//    System.out.println(ruta);
    
    File archivo = new File(ruta+".sql");
    
     //System.out.println(nombre);
    FileWriter writer = new FileWriter(archivo);
    PrintWriter salida = new PrintWriter(writer);
    return salida;
  }

    public PrintWriter escribirArchivo(PrintWriter salida,String tabla,String datos[])throws Exception{
    //Este método permite escribir en el archivo
    salida.append(tabla);
    salida.println();
    for(int i=0;i<datos.length;i++){
        salida.append(datos[i]);
        salida.println();
    }
    
    //System.out.println(nl);
    //Este método sirve para dar un salto de línea
    
    salida.close();
    return salida;
    }

}
