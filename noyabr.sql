CREATE DATABASE TASK01n
USE TASK01n
CREATE TABLE Users(
Id INT PRIMARY KEY IDENTITY,
[Name] VARCHAR (25) NOT NULL,
Username VARCHAR (25) DEFAULT 'XXX',
[ Password] VARCHAR(25) NOT NULL,
Gender VARCHAR (5)
)

CREATE TABLE Artist(
ArtistId INT PRIMARY KEY IDENTITY,
[Name] VARCHAR (25) NOT NULL,
Username VARCHAR (25) DEFAULT 'XXX',
Birthday VARCHAR(50),
Gender VARCHAR (5)
)

CREATE TABLE Categories(
CatagoryId INT PRIMARY KEY IDENTITY,
[Name] VARCHAR (25) NOT NULL
)

CREATE TABLE Playlist(
PayId INT PRIMARY KEY IDENTITY,
[Name] VARCHAR (25) NOT NULL,
Duration int
)
CREATE TABLE Song( 
Id INT PRIMARY KEY IDENTITY,
usersId INT FOREIGN key REFERENCES Users(Id),
playsId INT FOREIGN key REFERENCES Playlist(PayId),
ArtistId INT FOREIGN  key REFERENCES Artist(ArtistId)

)



CREATE VIEW GetSong
AS
SELECT Users.Id,Artist.[Name] SONG FROM Users 
JOIN Song ON Users.Id=Song.Id
join Artist ON Song.Id=Artist.ArtistId

JOIN Categories ON Categories.CatagoryId=Users.Id
JOIN Playlist ON Users.Id=Playlist.PayId











INSERT INTO Users([Name],Username,[ Password],Gender) VALUES
('Yusif','Celilli','password','kisi')

INSERT INTO Artist([Name],Username,Birthday,Gender) VALUES
('Aygun','Kazimova','29 yanvar 1971','qadin')

INSERT INTO Categories([Name]) VALUES
('Diva')

	INSERT INTO Playlist([Name],Duration) VALUES
	('Qorxuram',145)