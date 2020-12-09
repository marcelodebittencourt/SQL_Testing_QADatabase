-- Table `SQLTestingQA`.`author`
INSERT INTO `SQLTestingQA`.`author` (`author_id`, `first_name`, `last_name`) VALUES (1, 'Lisa', 'Crispin');
INSERT INTO `SQLTestingQA`.`author` (`author_id`, `first_name`, `last_name`) VALUES (2, 'Janet', 'Gregory');
INSERT INTO `SQLTestingQA`.`author` (`author_id`, `first_name`, `last_name`) VALUES (3, 'Kent', 'Beck');
INSERT INTO `SQLTestingQA`.`author` (`author_id`, `first_name`, `last_name`) VALUES (4, 'Robert', 'Martin');
INSERT INTO `SQLTestingQA`.`author` (`author_id`, `first_name`, `last_name`) VALUES (5, 'Glenford', 'Myers');

-- Table `sqltestingqa`.`book`
INSERT INTO `sqltestingqa`.`book` (`book_id`, `title`, `year`) VALUES (1, 'The Art of Software Testing', 2011);
INSERT INTO `sqltestingqa`.`book` (`book_id`, `title`, `year`) VALUES (2, 'Agile Testing: A Practical Guide for Testers and Agile Teams', 2009);
INSERT INTO `sqltestingqa`.`book` (`book_id`, `title`, `year`) VALUES (3, 'More Agile Testing: Learning Journeys for the Whole Team', 2014);
INSERT INTO `sqltestingqa`.`book` (`book_id`, `title`, `year`) VALUES (4, 'Test Driven Development: By Example', 2002);
INSERT INTO `sqltestingqa`.`book` (`book_id`, `title`, `year`) VALUES (5, 'Clean Code: A Handbook of Agile Software Craftsmanship', 2008);

-- Table `sqltestingqa`.`book_has_author`
INSERT INTO `sqltestingqa`.`book_has_author` (`book_book_id`, `author_author_id`) VALUES (1, 5);
INSERT INTO `sqltestingqa`.`book_has_author` (`book_book_id`, `author_author_id`) VALUES (2, 1);
INSERT INTO `sqltestingqa`.`book_has_author` (`book_book_id`, `author_author_id`) VALUES (2, 2);
INSERT INTO `sqltestingqa`.`book_has_author` (`book_book_id`, `author_author_id`) VALUES (3, 1);
INSERT INTO `sqltestingqa`.`book_has_author` (`book_book_id`, `author_author_id`) VALUES (3, 2);
INSERT INTO `sqltestingqa`.`book_has_author` (`book_book_id`, `author_author_id`) VALUES (4, 3);
INSERT INTO `sqltestingqa`.`book_has_author` (`book_book_id`, `author_author_id`) VALUES (5, 4);