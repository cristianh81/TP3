CREATE TABLE Categorias (
    id INTEGER PRIMARY KEY,
    nombre VARCHAR(255)
);
CREATE TABLE Genero (
    id INTEGER PRIMARY KEY,
    genero VARCHAR(255)
);
CREATE TABLE Actores (
    id INTEGER PRIMARY KEY,
    actor VARCHAR(255)
);
CREATE TABLE Titulos (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    poster VARCHAR(255),
    titulo VARCHAR(255),
    categoria VARCHAR(255),
    resumen TEXT(500),
    temporadas INTEGER,
    trailer VARCHAR(255)
);
CREATE TABLE Reparto (
    id INTEGER PRIMARY KEY,
    idTitulo INTEGER,
    idActor INTEGER,
    FOREIGN KEY (idTitulo) REFERENCES Titulos(id),
    FOREIGN KEY (idActor) REFERENCES Actores(id)
);
CREATE TABLE Catalogo (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    poster VARCHAR(255),
    titulo VARCHAR(255),
    categoria_id INTEGER,
    genero_id INTEGER,
    resumen TEXT(500),
    temporadas INTEGER,
    reparto TEXT(500),
    trailer VARCHAR(255),
    FOREIGN KEY (categoria_id) REFERENCES Categorias(id),
    FOREIGN KEY (genero_id) REFERENCES Genero(id)
);

INSERT INTO Categorias (id, nombre)
VALUES (1, 'Serie'),(2, 'Pelicula');

INSERT INTO Genero (id, genero)
VALUES 
  (1, 'Drama'),
  (2, 'Hechos verídicos'),
  (3, 'Misterio'),
  (4, 'Ficción'),
  (5, 'Ciencia Ficción'),
  (6, 'Fantasía'),
  (7, 'Sucesos'),
  (8, 'Crimen'),
  (9, 'Suspenso'),
  (10, 'Aventura'),
  (11, 'Sci-Fi'),
  (12, 'Acción'),
  (13, 'Comedia'),
  (14, 'Familia'),
  (15, 'Western'),
  (16, 'Tecnología'),
  (17, 'Intriga'),
  (18, 'Terror');
  
  INSERT INTO Actores (id, actor)
VALUES 
  (1, 'Claire Fox'),
(2, 'Olivia Colman'),
(3, 'Matt Smith'),
(4, 'Tobias Menzies'),
(5, 'Vanesa Kirby'),
(6, 'Helena Bonham Carter'),
(7, 'Lili Reinhart'),
(8, 'Casey Cott'),
(9, 'Camila Mendes'),
(10, 'Marisol Nichols'),
(11, 'Madelaine Petsch'),
(12, 'Mädchen Amick'),
(13, 'Pedro Pascal'),
(14, 'Carl Weathers'),
(15, 'Misty Rosas'),
(16, 'Chris Bartlett'),
(17, 'Rio Hackford'),
(18, 'Giancarlo Esposito'),
(19, 'Tom Hopper'),
(20, 'David Castañeda'),
(21, 'Emmy Raver-Lampman'),
(22, 'Robert Sheehan'),
(23, 'Aidan Gallagher'),
(24, 'Elliot Page'),
(25, 'Anya Taylor-Joy'),
(26, 'Thomas Brodie-Sangster'),
(27, 'Harry Melling'),
(28, 'Moses Ingram'),
(29, 'Chloe Pirrie'),
(30, 'Janina Elkin'),
(31, 'Millie Bobby Brown'),
(32, 'Henry Cavill'),
(33, 'Sam Claflin'),
(34, 'Helena Bonham Carter'),
(35, 'Louis Partridge'),
(36, 'Adeel Akhtar'),
(37, 'Joaquin Phoenix'),
(38, 'Robert De Niro'),
(39, 'Zazie Beetz'),
(40, 'Frances Conroy'),
(41, 'Brett Cullen'),
(42, 'Shea Whigham'),
(43, 'Robert Downey Jr.'),
(44, 'Chris Evans'),
(45, 'Mark Ruffalo'),
(46, 'Chris Hemsworth'),
(47, 'Scarlett Johansson'),
(48, 'Jeremy Renner'),
(49, 'Emilia Clarke'),
(50, 'Lena Headey'),
(51, 'Sophie Turner'),
(52, 'Kit Harington'),
(53, 'Peter Dinklage'),
(54, 'Nikolaj Coster-Waldau'),
(55, 'Grant Gustin'),
(56, 'Carlos Valdes'),
(57, 'Danielle Panabaker'),
(58, 'Candice Patton'),
(59, 'Jesse L. Martin'),
(60, 'Tom Cavanagh'),
(61, 'Jim Parsons'),
(62, 'Johnny Galecki'),
(63, 'Kaley Cuoco'),
(64, 'Simon Helberg'),
(65, 'Kunal Nayyar'),
(66, 'Melissa Rauch'),
(67, 'Mayim Bialik'),
(68, 'Jennifer Aniston'),
(69, 'Courteney Cox'),
(70, 'Lisa Kudrow'),
(71, 'David Schwimmer'),
(72, 'Matthew Perry'),
(73, 'Matt LeBlanc'),
(74, 'Amybeth McNulty'),
(75, 'Geraldine James'),
(76, 'R. H. Thomson'),
(77, 'Corrine Koslo'),
(78, 'Dalila Bela'),
(79, 'Lucas Jade Zumann'),
(80, 'Gillian Anderson'),
(81, 'David Duchovny'),
(82, 'Mitch Pileggi'),
(83, 'Robert Patrick'),
(84, 'Tom Braidwood'),
(85, 'Bruce Harwood'),
(86, 'Jared Harris'),
(87, 'Stellan Skarsgård'),
(88, 'Emily Watson'),
(89, 'Paul Ritter'),
(90, 'Jessie Buckley'),
(91, 'Adam Nagaitis'),
(92, 'Evan Rachel Wood'),
(93, 'Thandie Newton'),
(94, 'Jeffrey Wright'),
(95, 'Tessa Thompson'),
(96, 'Ed Harris'),
(97, 'Luke Hemsworth'),
(98, 'Lee Pace'),
(99, 'Scoot McNairy'),
(100, 'Mackenzie Davis'),
(101, 'Kerry Bishé'),
(102, 'Toby Huss'),
(103, 'Alana Cavanaugh'),
(104, 'Jessica Chastain'),
(105, 'John Malkovich'),
(106, 'Colin Farrell'),
(107, 'Common'),
(108, 'Geena Davis'),
(109, 'Ioan Gruffudd'),
(110, 'Margot Robbie'),
(111, 'Ewan McGregor'),
(112, 'Mary Elizabeth Winstead'),
(113, 'Jurnee Smollett'),
(114, 'Rosie Perez'),
(115, 'Chris Messina'),
(116, 'Stacy Martin'),
(117, 'Rhona Mitra'),
(118, 'Theo James'),
(119, 'Peter Ferdinando'),
(120, 'Lia Williams'),
(121, 'Toby Jones'),
(122, 'Dwayne Johnson'),
(123, 'Kevin Hart'),
(124, 'Jack Black'),
(125, 'Karen Gillan'),
(126, 'Awkwafina'),
(127, 'Nick Jonas'),
(128, 'Miranda Cosgrove'),
(129, 'Kate Walsh'),
(130, 'Omar Epps'),
(131, 'Angus Macfadyen'),
(132, 'Jorja Fox'),
(133, 'Enver Gjokaj'),
(134, 'Bill Skarsgård'),
(135, 'Jessica Chastain'),
(136, 'Bill Hader'),
(137, 'James McAvoy'),
(138, 'Isaiah Mustafa'),
(139, 'Jay Ryan'),
(140, 'Chadwick Boseman'),
(141, 'Michael B. Jordan'),
(142, 'Lupita Nyongo'),
(143, 'Danai Gurira'),
(144, 'Martin Freeman'),
(145, 'Daniel Kaluuya'),
(146, 'Christian Bale'),
(147, 'Matt Damon'),
(148, 'Caitriona Balfe'),
(149, 'Josh Lucas'),
(150, 'Noah Jupe'),
(151, 'Jon Bernthal'),
(152, 'Génesis Rodríguez'),
(153, 'Vincent Piazza'),
(154, 'Benjamin Sokolow'),
(155, 'Emily Bayiokos'),
(156, 'Amy Manson'),
(157, 'Luke Allen-Gale'),
(158, 'Nina Bergman'),
(159, 'Dominic Mafham'),
(160, 'James Weber Brown'),
(161, 'Lorina Kamburova'),
(162, 'Marion Cotillard'),
(163, 'Matt Damon'),
(164, 'Laurence Fishburne'),
(165, 'Jude Law'),
(166, 'Kate Winslet'),
(167, 'Jennifer Ehle'),
(168, 'Gwyneth Paltrow'),
(169, 'Scarlett Johansson'),
(170, 'Florence Pugh'),
(171, 'David Harbour'),
(172, 'O.T. Fagbenle'),
(173, 'Rachel Weisz'),
(174, 'William Hurt'),
(175, 'Ray Winstone'),
(176, 'Matt Damon'),
(177, 'Jessica Chastain'),
(178, 'Kristen Wiig'),
(179, 'Jeff Daniels'),
(180, 'Michael Peña'),
(181, 'Sean Bean'),
(182, 'Kate Mara'),
(183, 'Alicia Vikander'),
(184, 'Domhnall Gleeson'),
(185, 'Oscar Isaac'),
(186, 'Sonoya Mizuno'),
(187, 'Corey Johnson'),
(188, 'Claire Selby'),
(189, 'Gana Bayarsaikhan'),
(190, 'Bryce Dallas Howard'),
(191, 'Chris Pratt'),
(192, 'Irrfan Khan'),
(193, 'Vincent D Onofrio'),
(194, 'Omar Sy'),
(195, 'Nick Robinson'),
(196, 'Judy Greer'),
(197, 'Will Smith'),
(198, 'Alice Braga'),
(199, 'Charlie Tahan'),
(200, 'Dash Mihok'),
(201, 'Salli Richardson-Whitfield'),
(202, 'Willow Smith'),
(203, 'Emma Thompson'),
(204, 'Ryan Gosling'),
(205, 'Claire Foy'),
(206, 'Jason Clarke'),
(207, 'Kyle Chandler'),
(208, 'Corey Stoll'),
(209, 'Patrick Fugit'),
(210, 'John Boyega'),
(211, 'Scott Eastwood'),
(212, 'Cailee Spaeny'),
(213, 'Jing Tian'),
(214, 'Rinko Kikuchi'),
(215, 'Burn Gorman');

INSERT INTO Titulos (poster, titulo, categoria, resumen, temporadas, trailer)
VALUES ('/posters/1.jpg', 'The Crown', 'Serie', 'Este drama narra las rivalidades políticas y el romance de la reina Isabel II, así como los sucesos que moldearon la segunda mitad del siglo XX.', 4,Null);
INSERT INTO Titulos (poster, titulo, categoria, resumen, temporadas, trailer)
VALUES ('/posters/2.jpg', 'Riverdale', 'Serie', 'El paso a la edad adulta incluye sexo, romance, escuela y familia. Para Archie y sus amigos, también hay misterios oscuros.', 5,null);
INSERT INTO Titulos (poster, titulo, categoria, resumen, temporadas, trailer)
VALUES ('/posters/3.jpg', 'The Mandalorian', 'Serie', 'Ambientada tras la caída del Imperio y antes de la aparición de la Primera Orden, la serie sigue los pasos de un pistolero solitario en las aventuras que protagoniza en los confines de la galaxia, donde no alcanza la autoridad de la Nueva República.', 2,null);
INSERT INTO Titulos (poster, titulo, categoria, resumen, temporadas, trailer)
VALUES ('/posters/4.jpg', 'The Umbrella Academy', 'Serie', 'La muerte de su padre reúne a unos hermanos distanciados y con extraordinarios poderes que descubren impactantes secretos y una amenaza que se cierne sobre la humanidad.', 1,null);
INSERT INTO Titulos (poster, titulo, categoria, resumen, temporadas, trailer)
VALUES ('/posters/5.jpg', 'Gambito de Dama', 'Serie', 'En los cincuenta, una joven de un orfanato descubre que tiene un increíble don para el ajedrez y recorre el arduo camino a la fama mientras lucha contra las adicciones.', 1,null);
INSERT INTO Titulos (poster, titulo, categoria, resumen, temporadas, trailer)
VALUES ('/posters/6.jpg', 'Enola Holmes', 'Película', 'La hermana menor de Sherlock, descubre que su madre ha desaparecido y se dispone a encontrarla. En su búsqueda, saca a relucir el sabueso que corre por sus venas y se encuentra con una conspiración que gira en torno a un misterioso lord, demostrando que su ilustre hermano no es el único talento en la familia.', NULL,NULL);
INSERT INTO Titulos (poster, titulo, categoria, resumen, temporadas, trailer)
VALUES ('/posters/7.jpg', 'Guasón', 'Película', 'Arthur Fleck (Phoenix) es un hombre ignorado por la sociedad, cuya motivación en la vida es hacer reír. Pero una serie de trágicos acontecimientos le llevarán a ver el mundo de otra forma. Película basada en el popular personaje de DC Comics Joker, conocido como archivillano de Batman, pero que en este film tomará un cariz más realista y oscuro.', NULL, 'https://www.youtube.com/embed/zAGVQLHvwOY');
INSERT INTO Titulos (poster, titulo, categoria, resumen, temporadas)
VALUES ('/posters/8.jpg', 'Avengers: End Game', 'Película', 'Después de los devastadores eventos de los Vengadores: Infinity War (2018), el universo está en ruinas. Con la ayuda de los aliados restantes, los Vengadores se reúnen una vez más para revertir las acciones de Thanos y restaurar el equilibrio del universo.', NULL);
INSERT INTO Titulos (poster, titulo, categoria, resumen, temporadas)
VALUES ('/posters/9.jpg', 'Juego de tronos', 'Serie', 'En un mundo fantástico y en un contexto medieval varias familias, relativas a la nobleza, se disputan el poder para dominar el territorio ficticio de Poniente (Westeros) y tomar el control de los Siete Reinos desde el Trono de Hierro, lugar donde el rey ejerce el poder.', 8);
INSERT INTO Titulos (poster, titulo, categoria, resumen, temporadas, trailer)
VALUES ('/posters/10.jpg', 'The Flash', 'Serie', 'Sigue las veloces aventuras de Barry Allen, un joven común y corriente con el deseo latente de ayudar a los demás. Cuando una inesperada partícula aceleradora golpea por accidente a Barry, de pronto se encuentra cargado de un increíble poder para moverse a increíbles velocidades. Mientras Barry siempre ha tenido el alma de un héroe, sus nuevos poderes le han dado la capacidad de actuar como tal.', 6,null);
INSERT INTO Titulos (poster, titulo, categoria, resumen, temporadas, trailer)
VALUES ('/posters/11.jpg', 'The Big Bang Theory', 'Serie', 'Leonard y Sheldon son dos físicos que comparten trabajo y apartamento. La serie comienza con la mudanza de Penny, su nueva y atractiva vecina, y hace hincapié en la dificultad de los físicos para relacionarse con personas fuera de su entorno para dar lugar a situaciones cómicas.', 12,"https://www.youtube.com/embed/WBb3fojgW0Q");
INSERT INTO Titulos (poster, titulo, categoria, resumen, temporadas, trailer)
VALUES ('/posters/12.jpg', 'Friends', 'Serie', "'Friends' narra las aventuras y desventuras de seis jóvenes de Nueva York: Rachel, Monica, Phoebe, Ross, Chandler y Joey. Ellos forman una unida pandilla de amigos que viven en Manhattan y que suelen reunirse en sus apartamentos o en su bar habitual cafetería, el Central Perk. A pesar de los numerosos cambios que se producen en sus vidas, su amistad es inquebrantable en la dura batalla por salir adelante en sus periplos profesionales y personales.", 10, NULL);
INSERT INTO Titulos (poster, titulo, categoria, resumen, temporadas, trailer)
VALUES ('/posters/13.jpg', 'Anne with an ''E''', 'Serie', 'Anne Shirley es una niña huérfana que vive en un pequeño pueblo llamado Avonlea que pertenece a la Isla del Príncipe Eduardo, en el año 1890. Después de una infancia difícil, donde fue pasando de orfanato a hogares de acogida, es enviada por error a vivir con una solterona y su hermano. Cuando cumple 13 años, Anne va a conseguir transformar su vida y el pequeño pueblo donde vive gracias a su fuerte personalidad, intelecto e imaginación. Basada en la inolvidable novela.', 2, NULL);
INSERT INTO Titulos (poster, titulo, categoria, resumen, temporadas, trailer)
VALUES ('/posters/14.jpg', 'Expedientes Secretos ''X''', 'Serie', 'Fox Mulder y Dana Scully son dos investigadores del FBI que investigan casos sin resolución ni explicación, ya sea por razones paranormales (espíritus, criaturas extrañas, aliens...) ya porque el gobierno se ha encargado de ocultar todo tipo de pruebas. Cuando Mulder tenía doce años, su hermana pequeña fue secuestrada por unos desconocidos, aunque él cree que, en realidad, fue abducida por extraterrestres. Tras acabar sus estudios en la universidad de Oxford, ingresó en la Academia de Quantico, donde se ganó el apodo de ''siniestro''', 11, 'https://www.youtube.com/embed/KKziOmsJxzE');
INSERT INTO Titulos (poster, titulo, categoria, resumen, temporadas, trailer)
VALUES ('/posters/15.jpg', 'Chernobyl', 'Serie', 'Sigue «la verdadera historia de una de las peores catástrofes provocadas por el hombre y habla de los valientes hombres y mujeres que se sacrificaron para salvar a Europa de un desastre inimaginable. La miniserie se centra en el desgarrador alcance del desastre de la planta nuclear que ocurrió en Ucrania en abril de 1986, revelando cómo y por qué ocurrió, además contando las sorprendentes y notables historias de los héroes que lucharon y cayeron.', 1, 'https://www.youtube.com/embed/s9APLXM9Ei8');
INSERT INTO Titulos (poster, titulo, categoria, resumen, temporadas, trailer)
VALUES ('/posters/16.jpg', 'Westworld', 'Serie', '\'Westworld\' es una oscura odisea acerca del amanecer de la conciencia artificial y la evolución del pecado. Situada en la intersección del futuro cercano y el pasado reimaginado, explora un mundo donde cada apetito humano, sin importar cuán noble o depravado, puede ser saciado. Está ambientada en un parque temático futurista dirigido por el Dr. Robert Ford (Anthony Hopkins). Las instalaciones cuentan con androides caracterizados del western americano, y gracias a ellos los visitantes pueden introducirse en cualquier tipo de fantasía por muy oscura que sea.', 3, 'https://www.youtube.com/embed/qLFBcdd6Qw0');
INSERT INTO Titulos (poster, titulo, categoria, resumen, temporadas, trailer)
VALUES ('/posters/17.jpg', 'Halt and Catch Fire', 'Serie', 'Situada en los inicios de la década de 1980, un visionario ficticio, un ingeniero electrónico y una prodigiosa ingeniera, se alían a una programadora de software para confrontar con las corporaciones informáticas dominantes de la época. El Personal de la firma y sus socios de negocio, comenzarán una carrera que cambiará la cultura en el Estado de Texas, cuna de las empresas de tecnología, casi de la misma forma que lo es hoy Silicon Valey. \n Esta historia ficticia emula el trabajo realizado, en su momento, por la firma Compaq, cuando clonó el BIOS de las Computadoras Personales IBM, dando vida así al económico mercado de los clones. Mostrando también, a lo largo de sus 4 temporadas, el nacimiento de la arquitectura abierta de hardware, los videojuegos online, las salas de chat y de trueque de productos físicos, los BBS, y las primeras nubes computacionales, hasta la llegada de Internet (sin dejar afuera la guerra de los web browsers).', 4, 'https://www.youtube.com/embed/pWrioRji60A');
INSERT INTO Titulos (poster, titulo, categoria, resumen, temporadas, trailer)
VALUES ('/posters/18.jpg', 'Ava', 'Película', 'Ava es una mortífera asesina a sueldo que trabaja para una organización de operaciones encubiertas, que viaja por todo el mundo acabando con aquellos objetivos que nadie más puede derribar. Cuando uno de sus encargos sale mal, Ava tendrá que luchar por una vida.', NULL,null);
INSERT INTO Titulos (poster, titulo, categoria, resumen, temporadas, trailer)
VALUES ('/posters/19.jpg', 'Aves de presa y la fantabulosa emancipación de una Harley Quinn', 'Película', 'Después de separarse de Joker, Harley Quinn y otras tres heroínas (Canario Negro, Cazadora y Renée Montoya) unen sus fuerzas para salvar a una niña (Cassandra Cain) del malvado rey del crimen Máscara Negra.', NULL, Null);
INSERT INTO Titulos (poster, titulo, categoria, resumen, temporadas, trailer)
VALUES ('/posters/20.jpg', 'Archivo', 'Película', '2038: George Almore está trabajando en una verdadera IA equivalente a la humana. Su último prototipo está casi listo. Esta fase sensible también es la más arriesgada. Especialmente porque tiene un objetivo que debe ocultarse a toda costa: reunirse con su esposa muerta.', NULL, 'https://www.youtube.com/embed/VHSoCnDioAo');
INSERT INTO Titulos (poster, titulo, categoria, resumen, temporadas, trailer)
VALUES ('/posters/21.jpg', 'Jumanji - The Next Level', 'Película', 'Las aventuras continúan en el fantástico mundo del videojuego Jumanji, donde nada es lo que parece. En esta ocasión, los jugadores vuelven al juego, pero sus personajes se han intercambiado entre sí, lo que ofrece un curioso plantel: los mismos héroes con distinta apariencia y habilidades. Pero, ¿dónde está el resto de la gente?', NULL, 'https://www.youtube.com/embed/rBxcF-r9Ibs');
INSERT INTO Titulos (poster, titulo, categoria, resumen, temporadas, trailer)
VALUES ('/posters/22.jpg', '3022', 'Película', 'La película está ambientada en una estación espacial en el futuro. La tripulación sufre un estrés traumático y considera abandonar su misión después de observar lo que creen que es la destrucción de la Tierra. La película se muestra como una serie de flashbacks y flash-forward.', NULL, 'https://www.youtube.com/embed/AGQ7OkmIx4Q');
INSERT INTO Titulos (poster, titulo, categoria, resumen, temporadas, trailer)
VALUES ('/posters/23.jpg', 'IT - Capítulo 2', 'Película', 'En este segundo capitulo Han pasado 27 años desde que el \'Club de los Perdedores\', formado por Bill, Berverly, Richie, Ben, Eddie, Mike y Stanley, se enfrentaran al macabro y despiadado Pennywise (Bill Skarsgård). En cuanto tuvieron oportunidad, abandonaron el pueblo de Derry, en el estado de Maine, que tantos problemas les había ocasionado. Sin embargo, ahora, siendo adultos, parece que no pueden escapar de su pasado. Todos deberán enfrentarse de nuevo al temible payaso para descubrir si de verdad están preparados para superar sus traumas de la infancia.', NULL, 'https://www.youtube.com/embed/hZeFeYSmBcg');
INSERT INTO Titulos (poster, titulo, categoria, resumen, temporadas, trailer)
VALUES ('/posters/24.jpg', 'Pantera Negra', 'Película','T’Challa (Chadwick Boseman) regresa a su hogar en la apartada nación africana de Wakanda para servir como líder de su país. Tras suceder a su padre en el trono, pasa a convertirse en Pantera Negra, una sigilosa criatura de la noche, con agudos sentidos felinos y otras habilidades como súper fuerza e inteligencia, agilidad, estrategia o maestro del combate sin armas. Es bajo el liderazgo de T’Challa como Wakanda consigue convertirse en una de las naciones más ricas y tecnológicamente avanzadas del planeta.', NULL, 'https://www.youtube.com/embed/BE6inv8Xh4A');
INSERT INTO Titulos (poster, titulo, categoria, resumen, temporadas, trailer)
VALUES ('/posters/25.jpg', 'Contra lo imposible (Ford versus Ferrari)', 'Película', 'Los ganadores del Premio de la Academia® Matt Damon y Christian Bale protagonizan CONTRA LO IMPOSIBLE, basada en la historia real del visionario diseñador americano de automóviles Carroll Shelby (Damon) y el intrépido piloto británico Ken Miles (Bale). Juntos construyen un nuevo coche de carreras para Ford Motor Company y así enfrentar a Enzo Ferrari en las 24 Horas de Le Mans en Francia en 1966.', NULL, 'https://www.youtube.com/embed/SOVb0-2g1Q0');
INSERT INTO Titulos (poster, titulo, categoria, resumen, temporadas, trailer)
VALUES ('/posters/26.jpg', 'Centígrados', 'Película', 'Una joven pareja estadounidense viaja a las montañas árticas de Noruega. Después de detenerse durante una tormenta de nieve, se despiertan atrapados en su SUV, enterrados bajo capas de nieve y hielo.', NULL, null);
INSERT INTO Titulos (poster, titulo, categoria, resumen, temporadas, trailer)
VALUES ('/posters/27.jpg', 'DOOM: Aniquilación', 'Película',  'Doom: Aniquilación sigue a un grupo de marines espaciales que han respondido a una llamada de alerta de una base en la luna marciana, solo para descubrir que ha sido tomada por criaturas demoníacas que amenazan con desatar el infierno en la tierra.', NULL, 'https://www.youtube.com/embed/nat3u3gAVLE');
INSERT INTO Titulos (poster, titulo, categoria, resumen, temporadas, trailer)
VALUES ('/posters/28.jpg', 'Contagio', 'Película', 'De repente, sin saber cuál es su origen, aunque todo hace sospechar que comienza con el viaje de una norteamericana a un casino de Hong Kong, un virus mortal comienza a propagarse por todo el mundo. En pocos días, la enfermedad empieza a diezmar a la población. El contagio se produce por mero contacto entre los seres humanos. Un thriller realista y sin efectos especiales sobre los efectos de una epidemia.', NULL, 'https://www.youtube.com/embed/4sYSyuuLk5g');
INSERT INTO Titulos (poster, titulo, categoria, resumen, temporadas, trailer)
VALUES ('/posters/29.jpg', 'Viuda Negra', 'Película', 'Primera película individual de la Viuda Negra en el universo cinematográfico de Marvel, contando su historia desde que se inició como doble agente rusa, su niñez, sus misiones, y su actualidad, después de Avengers.', NULL, 'https://www.youtube.com/embed/BIn8iANwEog');
INSERT INTO Titulos (poster, titulo, categoria, resumen, temporadas, trailer)
VALUES ('/posters/30.jpg', 'The Martian', 'Película', 'Durante una misión a Marte de la nave tripulada Ares III, una fuerte tormenta se desata dando por desaparecido y muerto al astronauta Mark Watney (Matt Damon), sus compañeros toman la decisión de irse pero él ha sobrevivido. Está solo y sin apenas recursos en el planeta. Con muy pocos medios deberá recurrir a sus conocimientos, su sentido del humor y un gran instinto de supervivencia para lograr sobrevivir y comunicar a la Tierra que todavía está vivo esperando que acudan en su rescate.', NULL, 'https://www.youtube.com/embed/XvB58bCVfng');
INSERT INTO Titulos (poster, titulo, categoria, resumen, temporadas, trailer)
VALUES ('/posters/31.jpg', 'Ex-Machina', 'Película', 'Un programador multimillonario selecciona a Caleb, un joven empleado de su empresa, para que pase una semana en un lugar remoto con el objetivo de que participe en un test en el que estará involucrada su última creación: un robot-mujer en el que inteligencia artificial lo es todo.', NULL, 'https://www.youtube.com/embed/XRYL5spvEcI');
INSERT INTO Titulos (poster, titulo, categoria, resumen, temporadas, trailer)
VALUES ('/posters/32.jpg', 'Jurassic World', 'Película', 'Veintidós años después de lo ocurrido en Jurassic Park, la isla Nublar ha sido transformada en un enorme parque temático, Jurassic World, con versiones «domesticadas» de algunos de los dinosaurios más conocidos. Cuando todo parece ir sobre ruedas y ser el negocio del siglo, un nuevo dinosaurio de especie desconocida, pues ha sido creado manipulando genéticamente su ADN, y que resulta ser mucho más inteligente de lo que se pensaba, se escapa de su recinto y comienza a causar estragos entre los visitantes del Parque.', NULL, NULL);
INSERT INTO Titulos (poster, titulo, categoria, resumen, temporadas, trailer)
VALUES ('/posters/33.jpg', 'Soy leyenda', 'Película', 'Años después de que una plaga mate a la mayoría de la humanidad y transforme al resto en monstruos, el único superviviente en la ciudad de Nueva York lucha valientemente para encontrar una cura.', NULL, 'https://www.youtube.com/embed/dtKMEAXyPkg');
INSERT INTO Titulos (poster, titulo, categoria, resumen, temporadas, trailer)
VALUES ('/posters/34.jpg', 'El primer hombre en la luna', 'Película',  'Cuenta la historia de la misión de la NASA que llevó al primer hombre a la luna, centrada en Neil Armstrong (interpretado por Ryan Gosling) y el periodo comprendido entre los años 1961 y 1969. Un relato en primera persona, basado en la novela de James R. Hansen, que explora el sacrificio y el precio que representó, tanto para Armstrong como para Estados Unidos, una de las misiones más peligrosas de la historia.', NULL, null);
INSERT INTO Titulos (poster, titulo, categoria, resumen, temporadas, trailer)
VALUES ('/posters/35.jpg', 'Titanes del Pacífico - La insurrección', 'Película', 'Han pasado 10 años tras la primera invasión que sufrió la humanidad, pero la lucha aún no ha terminado. El planeta vuelve a ser asediado por los Kaiju, una raza de alienígenas colosales, que emergen desde un portal interdimensional con el objetivo de destruir a la raza humana. Ante esta nueva amenaza, los Jaegers, robots gigantes de guerra pilotados por dos personas para sobrellevar la inmensa carga neuronal que conlleva manipularlos, ya no están a la altura de lo que se les viene encima. Será entonces cuando los supervivientes de la primera invasión, además de nuevos personajes como el hijo de Pentecost, tendrán que idear la manera de sorprender al enorme enemigo, apostando por nuevas estrategias defensivas y de ataque. Con la Tierra en ruinas e intentando reconstruirse, esta nueva batalla puede ser decisiva para el futuro.', NULL, NULL);

INSERT INTO Reparto (id, idTitulo, idActor)
VALUES (1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 2, 7),
(8, 2, 8),
(9, 2, 9),
(10, 2, 10),
(11, 2, 11),
(12, 2, 12),
(13, 3, 13),
(14, 3, 14),
(15, 3, 15),
(16, 3, 16),
(17, 3, 17),
(18, 3, 18),
(19, 4, 19),
(20, 4, 20),
(21, 4, 21),
(22, 4, 22),
(23, 4, 23),
(24, 4, 24),
(25, 5, 25),
(26, 5, 26),
(27, 5, 27),
(28, 5, 28),
(29, 5, 29),
(30, 5, 30),
(31, 6, 31),
(32, 6, 32),
(33, 6, 33),
(34, 6, 34),
(35, 6, 35),
(36, 6, 36),
(37, 7, 37),
(38, 7, 38),
(39, 7, 39),
(40, 7, 40),
(41, 7, 41),
(42, 7, 42),
(43, 8, 43),
(44, 8, 44),
(45, 8, 45),
(46, 8, 46),
(47, 8, 47),
(48, 8, 48),
(49, 9, 49),
(50, 9, 50),
(51, 9, 51),
(52, 9, 52),
(53, 9, 53),
(54, 9, 54),
(55, 10, 55),
(56, 10, 56),
(57, 10, 57),
(58, 10, 58),
(59, 10, 59),
(60, 10, 60),
(61, 11, 61),
(62, 11, 62),
(63, 11, 63),
(64, 11, 64),
(65, 11, 65),
(66, 11, 66),
(67, 11, 67),
(68, 12, 68),
(69, 12, 69),
(70, 12, 70),
(71, 12, 71),
(72, 12, 72),
(73, 12, 73),
(74, 13, 74),
(75, 13, 75),
(76, 13, 76),
(77, 13, 77),
(78, 13, 78),
(79, 13, 79),
(80, 14, 80),
(81, 14, 81),
(82, 14, 82),
(83, 14, 83),
(84, 14, 84),
(85, 14, 85),
(86, 15, 86),
(87, 15, 87),
(88, 15, 88),
(89, 15, 89),
(90, 15, 90),
(91, 15, 91),
(92, 16, 92),
(93, 16, 93),
(94, 16, 94),
(95, 16, 95),
(96, 16, 96),
(97, 16, 97),
(98, 17, 98),
(99, 17, 99),
(100, 17, 100),
(101, 17, 101),
(102, 17, 102),
(103, 17, 103),
(104, 18, 104),
(105, 18, 105),
(106, 18, 106),
(107, 18, 107),
(108, 18, 108),
(109, 18, 109),
(110, 19, 110),
(111, 19, 111),
(112, 19, 112),
(113, 19, 113),
(114, 19, 114),
(115, 19, 115),
(116, 20, 116),
(117, 20, 117),
(118, 20, 118),
(119, 20, 119),
(120, 20, 120),
(121, 20, 121),
(122, 21, 122),
(123, 21, 123),
(124, 21, 124),
(125, 21, 125),
(126, 21, 126),
(127, 22, 127),
(128, 22, 128),
(129, 22, 129),
(130, 22, 130),
(131, 22, 131),
(132, 22, 132),
(133, 22, 133),
(134, 23, 134),
(135, 23, 135),
(136, 23, 136),
(137, 23, 137),
(138, 23, 138),
(139, 23, 139),
(140, 24, 140),
(141, 24, 141),
(142, 24, 142),
(143, 24, 143),
(144, 25, 144),
(145, 25, 145),
(146, 25, 146),
(147, 25, 147),
(148, 25, 148),
(149, 25, 149),
(150, 25, 150),
(151, 25, 151),
(152, 26, 152),
(153, 26, 153),
(154, 26, 154),
(155, 26, 155),
(156, 27, 156),
(157, 27, 157),
(158, 27, 158),
(159, 27, 159),
(160, 27, 160),
(161, 27, 161),
(162, 28, 162),
(163, 28, 163),
(164, 28, 164),
(165, 28, 165),
(166, 28, 166),
(167, 28, 167),
(168, 28, 168),
(169, 29, 169),
(170, 29, 170),
(171, 29, 171),
(172, 29, 172),
(173, 29, 173),
(174, 29, 174),
(175, 29, 175),
(176, 30, 176),
(177, 30, 177),
(178, 30, 178),
(179, 30, 179),
(180, 30, 180),
(181, 30, 181),
(182, 30, 182),
(183, 31, 183),
(184, 31, 184),
(185, 31, 185),
(186, 31, 186),
(187, 31, 187),
(188, 31, 188),
(189, 31, 189),
(190, 32, 190),
(191, 32, 191),
(192, 32, 192),
(193, 32, 193),
(194, 32, 194),
(195, 32, 195),
(196, 32, 196),
(197, 33, 197),
(198, 33, 198),
(199, 33, 199),
(200, 33, 200),
(201, 33, 201),
(202, 33, 202),
(203, 33, 203),
(204, 34, 204),
(205, 34, 205),
(206, 34, 206),
(207, 34, 207),
(208, 34, 208),
(209, 35, 209),
(210, 35, 210),
(211, 35, 211),
(212, 35, 212),
(213, 35, 213),
(214, 35, 214),
(215, 35, 215);

INSERT INTO Catalogo (poster, titulo, categoria_id, genero_id, resumen, temporadas, reparto, trailer)
VALUES 
('/posters/1.jpg', 'The Crown', 1, 1, 'Este drama narra las rivalidades políticas y el romance de la reina Isabel II, así como los sucesos que moldearon la segunda mitad del siglo XX.', 4, 'Claire Fox, Olivia Colman, Matt Smith, Tobias Menzies, Vanesa Kirby, Helena Bonham Carter', null);
INSERT INTO Catalogo (poster, titulo, categoria_id, genero_id, resumen, temporadas, reparto, trailer)
VALUES 
('/posters/2.jpg', 'Riverdale', 1, 2, 'El paso a la edad adulta incluye sexo, romance, escuela y familia. Para Archie y sus amigos, también hay misterios oscuros.', 5, 'Lili Reinhart, Casey Cott, Camila Mendes, Marisol Nichols, Madelaine Petsch, Mädchen Amick', null);
INSERT INTO Catalogo (poster, titulo, categoria_id, genero_id, resumen, temporadas, reparto, trailer)
VALUES 
('/posters/3.jpg', 'The Mandalorian', 1, 3, 'Ambientada tras la caída del Imperio y antes de la aparición de la Primera Orden, la serie sigue los pasos de un pistolero solitario en las aventuras que protagoniza en los confines de la galaxia, donde no alcanza la autoridad de la Nueva República.', 2, 'Pedro Pascal, Carl Weathers, Misty Rosas, Chris Bartlett, Rio Hackford, Giancarlo Esposito', 'https://www.youtube.com/embed/aOC8E8z_ifw');
INSERT INTO Catalogo (poster, titulo, categoria_id, genero_id, resumen, temporadas, reparto, trailer)
VALUES 
('/posters/4.jpg', 'The Umbrella Academy', 1, 3, 'La muerte de su padre reúne a unos hermanos distanciados y con extraordinarios poderes que descubren impactantes secretos y una amenaza que se cierne sobre la humanidad.', 1, 'Tom Hopper, David Castañeda, Emmy Raver-Lampman, Robert Sheehan, Aidan Gallagher, Elliot Page', null);
INSERT INTO Catalogo (poster, titulo, categoria_id, genero_id, resumen, temporadas, reparto, trailer)
VALUES 
('/posters/5.jpg', 'Gambito de Dama', 1, 2, 'En los cincuenta, una joven de un orfanato descubre que tiene un increíble don para el ajedrez y recorre el arduo camino a la fama mientras lucha contra las adicciones.', 1, 'Anya Taylor-Joy, Thomas Brodie-Sangster, Harry Melling, Moses Ingram, Chloe Pirrie, Janina Elkin', null);
INSERT INTO Catalogo (poster, titulo, categoria_id, genero_id, resumen, temporadas, reparto, trailer)
VALUES 
('/posters/6.jpg', 'Enola Holmes', 2, 3, 'La hermana menor de Sherlock, descubre que su madre ha desaparecido y se dispone a encontrarla. En su búsqueda, saca a relucir el sabueso que corre por sus venas y se encuentra con una conspiración que gira en torno a un misterioso lord, demostrando que su ilustre hermano no es el único talento en la familia.', NULL, 'Millie Bobby Brown, Henry Cavill, Sam Claflin, Helena Bonham Carter, Louis Partridge, Adeel Akhtar', null);
INSERT INTO Catalogo (poster, titulo, categoria_id, genero_id, resumen, temporadas, reparto, trailer)
VALUES 
('/posters/7.jpg', 'Guasón', 2, 2, 'Arthur Fleck (Phoenix) es un hombre ignorado por la sociedad, cuya motivación en la vida es hacer reír. Pero una serie de trágicos acontecimientos le llevarán a ver el mundo de otra forma. Película basada en el popular personaje de DC Comics Joker, conocido como archivillano de Batman, pero que en este film tomará un cariz más realista y oscuro.', NULL, 'Joaquin Phoenix, Robert De Niro, Zazie Beetz, Frances Conroy, Brett Cullen, Shea Whigham', 'https://www.youtube.com/embed/zAGVQLHvwOY');
INSERT INTO Catalogo (poster, titulo, categoria_id, genero_id, resumen, temporadas, reparto, trailer)
VALUES 
('/posters/8.jpg', 'Avengers: Endgame', 2, 1, 'Después de los devastadores eventos de los Vengadores: Infinity War (2018), el universo está en ruinas. Con la ayuda de los aliados restantes, los Vengadores se reúnen una vez más para revertir las acciones de Thanos y restaurar el equilibrio del universo.', NULL, 'Robert Downey Jr., Chris Evans, Mark Ruffalo, Chris Hemsworth, Scarlett Johansson, Jeremy Renner', NULL);
INSERT INTO Catalogo (poster, titulo, categoria_id, genero_id, resumen, temporadas, reparto, trailer)
VALUES 
('/posters/9.jpg', 'Juego de Tronos', 1, 2, 'En un mundo fantástico y en un contexto medieval varias familias, relativas a la nobleza, se disputan el poder para dominar el territorio ficticio de Poniente (Westeros) y tomar el control de los Siete Reinos desde el Trono de Hierro, lugar donde el rey ejerce el poder.', 8, 'Emilia Clarke, Lena Headey, Sophie Turner, Kit Harington, Peter Dinklage, Nikolaj Coster-Waldau', NULL);
INSERT INTO Catalogo (poster, titulo, categoria_id, genero_id, resumen, temporadas, reparto, trailer)
VALUES 
('/posters/10.jpg', 'The Flash', 1, 2, 'Sigue las veloces aventuras de Barry Allen, un joven común y corriente con el deseo latente de ayudar a los demás. Cuando una inesperada partícula aceleradora golpea por accidente a Barry, de pronto se encuentra cargado de un increíble poder para moverse a increíbles velocidades. Mientras Barry siempre ha tenido el alma de un héroe, sus nuevos poderes le han dado la capacidad de actuar como tal.', 6, 'Grant Gustin, Carlos Valdes, Danielle Panabaker, Candice Patton, Jesse L. Martin, Tom Cavanagh', NULL);
INSERT INTO Catalogo (poster, titulo, categoria_id, genero_id, resumen, temporadas, reparto, trailer)
VALUES 
('/posters/11.jpg', 'The Big Bang Theory', 1, 3, 'Leonard y Sheldon son dos físicos que comparten trabajo y apartamento. La serie comienza con la mudanza de Penny, su nueva y atractiva vecina, y hace hincapié en la dificultad de los físicos para relacionarse con personas fuera de su entorno para dar lugar a situaciones cómicas.', 12, 'Jim Parsons, Johnny Galecki, Kaley Cuoco, Simon Helberg, Kunal Nayyar, Melissa Rauch, Mayim Bialik', 'https://www.youtube.com/embed/WBb3fojgW0Q');
INSERT INTO Catalogo (poster, titulo, categoria_id, genero_id, resumen, temporadas, reparto, trailer)
VALUES 
('/posters/12.jpg', 'Friends', 1, 5, "'Friends' narra las aventuras y desventuras de seis jóvenes de Nueva York: Rachel, Monica, Phoebe, Ross, Chandler y Joey. Ellos forman una unida pandilla de amigos que viven en Manhattan y que suelen reunirse en sus apartamentos o en su bar habitual cafetería, el Central Perk. A pesar de los numerosos cambios que se producen en sus vidas, su amistad es inquebrantable en la dura batalla por salir adelante en sus periplos profesionales y personales.", 10, 'Jennifer Aniston, Courteney Cox, Lisa Kudrow, David Schwimmer, Matthew Perry, Matt LeBlanc', null);
INSERT INTO Catalogo (poster, titulo, categoria_id, genero_id, resumen, temporadas, reparto, trailer)
VALUES 
('/posters/13.jpg', 'Anne with an ''E''', 1, 6, "'Anne Shirley es una niña huérfana que vive en un pequeño pueblo llamado Avonlea que pertenece a la Isla del Príncipe Eduardo, en el año 1890. Después de una infancia difícil, donde fue pasando de orfanato a hogares de acogida, es enviada por error a vivir con una solterona y su hermano. Cuando cumple 13 años, Anne va a conseguir transformar su vida y el pequeño pueblo donde vive gracias a su fuerte personalidad, intelecto e imaginación. Basada en la inolvidable novela.", 2, 'Amybeth McNulty, Geraldine James, R. H. Thomson, Corrine Koslo, Dalila Bela, Lucas Jade Zumann', null);
INSERT INTO Catalogo (poster, titulo, categoria_id, genero_id, resumen, temporadas, reparto, trailer)
VALUES 
('/posters/14.jpg', 'Expedientes Secretos ''X''', 1, 2, "'Fox Mulder y Dana Scully son dos investigadores del FBI que investigan casos sin resolución ni explicación, ya sea por razones paranormales (espíritus, criaturas extrañas, aliens...) ya porque el gobierno se ha encargado de ocultar todo tipo de pruebas. Cuando Mulder tenía doce años, su hermana pequeña fue secuestrada por unos desconocidos, aunque él cree que, en realidad, fue abducida por extraterrestres. Tras acabar sus estudios en la universidad de Oxford, ingresó en la Academia de Quantico, donde se ganó el apodo de ''siniestro''", 11, 'Gillian Anderson, David Duchovny, Mitch Pileggi, Robert Patrick, Tom Braidwood, Bruce Harwood', 'https://www.youtube.com/embed/KKziOmsJxzE');
INSERT INTO Catalogo (poster, titulo, categoria_id, genero_id, resumen, temporadas, reparto, trailer)
VALUES 
('/posters/15.jpg', 'Chernobyl', 1, 1, "'Sigue la verdadera historia de una de las peores catástrofes provocadas por el hombre y habla de los valientes hombres y mujeres que se sacrificaron para salvar a Europa de un desastre inimaginable. La miniserie se centra en el desgarrador alcance del desastre de la planta nuclear que ocurrió en Ucrania en abril de 1986, revelando cómo y por qué ocurrió, además contando las sorprendentes y notables historias de los héroes que lucharon y cayeron.'", 1, 'Jared Harris, Stellan Skarsgård, Emily Watson, Paul Ritter, Jessie Buckley, Adam Nagaitis', 'https://www.youtube.com/embed/s9APLXM9Ei8');
INSERT INTO Catalogo (poster, titulo, categoria_id, genero_id, resumen, temporadas, reparto, trailer)
VALUES 
('/posters/16.jpg', 'Westworld', 1, 3, "'Westworld' es una oscura odisea acerca del amanecer de la conciencia artificial y la evolución del pecado. Situada en la intersección del futuro cercano y el pasado reimaginado, explora un mundo donde cada apetito humano, sin importar cuán noble o depravado, puede ser saciado. Está ambientada en un parque temático futurista dirigido por el Dr. Robert Ford (Anthony Hopkins). Las instalaciones cuentan con androides caracterizados del western americano, y gracias a ellos los visitantes pueden introducirse en cualquier tipo de fantasía por muy oscura que sea.'", 3, 'Evan Rachel Wood, Thandie Newton, Jeffrey Wright, Tessa Thompson, Ed Harris, Luke Hemsworth', 'https://www.youtube.com/embed/qLFBcdd6Qw0');
INSERT INTO Catalogo (poster, titulo, categoria_id, genero_id, resumen, temporadas, reparto, trailer)
VALUES 
('/posters/17.jpg', 'Halt and Catch Fire', 1, 5, "Situada en los inicios de la década de 1980, un visionario ficticio, un ingeniero electrónico y una prodigiosa ingeniera, se alían a una programadora de software para confrontar con las corporaciones informáticas dominantes de la época. El Personal de la firma y sus socios de negocio, comenzarán una carrera que cambiará la cultura en el Estado de Texas, cuna de las empresas de tecnología, casi de la misma forma que lo es hoy Silicon Valey. \n Esta historia ficticia emula el trabajo realizado, en su momento, por la firma Compaq, cuando clonó el BIOS de las Computadoras Personales IBM, dando vida así al económico mercado de los clones. Mostrando también, a lo largo de sus 4 temporadas, el nacimiento de la arquitectura abierta de hardware, los videojuegos online, las salas de chat y de trueque de productos físicos, los BBS, y las primeras nubes computacionales, hasta la llegada de Internet (sin dejar afuera la guerra de los web browsers).", 4, 'Lee Pace, Scoot McNairy, Mackenzie Davis, Kerry Bishé, Toby Huss, Alana Cavanaugh', 'https://www.youtube.com/embed/pWrioRji60A');
INSERT INTO Catalogo (poster, titulo, categoria_id, genero_id, resumen, temporadas, reparto, trailer)
VALUES 
('/posters/18.jpg', 'Ava', 2, 7, "Ava es una mortífera asesina a sueldo que trabaja para una organización de operaciones encubiertas, que viaja por todo el mundo acabando con aquellos objetivos que nadie más puede derribar. Cuando uno de sus encargos sale mal, Ava tendrá que luchar por su vida.", NULL, 'Jessica Chastain, John Malkovich, Colin Farrell, Common, Geena Davis, Ioan Gruffudd', null);
INSERT INTO Catalogo (poster, titulo, categoria_id, genero_id, resumen, temporadas, reparto, trailer)
VALUES 
('/posters/19.jpg', 'Aves de presa y la fantabulosa emancipación de una Harley Quinn', 2, 1, 'Después de separarse de Joker, Harley Quinn y otras tres heroínas (Canario Negro, Cazadora y Renée Montoya) unen sus fuerzas para salvar a una niña (Cassandra Cain) del malvado rey del crimen Máscara Negra.', NULL, 'Margot Robbie, Ewan McGregor, Mary Elizabeth Winstead, Jurnee Smollett, Rosie Perez, Chris Messina', null);
INSERT INTO Catalogo (poster, titulo, categoria_id, genero_id, resumen, temporadas, reparto, trailer)
VALUES 
('/posters/20.jpg', 'Archivo', 2, 2, '2038: George Almore está trabajando en una verdadera IA equivalente a la humana. Su último prototipo está casi listo. Esta fase sensible también es la más arriesgada. Especialmente porque tiene un objetivo que debe ocultarse a toda costa: reunirse con su esposa muerta.', NULL, 'Stacy Martin, Rhona Mitra, Theo James, Peter Ferdinando, Lia Williams, Toby Jones', 'https://www.youtube.com/embed/VHSoCnDioAo');
INSERT INTO Catalogo (poster, titulo, categoria_id, genero_id, resumen, temporadas, reparto, trailer)
VALUES 
('/posters/21.jpg', 'Jumanji - The Next Level', 2, 6, 'Las aventuras continúan en el fantástico mundo del videojuego Jumanji, donde nada es lo que parece. En esta ocasión, los jugadores vuelven al juego, pero sus personajes se han intercambiado entre sí, lo que ofrece un curioso plantel: los mismos héroes con distinta apariencia y habilidades. Pero, ¿dónde está el resto de la gente?', NULL, 'Dwayne Johnson, Kevin Hart, Jack Black, Karen Gillan, Awkwafina, Nick Jonas', 'https://www.youtube.com/embed/rBxcF-r9Ibs');
INSERT INTO Catalogo (poster, titulo, categoria_id, genero_id, resumen, temporadas, reparto, trailer)
VALUES 
('/posters/22.jpg', '3022', 2, 7, 'La película está ambientada en una estación espacial en el futuro. La tripulación sufre un estrés traumático y considera abandonar su misión después de observar lo que creen que es la destrucción de la Tierra. La película se muestra como una serie de flashbacks y flash-forward.', NULL, 'Miranda Cosgrove, Kate Walsh, Omar Epps, Angus Macfadyen, Jorja Fox, Enver Gjokaj', 'https://www.youtube.com/embed/AGQ7OkmIx4Q');
INSERT INTO Catalogo (poster, titulo, categoria_id, genero_id, resumen, temporadas, reparto, trailer)
VALUES 
('/posters/23.jpg', 'IT - Capítulo 2', 2, 5, 'En este segundo capitulo Han pasado 27 años desde que el "Club de los Perdedores", formado por Bill, Berverly, Richie, Ben, Eddie, Mike y Stanley, se enfrentaran al macabro y despiadado Pennywise (Bill Skarsgård). En cuanto tuvieron oportunidad, abandonaron el pueblo de Derry, en el estado de Maine, que tantos problemas les había ocasionado. Sin embargo, ahora, siendo adultos, parece que no pueden escapar de su pasado. Todos deberán enfrentarse de nuevo al temible payaso para descubrir si de verdad están preparados para superar sus traumas de la infancia.', NULL, 'Bill Skarsgård, Jessica Chastain, Bill Hader, James McAvoy, Isaiah Mustafa, Jay Ryan', 'https://www.youtube.com/embed/hZeFeYSmBcg');
INSERT INTO Catalogo (poster, titulo, categoria_id, genero_id, resumen, temporadas, reparto, trailer)
VALUES 
('/posters/24.jpg', 'Pantera Negra', 2, 3, 'T’Challa (Chadwick Boseman) regresa a su hogar en la apartada nación africana de Wakanda para servir como líder de su país. Tras suceder a su padre en el trono, pasa a convertirse en Pantera Negra, una sigilosa criatura de la noche, con agudos sentidos felinos y otras habilidades como súper fuerza e inteligencia, agilidad, estrategia o maestro del combate sin armas. Es bajo el liderazgo de T’Challa como Wakanda consigue convertirse en una de las naciones más ricas y tecnológicamente avanzadas del planeta.', NULL, 'Chadwick Boseman, Michael B. Jordan, Lupita Nyong\'o, Danai Gurira, Martin Freeman, Daniel Kaluuya', 'https://www.youtube.com/embed/BE6inv8Xh4A');
INSERT INTO Catalogo (poster, titulo, categoria_id, genero_id, resumen, temporadas, reparto, trailer)
VALUES 
('/posters/25.jpg', 'Contra lo imposible (Ford versus Ferrari)', 2, 1, 'Los ganadores del Premio de la Academia® Matt Damon y Christian Bale protagonizan CONTRA LO IMPOSIBLE, basada en la historia real del visionario diseñador americano de automóviles Carroll Shelby (Damon) y el intrépido piloto británico Ken Miles (Bale). Juntos construyen un nuevo coche de carreras para Ford Motor Company y así enfrentar a Enzo Ferrari en las 24 Horas de Le Mans en Francia en 1966.', NULL, 'Christian Bale, Matt Damon, Caitriona Balfe, Josh Lucas, Noah Jupe, Jon Bernthal', 'https://www.youtube.com/embed/SOVb0-2g1Q0');
INSERT INTO Catalogo (poster, titulo, categoria_id, genero_id, resumen, temporadas, reparto, trailer)
VALUES 
('/posters/26.jpg', 'Centígrados', 2, 5, 'Una joven pareja estadounidense viaja a las montañas árticas de Noruega. Después de detenerse durante una tormenta de nieve, se despiertan atrapados en su SUV, enterrados bajo capas de nieve y hielo.', NULL, 'Génesis Rodríguez, Vincent Piazza, Benjamin Sokolow, Emily Bayiokos', null);
INSERT INTO Catalogo (poster, titulo, categoria_id, genero_id, resumen, temporadas, reparto, trailer)
VALUES 
('/posters/27.jpg', 'DOOM: Aniquilación', 2, 6, 'Doom: Aniquilación sigue a un grupo de marines espaciales que han respondido a una llamada de alerta de una base en la luna marciana, solo para descubrir que ha sido tomada por criaturas demoníacas que amenazan con desatar el infierno en la tierra.', NULL, 'Amy Manson, Luke Allen-Gale, Nina Bergman, Dominic Mafham, James Weber Brown, Lorina Kamburova', 'https://www.youtube.com/embed/nat3u3gAVLE');
INSERT INTO Catalogo (poster, titulo, categoria_id, genero_id, resumen, temporadas, reparto, trailer)
VALUES 
('/posters/28.jpg', 'Contagio', 2, 3, 'De repente, sin saber cuál es su origen, aunque todo hace sospechar que comienza con el viaje de una norteamericana a un casino de Hong Kong, un virus mortal comienza a propagarse por todo el mundo. En pocos días, la enfermedad empieza a diezmar a la población. El contagio se produce por mero contacto entre los seres humanos. Un thriller realista y sin efectos especiales sobre los efectos de una epidemia.', NULL, 'Marion Cotillard, Matt Damon, Laurence Fishburne, Jude Law, Kate Winslet, Jennifer Ehle, Gwyneth Paltrow', 'https://www.youtube.com/embed/4sYSyuuLk5g');
INSERT INTO Catalogo (poster, titulo, categoria_id, genero_id, resumen, temporadas, reparto, trailer)
VALUES 
('/posters/29.jpg', 'Viuda Negra', 2, 1, 'Primera película individual de la Viuda Negra en el universo cinematográfico de Marvel, contando su historia desde que se inició como doble agente rusa, su niñez, sus misiones y su actualidad después de Avengers.', NULL, 'Scarlett Johansson, Florence Pugh, David Harbour, O.T. Fagbenle, Rachel Weisz, William Hurt, Ray Winstone', 'https://www.youtube.com/embed/BIn8iANwEog');
INSERT INTO Catalogo (poster, titulo, categoria_id, genero_id, resumen, temporadas, reparto, trailer)
VALUES 
('/posters/30.jpg', 'The Martian', 2, 3, 'Durante una misión a Marte de la nave tripulada Ares III, una fuerte tormenta se desata dando por desaparecido y muerto al astronauta Mark Watney (Matt Damon), sus compañeros toman la decisión de irse pero él ha sobrevivido. Está solo y sin apenas recursos en el planeta. Con muy pocos medios deberá recurrir a sus conocimientos, su sentido del humor y un gran instinto de supervivencia para lograr sobrevivir y comunicar a la Tierra que todavía está vivo esperando que acudan en su rescate.', NULL, 'Matt Damon, Jessica Chastain, Kristen Wiig, Jeff Daniels, Michael Peña, Sean Bean, Kate Mara', 'https://www.youtube.com/embed/XvB58bCVfng');
INSERT INTO Catalogo (poster, titulo, categoria_id, genero_id, resumen, temporadas, reparto, trailer)
VALUES 
('/posters/31.jpg', 'Ex-Machina', 2, 3, 'Un programador multimillonario selecciona a Caleb, un joven empleado de su empresa, para que pase una semana en un lugar remoto con el objetivo de que participe en un test en el que estará involucrada su última creación: un robot-mujer en el que inteligencia artificial lo es todo.', NULL, 'Alicia Vikander, Domhnall Gleeson, Oscar Isaac, Sonoya Mizuno, Corey Johnson, Claire Selby, Gana Bayarsaikhan', 'https://www.youtube.com/embed/XRYL5spvEcI');
INSERT INTO Catalogo (poster, titulo, categoria_id, genero_id, resumen, temporadas, reparto, trailer)
VALUES 
('/posters/32.jpg', 'Jurassic World', 2, 2, 'Veintidós años después de lo ocurrido en Jurassic Park, la isla Nublar ha sido transformada en un enorme parque temático, Jurassic World, con versiones «domesticadas» de algunos de los dinosaurios más conocidos. Cuando todo parece ir sobre ruedas y ser el negocio del siglo, un nuevo dinosaurio de especie desconocida, pues ha sido creado manipulando genéticamente su ADN, y que resulta ser mucho más inteligente de lo que se pensaba, se escapa de su recinto y comienza a causar estragos entre los visitantes del Parque.', NULL, 'Bryce Dallas Howard, Chris Pratt, Irrfan Khan, Vincent D''Onofrio, Omar Sy, Nick Robinson, Judy Greer', null);
INSERT INTO Catalogo (poster, titulo, categoria_id, genero_id, resumen, temporadas, reparto, trailer)
VALUES 
('/posters/33.jpg', 'Soy leyenda', 2, 3, 'Años después de que una plaga mate a la mayoría de la humanidad y transforme al resto en monstruos, el único superviviente en la ciudad de Nueva York lucha valientemente para encontrar una cura.', NULL, 'Will Smith, Alice Braga, Charlie Tahan, Dash Mihok, Salli Richardson-Whitfield, Willow Smith, Emma Thompson', 'https://www.youtube.com/embed/dtKMEAXyPkg');
INSERT INTO Catalogo (poster, titulo, categoria_id, genero_id, resumen, temporadas, reparto, trailer)
VALUES 
('/posters/34.jpg', 'El primer hombre en la luna', 2, 7, 'Cuenta la historia de la misión de la NASA que llevó al primer hombre a la luna, centrada en Neil Armstrong (interpretado por Ryan Gosling) y el periodo comprendido entre los años 1961 y 1969. Un relato en primera persona, basado en la novela de James R. Hansen, que explora el sacrificio y el precio que representó, tanto para Armstrong como para Estados Unidos, una de las misiones más peligrosas de la historia.', NULL, 'Ryan Gosling, Claire Foy, Jason Clarke, Kyle Chandler, Corey Stoll, Patrick Fugit', null);
INSERT INTO Catalogo (poster, titulo, categoria_id, genero_id, resumen, temporadas, reparto, trailer)
VALUES 
('/posters/35.jpg', 'Titanes del pacífico - La insurrección', 2, 1, 'Han pasado 10 años tras la primera invasión que sufrió la humanidad, pero la lucha aún no ha terminado. El planeta vuelve a ser asediado por los Kaiju, una raza de alienígenas colosales, que emergen desde un portal interdimensional con el objetivo de destruir a la raza humana. Ante esta nueva amenaza, los Jaegers, robots gigantes de guerra pilotados por dos personas para sobrellevar la inmensa carga neuronal que conlleva manipularlos, ya no están a la altura de lo que se les viene encima. Será entonces cuando los supervivientes de la primera invasión, además de nuevos personajes como el hijo de Pentecost, tendrán que idear la manera de sorprender al enorme enemigo, apostando por nuevas estrategias defensivas y de ataque. Con la Tierra en ruinas e intentando reconstruirse, esta nueva batalla puede ser decisiva para el futuro.', NULL, 'John Boyega, Scott Eastwood, Cailee Spaeny, Jing Tian, Rinko Kikuchi, Burn Gorman', null);




















































