CREATE TABLE Publisher (
    publisher_id SERIAL PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE Genre (
    genre_id SERIAL PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE Book (
    book_id SERIAL PRIMARY KEY,
    title VARCHAR(255),
    author VARCHAR(255),
    isbn VARCHAR(255),
    publisher_id INT REFERENCES Publisher(publisher_id),
    publication_date DATE,
    genre_id INT REFERENCES Genre(genre_id),
    num_pages INT,
    availability BOOLEAN
);

CREATE TABLE Magazine (
    magazine_id SERIAL PRIMARY KEY,
    title VARCHAR(255),
    publisher_id INT REFERENCES Publisher(publisher_id),
    publication_date DATE,
    genre_id INT REFERENCES Genre(genre_id),
    num_pages INT,
    availability BOOLEAN
);

CREATE TABLE Patron (
    patron_id SERIAL PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email VARCHAR(255),
    phone_number VARCHAR(255),
    address VARCHAR(255),
    date_of_birth DATE
);

CREATE TABLE Loan (
    loan_id SERIAL PRIMARY KEY,
    patron_id INT REFERENCES Patron(patron_id),
    item_id INT,
    loan_date DATE,
    due_date DATE,
    return_date DATE
);

