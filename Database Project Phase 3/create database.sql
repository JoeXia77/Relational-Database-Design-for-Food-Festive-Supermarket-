
drop database grocery_store;
create database grocery_store;
use grocery_store;

create table supplier(
	supplier_id int auto_increment,
	supplier_name varchar(100),
	primary key (supplier_id)
);

INSERT INTO `supplier` (`supplier_name`) VALUES ("Rahim Perry"),("Tyrone Nash"),("Brendan Stout"),("Marvin Hensley"),("Laith Leblanc"),("Clarke Dickerson"),("Gary Becker"),("Stuart Stone"),("Brenden Williamson"),("Lionel Hunt");
INSERT INTO `supplier` (`supplier_name`) VALUES ("Phelan Mosley"),("Simon Ochoa"),("Lucius Humphrey"),("Derek Valencia"),("Laith Morse"),("Wayne Boyd"),("Lev Kemp"),("Garrett Macias"),("Clark Gardner"),("Rogan Whitaker");
INSERT INTO `supplier` (`supplier_name`) VALUES ("Hector Morin"),("Nehru Marshall"),("Wallace Rose"),("Ralph Wagner"),("Kane Cleveland"),("Kyle Bolton"),("Lionel Cervantes"),("Barrett Shaw"),("Demetrius Salazar"),("Paul Vaughn");
INSERT INTO `supplier` (`supplier_name`) VALUES ("Prescott Cooper"),("Giacomo Madden"),("Laith Rivera"),("Caleb Parks"),("Ferdinand Hopper"),("Ali Alston"),("Aaron Shields"),("Nissim Gates"),("Ciaran Green"),("Abdul Decker");
INSERT INTO `supplier` (`supplier_name`) VALUES ("Christian Ray"),("Ian Cole"),("Shad Dunn"),("Reese Burgess"),("Bruno Wolfe"),("Tanek Williams"),("Logan Pacheco"),("Fitzgerald Sloan"),("Chaney Schroeder"),("Hayden Saunders");
INSERT INTO `supplier` (`supplier_name`) VALUES ("Vernon Valdez"),("Chancellor Lowery"),("Omar Wright"),("Phelan Welch"),("Amery Miranda"),("Dante Soto"),("Wyatt Wood"),("Hall Sanchez"),("Hunter Roberson"),("Ishmael Wall");
INSERT INTO `supplier` (`supplier_name`) VALUES ("Lance Griffith"),("Hector Navarro"),("Harding Beach"),("Micah Moody"),("Stone Swanson"),("Palmer Hubbard"),("Kaseem Gray"),("Darius Woodard"),("Evan Clemons"),("Erasmus Kane");
INSERT INTO `supplier` (`supplier_name`) VALUES ("Xavier Henson"),("Victor Bullock"),("Herrod Powers"),("Christopher Kirkland"),("Hamish Payne"),("Hyatt Vang"),("Kibo Mason"),("Gregory Macdonald"),("Christian Hill"),("Graham Dyer");
INSERT INTO `supplier` (`supplier_name`) VALUES ("Dexter Cabrera"),("Rafael Nielsen"),("Chaney Greene"),("Prescott Harrington"),("Isaiah Gaines"),("Cyrus Richmond"),("Magee Dominguez"),("Dorian Young"),("Malachi Tyler"),("Gareth Valenzuela");
INSERT INTO `supplier` (`supplier_name`) VALUES ("Lawrence Dotson"),("Russell Mcneil"),("Jackson Mcdowell"),("Kenneth Dorsey"),("Griffith Walls"),("Thane Hatfield"),("Nasim Parks"),("Andrew Fuentes"),("Melvin Wade"),("Hamish Coffey");



create table products(
	product_id int auto_increment,
	description varchar(255),
	quantity int not null,
	is_perishable boolean not null,
	date_of_expire date,
	supplier_id int,
	primary key (product_id),
	foreign key (supplier_id) references supplier (supplier_id)
);

INSERT INTO `products` (`quantity`,`is_perishable`,`date_of_expire`,`supplier_id`) VALUES (445,"0","2020-12-06",85),(243,"0","2019-11-01",9),(341,"0","2020-03-07",33),(49,"1","2019-07-22",73),(229,"1","2020-01-10",55),(306,"0","2019-08-02",2),(302,"0","2020-06-23",35),(6,"1","2019-12-18",98),(100,"0","2020-11-28",66),(210,"0","2019-08-29",58);
INSERT INTO `products` (`quantity`,`is_perishable`,`date_of_expire`,`supplier_id`) VALUES (310,"1","2021-03-19",49),(68,"1","2019-12-03",81),(335,"0","2021-01-16",94),(160,"1","2019-07-03",21),(24,"1","2019-11-28",52),(233,"1","2020-06-02",81),(252,"1","2019-05-10",23),(356,"0","2020-02-07",54),(149,"1","2020-02-05",21),(135,"0","2019-05-10",17);
INSERT INTO `products` (`quantity`,`is_perishable`,`date_of_expire`,`supplier_id`) VALUES (0,"1","2019-06-22",5),(277,"1","2020-03-11",42),(347,"0","2020-09-21",80),(157,"1","2019-05-11",87),(209,"1","2019-11-22",65),(289,"0","2021-03-07",63),(14,"0","2021-01-26",31),(379,"0","2019-09-14",48),(297,"0","2020-08-08",41),(348,"0","2020-02-15",91);
INSERT INTO `products` (`quantity`,`is_perishable`,`date_of_expire`,`supplier_id`) VALUES (211,"0","2019-09-19",37),(351,"0","2020-08-23",49),(363,"1","2020-06-20",11),(189,"0","2020-03-26",77),(485,"1","2020-06-16",14),(494,"1","2021-04-09",77),(48,"1","2019-07-28",90),(107,"1","2020-07-28",36),(83,"0","2020-10-18",38),(140,"1","2019-07-17",7);
INSERT INTO `products` (`quantity`,`is_perishable`,`date_of_expire`,`supplier_id`) VALUES (81,"1","2019-11-16",85),(65,"1","2021-01-01",58),(478,"1","2019-08-18",40),(1,"0","2021-01-21",11),(140,"1","2020-04-01",86),(464,"0","2019-08-23",50),(402,"1","2020-04-15",15),(203,"0","2019-06-05",90),(28,"1","2019-05-24",36),(495,"1","2019-07-22",17);
INSERT INTO `products` (`quantity`,`is_perishable`,`date_of_expire`,`supplier_id`) VALUES (0,"1","2019-08-15",43),(0,"0","2020-01-06",75),(382,"1","2020-09-21",73),(131,"1","2019-07-18",34),(90,"1","2020-10-13",87),(118,"1","2020-11-29",9),(432,"1","2019-11-03",19),(487,"0","2019-06-02",3),(25,"1","2021-02-09",84),(486,"1","2020-02-20",54);
INSERT INTO `products` (`quantity`,`is_perishable`,`date_of_expire`,`supplier_id`) VALUES (124,"0","2020-08-21",84),(83,"0","2019-08-05",16),(89,"1","2019-06-26",70),(109,"1","2021-03-31",19),(339,"1","2020-08-08",45),(457,"0","2019-05-03",82),(363,"1","2021-03-15",29),(61,"0","2020-03-03",60),(419,"1","2019-12-17",96),(269,"1","2020-02-02",87);
INSERT INTO `products` (`quantity`,`is_perishable`,`date_of_expire`,`supplier_id`) VALUES (403,"1","2019-07-19",32),(335,"1","2019-10-07",63),(349,"1","2021-03-25",3),(52,"1","2020-06-15",57),(27,"0","2021-03-23",2),(15,"0","2020-07-04",91),(130,"0","2019-12-02",74),(87,"0","2020-03-17",20),(469,"1","2019-08-10",20),(427,"1","2020-04-10",67);
INSERT INTO `products` (`quantity`,`is_perishable`,`date_of_expire`,`supplier_id`) VALUES (0,"0","2021-03-17",30),(407,"1","2020-06-10",67),(257,"1","2021-02-05",59),(234,"0","2019-06-17",68),(455,"0","2020-03-23",98),(1,"0","2020-02-16",20),(415,"0","2021-04-10",27),(52,"1","2020-03-07",80),(474,"0","2021-03-31",89),(289,"1","2019-08-09",18);
INSERT INTO `products` (`quantity`,`is_perishable`,`date_of_expire`,`supplier_id`) VALUES (19,"1","2021-01-09",51),(277,"0","2020-01-26",62),(233,"1","2021-04-08",37),(86,"0","2020-06-26",56),(249,"0","2019-08-23",44),(436,"1","2020-11-26",43),(1,"1","2019-12-16",88),(55,"0","2020-10-08",34),(189,"1","2020-06-03",66),(78,"0","2019-06-03",71);


create table supply_history(
	product_id int,
	record_id int,
	supply_date date,
	supply_quantity int,
	primary key (product_id, record_id),
	foreign key (product_id) references products (product_id)
);


INSERT INTO `supply_history` (`product_id`,`record_id`,`supply_date`,`supply_quantity`) VALUES (45,80,"2021-02-16",15),(41,81,"2020-05-27",35),(57,28,"2020-09-21",9),(19,38,"2019-10-22",4),(58,27,"2020-05-30",39),(92,34,"2019-10-25",46),(7,24,"2020-05-25",32),(40,2,"2021-01-27",15),(60,42,"2020-07-17",5),(4,4,"2020-09-06",8);
INSERT INTO `supply_history` (`product_id`,`record_id`,`supply_date`,`supply_quantity`) VALUES (95,23,"2021-03-04",43),(73,52,"2020-11-24",6),(27,40,"2019-06-23",42),(88,5,"2020-01-11",43),(26,52,"2021-01-16",50),(1,23,"2020-10-14",30),(99,75,"2020-10-27",18),(67,48,"2019-09-11",43),(72,60,"2020-10-12",40),(67,29,"2019-09-07",21);
INSERT INTO `supply_history` (`product_id`,`record_id`,`supply_date`,`supply_quantity`) VALUES (79,91,"2020-06-14",16),(4,56,"2019-07-31",1),(21,63,"2021-04-19",48),(5,39,"2019-07-13",42),(38,54,"2020-09-09",46),(12,69,"2019-12-19",3),(44,22,"2021-02-05",35),(58,78,"2019-05-12",14),(59,83,"2020-12-01",22),(81,48,"2019-12-29",32);
INSERT INTO `supply_history` (`product_id`,`record_id`,`supply_date`,`supply_quantity`) VALUES (23,53,"2020-04-24",47),(15,45,"2021-04-21",8),(63,1,"2019-12-18",8),(26,41,"2021-02-05",16),(69,21,"2019-08-16",5),(66,75,"2019-11-10",9),(8,47,"2021-03-09",45),(39,50,"2019-12-21",45),(61,97,"2020-10-09",3),(35,90,"2020-02-24",6);
INSERT INTO `supply_history` (`product_id`,`record_id`,`supply_date`,`supply_quantity`) VALUES (23,4,"2021-03-20",38),(2,59,"2020-04-25",37),(97,71,"2020-12-31",22),(95,94,"2021-01-03",37),(42,32,"2020-12-26",1),(55,47,"2020-04-24",1),(87,54,"2020-07-13",40),(31,82,"2021-03-22",47),(44,52,"2020-06-09",40),(100,34,"2021-04-19",26);
INSERT INTO `supply_history` (`product_id`,`record_id`,`supply_date`,`supply_quantity`) VALUES (79,14,"2020-05-16",10),(65,40,"2020-07-30",39),(98,30,"2020-10-09",12),(60,91,"2019-06-15",10),(64,75,"2020-12-16",32),(75,54,"2020-05-18",23),(44,70,"2020-10-03",32),(35,66,"2020-12-13",29),(4,78,"2021-01-31",48),(8,46,"2020-09-22",18);
INSERT INTO `supply_history` (`product_id`,`record_id`,`supply_date`,`supply_quantity`) VALUES (24,93,"2019-07-23",10),(100,68,"2020-06-18",3),(18,51,"2020-09-09",40),(48,64,"2019-11-18",7),(14,73,"2020-02-16",39),(66,85,"2019-10-17",14),(100,15,"2020-03-07",6),(12,59,"2019-06-07",12),(56,69,"2019-06-02",45),(83,44,"2020-11-09",6);
INSERT INTO `supply_history` (`product_id`,`record_id`,`supply_date`,`supply_quantity`) VALUES (47,24,"2020-06-19",7),(48,95,"2020-08-18",41),(46,29,"2020-10-30",22),(53,86,"2019-12-20",13),(47,10,"2019-08-20",50),(26,12,"2020-04-14",7),(49,1,"2019-09-14",36),(78,59,"2019-06-25",38),(58,20,"2019-06-20",43),(37,11,"2020-11-11",48);
INSERT INTO `supply_history` (`product_id`,`record_id`,`supply_date`,`supply_quantity`) VALUES (49,7,"2020-07-26",35),(21,76,"2019-06-27",2),(80,58,"2020-03-06",39),(82,27,"2019-10-09",40),(61,59,"2020-09-23",19),(78,90,"2019-05-03",2),(54,16,"2019-12-28",46),(7,40,"2019-06-11",48),(13,31,"2019-08-08",2),(9,15,"2020-02-10",9);
INSERT INTO `supply_history` (`product_id`,`record_id`,`supply_date`,`supply_quantity`) VALUES (92,43,"2020-05-15",6),(19,49,"2019-07-29",4),(70,65,"2020-06-01",16),(46,19,"2020-04-02",12),(32,74,"2020-11-12",10),(47,40,"2021-02-06",30),(91,90,"2019-05-06",33),(94,33,"2020-06-06",15),(70,15,"2019-06-21",21),(98,58,"2020-10-11",21);



create table person(
	id int auto_increment,
	first_name varchar(30) not null,
	middle_name varchar(30),
	last_name varchar(30) not null,
	address varchar(255),
	gender varchar(30),
	date_of_birth date,
	primary key(id)
);


INSERT INTO `person` (`first_name`,`last_name`,`address`,`gender`,`date_of_birth`) VALUES ("Nora","Caesar","Jhang","et","2019-11-22 "),("Irene","Hector","Pierrefonds","lorem","2019-11-06 "),("Alexis","Isaac","Eugene","auctor","2020-02-26 "),("Miranda","Barry","Holyhead","tincidunt","2020-05-07 "),("Phoebe","Jerry","Buckingham","eget,","2020-12-17 "),("Ria","Keith","Los Sauces","lectus","2020-06-28 "),("Zenia","Marshall","Avise","Mauris","2021-04-08 "),("Hedy","Erasmus","Daly","molestie","2020-11-06 "),("Angelica","Cadman","Huntsville","Fusce","2020-10-27 "),("Maggy","Brock","Harelbeke","Nullam","2020-01-25 ");
INSERT INTO `person` (`first_name`,`last_name`,`address`,`gender`,`date_of_birth`) VALUES ("Reagan","Joel","Cape Breton Island","Aenean","2021-02-20 "),("Chiquita","Trevor","Castle Douglas","In","2020-12-07 "),("Orli","Dorian","Harnai","auctor","2019-12-01 "),("Yvonne","Chester","Iksan","lectus","2019-07-19 "),("Ruby","Thomas","Vietri di Potenza","ac,","2019-09-27 "),("Bell","Erasmus","Comeglians","nonummy","2019-07-12 "),("Kellie","Nigel","Bairnsdale","ac","2020-05-10 "),("Darrel","Plato","Kozan","sed,","2020-01-26 "),("Claire","Barclay","Monfumo","est","2021-02-19 "),("Kirby","Berk","Delitzsch","imperdiet,","2020-05-17 ");
INSERT INTO `person` (`first_name`,`last_name`,`address`,`gender`,`date_of_birth`) VALUES ("Dora","Lionel","Queanbeyan","sapien","2020-01-20 "),("May","Gabriel","Les Bons Villers","ornare.","2020-07-26 "),("Maggie","Ishmael","Vienna","tellus.","2020-05-13 "),("Jaquelyn","Nero","Orai","enim.","2020-09-29 "),("Maryam","Emery","Guadalupe","interdum","2021-01-15 "),("Shelly","Graiden","Kashmore","Etiam","2019-07-03 "),("Scarlet","Brady","Habra","Mauris","2020-04-18 "),("Brielle","Zane","Jemeppe-sur-Meuse","at","2020-10-12 "),("Germaine","Troy","Bruderheim","lobortis","2019-05-05 "),("Melissa","Price","Calais","Nullam","2021-02-22 ");
INSERT INTO `person` (`first_name`,`last_name`,`address`,`gender`,`date_of_birth`) VALUES ("Maya","Christopher","Dunkerque","scelerisque","2020-11-26 "),("Imogene","Price","Detroit","Nam","2020-02-15 "),("Sopoline","Patrick","Pellezzano","id","2019-07-11 "),("Quin","Kennan","Villers-la-Ville","arcu.","2021-04-21 "),("Daria","Hayden","Brye","convallis","2020-10-16 "),("Jaime","Fulton","Billings","est.","2020-12-15 "),("Jordan","Ronan","Chimay","Fusce","2021-02-19 "),("Whilemina","Thaddeus","Zoerle-Parwijs","litora","2019-12-19 "),("Sybil","Noble","Dornoch","ipsum.","2019-07-29 "),("Whoopi","Amir","Soacha","commodo","2019-11-13 ");
INSERT INTO `person` (`first_name`,`last_name`,`address`,`gender`,`date_of_birth`) VALUES ("Hope","Thane","Neustadt","Phasellus","2020-12-29 "),("Rina","Andrew","Norderstedt","ac","2021-02-11 "),("Imelda","Matthew","Geoje","laoreet","2020-08-19 "),("Ann","Jin","Dilbeek","suscipit","2020-10-04 "),("Reagan","Lars","Worcester","nostra,","2021-02-16 "),("Hillary","Oliver","Markham","Nunc","2020-05-24 "),("Ashely","Lee","Solre-Saint-GŽry","sed","2019-05-03 "),("Bethany","Burke","Denver","justo","2020-12-03 "),("Dahlia","Boris","Bensheim","nisi","2020-09-20 "),("Zelda","Eaton","Sromness","egestas","2020-06-19 ");
INSERT INTO `person` (`first_name`,`last_name`,`address`,`gender`,`date_of_birth`) VALUES ("Zenaida","Yasir","Werder","quam.","2020-08-24 "),("Tatum","Eaton","Pitrufquén","in","2021-03-01 "),("Diana","Barry","San Chirico Nuovo","tincidunt","2019-04-29 "),("Michelle","Randall","Bengkulu","luctus","2020-05-17 "),("Vivian","Vladimir","Wolfville","at","2020-04-06 "),("Uta","Clark","Forge-Philippe","non,","2020-12-18 "),("Chastity","Joshua","Roccabruna","ac","2020-07-26 "),("Celeste","Bruce","Arbroath","semper","2020-02-22 "),("Iliana","Hiram","Uijeongbu","fringilla","2019-12-11 "),("Amber","Carlos","Billings","Cras","2021-04-24 ");
INSERT INTO `person` (`first_name`,`last_name`,`address`,`gender`,`date_of_birth`) VALUES ("Kessie","Gannon","Alix","per","2021-03-28 "),("Ashely","Jamal","Altmünster","mollis.","2020-12-11 "),("Ainsley","Guy","Jhang","ipsum","2020-06-13 "),("Marcia","Joseph","Los Muermos","tincidunt","2020-06-08 "),("Shay","Emery","Catanzaro","mi","2020-09-28 "),("Tatyana","Solomon","Bremen","molestie.","2019-09-22 "),("Delilah","Drake","Winnipeg","pellentesque","2020-02-15 "),("Rhonda","Colton","Calestano","eu","2020-09-17 "),("Callie","Xanthus","Manoppello","Ut","2020-05-07 "),("Sydney","Allistair","Dosquebradas","ac","2019-10-01 ");
INSERT INTO `person` (`first_name`,`last_name`,`address`,`gender`,`date_of_birth`) VALUES ("Molly","Owen","Shillong","Nam","2019-08-19 "),("Ramona","Timothy","Raurkela","varius.","2020-12-16 "),("Faith","Knox","Zapopan","Nullam","2020-11-07 "),("Mari","Kamal","Calestano","at","2019-10-19 "),("Kirsten","Hu","Gangneung","non,","2021-01-21 "),("Amber","Ralph","Samaniego","Ut","2020-11-14 "),("Wilma","Nicholas","Judenburg","euismod","2019-09-21 "),("Gemma","Caesar","Augusta","ligula","2019-09-10 "),("Rylee","Price","Barranco Minas","adipiscing,","2019-06-02 "),("Amethyst","Dorian","Invercargill","Etiam","2021-02-13 ");
INSERT INTO `person` (`first_name`,`last_name`,`address`,`gender`,`date_of_birth`) VALUES ("Jeanette","Chaney","Poggio Berni","aliquet,","2020-12-04 "),("Leilani","Stewart","Tula","auctor","2020-02-12 "),("Kylie","Gannon","Torre Cajetani","sed","2019-05-22 "),("Amanda","Deacon","Huechuraba","euismod","2020-07-11 "),("Kendall","Brett","Crescentino","molestie","2019-08-09 "),("Cassandra","Elvis","Coquitlam","non,","2021-02-18 "),("Brittany","Tarik","Toulon","fringilla","2020-12-09 "),("Regina","Ralph","Ambon","justo","2020-11-26 "),("Eve","Colton","Oranienburg","mi","2019-06-06 "),("Indigo","Malik","Taber","parturient","2019-08-14 ");
INSERT INTO `person` (`first_name`,`last_name`,`address`,`gender`,`date_of_birth`) VALUES ("Blythe","Harding","Chernogolovka","vitae","2021-03-18 "),("Constance","Tucker","Mobile","arcu.","2020-10-16 "),("Fiona","Beck","Sahiwal","risus.","2019-05-23 "),("Jessica","Craig","Seborga","ligula.","2021-04-13 "),("Cameran","Hayes","Morena","dui.","2020-10-04 "),("Germane","Dean","PiŽtrain","Sed","2020-04-02 "),("Rosalyn","Buckminster","Saint-Laurent","elit,","2019-11-07 "),("Patience","Kevin","Rycroft","tincidunt","2020-03-27 "),("Lysandra","Cade","Morhet","consectetuer","2019-12-20 "),("Patience","Emery","Lang","interdum","2020-03-08 ");



create table phone_number(
	person_id int,
	phone_number varchar(30),
	primary key (person_id, phone_number),
	foreign key(person_id) references person(id)
);

INSERT INTO `phone_number` (`person_id`,`phone_number`) VALUES (74,"(459) 446-3930"),(90,"(784) 491-4681"),(10,"(945) 932-5144"),(79,"(173) 603-6369"),(30,"(831) 915-7550"),(29,"(964) 251-1822"),(72,"(710) 527-8403"),(61,"(648) 199-7932"),(95,"(289) 658-5692"),(35,"(356) 264-7594");
INSERT INTO `phone_number` (`person_id`,`phone_number`) VALUES (52,"(213) 519-9948"),(41,"(502) 984-9445"),(43,"(701) 203-6696"),(53,"(685) 863-9212"),(97,"(318) 733-4536"),(16,"(427) 435-3317"),(7,"(698) 797-3711"),(77,"(977) 147-6221"),(63,"(965) 669-8164"),(70,"(402) 290-9066");
INSERT INTO `phone_number` (`person_id`,`phone_number`) VALUES (99,"(608) 593-1207"),(44,"(905) 957-3098"),(99,"(482) 227-2274"),(75,"(962) 914-3250"),(16,"(856) 128-9202"),(7,"(160) 500-1523"),(87,"(234) 642-8096"),(20,"(478) 808-0188"),(91,"(300) 183-7106"),(68,"(578) 260-3908");
INSERT INTO `phone_number` (`person_id`,`phone_number`) VALUES (40,"(448) 389-3324"),(90,"(708) 787-8850"),(25,"(698) 719-8819"),(50,"(723) 962-9760"),(44,"(485) 838-6087"),(89,"(832) 579-2761"),(91,"(485) 289-8896"),(11,"(536) 254-6487"),(46,"(760) 228-6983"),(80,"(541) 927-6888");
INSERT INTO `phone_number` (`person_id`,`phone_number`) VALUES (19,"(539) 349-3771"),(75,"(745) 350-2113"),(81,"(806) 226-3180"),(12,"(658) 556-5131"),(82,"(478) 921-4622"),(90,"(290) 233-8685"),(38,"(321) 521-8260"),(66,"(645) 734-3894"),(2,"(135) 846-0529"),(87,"(205) 426-3809");
INSERT INTO `phone_number` (`person_id`,`phone_number`) VALUES (24,"(359) 798-5424"),(95,"(128) 984-8031"),(91,"(931) 847-0555"),(70,"(771) 660-5910"),(18,"(637) 856-6126"),(97,"(825) 142-5018"),(89,"(158) 145-1834"),(1,"(755) 243-8360"),(32,"(482) 627-1133"),(80,"(989) 656-5006");
INSERT INTO `phone_number` (`person_id`,`phone_number`) VALUES (70,"(354) 283-2316"),(11,"(990) 644-2669"),(96,"(368) 452-1221"),(95,"(323) 352-9155"),(38,"(343) 503-9140"),(44,"(310) 340-8223"),(72,"(369) 683-2776"),(29,"(892) 267-7569"),(98,"(116) 580-0444"),(15,"(207) 542-7570");
INSERT INTO `phone_number` (`person_id`,`phone_number`) VALUES (83,"(335) 481-9033"),(77,"(762) 324-3032"),(94,"(103) 612-6800"),(32,"(499) 302-0923"),(62,"(383) 925-6741"),(50,"(260) 474-1564"),(11,"(580) 390-2325"),(83,"(330) 434-1486"),(44,"(968) 453-6513"),(68,"(295) 527-4863");
INSERT INTO `phone_number` (`person_id`,`phone_number`) VALUES (99,"(827) 807-5635"),(91,"(364) 712-7644"),(52,"(802) 382-3245"),(48,"(980) 709-6144"),(50,"(924) 541-7382"),(37,"(481) 585-1045"),(8,"(975) 150-6026"),(62,"(764) 628-1965"),(44,"(215) 846-0935"),(100,"(324) 409-1273");
INSERT INTO `phone_number` (`person_id`,`phone_number`) VALUES (50,"(255) 911-3611"),(58,"(296) 228-1137"),(70,"(198) 894-9869"),(44,"(330) 544-6629"),(58,"(891) 110-7506"),(70,"(768) 999-0127"),(53,"(472) 427-6514"),(2,"(202) 164-9922"),(95,"(565) 645-7942"),(38,"(203) 338-5536");




create table gold_customer(
	membership_id int auto_increment,
	enrolled_date date,
	primary key(membership_id)
);


INSERT INTO `gold_customer` (`enrolled_date`) VALUES ("2020-08-20"),("2019-08-31"),("2021-04-20"),("2019-07-25"),("2020-10-04"),("2020-09-10"),("2019-05-13"),("2020-03-22"),("2021-04-26"),("2019-10-08");
INSERT INTO `gold_customer` (`enrolled_date`) VALUES ("2020-07-16"),("2019-09-07"),("2020-03-23"),("2020-09-05"),("2019-11-25"),("2020-04-18"),("2019-11-26"),("2020-09-29"),("2019-10-18"),("2020-07-26");
INSERT INTO `gold_customer` (`enrolled_date`) VALUES ("2020-06-11"),("2020-09-07"),("2021-02-20"),("2020-01-05"),("2021-01-09"),("2020-03-14"),("2020-11-19"),("2019-09-05"),("2019-12-30"),("2019-08-05");
INSERT INTO `gold_customer` (`enrolled_date`) VALUES ("2020-09-05"),("2020-05-14"),("2020-08-05"),("2021-02-21"),("2020-08-30"),("2020-03-16"),("2020-09-05"),("2019-10-29"),("2019-06-07"),("2020-04-01");
INSERT INTO `gold_customer` (`enrolled_date`) VALUES ("2020-02-02"),("2019-07-28"),("2019-10-23"),("2021-03-02"),("2019-11-26"),("2019-06-03"),("2019-09-17"),("2020-04-09"),("2019-09-08"),("2019-11-27");
INSERT INTO `gold_customer` (`enrolled_date`) VALUES ("2020-10-19"),("2020-02-07"),("2021-03-18"),("2020-10-10"),("2020-02-29"),("2020-12-28"),("2019-12-27"),("2020-08-21"),("2019-08-30"),("2021-01-08");
INSERT INTO `gold_customer` (`enrolled_date`) VALUES ("2021-02-15"),("2020-03-01"),("2019-11-16"),("2020-01-13"),("2020-12-10"),("2019-07-15"),("2020-03-31"),("2020-11-16"),("2020-10-28"),("2019-10-29");
INSERT INTO `gold_customer` (`enrolled_date`) VALUES ("2019-12-28"),("2020-11-30"),("2020-11-28"),("2020-11-22"),("2019-12-28"),("2019-07-12"),("2019-05-09"),("2020-05-18"),("2020-03-25"),("2019-12-24");
INSERT INTO `gold_customer` (`enrolled_date`) VALUES ("2020-06-26"),("2019-07-08"),("2020-04-26"),("2020-06-12"),("2020-08-05"),("2020-03-31"),("2020-09-03"),("2020-05-11"),("2019-10-14"),("2020-04-14");
INSERT INTO `gold_customer` (`enrolled_date`) VALUES ("2019-08-17"),("2020-04-17"),("2021-04-07"),("2019-07-15"),("2019-08-13"),("2021-03-22"),("2021-01-21"),("2019-08-26"),("2021-01-27"),("2020-07-13");



create table membership_card(
	membership_id int,
	card_number int not null,
	date_of_issue date not null,
	primary key (membership_id),
	foreign key(membership_id) references gold_customer(membership_id)
);


INSERT INTO `membership_card` (`membership_id`,`card_number`,`date_of_issue`) VALUES (1,84157,"2020-04-26"),(2,90090,"2021-03-09"),(3,16997,"2019-11-28"),(4,86032,"2020-01-27"),(5,99610,"2021-04-12"),(6,67789,"2019-07-08"),(7,40127,"2019-05-28"),(8,73115,"2021-01-24"),(9,74605,"2020-05-18"),(10,26983,"2020-02-16");
INSERT INTO `membership_card` (`membership_id`,`card_number`,`date_of_issue`) VALUES (11,44103,"2020-04-14"),(12,19681,"2021-02-21"),(13,94156,"2020-03-16"),(14,11230,"2021-01-14"),(15,22333,"2020-05-30"),(16,29216,"2020-12-14"),(17,37653,"2020-06-28"),(18,26374,"2021-02-04"),(19,56632,"2020-08-22"),(20,36652,"2020-04-05");
INSERT INTO `membership_card` (`membership_id`,`card_number`,`date_of_issue`) VALUES (21,12105,"2019-07-12"),(22,79388,"2019-06-17"),(23,87602,"2020-07-09"),(24,18144,"2019-10-11"),(25,88153,"2019-08-27"),(26,54018,"2021-01-02"),(27,34729,"2021-04-15"),(28,66131,"2020-03-26"),(29,14310,"2021-03-17"),(30,28210,"2020-11-13");
INSERT INTO `membership_card` (`membership_id`,`card_number`,`date_of_issue`) VALUES (31,11909,"2020-04-26"),(32,48363,"2019-12-03"),(33,64675,"2020-06-05"),(34,11909,"2020-02-18"),(35,65501,"2020-07-14"),(36,16399,"2020-07-13"),(37,75290,"2020-12-28"),(38,76580,"2019-06-27"),(39,12536,"2019-05-04"),(40,54379,"2021-02-01");
INSERT INTO `membership_card` (`membership_id`,`card_number`,`date_of_issue`) VALUES (41,15387,"2020-06-09"),(42,80382,"2019-11-03"),(43,49491,"2021-02-27"),(44,60963,"2021-01-18"),(45,80491,"2019-09-18"),(46,37362,"2021-01-31"),(47,52468,"2020-09-06"),(48,92781,"2020-06-04"),(49,23532,"2020-10-17"),(50,79029,"2020-08-18");
INSERT INTO `membership_card` (`membership_id`,`card_number`,`date_of_issue`) VALUES (51,10975,"2020-09-17"),(52,67408,"2020-09-08"),(53,66540,"2020-12-13"),(54,28376,"2021-03-28"),(55,39930,"2019-12-15"),(56,61591,"2020-04-04"),(57,98200,"2020-05-20"),(58,46969,"2020-11-26"),(59,13493,"2021-02-20"),(60,27812,"2021-02-04");
INSERT INTO `membership_card` (`membership_id`,`card_number`,`date_of_issue`) VALUES (61,92211,"2021-04-13"),(62,41281,"2020-10-23"),(63,97759,"2020-10-27"),(64,53760,"2020-12-26"),(65,55135,"2020-03-08"),(66,89345,"2019-09-20"),(67,41799,"2020-05-07"),(68,68974,"2019-05-06"),(69,37840,"2019-08-28"),(70,64347,"2019-06-01");
INSERT INTO `membership_card` (`membership_id`,`card_number`,`date_of_issue`) VALUES (71,31827,"2020-01-26"),(72,71786,"2019-08-04"),(73,61185,"2019-12-22"),(74,95136,"2019-06-27"),(75,30494,"2020-03-12"),(76,14265,"2021-03-23"),(77,30199,"2019-08-02"),(78,69796,"2021-04-17"),(79,98497,"2021-04-05"),(80,76920,"2019-12-27");
INSERT INTO `membership_card` (`membership_id`,`card_number`,`date_of_issue`) VALUES (81,85711,"2020-08-07"),(82,67969,"2020-10-07"),(83,35776,"2020-01-30"),(84,29943,"2019-10-31"),(85,24836,"2021-03-30"),(86,33161,"2020-03-11"),(87,76394,"2020-06-29"),(88,83731,"2020-05-05"),(89,28997,"2019-06-09"),(90,96736,"2019-09-20");
INSERT INTO `membership_card` (`membership_id`,`card_number`,`date_of_issue`) VALUES (91,36272,"2020-05-16"),(92,34166,"2020-01-05"),(93,33546,"2020-12-17"),(94,75321,"2020-07-12"),(95,73660,"2021-01-29"),(96,25725,"2019-12-24"),(97,83664,"2019-08-13"),(98,59085,"2021-03-15"),(99,39716,"2019-08-30"),(100,80183,"2020-02-16");



create table aisle(
	section varchar(10),
	aisle_number int,
	primary key(section, aisle_number)
);





create table employee(
	person_id int,
	employee_type varchar(40),
	employment_date date,
	cashier_designation_date date,
	manager_designation_date date,
	membership_id int,
	primary key(person_id),
	foreign key(person_id) references person(id),
	foreign key(membership_id) references gold_customer(membership_id)
);


INSERT INTO `employee` (`person_id`,`employee_type`,`employment_date`,`cashier_designation_date`,`manager_designation_date`,`membership_id`) VALUES (1,"manager","2020-11-12","2020-10-20","2019-11-06",5),(2,"vulputate,","2020-04-13","2020-08-06","2019-09-08",39),(3,"Nunc","2019-09-13","2019-10-26","2020-07-17",80),(4,"ante","2020-09-01","2021-03-03","2019-12-04",98),(5,"aliquet","2020-08-18","2019-09-20","2020-12-30",10),(6,"consectetuer","2020-01-20","2019-09-23","2021-02-23",77),(7,"Sed","2021-02-13","2020-02-16","2020-01-09",89),(8,"luctus","2020-12-24","2020-10-04","2020-08-25",26),(9,"ante","2020-07-21","2020-10-14","2020-06-16",30),(10,"eu","2020-02-08","2020-10-03","2020-12-18",90);
INSERT INTO `employee` (`person_id`,`employee_type`,`employment_date`,`cashier_designation_date`,`manager_designation_date`,`membership_id`) VALUES (11,"manager,","2021-01-06","2020-08-15","2020-04-24",10),(12,"interdum.","2020-08-15","2019-10-10","2019-12-28",64),(13,"vitae","2019-06-05","2020-07-04","2020-12-28",51),(14,"quis,","2020-10-25","2020-07-29","2020-06-16",15),(15,"non","2019-10-26","2020-03-05","2020-09-21",73),(16,"vehicula.","2021-04-02","2020-08-28","2021-02-22",24),(17,"Aenean","2020-08-03","2021-01-20","2019-06-23",60),(18,"Morbi","2020-11-01","2020-12-27","2020-04-01",30),(19,"sit","2020-02-23","2019-06-30","2020-11-14",14),(20,"a","2020-07-09","2020-08-02","2020-01-31",61);
INSERT INTO `employee` (`person_id`,`employee_type`,`employment_date`,`cashier_designation_date`,`manager_designation_date`,`membership_id`) VALUES (21,"ut","2020-07-28","2019-05-26","2019-11-20",62),(22,"Suspendisse","2020-12-31","2020-12-20","2021-04-28",49),(23,"conubia","2020-07-04","2020-08-18","2019-12-27",48),(24,"eu","2019-11-17","2020-03-25","2020-12-16",12),(25,"vel","2019-06-28","2020-06-06","2020-03-06",100),(26,"nec","2020-08-03","2020-10-06","2020-12-14",74),(27,"non","2019-08-21","2021-01-15","2019-09-10",75),(28,"nulla.","2021-02-23","2021-03-31","2020-01-16",55),(29,"ut","2019-10-26","2020-05-29","2021-04-23",95),(30,"Donec","2019-06-11","2021-01-14","2021-04-23",30);
INSERT INTO `employee` (`person_id`,`employee_type`,`employment_date`,`cashier_designation_date`,`manager_designation_date`,`membership_id`) VALUES (31,"manager","2020-01-18","2021-02-27","2020-11-06",94),(32,"vestibulum","2020-02-04","2020-02-06","2021-01-01",49),(33,"dictum","2021-01-08","2020-08-28","2020-11-08",50),(34,"nulla.","2019-12-09","2021-04-20","2020-06-12",4),(35,"elit.","2019-05-26","2021-03-15","2020-09-16",49),(36,"Morbi","2020-10-22","2019-05-15","2020-06-21",8),(37,"ante","2021-01-26","2019-07-24","2020-03-07",24),(38,"ligula.","2019-09-12","2019-09-06","2019-07-25",96),(39,"nec","2019-08-16","2019-11-28","2020-01-17",71),(40,"tincidunt","2020-06-25","2019-12-27","2021-04-24",94);
INSERT INTO `employee` (`person_id`,`employee_type`,`employment_date`,`cashier_designation_date`,`manager_designation_date`,`membership_id`) VALUES (41,"manager","2020-09-20","2020-11-01","2020-12-03",4),(42,"et,","2020-02-19","2020-07-20","2021-03-12",2),(43,"lorem","2021-03-27","2019-08-20","2021-04-20",33),(44,"semper","2021-03-01","2020-10-28","2020-01-13",1),(45,"malesuada","2019-05-02","2020-09-08","2021-03-10",95),(46,"scelerisque","2020-02-05","2019-06-29","2019-05-03",10),(47,"fringilla","2019-12-26","2019-05-08","2019-07-01",78),(48,"Phasellus","2020-03-16","2020-11-26","2020-10-30",81),(49,"vitae","2020-03-15","2021-04-02","2019-05-14",78),(50,"at","2020-05-13","2019-06-30","2020-11-10",80);
INSERT INTO `employee` (`person_id`,`employee_type`,`employment_date`,`cashier_designation_date`,`manager_designation_date`,`membership_id`) VALUES (51,"manager","2020-11-05","2021-01-18","2020-07-31",49),(52,"bibendum","2020-01-25","2019-07-30","2020-11-29",14),(53,"felis.","2019-08-19","2019-09-16","2021-02-16",73),(54,"et","2021-01-11","2020-09-21","2020-12-03",82),(55,"dictum","2020-07-02","2020-07-18","2021-02-25",79),(56,"non","2020-09-26","2020-01-18","2020-07-31",17),(57,"dolor","2019-08-09","2020-01-24","2019-09-17",69),(58,"amet,","2019-11-14","2019-05-07","2020-03-24",62),(59,"mollis.","2019-06-22","2020-08-10","2020-04-06",89),(60,"ipsum","2019-12-21","2021-02-06","2021-01-15",88);
INSERT INTO `employee` (`person_id`,`employee_type`,`employment_date`,`cashier_designation_date`,`manager_designation_date`,`membership_id`) VALUES (61,"iaculis,","2020-11-03","2019-05-28","2020-09-26",8),(62,"eu","2021-01-08","2019-12-15","2019-10-14",46),(63,"amet","2019-08-06","2020-02-19","2021-03-27",29),(64,"egestas,","2020-02-27","2019-08-27","2021-01-24",33),(65,"tempor","2019-11-08","2020-04-20","2020-06-12",77),(66,"risus,","2020-09-20","2019-08-25","2019-11-14",17),(67,"Nunc","2019-11-15","2020-07-13","2021-03-10",30),(68,"Nam","2020-01-25","2020-10-15","2019-09-26",48),(69,"nisi","2020-07-09","2020-12-22","2020-06-29",13),(70,"scelerisque","2019-08-30","2019-12-19","2020-05-25",82);
INSERT INTO `employee` (`person_id`,`employee_type`,`employment_date`,`cashier_designation_date`,`manager_designation_date`,`membership_id`) VALUES (71,"manager","2020-04-21","2020-06-27","2020-07-30",6),(72,"metus.","2020-08-03","2021-03-25","2020-05-15",25),(73,"amet","2020-05-28","2021-02-01","2020-04-25",44),(74,"enim.","2020-05-30","2020-01-01","2020-10-10",26),(75,"natoque","2019-09-02","2019-12-19","2019-08-09",74),(76,"neque","2020-02-19","2020-12-03","2021-03-11",90),(77,"ipsum.","2020-07-10","2021-03-23","2020-08-03",18),(78,"libero","2020-03-07","2019-08-04","2019-08-27",57),(79,"egestas.","2020-10-08","2020-05-26","2020-07-09",63),(80,"leo.","2021-02-11","2020-12-03","2020-10-10",68);
INSERT INTO `employee` (`person_id`,`employee_type`,`employment_date`,`cashier_designation_date`,`manager_designation_date`,`membership_id`) VALUES (81,"manager","2019-07-11","2020-02-22","2020-12-01",1),(82,"orci","2019-06-13","2021-03-16","2019-05-12",89),(83,"Nulla","2020-07-21","2020-05-22","2021-04-08",98),(84,"pede","2019-07-29","2020-03-06","2020-06-05",18),(85,"rutrum,","2020-12-16","2020-05-02","2019-05-08",91),(86,"lectus","2021-03-29","2020-08-06","2020-12-06",99),(87,"nibh","2020-01-27","2020-08-24","2020-11-26",36),(88,"felis","2020-01-23","2019-05-25","2020-09-15",79),(89,"orci","2020-04-04","2020-02-14","2020-04-10",35),(90,"Proin","2019-05-24","2020-10-24","2020-10-07",67);
INSERT INTO `employee` (`person_id`,`employee_type`,`employment_date`,`cashier_designation_date`,`manager_designation_date`,`membership_id`) VALUES (91,"manager","2020-09-25","2020-06-07","2020-04-01",93),(92,"nec","2019-10-21","2020-03-12","2019-05-25",62),(93,"odio","2020-07-24","2020-07-01","2019-10-31",86),(94,"id,","2020-07-30","2019-08-31","2020-05-06",59),(95,"fringilla.","2019-06-26","2019-05-29","2020-07-28",63),(96,"Integer","2019-12-23","2021-02-13","2020-04-29",54),(97,"euismod","2020-05-31","2020-11-26","2019-11-18",41),(98,"eleifend,","2020-04-26","2019-05-24","2019-10-28",94),(99,"aliquet","2019-09-12","2020-01-09","2020-09-14",15),(100,"et","2019-09-17","2021-01-25","2020-10-05",45);



create table product_aisle_assignment(
	person_id int,
	aisle_section varchar(10),
	aisle_number int,
	product_id int,
	date_of_assignment date,
	primary key (person_id, aisle_section, aisle_number, product_id),
	foreign key(person_id) references employee(person_id),
	foreign key(product_id) references products(product_id),
	foreign key(aisle_section, aisle_number) references aisle(section, aisle_number)
);




create table silver_customer(
	person_id int,
	non_online_customer_flag boolean not null,
	online_customer_flag boolean not null,
	email_address varchar(255),
	start_date date,
	membership_id int,
	primary key (person_id),
	foreign key(membership_id) references gold_customer(membership_id),
	foreign key (person_id) references person (id)
);

INSERT INTO `silver_customer` (`person_id`,`non_online_customer_flag`,`online_customer_flag`,`start_date`,`membership_id`) VALUES (1,"1","1","2020-06-16",22),(2,"1","0","2020-01-23",94),(3,"1","1","2020-09-29",94),(4,"0","0","2020-01-27",31),(5,"0","0","2020-01-07",87),(6,"0","1","2019-10-16",78),(7,"1","1","2020-12-03",31),(8,"1","0","2019-09-26",99),(9,"0","1","2020-04-25",61),(10,"0","1","2019-10-11",20);
INSERT INTO `silver_customer` (`person_id`,`non_online_customer_flag`,`online_customer_flag`,`start_date`,`membership_id`) VALUES (11,"0","0","2020-08-17",66),(12,"1","0","2020-09-10",15),(13,"0","1","2019-05-30",59),(14,"1","0","2021-04-21",85),(15,"0","0","2021-02-01",3),(16,"0","0","2020-05-24",2),(17,"1","1","2021-04-10",94),(18,"0","1","2020-10-19",80),(19,"0","0","2020-06-21",60),(20,"1","1","2020-01-21",8);
INSERT INTO `silver_customer` (`person_id`,`non_online_customer_flag`,`online_customer_flag`,`start_date`,`membership_id`) VALUES (21,"0","0","2019-06-11",85),(22,"1","0","2020-12-11",40),(23,"1","0","2020-03-21",77),(24,"0","1","2020-03-04",20),(25,"1","1","2019-09-18",34),(26,"1","0","2019-05-14",100),(27,"0","0","2020-02-21",48),(28,"1","1","2020-09-11",46),(29,"1","0","2020-03-01",48),(30,"1","0","2019-08-05",79);
INSERT INTO `silver_customer` (`person_id`,`non_online_customer_flag`,`online_customer_flag`,`start_date`,`membership_id`) VALUES (31,"1","1","2020-01-03",99),(32,"0","0","2019-05-28",43),(33,"0","1","2020-09-10",59),(34,"1","1","2019-11-14",47),(35,"0","1","2020-01-09",16),(36,"0","1","2020-08-09",32),(37,"0","0","2021-01-29",16),(38,"0","0","2020-10-30",89),(39,"0","1","2019-07-02",64),(40,"0","1","2020-05-31",97);
INSERT INTO `silver_customer` (`person_id`,`non_online_customer_flag`,`online_customer_flag`,`start_date`,`membership_id`) VALUES (41,"0","1","2021-02-18",80),(42,"1","0","2020-12-18",58),(43,"0","0","2019-07-29",20),(44,"0","1","2019-10-04",33),(45,"0","0","2019-12-30",81),(46,"0","1","2019-07-13",20),(47,"1","1","2019-11-26",80),(48,"0","1","2021-03-23",30),(49,"1","1","2020-09-17",27),(50,"1","1","2019-06-30",94);
INSERT INTO `silver_customer` (`person_id`,`non_online_customer_flag`,`online_customer_flag`,`start_date`,`membership_id`) VALUES (51,"0","1","2021-02-26",76),(52,"0","0","2019-08-23",78),(53,"1","1","2020-06-22",25),(54,"1","0","2020-10-24",74),(55,"1","1","2020-01-14",4),(56,"1","0","2020-02-26",6),(57,"0","0","2021-04-23",30),(58,"0","1","2020-01-28",94),(59,"0","0","2020-09-27",50),(60,"0","0","2020-01-01",8);
INSERT INTO `silver_customer` (`person_id`,`non_online_customer_flag`,`online_customer_flag`,`start_date`,`membership_id`) VALUES (61,"1","1","2020-06-20",89),(62,"1","1","2021-01-24",93),(63,"1","1","2020-04-26",87),(64,"0","0","2020-11-19",49),(65,"1","1","2021-01-12",44),(66,"1","1","2021-03-10",58),(67,"1","1","2020-06-11",6),(68,"1","1","2021-04-09",68),(69,"0","0","2020-03-18",76),(70,"1","1","2020-05-11",23);
INSERT INTO `silver_customer` (`person_id`,`non_online_customer_flag`,`online_customer_flag`,`start_date`,`membership_id`) VALUES (71,"1","0","2020-11-16",20),(72,"0","1","2021-03-19",53),(73,"0","1","2019-10-11",56),(74,"1","1","2020-04-04",44),(75,"1","0","2019-06-21",3),(76,"1","1","2019-08-19",30),(77,"0","1","2019-09-20",51),(78,"1","1","2020-06-08",90),(79,"0","1","2020-07-01",12),(80,"0","1","2019-10-22",4);
INSERT INTO `silver_customer` (`person_id`,`non_online_customer_flag`,`online_customer_flag`,`start_date`,`membership_id`) VALUES (81,"0","1","2021-03-14",15),(82,"1","0","2019-07-13",15),(83,"0","1","2020-06-10",76),(84,"1","0","2021-04-02",81),(85,"0","1","2020-03-31",12),(86,"0","0","2019-11-11",57),(87,"1","1","2020-09-10",2),(88,"1","1","2020-04-22",10),(89,"0","1","2019-11-23",61),(90,"1","1","2020-10-14",100);
INSERT INTO `silver_customer` (`person_id`,`non_online_customer_flag`,`online_customer_flag`,`start_date`,`membership_id`) VALUES (91,"0","1","2019-09-29",66),(92,"1","1","2019-08-24",61),(93,"0","0","2020-12-08",89),(94,"1","0","2019-09-26",40),(95,"1","1","2021-02-26",81),(96,"1","1","2020-08-19",88),(97,"1","1","2020-04-22",68),(98,"0","1","2020-03-02",70),(99,"1","1","2020-04-04",38),(100,"0","0","2019-12-05",5);




create table online_order(
	order_number int auto_increment,
	person_id int not null,
	date datetime not null,
	total_amount int not null,
	primary key(order_number),
	foreign key(person_id) references silver_customer(person_id)
);

INSERT INTO `online_order` (`person_id`,`date`,`total_amount`) VALUES (100,"2020-04-24",19),(7,"2021-03-23",17),(87,"2021-01-27",30),(25,"2021-02-13",28),(36,"2019-08-23",42),(41,"2019-08-18",2),(95,"2020-09-20",24),(15,"2019-11-15",6),(91,"2021-02-12",43),(67,"2019-10-09",1);
INSERT INTO `online_order` (`person_id`,`date`,`total_amount`) VALUES (36,"2019-05-23",45),(92,"2020-03-06",24),(47,"2019-12-04",50),(61,"2020-09-17",11),(19,"2021-02-07",29),(35,"2019-05-02",10),(98,"2021-02-24",5),(72,"2020-09-05",6),(34,"2020-04-29",25),(29,"2019-09-01",6);
INSERT INTO `online_order` (`person_id`,`date`,`total_amount`) VALUES (30,"2020-04-06",17),(12,"2019-11-25",44),(91,"2020-05-27",47),(15,"2019-12-26",5),(73,"2021-02-11",43),(49,"2019-07-13",23),(76,"2019-05-12",16),(87,"2020-07-13",42),(57,"2019-09-30",43),(2,"2020-10-05",43);
INSERT INTO `online_order` (`person_id`,`date`,`total_amount`) VALUES (36,"2021-03-25",12),(46,"2020-05-21",25),(33,"2020-06-25",42),(53,"2019-10-31",17),(50,"2021-02-17",44),(16,"2019-09-17",33),(54,"2020-03-01",37),(93,"2019-10-18",13),(76,"2020-11-19",37),(96,"2020-09-10",38);
INSERT INTO `online_order` (`person_id`,`date`,`total_amount`) VALUES (68,"2019-12-16",12),(67,"2020-01-12",21),(48,"2021-03-28",21),(27,"2020-11-22",47),(65,"2020-12-04",33),(81,"2020-06-07",5),(97,"2019-12-11",22),(16,"2019-11-29",23),(39,"2020-01-22",12),(63,"2020-10-25",45);
INSERT INTO `online_order` (`person_id`,`date`,`total_amount`) VALUES (61,"2019-10-11",10),(54,"2019-08-08",17),(37,"2020-03-07",5),(18,"2020-05-05",9),(3,"2021-04-17",34),(57,"2020-08-14",30),(74,"2020-07-01",47),(35,"2021-02-22",33),(94,"2020-09-06",20),(5,"2020-03-04",15);
INSERT INTO `online_order` (`person_id`,`date`,`total_amount`) VALUES (31,"2019-12-31",1),(12,"2020-11-28",12),(80,"2020-04-15",38),(61,"2020-10-28",50),(41,"2019-09-01",28),(71,"2019-08-22",27),(34,"2019-04-30",26),(59,"2020-07-14",24),(49,"2019-06-13",36),(100,"2019-09-01",29);
INSERT INTO `online_order` (`person_id`,`date`,`total_amount`) VALUES (20,"2021-02-15",17),(91,"2020-08-06",11),(67,"2020-02-02",34),(65,"2019-05-27",42),(38,"2021-04-08",9),(49,"2020-02-03",24),(75,"2020-01-09",32),(13,"2020-07-31",21),(86,"2020-04-23",15),(94,"2020-01-20",6);
INSERT INTO `online_order` (`person_id`,`date`,`total_amount`) VALUES (13,"2020-03-01",31),(23,"2019-10-26",27),(88,"2019-07-12",33),(98,"2020-06-27",43),(27,"2020-10-22",50),(5,"2020-08-26",19),(35,"2019-11-27",26),(58,"2021-02-18",39),(71,"2021-03-03",26),(71,"2019-12-31",14);
INSERT INTO `online_order` (`person_id`,`date`,`total_amount`) VALUES (37,"2020-11-10",26),(85,"2019-08-03",18),(60,"2020-01-16",16),(24,"2020-11-20",13),(11,"2020-09-09",22),(25,"2020-12-24",4),(38,"2019-12-22",38),(86,"2021-03-15",17),(99,"2019-12-20",11),(60,"2020-10-03",31);




create table online_order_detail(
	order_number int,
	product_id int,
	product_quantity int not null,
	unit_price float(100,2) not null,
	amount int,
	primary key (order_number, product_id),
	foreign key (product_id) references products (product_id),
	foreign key (order_number) references online_order (order_number)
);

INSERT INTO `online_order_detail` (`order_number`,`product_id`,`product_quantity`,`unit_price`,`amount`) VALUES (22,98,8,191,42),(94,42,42,15,16),(32,92,50,10,35),(88,52,26,58,14),(41,16,45,49,29),(67,9,14,149,10),(23,90,14,138,32),(16,90,11,91,5),(50,37,23,166,31),(4,41,23,48,11);
INSERT INTO `online_order_detail` (`order_number`,`product_id`,`product_quantity`,`unit_price`,`amount`) VALUES (87,36,7,2,21),(92,2,26,144,48),(90,35,27,106,38),(63,15,6,64,38),(76,96,35,160,17),(68,6,7,70,2),(29,24,12,200,30),(93,67,28,53,47),(13,9,38,34,1),(75,25,42,7,38);
INSERT INTO `online_order_detail` (`order_number`,`product_id`,`product_quantity`,`unit_price`,`amount`) VALUES (92,55,33,103,35),(65,82,48,125,4),(78,62,4,60,15),(1,66,41,153,10),(6,49,31,173,34),(98,46,11,16,34),(13,39,5,9,32),(86,94,16,122,23),(26,77,22,142,50),(90,85,5,176,43);
INSERT INTO `online_order_detail` (`order_number`,`product_id`,`product_quantity`,`unit_price`,`amount`) VALUES (35,63,27,123,46),(13,95,24,109,9),(11,77,20,120,15),(92,100,49,184,14),(17,25,20,68,8),(28,24,48,42,10),(77,77,33,72,30),(93,49,23,136,31),(6,83,4,27,16),(6,26,27,189,27);
INSERT INTO `online_order_detail` (`order_number`,`product_id`,`product_quantity`,`unit_price`,`amount`) VALUES (42,44,4,154,8),(79,25,15,6,7),(21,16,44,119,2),(67,96,37,78,49),(32,67,27,154,35),(34,2,47,11,14),(52,86,26,20,26),(49,16,47,18,4),(79,24,17,86,23),(31,38,13,133,39);
INSERT INTO `online_order_detail` (`order_number`,`product_id`,`product_quantity`,`unit_price`,`amount`) VALUES (23,50,26,115,14),(62,100,19,79,21),(80,6,32,12,31),(62,8,21,75,35),(48,49,41,138,27),(43,38,41,162,20),(73,23,35,1,11),(95,50,15,173,29),(76,51,7,119,42),(68,86,31,151,16);
INSERT INTO `online_order_detail` (`order_number`,`product_id`,`product_quantity`,`unit_price`,`amount`) VALUES (58,19,24,113,28),(37,60,4,161,27),(74,28,8,62,3),(77,1,49,195,42),(29,77,37,160,12),(79,12,49,107,6),(22,93,18,66,50),(56,87,38,195,34),(49,39,5,8,47),(64,27,5,134,17);
INSERT INTO `online_order_detail` (`order_number`,`product_id`,`product_quantity`,`unit_price`,`amount`) VALUES (81,11,8,19,43),(46,17,48,145,21),(85,73,35,127,13),(50,26,48,174,31),(34,30,33,179,39),(5,7,9,141,20),(18,84,26,171,17),(11,92,26,80,3),(66,57,3,13,32),(80,95,9,130,19);
INSERT INTO `online_order_detail` (`order_number`,`product_id`,`product_quantity`,`unit_price`,`amount`) VALUES (97,61,47,151,14),(33,97,3,107,16),(1,87,38,140,3),(6,45,17,12,46),(33,45,21,79,34),(74,58,12,98,6),(40,56,5,136,34),(11,35,1,109,16),(76,70,38,122,22),(9,22,5,111,38);
INSERT INTO `online_order_detail` (`order_number`,`product_id`,`product_quantity`,`unit_price`,`amount`) VALUES (14,86,44,103,46),(6,5,25,180,14),(52,23,47,84,20),(88,40,29,94,7),(13,50,43,107,8),(3,94,49,112,17),(33,58,14,7,11),(71,77,3,70,14),(15,40,28,97,5),(99,46,39,93,15);



create table store(
	store_id int auto_increment,
	name varchar(40) not null,
	address varchar(255),
	contact varchar(255),
	primary key(store_id)
);

INSERT INTO `store` (`name`,`address`,`contact`) VALUES ("Brian","P.O. Box 551, 6700 Etiam Avenue","1-596-355-1847"),("Clarke","Ap #282-8130 Enim. Av.","1-397-814-5151"),("Keegan","9223 Sollicitudin St.","1-155-492-8058"),("Noah","378-3375 Sem Street","1-479-627-2038"),("Thane","P.O. Box 729, 929 Integer Av.","1-248-527-1279"),("Hamilton","234-5897 Vestibulum, Avenue","1-420-868-8368"),("Rogan","993-1630 Nullam St.","1-551-912-0020"),("Tanner","Ap #270-8520 Venenatis Road","1-908-708-5651"),("Donovan","P.O. Box 623, 5831 Ipsum Road","1-818-684-3787"),("Flynn","1170 Et Street","1-457-180-5310");
INSERT INTO `store` (`name`,`address`,`contact`) VALUES ("Alec","3967 Integer Street","1-784-401-8510"),("Leo","554-1786 Pede, Street","1-849-852-6886"),("Emery","495 Parturient St.","1-830-753-2177"),("Norman","5376 Suscipit, Road","1-835-175-1867"),("Finn","Ap #650-9514 Eleifend, St.","1-276-277-5524"),("Oscar","6924 Aliquam Av.","1-296-380-4161"),("Chancellor","P.O. Box 674, 4438 Lacus. Rd.","1-310-890-9681"),("Jonas","Ap #333-2498 Cum Av.","1-622-560-7915"),("Arsenio","Ap #768-8121 Lorem, Ave","1-673-699-8369"),("Fritz","P.O. Box 880, 2011 Tempor Road","1-219-400-8588");
INSERT INTO `store` (`name`,`address`,`contact`) VALUES ("Amal","P.O. Box 806, 9781 At, St.","1-822-472-8673"),("Thor","Ap #711-8190 Dictum. Street","1-314-282-1598"),("Conan","2802 Et Ave","1-965-820-1538"),("Rogan","2183 Auctor Rd.","1-852-609-7222"),("Peter","P.O. Box 297, 2257 Ac Rd.","1-856-850-9401"),("Wing","5083 Nulla Ave","1-880-978-0300"),("Aidan","276-9354 Dolor. Road","1-174-516-2618"),("Jakeem","484 Arcu. St.","1-312-515-0785"),("Derek","Ap #184-5039 Blandit St.","1-405-652-6137"),("Lee","2290 Egestas. St.","1-450-201-8310");
INSERT INTO `store` (`name`,`address`,`contact`) VALUES ("Abdul","Ap #520-1541 Vestibulum. Avenue","1-600-920-1444"),("Davis","Ap #791-3672 Arcu. Road","1-815-692-3240"),("Ryan","675-6976 Sem. St.","1-167-751-1986"),("Cameron","615-7703 Malesuada St.","1-638-610-1920"),("Mannix","718-3540 Primis Rd.","1-308-638-6214"),("Arthur","Ap #408-7927 A Rd.","1-806-396-1427"),("Ciaran","Ap #109-1597 At Rd.","1-858-267-1121"),("Jermaine","Ap #924-350 Suscipit, Avenue","1-686-403-3118"),("Flynn","8087 Mauris Av.","1-895-641-9379"),("Burke","1900 Felis St.","1-516-827-1324");
INSERT INTO `store` (`name`,`address`,`contact`) VALUES ("Ronan","Ap #741-972 Neque. Road","1-938-842-4734"),("Nigel","609-2596 Nostra, Rd.","1-402-297-8954"),("Demetrius","Ap #756-6932 Dictum Rd.","1-173-902-1617"),("Kelly","P.O. Box 138, 9967 Consectetuer St.","1-504-194-6251"),("Hayden","P.O. Box 530, 2578 Adipiscing Avenue","1-124-901-0950"),("Byron","P.O. Box 877, 1953 Mauris Street","1-352-892-1728"),("Mark","130-7543 Etiam Street","1-846-836-5345"),("Akeem","Ap #348-7903 Libero Av.","1-195-447-5260"),("Reed","6860 Nec, Avenue","1-532-492-6506"),("Harrison","515-3475 Lectus Av.","1-774-434-5812");
INSERT INTO `store` (`name`,`address`,`contact`) VALUES ("Ignatius","Ap #308-4496 Egestas. Street","1-893-410-5701"),("Flynn","2765 Mi Ave","1-925-248-6647"),("Phillip","7060 Senectus St.","1-258-177-4562"),("Barclay","9339 Natoque Avenue","1-274-145-3458"),("Kirk","775-7841 Eleifend Rd.","1-855-292-8828"),("Cairo","P.O. Box 215, 474 Donec Road","1-499-855-4010"),("Sylvester","Ap #837-7175 Praesent Road","1-867-542-4540"),("Zahir","Ap #934-491 Sodales Av.","1-785-311-3127"),("Harlan","367-5165 Nec Road","1-643-160-4415"),("Paki","P.O. Box 526, 4151 Sapien Street","1-464-627-5013");
INSERT INTO `store` (`name`,`address`,`contact`) VALUES ("Lester","260-2607 Euismod Rd.","1-309-328-1569"),("Chaney","456-540 Eleifend Street","1-751-195-4021"),("Carson","P.O. Box 481, 5153 Nullam Rd.","1-197-130-9710"),("Kevin","797-5358 Vel, St.","1-346-975-6012"),("Laith","3864 Tristique Av.","1-529-421-1991"),("Axel","559-8805 Risus. Rd.","1-505-270-2511"),("Brian","Ap #303-9927 In, Rd.","1-282-959-7370"),("Honorato","P.O. Box 119, 7603 Purus Av.","1-148-327-9471"),("Nicholas","P.O. Box 592, 6729 Integer Street","1-349-733-6481"),("Rooney","357-2984 Velit. Avenue","1-643-539-6242");
INSERT INTO `store` (`name`,`address`,`contact`) VALUES ("Chase","Ap #158-3212 Venenatis Ave","1-168-622-1326"),("Adam","9310 Non St.","1-811-687-2002"),("Henry","P.O. Box 227, 4731 Molestie Av.","1-879-406-5462"),("Griffin","Ap #289-3368 Sapien, Ave","1-297-213-9953"),("Neil","Ap #143-8384 Rutrum Rd.","1-701-357-8305"),("Lester","Ap #839-8312 Mauris, Road","1-200-993-5508"),("Steven","P.O. Box 574, 1849 Adipiscing Rd.","1-563-830-9021"),("Mufutau","Ap #484-7271 Tincidunt, Street","1-704-615-5149"),("Lars","4320 Lobortis. Av.","1-431-780-7547"),("Ivan","Ap #686-266 Dictum Av.","1-348-874-0569");
INSERT INTO `store` (`name`,`address`,`contact`) VALUES ("Beau","7841 Ante. Rd.","1-909-320-1781"),("Shad","867-9770 Purus. Rd.","1-577-707-2439"),("Raphael","P.O. Box 444, 3590 Pede St.","1-787-532-9471"),("Rogan","P.O. Box 940, 6278 At, St.","1-387-160-4640"),("Raja","P.O. Box 589, 4129 Mauris Av.","1-754-163-1712"),("Colorado","1537 Eu Rd.","1-105-832-6205"),("Yuli","Ap #318-1142 Non, St.","1-623-295-8994"),("Logan","720-9152 Elit, St.","1-239-620-2838"),("Addison","878-5153 Sem St.","1-622-906-0170"),("Eaton","Ap #559-4125 Est. St.","1-517-142-3404");
INSERT INTO `store` (`name`,`address`,`contact`) VALUES ("Gannon","7503 Sem. Road","1-818-377-3206"),("Ishmael","Ap #267-2832 Tincidunt Road","1-336-741-3939"),("Palmer","P.O. Box 244, 4134 Ligula. Ave","1-812-600-0544"),("Gareth","523-6747 Nisi. Road","1-642-908-4153"),("Upton","411-5849 Mi St.","1-935-173-2751"),("Steel","Ap #726-1089 Velit. Av.","1-382-563-9076"),("Caleb","874-2938 Cras Avenue","1-829-932-9257"),("Fritz","388-5042 Nulla. Rd.","1-855-458-3333"),("Lyle","P.O. Box 721, 7149 Elit Rd.","1-515-690-4094"),("Boris","Ap #476-8614 Est Street","1-666-207-2362");


create table shift_duty(
	record_id int auto_increment,
	store_id int,
	person_id int,
	date date ,
	working_hour float(10,1),
	primary key(record_id),
	foreign key(store_id) references store(store_id),
	foreign key(person_id) references employee(person_id)
);

INSERT INTO `shift_duty` (`record_id`,`store_id`,`person_id`,`date`,`working_hour`) VALUES (1,7,71,"2021-04-21",3),(2,24,37,"2020-04-10",4),(3,22,53,"2020-06-24",2),(4,87,10,"2020-05-08",9),(5,70,28,"2020-11-24",4),(6,76,89,"2020-12-17",2),(7,99,56,"2019-06-26",19),(8,15,85,"2020-03-31",4),(9,16,55,"2020-12-14",6),(10,5,2,"2020-10-22",3);
INSERT INTO `shift_duty` (`record_id`,`store_id`,`person_id`,`date`,`working_hour`) VALUES (11,53,24,"2019-05-17",16),(12,76,66,"2019-07-04",11),(13,90,88,"2019-06-02",20),(14,88,79,"2020-12-09",15),(15,12,13,"2020-05-02",13),(16,76,41,"2019-05-17",8),(17,92,46,"2020-05-14",9),(18,31,15,"2019-05-14",4),(19,9,12,"2021-04-06",4),(20,69,95,"2020-11-02",7);
INSERT INTO `shift_duty` (`record_id`,`store_id`,`person_id`,`date`,`working_hour`) VALUES (21,31,23,"2019-10-05",17),(22,38,94,"2019-12-15",20),(23,47,48,"2021-04-21",1),(24,63,61,"2019-12-21",8),(25,53,97,"2020-02-13",6),(26,1,48,"2020-12-07",16),(27,83,49,"2020-08-20",11),(28,30,73,"2020-11-14",10),(29,6,80,"2020-09-10",4),(30,27,28,"2021-02-27",18);
INSERT INTO `shift_duty` (`record_id`,`store_id`,`person_id`,`date`,`working_hour`) VALUES (31,62,100,"2019-05-03",12),(32,48,72,"2020-09-23",20),(33,56,18,"2020-03-27",5),(34,51,86,"2019-07-27",11),(35,27,26,"2021-02-18",16),(36,46,71,"2021-03-18",16),(37,25,36,"2019-07-17",8),(38,41,66,"2020-09-12",13),(39,17,42,"2021-03-26",11),(40,55,7,"2020-03-09",9);
INSERT INTO `shift_duty` (`record_id`,`store_id`,`person_id`,`date`,`working_hour`) VALUES (41,50,97,"2020-02-25",7),(42,87,46,"2019-12-28",17),(43,48,84,"2019-09-23",10),(44,86,21,"2019-08-10",12),(45,16,28,"2020-11-12",17),(46,43,76,"2019-11-05",8),(47,63,38,"2020-05-07",15),(48,91,52,"2020-05-26",8),(49,16,53,"2021-03-11",4),(50,11,90,"2019-11-15",12);
INSERT INTO `shift_duty` (`record_id`,`store_id`,`person_id`,`date`,`working_hour`) VALUES (51,71,59,"2019-07-01",12),(52,11,91,"2020-03-19",14),(53,34,52,"2019-05-26",3),(54,35,47,"2021-02-13",13),(55,44,19,"2020-06-29",3),(56,50,35,"2019-05-11",1),(57,96,11,"2019-08-13",10),(58,62,16,"2020-05-31",9),(59,98,7,"2019-12-11",12),(60,46,100,"2020-09-11",18);
INSERT INTO `shift_duty` (`record_id`,`store_id`,`person_id`,`date`,`working_hour`) VALUES (61,98,76,"2020-09-13",18),(62,44,60,"2019-12-02",9),(63,56,6,"2021-02-18",10),(64,99,1,"2020-11-20",6),(65,69,10,"2020-09-06",20),(66,2,30,"2020-05-13",4),(67,21,4,"2019-09-04",16),(68,68,93,"2020-04-02",13),(69,74,78,"2019-12-20",9),(70,98,24,"2020-03-09",17);
INSERT INTO `shift_duty` (`record_id`,`store_id`,`person_id`,`date`,`working_hour`) VALUES (71,29,81,"2020-08-25",10),(72,38,50,"2020-09-26",9),(73,45,81,"2019-09-24",1),(74,78,95,"2020-03-10",4),(75,44,62,"2020-03-20",13),(76,23,66,"2020-11-20",14),(77,91,45,"2019-11-06",10),(78,53,15,"2020-09-13",10),(79,92,9,"2020-09-02",17),(80,30,70,"2020-10-16",7);
INSERT INTO `shift_duty` (`record_id`,`store_id`,`person_id`,`date`,`working_hour`) VALUES (81,86,63,"2020-10-07",19),(82,53,88,"2019-08-10",19),(83,60,77,"2020-11-20",6),(84,46,56,"2020-12-05",16),(85,14,59,"2021-03-15",20),(86,32,45,"2020-10-16",19),(87,21,18,"2019-09-12",19),(88,17,94,"2019-09-06",14),(89,67,87,"2019-05-01",2),(90,48,84,"2020-11-27",17);
INSERT INTO `shift_duty` (`record_id`,`store_id`,`person_id`,`date`,`working_hour`) VALUES (91,63,70,"2019-09-29",8),(92,93,53,"2020-02-12",1),(93,5,30,"2020-02-11",20),(94,18,76,"2020-07-31",6),(95,30,17,"2019-05-09",2),(96,50,64,"2020-09-19",11),(97,45,75,"2020-02-12",2),(98,53,90,"2021-04-23",17),(99,77,99,"2020-05-06",1),(100,6,94,"2021-04-05",15);




create table sale(
	store_id int,
	sale_id int,
	description varchar(255),
	duration date,
	primary key(store_id, sale_id),
	foreign key(store_id) references store(store_id)
);


INSERT INTO `sale` (`sale_id`,`store_id`,`duration`) VALUES (13,90,"2021-03-01"),(52,17,"2020-03-17"),(79,46,"2019-08-23"),(29,26,"2021-02-20"),(83,96,"2019-07-24"),(25,10,"2019-11-14"),(41,28,"2020-03-06"),(80,80,"2019-12-15"),(48,86,"2019-11-20"),(6,5,"2019-08-07");
INSERT INTO `sale` (`sale_id`,`store_id`,`duration`) VALUES (4,92,"2019-09-04"),(70,58,"2020-11-04"),(3,99,"2020-12-11"),(63,44,"2021-03-27"),(59,78,"2020-07-28"),(18,78,"2020-08-16"),(96,89,"2019-12-18"),(82,31,"2020-05-06"),(10,98,"2019-07-05"),(43,83,"2019-10-09");
INSERT INTO `sale` (`sale_id`,`store_id`,`duration`) VALUES (25,14,"2020-03-13"),(7,45,"2020-07-08"),(55,33,"2020-11-03"),(11,72,"2019-09-15"),(29,58,"2020-06-20"),(36,67,"2019-08-26"),(66,4,"2020-12-27"),(7,16,"2020-11-10"),(63,89,"2019-06-13"),(55,64,"2019-07-13");
INSERT INTO `sale` (`sale_id`,`store_id`,`duration`) VALUES (90,46,"2019-07-11"),(90,71,"2020-01-02"),(32,84,"2021-03-20"),(91,3,"2021-02-19"),(36,90,"2019-08-10"),(44,7,"2021-01-13"),(29,62,"2020-08-05"),(25,21,"2021-04-08"),(87,58,"2020-10-26"),(30,15,"2019-05-23");
INSERT INTO `sale` (`sale_id`,`store_id`,`duration`) VALUES (31,13,"2020-12-03"),(1,33,"2020-05-14"),(6,98,"2019-06-04"),(36,33,"2020-09-24"),(73,56,"2019-11-17"),(10,12,"2020-06-26"),(36,11,"2020-06-08"),(76,46,"2020-09-26"),(11,10,"2020-06-29"),(97,83,"2020-03-05");
INSERT INTO `sale` (`sale_id`,`store_id`,`duration`) VALUES (8,16,"2021-01-26"),(16,60,"2021-01-08"),(46,53,"2019-05-14"),(44,10,"2020-01-10"),(23,46,"2021-02-01"),(54,48,"2019-10-11"),(55,82,"2020-06-27"),(55,85,"2020-10-12"),(80,86,"2020-03-30"),(18,12,"2020-01-15");
INSERT INTO `sale` (`sale_id`,`store_id`,`duration`) VALUES (48,34,"2020-11-17"),(87,61,"2019-06-04"),(14,23,"2020-05-17"),(84,38,"2021-04-03"),(36,66,"2020-03-11"),(90,84,"2020-02-17"),(11,26,"2021-01-16"),(1,31,"2019-08-11"),(32,90,"2020-02-06"),(35,95,"2019-07-02");
INSERT INTO `sale` (`sale_id`,`store_id`,`duration`) VALUES (97,56,"2019-08-01"),(12,40,"2021-01-05"),(67,5,"2020-03-01"),(46,74,"2020-08-27"),(17,59,"2019-07-27"),(19,52,"2020-04-30"),(71,14,"2019-10-06"),(91,79,"2020-09-22"),(58,37,"2020-02-23"),(15,17,"2020-10-23");
INSERT INTO `sale` (`sale_id`,`store_id`,`duration`) VALUES (90,61,"2021-03-27"),(99,26,"2019-12-19"),(70,67,"2019-10-06"),(65,9,"2020-04-08"),(83,72,"2020-08-18"),(42,29,"2019-07-07"),(1,60,"2020-10-14"),(67,95,"2019-11-26"),(37,56,"2021-04-26"),(12,25,"2020-08-23");
INSERT INTO `sale` (`sale_id`,`store_id`,`duration`) VALUES (26,38,"2020-02-09"),(36,79,"2020-06-30"),(28,82,"2020-03-14"),(41,62,"2020-01-27"),(46,98,"2019-10-21"),(81,34,"2019-05-16"),(24,11,"2020-06-01"),(19,32,"2020-04-15"),(62,69,"2020-10-15"),(64,84,"2019-12-04");




create table voucher(
	voucher_id int auto_increment,
	issued_date date,
	store_id int ,
	primary key(voucher_id),
	foreign key (store_id) references store (store_id)
);

INSERT INTO `voucher` (`voucher_id`,`store_id`,`issued_date`) VALUES (1,68,"2020-08-13"),(2,54,"2020-10-23"),(3,65,"2019-11-16"),(4,53,"2019-06-06"),(5,11,"2019-08-30"),(6,61,"2019-11-28"),(7,22,"2020-04-18"),(8,49,"2019-10-21"),(9,40,"2020-12-03"),(10,5,"2019-09-07");
INSERT INTO `voucher` (`voucher_id`,`store_id`,`issued_date`) VALUES (11,5,"2020-12-22"),(12,2,"2019-10-28"),(13,76,"2020-11-01"),(14,51,"2021-01-29"),(15,92,"2021-04-01"),(16,47,"2019-05-13"),(17,1,"2020-05-26"),(18,79,"2020-06-05"),(19,62,"2020-06-09"),(20,59,"2020-08-17");
INSERT INTO `voucher` (`voucher_id`,`store_id`,`issued_date`) VALUES (21,64,"2019-12-11"),(22,7,"2019-12-31"),(23,73,"2020-01-14"),(24,20,"2019-06-22"),(25,50,"2020-09-05"),(26,32,"2019-06-27"),(27,60,"2020-01-03"),(28,28,"2020-11-21"),(29,28,"2021-02-01"),(30,36,"2021-04-06");
INSERT INTO `voucher` (`voucher_id`,`store_id`,`issued_date`) VALUES (31,53,"2020-09-09"),(32,54,"2020-01-21"),(33,70,"2020-09-18"),(34,39,"2019-06-20"),(35,89,"2019-09-24"),(36,28,"2020-03-06"),(37,46,"2020-07-03"),(38,98,"2019-09-24"),(39,55,"2020-05-15"),(40,91,"2019-12-22");
INSERT INTO `voucher` (`voucher_id`,`store_id`,`issued_date`) VALUES (41,59,"2019-08-12"),(42,57,"2020-06-12"),(43,40,"2019-11-22"),(44,26,"2021-03-10"),(45,83,"2020-06-04"),(46,43,"2020-10-28"),(47,87,"2020-08-03"),(48,20,"2020-09-17"),(49,31,"2020-12-10"),(50,75,"2021-04-02");
INSERT INTO `voucher` (`voucher_id`,`store_id`,`issued_date`) VALUES (51,98,"2020-07-11"),(52,97,"2020-12-30"),(53,22,"2020-12-05"),(54,84,"2020-03-01"),(55,3,"2020-02-14"),(56,92,"2019-09-06"),(57,43,"2021-01-08"),(58,52,"2019-06-06"),(59,71,"2021-03-12"),(60,58,"2019-05-18");
INSERT INTO `voucher` (`voucher_id`,`store_id`,`issued_date`) VALUES (61,25,"2020-08-29"),(62,88,"2020-03-20"),(63,16,"2020-02-25"),(64,61,"2019-12-07"),(65,53,"2020-12-26"),(66,20,"2020-07-18"),(67,51,"2020-07-19"),(68,54,"2019-10-26"),(69,61,"2020-11-21"),(70,36,"2020-04-26");
INSERT INTO `voucher` (`voucher_id`,`store_id`,`issued_date`) VALUES (71,65,"2021-03-09"),(72,12,"2019-05-22"),(73,95,"2020-02-05"),(74,66,"2020-06-18"),(75,78,"2019-11-28"),(76,44,"2020-01-05"),(77,22,"2020-07-26"),(78,66,"2020-10-27"),(79,13,"2020-07-13"),(80,97,"2021-04-09");
INSERT INTO `voucher` (`voucher_id`,`store_id`,`issued_date`) VALUES (81,89,"2020-12-20"),(82,87,"2020-01-21"),(83,57,"2020-07-09"),(84,59,"2020-05-09"),(85,18,"2021-04-22"),(86,64,"2020-08-10"),(87,63,"2019-07-27"),(88,10,"2020-05-02"),(89,6,"2019-05-11"),(90,89,"2019-07-12");
INSERT INTO `voucher` (`voucher_id`,`store_id`,`issued_date`) VALUES (91,72,"2021-01-02"),(92,76,"2020-01-18"),(93,22,"2021-03-02"),(94,54,"2019-05-15"),(95,6,"2020-10-01"),(96,16,"2019-11-14"),(97,20,"2021-04-22"),(98,35,"2021-01-28"),(99,17,"2021-04-20"),(100,70,"2020-04-07");




create table promotional_discount(
	voucher_id int ,
	promotional_id int,
	promotion_description varchar(255),
	primary key(voucher_id, promotional_id),
	foreign key(voucher_id) references voucher(voucher_id)
);

INSERT INTO `promotional_discount` (`voucher_id`,`promotional_id`) VALUES (1,4),(2,10),(3,1),(4,6),(5,9),(6,4),(7,8),(8,8),(9,4),(10,4);
INSERT INTO `promotional_discount` (`voucher_id`,`promotional_id`) VALUES (11,4),(12,9),(13,10),(14,6),(15,3),(16,3),(17,9),(18,5),(19,10),(20,5);
INSERT INTO `promotional_discount` (`voucher_id`,`promotional_id`) VALUES (21,5),(22,2),(23,1),(24,6),(25,7),(26,7),(27,3),(28,9),(29,4),(30,8);
INSERT INTO `promotional_discount` (`voucher_id`,`promotional_id`) VALUES (31,8),(32,8),(33,4),(34,4),(35,10),(36,1),(37,1),(38,4),(39,2),(40,5);
INSERT INTO `promotional_discount` (`voucher_id`,`promotional_id`) VALUES (41,10),(42,4),(43,9),(44,7),(45,7),(46,7),(47,1),(48,6),(49,7),(50,7);
INSERT INTO `promotional_discount` (`voucher_id`,`promotional_id`) VALUES (51,4),(52,2),(53,6),(54,2),(55,8),(56,8),(57,9),(58,10),(59,2),(60,6);
INSERT INTO `promotional_discount` (`voucher_id`,`promotional_id`) VALUES (61,7),(62,2),(63,3),(64,4),(65,5),(66,10),(67,7),(68,4),(69,4),(70,7);
INSERT INTO `promotional_discount` (`voucher_id`,`promotional_id`) VALUES (71,4),(72,4),(73,7),(74,5),(75,6),(76,4),(77,10),(78,6),(79,9),(80,10);
INSERT INTO `promotional_discount` (`voucher_id`,`promotional_id`) VALUES (81,3),(82,3),(83,3),(84,1),(85,5),(86,9),(87,4),(88,7),(89,10),(90,10);
INSERT INTO `promotional_discount` (`voucher_id`,`promotional_id`) VALUES (91,1),(92,6),(93,1),(94,7),(95,4),(96,4),(97,8),(98,10),(99,6),(100,10);



create table voucher_bought_record(
	voucher_id int,
	record_id int,
	is_free int not null,
	person_id int ,
	membership_id int,
	bought_date date,
	primary key(voucher_id, record_id),
	foreign key (voucher_id) references voucher(voucher_id),
	foreign key(person_id) references silver_customer(person_id),
	foreign key(membership_id) references gold_customer(membership_id)
);
INSERT INTO `voucher_bought_record` (`voucher_id`,`record_id`,`is_free`,`person_id`,`membership_id`,`bought_date`) VALUES (1,65,1,42,24,"2019-12-25"),(2,31,0,88,13,"2020-03-20"),(3,79,0,17,32,"2020-04-11"),(4,80,1,17,65,"2019-11-29"),(5,68,1,86,39,"2019-07-09"),(6,26,1,66,43,"2019-11-21"),(7,19,0,61,52,"2020-10-22"),(8,72,1,8,36,"2019-04-29"),(9,91,1,65,88,"2019-08-21"),(10,6,1,6,4,"2020-07-14");
INSERT INTO `voucher_bought_record` (`voucher_id`,`record_id`,`is_free`,`person_id`,`membership_id`,`bought_date`) VALUES (11,65,1,98,51,"2020-08-31"),(12,37,1,54,75,"2020-03-03"),(13,2,0,57,32,"2021-04-04"),(14,81,0,12,54,"2019-05-23"),(15,61,1,68,21,"2020-11-11"),(16,31,1,48,64,"2020-05-28"),(17,97,1,53,9,"2020-08-22"),(18,100,0,71,53,"2021-04-13"),(19,36,0,36,50,"2021-03-05"),(20,96,1,92,54,"2019-11-03");
INSERT INTO `voucher_bought_record` (`voucher_id`,`record_id`,`is_free`,`person_id`,`membership_id`,`bought_date`) VALUES (21,11,1,13,30,"2020-05-08"),(22,13,1,81,50,"2019-09-28"),(23,40,0,54,22,"2020-10-24"),(24,88,1,11,78,"2020-05-16"),(25,65,0,41,100,"2020-06-14"),(26,15,0,48,22,"2020-04-07"),(27,91,0,96,98,"2020-01-02"),(28,27,0,14,76,"2020-12-19"),(29,25,0,50,47,"2020-10-12"),(30,77,1,76,57,"2021-03-31");
INSERT INTO `voucher_bought_record` (`voucher_id`,`record_id`,`is_free`,`person_id`,`membership_id`,`bought_date`) VALUES (31,56,0,95,94,"2019-08-02"),(32,53,1,81,19,"2020-07-30"),(33,45,0,70,14,"2020-02-09"),(34,18,0,78,55,"2019-04-30"),(35,37,0,37,70,"2020-08-13"),(36,46,1,60,29,"2019-08-14"),(37,58,0,3,38,"2019-12-26"),(38,9,0,1,95,"2020-07-12"),(39,30,0,6,20,"2019-10-05"),(40,30,0,80,10,"2020-12-07");
INSERT INTO `voucher_bought_record` (`voucher_id`,`record_id`,`is_free`,`person_id`,`membership_id`,`bought_date`) VALUES (41,2,1,52,13,"2020-01-20"),(42,67,1,35,6,"2019-07-16"),(43,8,1,7,70,"2020-08-02"),(44,74,1,27,93,"2020-04-03"),(45,95,1,87,7,"2019-10-21"),(46,75,1,80,2,"2020-04-20"),(47,86,0,62,95,"2019-06-08"),(48,62,1,71,68,"2019-08-19"),(49,19,0,93,53,"2020-05-15"),(50,89,0,37,47,"2021-03-30");
INSERT INTO `voucher_bought_record` (`voucher_id`,`record_id`,`is_free`,`person_id`,`membership_id`,`bought_date`) VALUES (51,74,0,69,86,"2020-02-20"),(52,17,1,44,78,"2020-08-01"),(53,4,1,21,55,"2021-02-13"),(54,30,0,97,30,"2020-10-11"),(55,73,1,4,17,"2020-12-26"),(56,88,1,29,80,"2019-12-01"),(57,10,0,76,86,"2020-06-06"),(58,14,0,92,60,"2020-02-18"),(59,30,1,37,80,"2020-08-20"),(60,22,1,15,75,"2020-06-02");
INSERT INTO `voucher_bought_record` (`voucher_id`,`record_id`,`is_free`,`person_id`,`membership_id`,`bought_date`) VALUES (61,12,0,6,21,"2021-02-02"),(62,91,0,41,77,"2020-11-09"),(63,19,1,31,72,"2019-12-23"),(64,42,0,90,7,"2019-05-10"),(65,2,1,26,98,"2019-08-31"),(66,65,1,28,63,"2020-05-03"),(67,5,0,39,83,"2020-03-28"),(68,56,0,10,55,"2019-12-17"),(69,11,1,54,86,"2020-01-25"),(70,93,1,11,89,"2019-07-01");
INSERT INTO `voucher_bought_record` (`voucher_id`,`record_id`,`is_free`,`person_id`,`membership_id`,`bought_date`) VALUES (71,10,0,57,92,"2019-09-17"),(72,81,0,48,25,"2020-06-16"),(73,57,0,64,34,"2019-12-17"),(74,55,0,39,56,"2019-05-01"),(75,66,0,95,81,"2019-07-30"),(76,73,0,37,25,"2020-10-24"),(77,91,0,8,12,"2020-01-04"),(78,81,0,36,86,"2020-10-26"),(79,57,1,76,17,"2020-07-01"),(80,46,0,72,31,"2020-06-12");
INSERT INTO `voucher_bought_record` (`voucher_id`,`record_id`,`is_free`,`person_id`,`membership_id`,`bought_date`) VALUES (81,33,0,53,14,"2020-01-10"),(82,93,1,58,60,"2019-12-07"),(83,84,1,37,36,"2020-04-17"),(84,51,0,4,32,"2019-04-29"),(85,17,0,57,84,"2020-03-04"),(86,85,1,60,6,"2020-07-04"),(87,76,0,18,97,"2021-04-02"),(88,22,1,74,59,"2021-02-07"),(89,60,0,86,71,"2021-01-11"),(90,49,1,50,18,"2019-12-07");
INSERT INTO `voucher_bought_record` (`voucher_id`,`record_id`,`is_free`,`person_id`,`membership_id`,`bought_date`) VALUES (91,7,1,43,62,"2019-10-24"),(92,29,1,2,88,"2020-05-13"),(93,37,1,49,36,"2021-02-17"),(94,4,1,92,28,"2021-02-23"),(95,10,1,53,97,"2019-05-18"),(96,1,0,51,8,"2019-06-08"),(97,6,1,74,49,"2019-07-09"),(98,44,0,45,38,"2021-04-16"),(99,29,0,3,36,"2020-03-25"),(100,45,0,27,30,"2020-10-02");


create table bill_transaction(
	transaction_id int auto_increment,
	date_of_purchase date not null,
	bill_amount float(20,2),
	store_id int not null,
	payment_method varchar(40),
	person_id int ,
	employee_person_id int ,
	primary key(transaction_id),
	foreign key(store_id) references store(store_id),
	foreign key(person_id) references person(id),
	foreign key(employee_person_id) references employee(person_id) 
);

INSERT INTO `bill_transaction` (`transaction_id`,`date_of_purchase`,`bill_amount`,`store_id`,`payment_method`,`person_id`,`employee_person_id`) VALUES (1,"2019-12-09",182,34,"sit",4,4),(2,"2019-10-28",488,99,"neque",2,9),(3,"2020-08-22",904,65,"ligula",1,5),(4,"2019-07-21",889,70,"dolor",6,3),(5,"2019-07-02",14,69,"nisi",9,5),(6,"2021-02-20",274,72,"magna",3,7),(7,"2020-01-18",45,70,"adipiscing",5,6),(8,"2020-04-03",888,30,"Aliquam",2,6),(9,"2019-12-23",212,46,"ornare,",10,6),(10,"2021-02-14",439,96,"felis.",6,3);
INSERT INTO `bill_transaction` (`transaction_id`,`date_of_purchase`,`bill_amount`,`store_id`,`payment_method`,`person_id`,`employee_person_id`) VALUES (11,"2019-06-10",752,15,"Suspendisse",6,4),(12,"2020-01-13",196,5,"vitae",3,4),(13,"2021-01-22",939,24,"in",8,4),(14,"2021-02-01",802,38,"arcu",3,3),(15,"2020-08-05",237,62,"interdum",5,9),(16,"2019-04-30",921,62,"sit",1,1),(17,"2020-01-05",642,76,"egestas,",9,4),(18,"2020-11-28",699,75,"pharetra",3,9),(19,"2019-10-31",747,83,"pretium",8,10),(20,"2019-08-31",239,48,"cursus",2,9);
INSERT INTO `bill_transaction` (`transaction_id`,`date_of_purchase`,`bill_amount`,`store_id`,`payment_method`,`person_id`,`employee_person_id`) VALUES (21,"2021-03-06",632,71,"ligula",10,3),(22,"2020-03-08",77,62,"rutrum",1,10),(23,"2019-12-06",519,71,"Nulla",7,2),(24,"2020-03-24",414,31,"magna,",8,5),(25,"2019-10-20",438,12,"nunc.",2,8),(26,"2020-03-16",916,15,"cursus",1,2),(27,"2020-01-30",355,67,"Integer",9,5),(28,"2019-06-19",968,32,"ultrices.",7,3),(29,"2020-11-23",481,58,"Cras",2,5),(30,"2019-07-07",45,80,"dictum",8,7);
INSERT INTO `bill_transaction` (`transaction_id`,`date_of_purchase`,`bill_amount`,`store_id`,`payment_method`,`person_id`,`employee_person_id`) VALUES (31,"2020-05-20",39,19,"varius.",5,5),(32,"2019-05-13",348,59,"orci,",7,10),(33,"2020-02-18",341,15,"Ut",10,7),(34,"2020-08-09",903,15,"id",7,6),(35,"2019-10-20",162,32,"arcu",10,4),(36,"2020-12-03",430,18,"ornare,",5,7),(37,"2020-08-06",762,93,"Cras",8,8),(38,"2020-02-18",882,62,"malesuada",5,6),(39,"2019-05-17",476,87,"nec,",6,4),(40,"2019-06-02",467,1,"ad",4,5);
INSERT INTO `bill_transaction` (`transaction_id`,`date_of_purchase`,`bill_amount`,`store_id`,`payment_method`,`person_id`,`employee_person_id`) VALUES (41,"2020-10-11",570,53,"eget",6,8),(42,"2020-04-04",552,13,"dui.",10,9),(43,"2020-12-24",437,67,"malesuada",9,6),(44,"2020-02-12",934,99,"varius",5,10),(45,"2019-09-03",803,64,"a,",6,9),(46,"2020-07-09",517,42,"odio.",8,8),(47,"2020-01-01",23,64,"metus",5,1),(48,"2020-10-24",204,69,"dui.",5,9),(49,"2019-05-18",895,39,"semper",1,8),(50,"2021-02-27",340,20,"tincidunt",8,8);
INSERT INTO `bill_transaction` (`transaction_id`,`date_of_purchase`,`bill_amount`,`store_id`,`payment_method`,`person_id`,`employee_person_id`) VALUES (51,"2019-12-16",116,1,"ullamcorper",9,3),(52,"2019-12-20",866,78,"Aenean",7,8),(53,"2019-10-04",988,64,"nisl",2,5),(54,"2019-10-01",219,96,"ornare",1,8),(55,"2020-04-01",360,3,"aliquam",6,5),(56,"2019-12-25",496,15,"Quisque",9,10),(57,"2021-02-23",583,68,"Sed",7,3),(58,"2019-11-21",256,86,"mi",5,6),(59,"2019-11-16",507,42,"arcu",6,2),(60,"2020-05-02",118,57,"nunc",1,8);
INSERT INTO `bill_transaction` (`transaction_id`,`date_of_purchase`,`bill_amount`,`store_id`,`payment_method`,`person_id`,`employee_person_id`) VALUES (61,"2021-04-05",910,34,"mi",4,10),(62,"2020-11-14",416,10,"eu",5,4),(63,"2020-08-04",20,45,"tempor",1,8),(64,"2020-08-30",735,75,"Phasellus",9,8),(65,"2020-06-03",771,13,"gravida",9,6),(66,"2020-10-10",873,86,"pharetra.",2,3),(67,"2020-07-06",109,66,"non",2,3),(68,"2020-08-03",621,16,"pretium",9,3),(69,"2021-04-04",42,76,"purus,",7,7),(70,"2020-03-08",632,53,"mi",4,9);
INSERT INTO `bill_transaction` (`transaction_id`,`date_of_purchase`,`bill_amount`,`store_id`,`payment_method`,`person_id`,`employee_person_id`) VALUES (71,"2019-08-25",715,31,"ligula.",6,2),(72,"2020-01-25",155,65,"ligula.",9,2),(73,"2019-07-05",937,79,"accumsan",9,1),(74,"2020-08-03",24,17,"in",1,10),(75,"2019-09-19",548,18,"posuere",6,6),(76,"2020-09-02",773,41,"gravida",8,9),(77,"2020-07-28",121,9,"ac",7,4),(78,"2020-02-07",997,3,"odio.",1,3),(79,"2019-09-19",419,37,"ut,",10,9),(80,"2019-06-01",557,40,"Sed",9,7);
INSERT INTO `bill_transaction` (`transaction_id`,`date_of_purchase`,`bill_amount`,`store_id`,`payment_method`,`person_id`,`employee_person_id`) VALUES (81,"2019-06-30",211,3,"tincidunt",7,10),(82,"2020-11-23",347,44,"dictum",1,6),(83,"2019-06-22",44,38,"amet,",2,3),(84,"2019-12-02",148,56,"at,",8,7),(85,"2020-09-29",884,27,"Donec",3,9),(86,"2019-07-22",19,8,"auctor",8,4),(87,"2019-09-21",75,19,"sagittis",3,1),(88,"2020-05-21",282,16,"enim.",6,6),(89,"2020-06-12",270,88,"lectus",9,8),(90,"2019-11-30",550,40,"mauris",2,5);
INSERT INTO `bill_transaction` (`transaction_id`,`date_of_purchase`,`bill_amount`,`store_id`,`payment_method`,`person_id`,`employee_person_id`) VALUES (91,"2020-03-20",417,50,"laoreet",4,9),(92,"2019-12-05",927,89,"Duis",10,7),(93,"2020-02-15",848,49,"sodales",3,10),(94,"2021-04-11",950,38,"fames",2,1),(95,"2020-01-31",280,49,"nisi",5,3),(96,"2020-01-29",265,66,"consequat",4,8),(97,"2020-12-22",883,74,"non,",7,4),(98,"2021-01-22",411,53,"sodales.",9,9),(99,"2019-08-09",756,91,"nunc",8,10),(100,"2019-12-29",103,40,"elit,",3,2);



create table purchase_detail(
	transaction_id int,
	product_id int,
	product_quantity int not null,
	unit_price float(20,2) not null,
	amount int,
	primary key (transaction_id, product_id),
	foreign key(transaction_id) references bill_transaction(transaction_id),
	foreign key(product_id) references products(product_id)
);

INSERT INTO `purchase_detail` (`transaction_id`,`product_id`,`product_quantity`,`unit_price`,`amount`) VALUES (62,20,6,90,53),(100,77,33,88,52),(41,15,88,60,52),(93,51,41,40,21),(70,94,85,90,54),(60,11,27,39,61),(20,86,97,61,41),(87,27,9,14,30),(81,91,4,2,57),(8,33,5,96,78);
INSERT INTO `purchase_detail` (`transaction_id`,`product_id`,`product_quantity`,`unit_price`,`amount`) VALUES (85,20,37,70,76),(74,33,64,8,38),(10,56,99,34,100),(43,82,58,35,48),(5,44,33,11,57),(71,6,91,41,10),(10,83,90,34,24),(94,33,34,17,34),(37,49,6,60,32),(4,51,57,5,9);
INSERT INTO `purchase_detail` (`transaction_id`,`product_id`,`product_quantity`,`unit_price`,`amount`) VALUES (54,81,33,94,93),(58,89,37,66,60),(47,60,23,4,17),(41,6,85,21,39),(29,29,77,78,1),(79,23,38,46,24),(13,33,3,81,50),(78,43,26,47,24),(33,38,57,38,53),(71,31,64,64,18);
INSERT INTO `purchase_detail` (`transaction_id`,`product_id`,`product_quantity`,`unit_price`,`amount`) VALUES (74,99,85,97,28),(19,68,82,92,77),(20,41,27,74,55),(97,92,44,78,65),(91,74,82,69,75),(81,39,32,46,15),(60,81,2,97,57),(54,5,67,23,4),(55,49,83,40,7),(22,53,54,50,48);
INSERT INTO `purchase_detail` (`transaction_id`,`product_id`,`product_quantity`,`unit_price`,`amount`) VALUES (88,92,4,100,31),(78,48,87,23,16),(52,81,70,92,51),(99,83,91,24,61),(32,80,77,5,7),(25,66,70,5,28),(89,39,34,66,31),(74,57,7,32,51),(94,16,81,60,28),(41,96,67,100,56);
INSERT INTO `purchase_detail` (`transaction_id`,`product_id`,`product_quantity`,`unit_price`,`amount`) VALUES (26,40,23,2,43),(62,36,23,22,84),(42,20,59,33,35),(100,5,62,3,61),(91,88,82,9,78),(38,10,54,95,15),(25,18,22,86,33),(1,15,37,42,8),(81,47,68,71,60),(41,62,63,23,30);
INSERT INTO `purchase_detail` (`transaction_id`,`product_id`,`product_quantity`,`unit_price`,`amount`) VALUES (2,61,15,56,49),(90,99,87,58,14),(91,42,83,36,37),(36,27,26,83,77),(13,40,79,3,6),(4,31,64,48,78),(31,89,36,41,84),(87,38,64,49,87),(76,2,36,11,51),(13,55,6,40,94);
INSERT INTO `purchase_detail` (`transaction_id`,`product_id`,`product_quantity`,`unit_price`,`amount`) VALUES (26,23,43,35,78),(63,58,31,74,72),(91,16,83,83,12),(39,24,66,94,51),(38,74,79,95,55),(55,96,73,38,67),(33,15,64,86,78),(45,89,37,52,69),(75,37,49,50,56),(27,63,51,95,10);
INSERT INTO `purchase_detail` (`transaction_id`,`product_id`,`product_quantity`,`unit_price`,`amount`) VALUES (7,60,59,98,64),(87,15,81,74,49),(28,4,9,77,29),(77,55,4,34,10),(26,90,94,37,77),(74,44,19,11,8),(95,19,75,92,95),(19,36,33,62,62),(63,94,79,38,35),(33,85,23,26,93);
INSERT INTO `purchase_detail` (`transaction_id`,`product_id`,`product_quantity`,`unit_price`,`amount`) VALUES (43,19,17,96,18),(60,9,98,29,66),(10,60,90,26,58),(96,45,77,15,71),(94,83,47,67,100),(35,30,50,38,78),(9,97,43,56,13),(19,93,54,60,39),(57,38,53,75,62),(41,45,31,46,81);














