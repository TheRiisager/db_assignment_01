CREATE TABLE LoanInfo (
    loan_id SERIAL PRIMARY KEY,
    loan_date DATE,
    due_date DATE,
    return_date DATE
);

CREATE TABLE PatronInfo (
    patron_id SERIAL PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email VARCHAR(255),
    phone_number VARCHAR(255),
    address VARCHAR(255),
    date_of_birth DATE
);

CREATE TABLE BookInfo (
    book_id SERIAL PRIMARY KEY,
    title VARCHAR(255),
    author VARCHAR(255),
    isbn VARCHAR(255),
    publication_date DATE,
    num_pages INT,
    availability BOOLEAN
);

CREATE TABLE MagazineInfo (
    magazine_id SERIAL PRIMARY KEY,
    title VARCHAR(255)
);

CREATE TABLE PublisherInfo (
    publisher_id SERIAL PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE GenreInfo (
    genre_id SERIAL PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE BookGenre (
    book_id INT REFERENCES BookInfo(book_id),
    genre_id INT REFERENCES GenreInfo(genre_id),
    PRIMARY KEY (book_id, genre_id)
);

CREATE TABLE MagazineGenre (
    magazine_id INT REFERENCES MagazineInfo(magazine_id),
    genre_id INT REFERENCES GenreInfo(genre_id),
    PRIMARY KEY (magazine_id, genre_id)
);

CREATE TABLE BookPublisher (
    book_id INT REFERENCES BookInfo(book_id),
    publisher_id INT REFERENCES PublisherInfo(publisher_id),
    PRIMARY KEY (book_id, genre_id)
);

CREATE TABLE MagazinePublisher (
    magazine_id INT REFERENCES MagazineInfo(magazine_id),
    publisher_id INT REFERENCES PublisherInfo(publisher_id),
    PRIMARY KEY (magazine_id, genre_id)
);

CREATE TABLE LoanPatron (
    loan_id INT REFERENCES LoanInfo(loan_id),
    patron_id INT REFERENCES PatronInfo(patron_id),
    PRIMARY KEY (loan_id, patron_id)
);

CREATE TABLE LoanBook (
    loan_id INT REFERENCES LoanInfo(loan_id),
    book_id INT REFERENCES BookInfo(book_id),
    PRIMARY KEY (loan_id, book_id)
);

CREATE TABLE LoanMagazine (
    loan_id INT REFERENCES LoanInfo(loan_id),
    magazine_id INT REFERENCES MagazineInfo(magazine_id),
    PRIMARY KEY (loan_id, magazine_id)
);