CREATE TABLE "Books"
(
    "Id" BIGINT UNIQUE NOT NULL,
    "Title" VARCHAR(8000),
    "CheckedOut" BOOLEAN
);

CREATE TABLE "Authors"
(
    "Name" VARCHAR(8000) UNIQUE NOT NULL
);

CREATE TABLE "BookAuthor"
(
    "BooksId" BIGINT NOT NULL,
    "AuthorsName" VARCHAR(8000) NOT NULL,
    CONSTRAINT "PK_BookAuthor" PRIMARY KEY ("BooksId", "AuthorsName"),
    CONSTRAINT "FK_BookAuthor_Authors_AuthorsName" FOREIGN KEY ("AuthorsName") REFERENCES "Authors" ("Name") ON DELETE CASCADE,
    CONSTRAINT "FK_BookAuthor_Books_BooksId" FOREIGN KEY ("BooksId") REFERENCES "Books" ("Id") ON DELETE CASCADE
);

INSERT INTO "Books" ("Id", "Title", "CheckedOut")
VALUES
(1234567890123, 'How To Think Of Fake Book Titles', TRUE),
(3210987654321, 'Data Structures 101', FALSE),
(1111111111111, 'Linear Algebra: An Introduction', FALSE),
(2222222222222, 'Andrew''s Fast Food Taste In Full', FALSE),
(3333333333333, '.NET Core Guide', TRUE);

INSERT INTO "Authors" ("Name")
VALUES
('John Software'),
('Ben Middleton'),
('Dr. Matthias Smartman');

INSERT INTO "BookAuthor" ("BooksId", "AuthorsName")
VALUES
(1234567890123, 'Ben Middleton'),
(3210987654321, 'John Software'),
(3210987654321, 'Dr. Matthias Smartman'),
(1111111111111, 'Dr. Matthias Smartman'),
(2222222222222, 'Ben Middleton'),
(3333333333333, 'John Software');
