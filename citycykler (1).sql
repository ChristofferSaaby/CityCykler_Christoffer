-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Vært: 127.0.0.1
-- Genereringstid: 06. 09 2018 kl. 12:39:15
-- Serverversion: 5.6.24
-- PHP-version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `citycykler`
--

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
  `id` int(11) NOT NULL,
  `fk_type` int(20) NOT NULL,
  `kategori` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `kategori`
--

INSERT INTO `kategori` (`id`, `fk_type`, `kategori`) VALUES
(1, 1, 'Mountainbikes'),
(2, 1, 'Racercykler'),
(3, 1, 'Damecykler'),
(4, 1, 'Herrecykler'),
(5, 1, 'Trehjulede'),
(6, 1, 'Børnecykler'),
(7, 2, 'Cyklehjelme'),
(8, 2, 'Cyklecomputere'),
(9, 2, 'Værktøj'),
(10, 2, 'Cykletøj'),
(11, 2, 'Barnestole'),
(12, 2, 'Reservedele');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `mærke`
--

CREATE TABLE IF NOT EXISTS `mærke` (
  `id` int(11) NOT NULL,
  `mærke` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `mærke`
--

INSERT INTO `mærke` (`id`, `mærke`) VALUES
(1, 'Kildemose'),
(2, 'MBK'),
(3, 'Mustang'),
(4, 'Jensen'),
(5, 'Bianchi'),
(6, 'Tårnby'),
(7, 'Winther'),
(8, 'MET'),
(9, 'Lazer'),
(10, 'VDO'),
(11, 'Tranz-x'),
(12, 'Michelin'),
(13, 'Lipu'),
(14, 'Sidi'),
(15, 'Nike'),
(16, 'Alessi Bianchi'),
(17, 'John D'),
(18, 'Hamax'),
(19, 'Shimano');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `produkter`
--

CREATE TABLE IF NOT EXISTS `produkter` (
  `id` int(11) NOT NULL,
  `fk_mærke` int(11) NOT NULL,
  `model` varchar(50) NOT NULL,
  `pris` int(11) NOT NULL,
  `beskrivelse` varchar(800) NOT NULL,
  `fk_kategori` int(11) NOT NULL,
  `billede` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `produkter`
--

INSERT INTO `produkter` (`id`, `fk_mærke`, `model`, `pris`, `beskrivelse`, `fk_kategori`, `billede`) VALUES
(4, 1, 'Jala', 2195, 'Her er cyklen for dig, der skal være smart og hurtig. Du får her en supersmart mountainbike, der også er rigtig god til bykørsel. Cyklen har aerodynamisk facon, så vindmodstanden mindskes. Cyklen fås i flere størrelser og med forskelligt udstyr. ', 1, 'MTB1.jpg'),
(5, 2, 'Mont blanc', 2995, 'Dette er den ultimative cykel til bykørsel. For her får du en rigtig supersmart og elegant mountainbike. Cyklen har aerodynamisk facon, så vindmodstanden mindskes. Cyklen fås i flere størrelser, farver og med forskelligt udstyr.', 1, 'MTB2.jpg'),
(6, 3, 'Fun', 2595, 'Er du barn eller ung og gerne vil have en mountainbike kan vi selvfølgelig også magte det. Cyklen fås i hvid med blå eller rød dekoration. Cyklen en særdeles god til bykørsel, så det bliver en leg at cykle til skole.', 1, 'MTB3.jpg'),
(8, 4, 'Racer B29', 4995, 'Er man til fart og elegance, så er dette cyklen for dig. For her får du en smart, smuk og funktionel cykel, som bringer dig hurtigt frem til dit bestemmelsessted. Cyklen fås til både piger og drenge, store som små.', 2, 'racer1.jpg'),
(9, 5, 'Race4', 9599, 'Er du til specialcykler med superudstyr og gode køreegenskaber, så er dette cyklen for dig. Her får du 21 gear med tre klinger. Bremsesystemet er et af de allerbedste på markedet. Cyklen fås i flere størrelser til både kvinder og mænd. Cyklen fås i sølv, sort og rød og blå metalic.', 2, 'racer2.jpg'),
(10, 6, 'Tvb Racer', 8995, 'Er man til fart og elegance, så er dette cyklen for dig. For her får du en smart, smuk og funktionel cykel, som bringer dig hurtigt frem til dit bestemmelsessted. Cyklen fås til både piger og drenge, store som små og i farverne sølv, sort og rød og blå metalic.', 2, 'racer3.jpg'),
(11, 6, 'City 3', 4295, 'Denne elegante cykel er en rigtig god og all-round cykel til den aktive cyklist. Den fås i flere størrelser og i farverne rød og sølv metalic. Cyklen har 7 indvendige gear, fodbremse og håndforbremse.', 3, 'dame1.jpg'),
(12, 7, 'Classic 2', 3595, 'Er man til nostalgi eller synes at de moderne cykler er forkerte, så har man muligheden for her at få en cykel, der ligner bedstemors. Men teknologien er forbedret, så du får en topmoderne cykel i forklædning.', 3, 'dame2.jpg'),
(13, 7, 'Classic 2 Pink edition', 3999, 'Er man til nostalgi eller synes at de moderne cykler er forkerte, så har man muligheden for her at få en cykel, der ligner bedstemors. Men teknologien er forbedret, så du får en topmoderne cykel i forklædning. Synes man at de originale farver er for kedelige, kan den også fås i en lidt mere moderne udgave i farven pink.', 3, 'dame3.jpg'),
(14, 6, 'Street', 4595, 'En god all-round cykel, som fås i flere farver og størrelser. På cyklen er der monteret et indvendigt Shimano-gearsystem med 7 gear. Så det er også nemt at komme op ad bakken. Cyklen er fabrikeret af aluminium med speciallakering, der kan tåle det danske vejr.', 3, 'dame4.jpg'),
(15, 7, 'Classic', 5550, 'En god all-round herrecykel, som fås i sort og sort metallic og størrelser. På cyklen er der monteret et indvendigt Shimano-gearsystem med 7 gear. Så det er også nemt at komme op ad bakken. Cyklen er fabrikeret af aluminium med speciallakering, der kan tåle det danske vejr.', 4, 'herre1.jpg'),
(16, 6, 'Katmandu', 4595, 'En let og elegant herrecykel til dig, der har brug for en god og solid cykel. Cyklen fås i flere størrelser og farver, bl.a. lys blå metalic, sort metalic og sølv metalic. På cyklen er der monteret et indvendigt Shimanogearsystem med 7 gear. Lakeringen er en speciallakering fremstillet til at modstå det danske vejr.', 4, 'herre2.jpg'),
(17, 7, 'City Limit', 3595, 'Denne cykel er for dig, der bare har brug for en cykel uden de store dikkedarer. Her får du en god all-round cykel, der kan holde til de mange gøremål, der er i dagligdagen. Cyklen er monteret med et indvendigt Shimano gearsystem med 5 gear. Cyklen har desuden bagagebærer og støttefod. Lakeringen er en speciallakering fremstillet til at modstå det danske vejr.', 4, 'herre3.jpg'),
(18, 7, 'WB-1', 1495, 'Her er den første juniorcykel.  Cyklen fås til både drenge og piger. Den fås i flere farver. Cyklen passer til aldersgruppen 3 – 6 år. Man kan få støttehjul til cyklen, så det bliver nemmere for barnet at lære at cykle selv.', 6, 'barn1.jpg'),
(19, 7, 'WB-2', 2195, 'Når barnet når skolealderen er dette den perfekte cykel. Her får man en god gedigen cykel, der kan holde til at blive til at blive brugt hver dag. Cyklen har forbremser og fodbremser. Cyklen fås i et smart layout med gult og sort stel til drenge og orange og sort til piger. Cyklen har en sort bagagebærer.', 6, 'barn2.jpg'),
(20, 7, 'WB-3', 2295, 'Når barnet når skolealderen er dette den perfekte cykel. Her får man en god gedigen cykel, der kan holde til at blive til at blive brugt hver dag. Cyklen har forbremser og fodbremser. Cyklen fås i et smart layout med rødt og hvidt stel til piger og blåt og hvidt stel til drenge. Cyklen har en sort bagagebærer.', 6, 'barn3.jpg'),
(21, 7, 'WB-4', 1695, 'Denne smarte cykel er rigtig god, når barnet skal cykle til skole hver dag og også bruge cyklen i de øvrige hverdagssituationer. Cyklen leveres i smarte farver og findes til både drenge og piger.', 6, 'barn4.jpg'),
(22, 7, 'Mini', 548, 'Her får dit barn en god og solid cykel i nogle spændende farver. Lige til at tage sig en god cykeltur på. Cyklen er, som alle vore øvrige cykler, solidt bygget, så den kan holde til dagligt brug. Cyklen er konstrueret, så barnet får den største fornøjelse af cyklen.', 5, 'trehjulet1.jpg'),
(23, 7, 'Midi', 548, 'Her får den gode velkendte røde trehjulede cykel, som gennem generationer har været det første valg. Cyklen har tippelad. Cyklen er, som alle vore øvrige cykler, solidt bygget, så den kan holde til dagligt og solidt brug. Cyklen er konstrueret, så barnet får den største fornøjelse af cyklen.', 5, 'trehjulet2.jpg'),
(24, 7, 'Maxi', 548, 'Den trehjulede velkendte trehjulede cykel fås også i andre farver, f. eks. I pink og blå. Gennem generationer har været den trehjulede cykel altid været det første valg. Cyklen har tippelad. Cyklen er, som alle vore øvrige cykler, solidt bygget, så den kan holde til dagligt og solidt brug. Cyklen er konstrueret, så barnet får den største fornøjelse af cyklen.', 5, 'trehjulet3.jpg'),
(25, 8, 'Junior', 395, 'Alle bør have en cykelhjelm. Vi har derfor fundet denne smarte model til små piger, der gerne vil være prinsesser. Hjelmen er pink med hvide blomster og passer til piger i alderen 5 – 12 år.', 7, 'hjelm1.jpg'),
(26, 9, 'Mouse', 275, 'Alle bør have en cykelhjelm. Også når man sidder bagpå fars eller mors cykel Vi har derfor fundet denne smarte model til små piger og drenge. Hjelmen er designet, så den ligner en sød lille mus. Den passer til piger og drenge i alderen 1 - 5 år.', 7, 'hjelm2.gif'),
(27, 9, 'Regular', 495, 'Cykelhjelme er for alle. Både børn og voksne. Vi har derfor fundet denne smarte model, som fås til både børn og voksne. Hjelmen fås i farverne rød og blå. Den fås i børnestørrelser fra 6 år og i voksenstørrelser op til 60 cm.', 7, 'hjelm3.gif'),
(28, 8, 'Blue', 995, 'For den professionelle rytter eller for hende, der gerne vil have den ultimative cykelhjelm har vi denne aerodynamiske model i hvid og blå.', 7, 'hjelm4.jpg'),
(29, 2, 'Com3', 349, 'Her får man en god og gedigen cykelcomputer. Computeren har otte forskellige funktioner. Computeren har et stort display og den er nem at indstille.', 8, 'computer1.jpg'),
(30, 10, 'CompuSpeed 1', 259, 'Her får man en trådløs og programmerbar cykelcomputer. Computeren har selvfølgelig et stort læsevenligt display. Der er femten indbyggede funktioner inklusiv kalorie- og fedtforbrænding, så man uden problemer kan følge med i fedtforbrændingen.', 8, 'computer2.jpg'),
(31, 2, 'Com2', 299, 'Her får man en god og gedigen cykelcomputer. Computeren har ni forskellige funktioner, som f.eks. tidsmåler og temperatur måler. Computeren har et stort display og den er nem at indstille.', 8, 'computer3.jpg'),
(32, 10, 'CompuSpeed 2', 399, 'Cykelcomputeren her har mange forskellige funktioner. F.eks. kan man måle den aktuelle hastighed, kørt tid, gennemsnitshastighed. Man kan også se den kørte distance for en eller to cykler.', 8, 'computer4.jpg'),
(33, 11, 'Kædeadskiller', 89, 'Vil man holde sin cykel i en god stand, er man nødt til at have det rigtige værktøj. Så derfor bør denne flotte kædeadskiller med flere forskellige funktioner være i enhver handymans cykelværktøjskasse. Der er bl.a. unbracho nøgler og skruetrækker med stjernekærv og lige kærv.', 9, 'vaerktoej1.jpg'),
(34, 12, 'Dækjern', 12, 'Det sker jo at selv det bedste dæk kan punktere. Derfor er et sæt dækjern uundværligt. Ellers bliver det at skifte dæk for besværligt.', 9, 'vaerktoej2.jpg'),
(35, 13, 'Foldeværktøj', 45, 'Foldeværktøjet med 6 forskellige funktioner fås i rød. Her er bl.a. unbracho nøgler i forkellige størrelser. Skruetrækker med stjerne og lige kærv.', 9, 'vaerktoej3.jpg'),
(36, 14, 'Cykelsko', 599, 'Cykler man meget på en racercykel, så kan det være en god ide, at investere i et par rigtige cykelsko. Så får du nemlig en meget større fornøjelse af din cykeltur. Her får du et rigtig godt par til en fornuftig pris.', 10, 'toej1.jpg'),
(37, 15, 'Frakke', 899, 'En god sommerjakke til herrer. Der er en god ventilation i jakken, som er både vandtæt og åndbar.', 10, 'toej2.jpg'),
(38, 16, 'Kasket', 89, 'Køb denne smarte cap fra Alessi Bianchi. Så er du med på moden. Cappen fås kun i en størrelse.', 10, 'toej3.jpg'),
(39, 17, 'Cykelsæt', 999, 'Dette vintersæt med jakke og bukser er i vores sædvanlige gode kvalitet. Både jakke og bukser kan købes separat til følgende priser: Bukser 799 kr. og jakke 699 kr.', 10, 'toej4.jpg'),
(40, 17, 'Bukser', 299, 'Cykler man meget og langt, kan man i det lange løb ikke undvære et par gode cykelbukser. Bukserne er med korte bukser og fremstillet af sort lycra.', 10, 'toej5.jpg'),
(41, 18, 'Mini', 1595, 'Her får du en elegant barnestol med den største comfort til dit barn, når I cykler. Cyklen er fremstillet i formstøbt plastik med benforlængere, så benene ikke kan komme ind i cyklens hjul.', 11, 'stol1.jpg'),
(42, 18, 'Midi', 1795, 'Her får du en elegant barnestol med den største comfort til dit barn, når I cykler. Cyklen er fremstillet i formstøbt plastik med benforlængere, der ender som støtter til barnets fødder. Derved undgår man at barnets ben kommer ind i cyklens hjul.', 11, 'stol2.gif'),
(43, 7, 'Kæde', 99, 'Skal cyklen have skiftet kæde, er denne kæde et godt valg. Kæden er rustfri og passer til 7 og 8 udvendige gear. Når du skifter kæde, bør du også skifte krans.', 12, 'reserve1.jpg'),
(44, 7, 'Støtteben', 149, 'Støtteben til mountainbikes og citycyklen. Ja, det er ren rigtig god ting, da man jo ikke altid kan regne med at der er et cykelstativ, man kan placere sin cykel i. Støttebenet er blankt og kan justeres.', 12, 'reserve2.jpg'),
(45, 3, 'Dæk', 299, 'Træt af at punktere i tide og utide. Så prøv dette punkterfrie dæk med kevlar. Så får du nedsat dine punkteringer med 90 procent. Dækket er meget nemt at montere.', 12, 'reserve3.jpg'),
(46, 19, 'Deore Gear', 249, 'Her får du et godt og solidt baggear. Gearskiftet bliver derved til en leg.', 12, 'reserve4.jpg');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `text`
--

CREATE TABLE IF NOT EXISTS `text` (
  `id` int(11) NOT NULL,
  `fk_text_kategori` int(20) NOT NULL,
  `text` varchar(2000) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `text`
--

INSERT INTO `text` (`id`, `fk_text_kategori`, `text`) VALUES
(1, 1, 'Velkommen til City Cykler'),
(2, 2, 'City Cykler A/S'),
(3, 2, 'Nygade 65'),
(4, 2, '9000 Ålborg'),
(5, 2, 'Telefon: (+45) 98 10 10 11'),
(6, 2, 'Fax: (+45) 98 10 10 12'),
(7, 2, 'Mail: contact@cc.dk'),
(8, 1, 'Hos os får du en cykel, der er tilpasset lige præcis til dig. Vi har nemlig bygget cykler gennem generationer,\r\nså vi ved hvilke krav en cykel kan blive udsat for i det danske vejr. Vores cykler er bygget på generationers\r\nerfaring og solidt håndværk.'),
(9, 1, 'Vi har cyklen til alle i familien. Lige fra barnets første trehjulede cykel til bedstemors turcykel. Vælger du en\r\ncykel fra os, så får du en cykel, der giver maksimal køreglæde og derved gør det til en leg at få fælles\r\nfamilieoplevelser på cykel med masser af frisk luft og motion, for vi producerer flotte og funktionelle\r\nhverdagscykler til hele familien'),
(10, 1, 'En god cykel udvikles ikke af sig selv. Den er et resultat af mange års produktudvikling. Som et 100%\r\ndanskejet firma kender vi det danske klima og kan tilpasse vore cykler til det ved at bruge de bedste\r\nmaterialer og de mest optimale processer i fremstillingen af cykler. '),
(11, 1, 'Vi udvikler og producerer danske kvalitetscykler, der giver dig stor køreglæde, en god funktionalitet og som\r\nsamtidig lever op til dine krav om holdbarhed og minimal vedligeholdelse. Men samtidig går vi ikke på\r\nkompromis med sikkerheden.');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `text_kategori`
--

CREATE TABLE IF NOT EXISTS `text_kategori` (
  `id` int(11) NOT NULL,
  `kategori` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `text_kategori`
--

INSERT INTO `text_kategori` (`id`, `kategori`) VALUES
(1, 'forside'),
(2, 'kontakt');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `typer`
--

CREATE TABLE IF NOT EXISTS `typer` (
  `id` int(11) NOT NULL,
  `type` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `typer`
--

INSERT INTO `typer` (`id`, `type`) VALUES
(1, 'cykler'),
(2, 'udstyr');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(2, 'admin', '1234');

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `mærke`
--
ALTER TABLE `mærke`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `produkter`
--
ALTER TABLE `produkter`
  ADD PRIMARY KEY (`id`), ADD KEY `fk_mærke` (`fk_mærke`), ADD KEY `fk_kategori` (`fk_kategori`);

--
-- Indeks for tabel `text`
--
ALTER TABLE `text`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `text_kategori`
--
ALTER TABLE `text_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `typer`
--
ALTER TABLE `typer`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Brug ikke AUTO_INCREMENT for slettede tabeller
--

--
-- Tilføj AUTO_INCREMENT i tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- Tilføj AUTO_INCREMENT i tabel `mærke`
--
ALTER TABLE `mærke`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- Tilføj AUTO_INCREMENT i tabel `produkter`
--
ALTER TABLE `produkter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=49;
--
-- Tilføj AUTO_INCREMENT i tabel `text`
--
ALTER TABLE `text`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- Tilføj AUTO_INCREMENT i tabel `text_kategori`
--
ALTER TABLE `text_kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Tilføj AUTO_INCREMENT i tabel `typer`
--
ALTER TABLE `typer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Tilføj AUTO_INCREMENT i tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Begrænsninger for dumpede tabeller
--

--
-- Begrænsninger for tabel `produkter`
--
ALTER TABLE `produkter`
ADD CONSTRAINT `produkter_ibfk_1` FOREIGN KEY (`fk_mærke`) REFERENCES `mærke` (`id`),
ADD CONSTRAINT `produkter_ibfk_2` FOREIGN KEY (`fk_kategori`) REFERENCES `kategori` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
