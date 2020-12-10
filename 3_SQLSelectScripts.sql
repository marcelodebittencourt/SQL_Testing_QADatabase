-- Select all table data
SELECT * FROM author
SELECT * FROM book

-- Select last name from all authors with books 
SELECT distinct a.last_name as 'Author Last Name with books'
FROM author a
INNER JOIN book_has_author b ON a.author_id = b.author_author_id;

-- Select book (title and year) and authors (first and last name) ordered by title
SELECT b.title, b.year, a.first_name, a.last_name
FROM ((author a
INNER JOIN book_has_author ba ON a.author_id = ba.author_author_id)
INNER JOIN book b ON b.book_id = ba.book_book_id)
ORDER BY b.title;

-- Select book (title and year) and authors (first and last name) ordered by title
-- where the author's first name is equal 'Lisa'
SELECT b.title, b.year, a.first_name, a.last_name
FROM ((author a
INNER JOIN book_has_author ba ON a.author_id = ba.author_author_id)
INNER JOIN book b ON b.book_id = ba.book_book_id)
WHERE a.first_name = 'Lisa'
ORDER BY b.title;

-- Select book (title and year) and authors (first and last name) ordered by title
-- where the author's first name is equal 'Lisa'
SELECT b.title, b.year, a.first_name, a.last_name
FROM ((author a
INNER JOIN book_has_author ba ON a.author_id = ba.author_author_id)
INNER JOIN book b ON b.book_id = ba.book_book_id)
WHERE a.first_name = 'Lisa'
ORDER BY b.title;

-- Select book (title and year) and authors (first and last name) ordered by title
-- where the author's last name starts with 'Greg'
SELECT b.title, b.year, a.first_name, a.last_name
FROM ((author a
INNER JOIN book_has_author ba ON a.author_id = ba.author_author_id)
INNER JOIN book b ON b.book_id = ba.book_book_id)
WHERE a.last_name LIKE 'Greg%'
ORDER BY b.title;

-- Count the number of books 
SELECT COUNT(*) as 'number of books'
FROM book

-- Count the number of books written by each author_author_id
SELECT a.first_name, a.last_name, count(*)
FROM ((author a
INNER JOIN book_has_author ba ON a.author_id = ba.author_author_id)
INNER JOIN book b ON b.book_id = ba.book_book_id)
GROUP BY a.first_name, a.last_name;

-- Count the number of authors from each book
SELECT b.title, count(*)
FROM ((author a
INNER JOIN book_has_author ba ON a.author_id = ba.author_author_id)
INNER JOIN book b ON b.book_id = ba.book_book_id)
GROUP BY b.title;

-- Select books written after 2010
SELECT b.title, b.year FROM book b WHERE b.year > 2010

-- Select author number that does not have book
-- using NOT IN
SELECT a.author_id, a.first_name, a.last_name
FROM author a
WHERE a.author_id NOT IN
(SELECT ba.author_author_id
FROM book_has_author ba)