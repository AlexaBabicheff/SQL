create database tmp;
use tmp;

drop table users;

-- Создать таблицу "Users"

-- Поле "user_id" - уникальный идентификатор пользователя (целое число, автоинкрементное, первичный ключ).

-- Поле "user_name" - имя пользователя (строка, максимум 50 символов, обязательное).

-- Поле "email" - адрес электронной почты (строка, максимум 100 символов, уникальное).

-- Поле "age" - возраст пользователя (целое число, от 0 до 140).

-- Поле "gender" - пол пользователя (значение 'm' или 'f')

-- Добавить следующие данные в таблицу "Users"

-- Пользователь с именем "John Doe", адрес электронной почты "johndoe@example.com", возраст 30 лет.

-- Пользователь с именем "Jane Smith", адрес электронной почты "janesmith@example.com", возраст 25 лет.



create table users (
	usere_id integer primary key auto_increment,
    user_name varchar (50) default "NoName",
    email varchar(100) unique,
    age integer check (age between 0 and 140), 
    gender varchar(1) check (gender in ('m', 'f'))); 
    
insert into users (user_name, email, age)
value ('John Doe', 'johndoe@example.com', 30);

insert into users (user_name, email, age)
value ('Jane Smith', 'janesmith@example.com', 25);

select * from users;