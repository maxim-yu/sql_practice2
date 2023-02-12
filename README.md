##CREATE TABLE
***
###«Работа с SQL. Создание БД»
Задание

Будем развивать схему для музыкального сервиса.

Ранее было ограничение, что каждый исполнитель поет строго в одном жанре - пора убрать это ограничение. Исполнители могут петь в разных жанрах, как и одному жанру могут принадлежать несколько исполнителей.

Аналогичное ограничение было и с альбомами у исполнителей (альбом мог выпустить только один исполнитель). Теперь альбом могут выпустить несколько исполнителей вместе. Как и исполнитель может принимать участие во множестве альбомов.

С треками ничего не меняем, все так же трек принадлежит строго одному альбому.

Но появилась новая сущность - сборник. Сборник имеет название и год выпуска. В него входят различные треки из разных альбомов.

Обратите внимание: один и тот же трек может присутствовать в разных сборниках.

##INSERT INTO
***
###«Select-запросы, выборки из одной таблицы»

Заполните базу данных из предыдущего домашнего задания. В ней должно быть:

* не менее 8 исполнителей;
* 1 не менее 5 жанров;
* не менее 8 альбомов;
* не менее 15 треков;
* не менее 8 сборников.

Внимание! Должны быть заполнены все поля каждой таблицы, в т.ч. таблицы связей (исполнителей с жанрами, исполнителей с альбомами, сборников с треками).

##SELECT
***
Написать SELECT-запросы, которые выведут информацию согласно инструкциям ниже.

Внимание! Результаты запросов не должны быть пустыми (учтите при заполнении таблиц).

* название и год выхода альбомов, вышедших в 2018 году;
* название и продолжительность самого длительного трека;
* название треков, продолжительность которых не менее 3,5 минуты;
* названия сборников, вышедших в период с 2018 по 2020 год включительно;
* исполнители, чье имя состоит из 1 слова;
* название треков, которые содержат слово “мой”/“my”.