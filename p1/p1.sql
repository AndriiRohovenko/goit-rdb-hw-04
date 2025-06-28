CREATE SCHEMA library_management;
use library_management;

CREATE TABLE Authors (
  author_id INT AUTO_INCREMENT PRIMARY KEY,
  author_name VARCHAR(50)
);

CREATE TABLE Genres (
  genre_id INT AUTO_INCREMENT PRIMARY KEY,
  genre_name VARCHAR(50)
);

CREATE TABLE Books (
  book_id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(50),
  publication_year year,
  author_id int,
  genre_id int,
  FOREIGN KEY (author_id) REFERENCES Authors(author_id),
  FOREIGN KEY (genre_id) REFERENCES Genres(genre_id)
);

CREATE TABLE Users (
  user_id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(50),
  email VARCHAR(50)
);

CREATE TABLE Borrowed_Books (
  borrow_id INT AUTO_INCREMENT PRIMARY KEY,
  book_id int,
  user_id int,
  borrow_date date,
  return_date date,
  FOREIGN KEY (book_id) REFERENCES Books(book_id),
  FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

