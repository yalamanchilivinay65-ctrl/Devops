CREATE DATABASE IF NOT EXISTS cricket_db;
USE cricket_db;

CREATE TABLE IF NOT EXISTS cricketers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    country VARCHAR(50) NOT NULL,
    matches INT NOT NULL,
    runs INT NOT NULL,
    centuries INT NOT NULL
);

INSERT INTO cricketers (name, country, matches, runs, centuries) VALUES
('Sachin Tendulkar', 'India', 664, 34357, 100),
('Virat Kohli', 'India', 530, 26942, 80),
('Ricky Ponting', 'Australia', 560, 27483, 71),
('Kumar Sangakkara', 'Sri Lanka', 594, 28016, 63),
('Jacques Kallis', 'South Africa', 519, 25534, 62);
