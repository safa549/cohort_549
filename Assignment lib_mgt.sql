create database library_mgt;
USE library_mgt;

DROP TABLE IF EXISTS `user`;  
CREATE TABLE `user` (
  `id` INT NOT NULL,
  `user_name` VARCHAR(45) NULL,
  `user_contact` VARCHAR(45) NULL,
  PRIMARY KEY (`id`)) 
  ENGINE = InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `user` (`id`,`user_name`,`user_contact`) VALUES (1,'Rima F','9749284209'),(2,'Tom Holland','2236475869'),(3,'Robert Downey Jr.','9957465839'),(4,'Lili Reinhert','6868758484'),(5,'Camila Mendes','6574937596'),(6,'Shawn B','0684648567'),(7,'George Lambert','8576758697'),(8,'Daisy Jones','5886687586'),(9,'Scarlet Johnson','9876768577'),(10,'Henry Cavil','8576587785'),(11,'Egbert Adams','8677675864'),(12,'Henry H','8676758575'),(13,'Lisa La','8575658857'),(14,'Jungkook V','8475758874'),(15,'Iba Salvatore','8986758957'),(16,'Ahfaz Amash','9386874929'),(17,'Obaida H','9974779996'),(18,'Ezzah Cavil','5762585992');


DROP TABLE IF EXISTS `books`;
CREATE TABLE `books` (
  `idbook` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `author` VARCHAR(45) NULL,
  `publicationcompany` VARCHAR(45) NULL,
  `rented_date` DATE NULL,
  `rented_user` VARCHAR(45) NULL,
  PRIMARY KEY (`idbook`))
ENGINE = InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `books` (`idbook`,`name`,`author`,`publicationcompany`,`rented_date`,`rented_user`) VALUES (1,'To kill a Mockingbird','Harper Lee','J. B. Lippincott & Co.','2022-01-01','Rima F'),(2,'The Great Gatsby','F. Scott Fitzgerald','Charles Scribner Sons','2022-01-02','Iba Salvatore'),(3,'A Passage to India','E. M. Forster','Edward Arnold, (UK) Harcourt Brace (US)','2022-01-02','Ezzah Cavil'),(4,'The Kite Runner','Khaled Hosseini','Riverhead Books','2022-01-03','Shawn B'),(5,'The Alchemist','Paulo Coelho','HarperCollins Publishers','2022-01-05','Scarlet Johnson'),(6,'The Fault in Our Stars','John Green','Dutton Books','2022-01-05','Lisa La'),(7,'The Catcher in the Rye','J. D. Salinger','Little, Brown and Company','2022-01-06','George Lambert'),(8,'Divergent','Veronica Roth','Harper Collins Children\'s Books','2022-01-07','Henry H'),(9,'A Wrinkle in Time','Madeleine L\'Engle','Ariel Books','2022-01-08','Daisy Jones'),(10,'Paper Towns','John Green','Dutton Books','2022-01-09','Obaida H');





DROP TABLE IF EXISTS `librarian`;
CREATE TABLE `librarian` (
  `books_idbook` INT NOT NULL,
  `user_id` INT NOT NULL,
  `lusername` VARCHAR(45) NOT NULL,
  `lusercontact` INT NOT NULL,
   KEY `books_idbook` (`books_idbook`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `fk_librarian_books` FOREIGN KEY (`books_idbook`) REFERENCES `books` (`idbook`)
    ON DELETE CASCADE,
  CONSTRAINT `fk_librarian_user1` FOREIGN KEY (`user_id`)
    REFERENCES `user` (`id`)
    ON DELETE CASCADE
) ENGINE = InnoDB DEFAULT CHARSET=latin1;