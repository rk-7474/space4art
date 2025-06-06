DROP DATABASE IF EXISTS space4art;
\c space4art


CREATE TABLE rooms (
  id serial,
  name varchar(255) NOT NULL,
  owner varchar(255) NOT NULL,
  image varchar(2048) NOT NULL,
  uuid varchar(36) NOT NULL,
  tags varchar(100) DEFAULT '',
  description varchar(10000) DEFAULT '',
  user_id serial DEFAULT NULL,
) 

INSERT INTO rooms (id, name, owner, image, uuid, tags, description, state, user_id) VALUES
	(0000000013, 'The Beatles', 'test', 'https://keepupculture.com/wp-content/uploads/2021/01/beatles-abbey-road.jpg', '797029aa-add6-430e-834c-ce2b863f15f0', 'Musica', ' I Beatles hanno lasciato un\'impronta indelebile nella storia della musica, trasformando il paesaggio sonoro mondiale con la loro genialità senza tempo.', 'public', 3),
	(0000000015, 'Nadia Soligo', 'test', 'https://soligonadia.altervista.org/wp-content/uploads/2022/11/19.jpg', 'fd082298-c5ab-4b6e-997f-b10343366925', 'Dipinto', 'Nadia Soligo, pittrice trevigiana, crea opere realistiche e copie di capolavori, esponendo sia a livello locale che internazionale.', 'public', 3),
	(0000000018, 'Marco Piovesan', 'test', 'https://visit.parma.it/wp-content/uploads/2023/12/clarinette-1.jpg', '55286bed-8a93-4dd2-ab97-1de074738e69', 'Musica', 'Professore del nostro Istituto, musicista e clarinettista', 'public', 3),
	(0000000019, 'Claude Monet', 'test', 'https://www.singulart.com/blog/wp-content/uploads/2023/10/Claude-Monet-Paintings.jpg', '3069bafc-945a-4144-bc60-d1d886d9dd02', 'Dipinto', 'Maestro impressionista, cattura la luce in pennellate veloci, trasformando la natura in poesia visiva.', 'public', 3);

CREATE TABLE scenes (
  id serial,
  room_id serial,
  path varchar(3000) NOT NULL,
  x float NOT NULL,
  y float NOT NULL,
  z float NOT NULL,
  scale float DEFAULT NULL,
  rotation_x float NOT NULL,
  rotation_y float NOT NULL,
  rotation_z float NOT NULL,
  tags varchar(10000) DEFAULT NULL,
  desc varchar(1000) DEFAULT NULL,
  title varchar(255) DEFAULT NULL
)


INSERT INTO scenes (id, room_id, path, x, y, z, scale, rotation_x, rotation_y, rotation_z, tags, desc, title) VALUES
	(8, 13, 'https://www.youtube.com/watch?v=QDYfEBY9NM4', 6.84489, 1.88626, -1, 1.73, 0, 0, 0, 'Musica', '"Let It Be" dei Beatles è un inno di conforto e speranza, con il messaggio semplice ma potente di accettare le circostanze e trovare pace nell\'accettazione.', 'Let it be'),
	(9, 15, 'https://soligonadia.altervista.org/wp-content/uploads/2022/11/19.jpg', 0.161525, 1.35946, 4.48499, 1.3, 0, 1.5708, 0, 'Dipinto', 'Casa costruita nel XV sec. e decorata tra il XV e XVI sec. È caratterizzata da portici ad arco a tutto sesto ribassato che si affacciano sul Cagnan della Pescheria. La facciata presenta vari motivi a finta tappezzeria bicroma in rosso e bianco con un modulo a rombi lobati o a fiori goticheggianti; di epoca successiva, entro piccole specchiature, sono ospitati racemi; nel sottotetto corre un raffinato fregio con animali fantastici (cavalli marini) alternati a mazzi di foglie.', 'La casa della pescheria'),
	(14, 13, 'https://media-assets.wired.it/photos/615dae64d8b66b13086d04ba/master/w_1600%2Cc_limit/image013.jpg', 0.161525, 1.24507, 5.70472, 0.8, 0, 1.5708, 0, 'Musica', ' Un\'ultima passeggiata insieme, sul viale della musica eterna.', 'Abbey Road'),
	(15, 13, 'https://i.ytimg.com/vi/XPpQCKnl1rI/hqdefault.jpg', 0.161525, 1.25213, 3.30093, 0.8, 0, 1.5708, 0, 'Musica', '"Blue Album": Il riverbero incantato dei Beatles, un\'ode eterea alla loro grandezza senza tempo.', 'Blue Album'),
	(16, 13, 'https://i.pinimg.com/474x/29/75/eb/2975eb351f2812078666276459735d35.jpg', -0.161525, 1.27505, 11.8835, 1.15, 0, 1.5708, 0, 'Musica', ' "Yellow Submarine": Un\'odissea animata e psichedelica, incantata dalla melodia e dallo spirito gioioso dei Beatles.', 'Yellow Submarine'),
	(17, 13, 'https://www.udiscovermusic.com/wp-content/uploads/2022/01/PPM.jpg', -0.161525, 1.28275, 14.2389, 1.18, 0, 1.5708, 0, 'Musica', ' "Please Please Me": Il battito incalzante dei cuori giovani, l\'eco di una promessa musicale eterna.', 'Please Please Me'),
	(19, 18, 'https://www.youtube.com/watch?v=nHQJAmVnlHY', 0.660959, 1.69301, -1, 1.5, 0, 0, 0, 'Musica', 'Marco Piovesan suona al clarinetto "La Tosca - atto III"', 'La Tosca'),
	(20, 18, 'https://www.youtube.com/watch?v=qOc_aFCR6jk', 5.73582, 1.73132, 6.0062, 1.59, 0, 1.5708, 0, 'Musica', 'L\'orchestra del teatro comunale di Treviso suona "La Tosca - atto I"', 'La Tosca'),
	(22, 15, 'https://www.youtube.com/watch?v=Mj0WYhxiXHs', -1.0364, 1.58473, -1, 1.82, 0, 0, 0, 'Dipinto', ' La facciata presenta scene mitologiche: in alto vediamo Cleopatra che, abbandonata da Antonio, si fa pungere dall’aspide e vicino a lei un putto con una corona di alloro. Sotto, tra le finestre del secondo e del primo piano, due scene della storia di Troia: sopra Enea che fugge dalla città incendiata, portando sulle sue spalle il padre Anchise e il figlioletto Ascanio per mano; sotto c’è Didone, regina di Cartagine, che si trafigge con la spada di Enea.', 'Casa costruita da Nicolò Federici e affrescata'),
	(23, 15, 'https://soligonadia.altervista.org/wp-content/uploads/2022/11/02.jpg', 0.161525, 1.21664, 13.083, 1.04, 0, 1.5708, 0, 'Dipinto', 'Casa costruita nella metà del XV sec. e affrescata nel XV sec. coprendo una precedente decorazione a finti mattoni. Al centro della facciata è dipinta la scena del Giudizio di Paride: il bellissimo Troiano è di fronte alle tre dee, colto nel momento in cui sceglie Afrodite e le consegna la fatidica mela. Nella parte superiore c’è una fascia a monocromo con putti danzanti. Nella casa adiacente è affrescata una Giustizia di Traiano, di cui restano solo tracce del paesaggio.', 'Giudizio di Paride'),
	(24, 15, 'https://soligonadia.altervista.org/wp-content/uploads/2022/11/01.jpg', 3.91412, 1.75792, -1, 1.58, 0, 0, 0, 'Dipinto', 'La facciata presenta scene mitologiche: in alto vediamo Cleopatra che, abbandonata da Antonio, si fa pungere dall’aspide e vicino a lei un putto con una corona di alloro. Sotto, tra le finestre del secondo e del primo piano, due scene della storia di Troia: sopra Enea che fugge dalla città incendiata, portando sulle sue spalle il padre Anchise e il figlioletto Ascanio per mano; sotto c’è Didone, regina di Cartagine, che si trafigge con la spada di Enea.', 'Casa costruita da Nicolò Federici e affrescata'),
	(25, 15, 'https://soligonadia.altervista.org/wp-content/uploads/2022/11/03.jpg', 5.73582, 1.75654, 5.28576, 1.47, 0, 1.5708, 0, 'Dipinto', 'Casa costruita nella seconda metà del XVI sec. e affrescata alla metà del Cinquecento probabilmente da Ludovico Fiumicelli. All’ultimo piano figure coricate: Marte e Venere a sinistra, a destra un vecchio canuto che regge una falce, possibile allegoria del Tempo; al centro due putti. Sotto corre un fregio con festoni fogliacei e frutta, interrotto da un grande stemma. La parte inferiore della facciata è decorata a finto bugnato.', 'Casa della Niobe'),
	(26, 15, 'https://soligonadia.altervista.org/wp-content/uploads/2022/07/Via-San-Agostino-1433x2048.jpeg', 5.73582, 1.78558, 8.05305, 1.49, 0, 1.5708, 0, 'Dipinto', 'Casa costruita nella seconda metà del XVI sec. e affrescata alla metà del Cinquecento probabilmente da Ludovico Fiumicelli. All’ultimo piano figure coricate: Marte e Venere a sinistra, a destra un vecchio canuto che regge una falce, possibile allegoria del Tempo; al centro due putti. Sotto corre un fregio con festoni fogliacei e frutta, interrotto da un grande stemma. La parte inferiore della facciata è decorata a finto bugnato.', 'Casa della Noibe'),
	(28, 19, 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0e/Claude_Monet_022.jpg/1024px-Claude_Monet_022.jpg', 0.161525, 1.27266, 4.53262, 1, 0, 1.5708, 0, 'Dipinto', 'Museo dell’Emitage - 1867', 'Signora in giardino a Sainte-Adresse'),
	(29, 19, 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6b/Monet_Umbrella.JPG/800px-Monet_Umbrella.JPG', 0.161525, 1.23098, 14.4451, 1.06, 0, 1.5708, 0, 'Dipinto', 'National Gallery - 1865 - Camille Monet con il figlio Jean sulla', 'La passeggiata'),
	(30, 19, 'https://www.lafficheillustree.com/wp-content/uploads/2021/03/090447-tif-60-x-80-Claude_monet-the_artist_s_garden_at_vetheuil.jpg', 0.161525, 1.22382, 12.0107, 1, 0, 1.5708, 0, 'Dipinto', 'National Gallary - 1881', 'Il giardino Vetheuil'),
	(31, 19, 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/29/Claude_Monet_037.jpg/1024px-Claude_Monet_037.jpg', -4.66529, 1.82262, 8.29525, 1.6, 0, 1.5708, 0, 'Dipinto', 'Musée d’Orsay - 1873', 'I papaveri'),
	(32, 19, 'https://images.squarespace-cdn.com/content/v1/55fb5ba0e4b0f81e4e52f39a/d6d965a8-a0e3-45d9-b958-a282fcb07958/1-05_Passeggiata+vicino+ad+Argenteuil.jpg?format=2500w', -0.161525, 1.28243, 4.50927, 1.07, 0, 1.5708, 0, 'Dipinto', 'Musée Marmottan - 1875', 'Passeggiata vicino ad Argenteuil'),
	(34, 19, 'https://www.copia-di-arte.com/kunst/claude_monet/Das-Parlament-in-London-bei-Sonnenuntergang-2.jpg', -0.161525, 1.29539, 11.7599, 1.02, 0, 1.5708, 0, 'Dipinto', 'National Gallery - 1903', 'Il parlamento di Londra al tramonto'),
	(35, 19, 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/da/Claude_Monet%2C_Saint-Georges_majeur_au_cr%C3%A9puscule.jpg/1280px-Claude_Monet%2C_Saint-Georges_majeur_au_cr%C3%A9puscule.jpg', -0.161525, 1.26514, 14.2426, 0.85, 0, 1.5708, 0, 'Dipinto', 'National  Museum of Wales - 1908', 'San Giorgio Maggiore al Crepuscolo');
