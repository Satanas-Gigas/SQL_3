--Название и год выхода альбомов, вышедших в 2018 году.
SELECT name, year 
FROM album
WHERE year = '2018';

--Название и продолжительность самого длительного трека.
SELECT name, time 
FROM track
WHERE time = (SELECT MAX(time) FROM track);
 
--Название треков, продолжительность которых не менее 3,5 минут.
SELECT name 
FROM track
WHERE time >= 210;

--Названия сборников, вышедших в период с 2018 по 2020 год включительно.
SELECT name 
FROM collection
WHERE year BETWEEN 2018 AND 2020;

--Исполнители, чьё имя состоит из одного слова.
SELECT name 
FROM singer
WHERE name NOT LIKE '% %';

--Название треков, которые содержат слово «мой» или «my». 
SELECT name 
FROM track
WHERE name LIKE '%мой%' OR name LIKE '%my%';