

CREATE TABLE `admin` (
  `admin_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `admin_username` varchar(30) NOT NULL,
  `admin_email` varchar(30) NOT NULL,
  `admin_password` varchar(20) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO admin VALUES("1","Fahim","mfahim181238@bscse.uiu.ac.bd","MAF");
INSERT INTO admin VALUES("2","Nabila","nabila@bscse.uiu.ac.bd","NN");



CREATE TABLE `bookmarks` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `contentid` int(255) NOT NULL,
  `userid` int(255) NOT NULL,
  `timestamp` int(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




CREATE TABLE `contents` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `uploaderID` int(255) NOT NULL,
  `filename` varchar(1000) NOT NULL,
  `filetype` varchar(20) NOT NULL,
  `time` int(255) NOT NULL,
  `counter` int(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

INSERT INTO contents VALUES("1","Shakespeare in the park","A book of bio","18","shakespeareinthepark.pdf","pdf","0","0");
INSERT INTO contents VALUES("2","Times","A book of bio","19","times.pdf","pdf","0","0");
INSERT INTO contents VALUES("3","Torabi CV","AMAR CV","19","Tawsif Turabi CV.pdf","pdf","2147483647","0");
INSERT INTO contents VALUES("4","Sajjad Amin Resume","Sajjad Amin Resume Demo","19","sajjad-amin-resume.pdf","pdf","2147483647","0");
INSERT INTO contents VALUES("5","Project Guideline – Summer 2022","Project Guideline – Summer 2022","19","Project_Guideline.pdf","pdf","2147483647","0");
INSERT INTO contents VALUES("6","Sample Java Problem","Department of Computer Science and Engineering","19","Assignment-01.pdf","pdf","2147483647","0");
INSERT INTO contents VALUES("7","Fat Donkey Low Res","Demo Video","19","sample-mp4-file.mp4","video","2147483647","0");



CREATE TABLE `download` (
  `download_id` int(11) NOT NULL AUTO_INCREMENT,
  `lecture_id` int(11) NOT NULL,
  `downloader` int(11) NOT NULL,
  `download_time` datetime NOT NULL,
  PRIMARY KEY (`download_id`,`lecture_id`,`downloader`,`download_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `lecture` (
  `lecture_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `course_name` varchar(30) NOT NULL,
  `faculty_name` varchar(30) NOT NULL,
  `uni_name` varchar(30) NOT NULL,
  `trimester` varchar(20) NOT NULL,
  `lecture_year` year(4) NOT NULL,
  `lecture_file` varchar(30) NOT NULL,
  `uploader_id` int(11) NOT NULL,
  `lecture_visibility` tinyint(1) NOT NULL DEFAULT 1,
  `lecture_upload_time` datetime NOT NULL,
  PRIMARY KEY (`lecture_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` double NOT NULL,
  `date` date NOT NULL,
  `client_id` int(11) NOT NULL,
  PRIMARY KEY (`payment_id`,`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `review` (
  `review_no` int(11) NOT NULL AUTO_INCREMENT,
  `lecture_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `review` mediumtext NOT NULL,
  PRIMARY KEY (`review_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `sessions` (
  `id` int(155) NOT NULL AUTO_INCREMENT,
  `session_id` text NOT NULL,
  `user_id` int(155) NOT NULL,
  `issued` int(155) NOT NULL,
  `expiry_time` int(155) NOT NULL,
  `ipaddress` varchar(255) NOT NULL,
  `browser` text NOT NULL,
  `location` varchar(300) NOT NULL,
  `validity` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;

INSERT INTO sessions VALUES("1","1663061810","19","1663061810","0","127.0.0.1","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:104.0) Gecko/20100101 Firefox/104.0","","valid");
INSERT INTO sessions VALUES("2","1663094139","19","1663094139","1663095452","127.0.0.1","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:104.0) Gecko/20100101 Firefox/104.0","","invalid");
INSERT INTO sessions VALUES("3","1663095571","19","1663095571","1663095577","127.0.0.1","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:104.0) Gecko/20100101 Firefox/104.0","","invalid");
INSERT INTO sessions VALUES("4","1663095579","19","1663095579","1663095590","127.0.0.1","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:104.0) Gecko/20100101 Firefox/104.0","","invalid");
INSERT INTO sessions VALUES("5","1663095594","19","1663095594","1663095711","127.0.0.1","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:104.0) Gecko/20100101 Firefox/104.0","","invalid");
INSERT INTO sessions VALUES("6","1663095712","19","1663095712","1663096758","127.0.0.1","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:104.0) Gecko/20100101 Firefox/104.0","","invalid");
INSERT INTO sessions VALUES("7","1663096851","19","1663096851","1663097021","127.0.0.1","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:104.0) Gecko/20100101 Firefox/104.0","","invalid");
INSERT INTO sessions VALUES("8","1663097029","14","1663097029","1663097032","127.0.0.1","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:104.0) Gecko/20100101 Firefox/104.0","","invalid");
INSERT INTO sessions VALUES("9","1663097061","19","1663097061","1663099626","127.0.0.1","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:104.0) Gecko/20100101 Firefox/104.0","","invalid");
INSERT INTO sessions VALUES("10","1663099630","19","1663099630","1663102612","127.0.0.1","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:104.0) Gecko/20100101 Firefox/104.0","","invalid");
INSERT INTO sessions VALUES("11","1663102642","19","1663102642","1663102727","127.0.0.1","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:104.0) Gecko/20100101 Firefox/104.0","","invalid");
INSERT INTO sessions VALUES("12","1663103754","19","1663103754","1663103766","127.0.0.1","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:104.0) Gecko/20100101 Firefox/104.0","","invalid");
INSERT INTO sessions VALUES("13","1663103819","19","1663103819","0","127.0.0.1","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:104.0) Gecko/20100101 Firefox/104.0","","valid");
INSERT INTO sessions VALUES("14","1663111865","19","1663111865","1663111961","192.168.0.102","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:104.0) Gecko/20100101 Firefox/104.0","","invalid");
INSERT INTO sessions VALUES("15","1663444472","19","1663444472","0","127.0.0.1","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:104.0) Gecko/20100101 Firefox/104.0","","valid");
INSERT INTO sessions VALUES("16","1663497654","19","1663497654","0","192.168.0.102","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:104.0) Gecko/20100101 Firefox/104.0","","valid");



CREATE TABLE `subscription` (
  `sub_no` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  PRIMARY KEY (`sub_no`,`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `username` varchar(30) NOT NULL,
  `client_uni_name` varchar(30) NOT NULL,
  `current_point` int(11) DEFAULT 25,
  `client_sub_status` tinyint(1) NOT NULL DEFAULT 0,
  `adminprivilege` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `client_username` (`username`),
  UNIQUE KEY `client_username_2` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

INSERT INTO users VALUES("19","nawshad1234@gmail.com ","1234","nawshad","UIU","25","0","yes");
INSERT INTO users VALUES("20","test@test ","1234","test","UIU","25","0","");

