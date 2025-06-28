use library_management;

INSERT INTO Authors (author_name) VALUES
('J.K. Rowling'),
('George Orwell'),
('Agatha Christie');

INSERT INTO Genres (genre_name) VALUES
('Fantasy'),
('Science Fiction'),
('Mystery');

INSERT INTO Books (title, publication_year, author_id, genre_id) VALUES
('Harry Potter 2', 1997, 1, 1),
('1984', 1949, 2, 2),
('Murder on the Orient Express', 1934, 3, 3);

INSERT INTO Users (username, email) VALUES
('Alice', 'alice@example.com'),
('Bob', 'bob@example.com'),
('Charlie', 'charlie@example.com');

INSERT INTO Borrowed_Books (book_id, user_id, borrow_date, return_date) VALUES
(1, 1, '2025-06-01', '2025-06-15'),
(2, 2, '2025-06-05', '2025-06-16'),
(3, 3, '2025-06-10', '2025-06-20');
