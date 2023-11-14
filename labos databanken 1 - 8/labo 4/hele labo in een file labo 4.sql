-- Oefening 1
DROP TABLE IF EXISTS Games;

CREATE TABLE Games (
	Titel VARCHAR(100) NOT NULL,
    Releasedatum DATE NOT NULL,
    Genre VARCHAR(20) NOT NULL,
    Uitgever VARCHAR(100)
);

INSERT INTO Games VALUES
('The Diofield Chronicle', '2022-09-22', 'strategy', 'Square Enix'),
('Beacon Pines', '2022-09-22', 'adventure', NULL),
('Mario vs. Rabbids: Sparks of Hope', '2022-10-21', 'strategy', 'Ubisoft');

-- Oefening 2
SELECT * FROM Games 
WHERE Uitgever IS NOT NULL;

-- Oefening 3
SELECT * FROM Games 
WHERE Uitgever IS NULL;

-- Oefening 4
ALTER TABLE Games
ADD COLUMN Ontwikkelaar VARCHAR(100) NOT NULL;

SET sql_safe_updates = 0;
UPDATE Games SET Ontwikkelaar = 'Lancarse' 
WHERE Titel = 'The Diofield Chronicle';
UPDATE Games SET Ontwikkelaar = 'Hiding Spot' 
WHERE Titel = 'Beacon Pines';
UPDATE Games SET Ontwikkelaar = 'Ubisoft' 
WHERE Titel = 'Mario vs. Rabbids: Sparks of Hope';
set sql_safe_updates = 1;

-- Oefening 5
SET sql_safe_updates = 0;
UPDATE Games SET Uitgever = NULL 
WHERE Uitgever = 'Square Enix';
SET sql_safe_updates = 1;

-- Oefening 6
SELECT Titel FROM Liedjes 
WHERE Artiest IS NULL
AND Album IS NULL
ORDER BY 1;

-- Oefening 7
-- Controle vooraf
SELECT COUNT(*) FROM Liedjes 
WHERE Album IS NULL
AND DuurtijdInSeconden <= 180;

SET sql_safe_updates = 0;
DELETE FROM Liedjes 
WHERE Album IS NULL
AND DuurtijdInSeconden <= 180;
SET sql_safe_updates = 1;

-- Controle nadien
SELECT * FROM Liedjes 
WHERE Album IS NULL
AND DuurtijdInSeconden <= 180;

-- Oefening 8
ALTER TABLE Liedjes 
CHANGE COLUMN Royalties VergoedingArtiest INT DEFAULT NULL;