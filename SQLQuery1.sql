CREATE TABLE Books(
	Id int PRIMARY KEY IDENTITY,
	Name nvarchar (100),
	Price decimal(8,2)
)

CREATE TABLE BooksType(
	Id int PRIMARY KEY IDENTITY,
	Genre nvarchar (100)
)

CREATE TABLE Book_BookType(
	Id INT PRIMARY KEY IDENTITY,
	BooksId INT REFERENCES Books(Id),
	BooksTypeId INT REFERENCES BooksType(Id)
	)

CREATE TABLE Authors (
	Id INT PRIMARY KEY IDENTITY,
	Name nvarchar (100),
	Surname nvarchar (100)
)

CREATE TABLE BookAuthor (
	Id INT PRIMARY KEY IDENTITY,
	BookId INT REFERENCES Books(Id),
	AuthorId INT REFERENCES Authors(Id),
)

INSERT INTO Books
	VALUES ('Ali ve Nino',(12.00)),
		   ('Yarımçıq əlyazma',(6.80)),
		   ('Dünyanın arşını',(9.20)),
		   ('Gələcək gün',(10.00))

INSERT INTO BooksType
	VALUES ('Dram'),
	       ('Dedektiv'),
		   ('Komediya')



INSERT INTO Authors
	VALUES ('Mirzə','İbrahimov'),
	       ('Kamal','Abdulla'),
		   ('Sabir','Əhmədli'),
		   ('Kurban','Said')


SELECT * FROM Books

SELECT * FROM Authors

SELECT * FROM BooksType

SELECT * FROM Book_BookType

SELECT * FROM BookAuthor

SELECT * FROM Books INNER JOIN Authors ON Books.Id=Authors.Id
SELECT Books.Id, Books.Name, Authors.Id, Authors.Name 'Author Name' FROM Books Left JOIN Authors ON Books.Id=Authors.Id
SELECT Books.Id, Books.Name, Authors.Id, Authors.Name 'Author Name' FROM Books RIGHT JOIN Authors ON Books.Id=Authors.Id

		   




