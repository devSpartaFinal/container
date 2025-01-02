
CREATE TABLE IF NOT EXISTS sample (
    id SERIAL PRIMARY KEY,
    title VARCHAR(50),
    content VARCHAR(3000)
);

INSERT INTO sample (title, content) VALUES
('Post 1', 'This is the content for Post 1'),
('Post 2', 'This is the content for Post 2'),
('Post 3', 'This is the content for Post 3'),
('Post 4', 'This is the content for Post 4'),
('Post 5', 'This is the content for Post 5'),
('Post 6', 'This is the content for Post 6'),
('Post 7', 'This is the content for Post 7'),
('Post 8', 'This is the content for Post 8'),
('Post 9', 'This is the content for Post 9'),
('Post 10', 'This is the content for Post 10');