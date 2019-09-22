
Schems

Company
   |_ Progects
         |_ Stages
              |_Tasks





// Roles
CREATE TABLE Roles (
Id            int primary key              // Ид 
Code          varchar(10)  NOT Null,       // Код   
Name          varchar(100) NOT NULL       // Имя  
)

// Users
CREATE TABLE Users (
Id            int primary key             // Ид
Login         varchar(100),               // Логин
Password      varchar(100),               // Логин
Hash          varchar(250),               // Hash login+pass 
Fist_name     varchar(50),                // Имя
Fist_name     varchar(50),                // Фамилия
Fist_name     varchar(50),                // Очество
Role          int,                        // Ид роли 
Position      varchar(100),               // Ид должности   
Company       int,                        // Ид компании  
Description   varchar(200))               // Описание  


// Companies
CREATE TABLE Companies (
Id            int primary key              // Ид 
Code          varchar(10)  NOT Null,       // Код   
Name          varchar(100) NOT NULL,       // Имя  
Date_create   datetime ,                   // Дата создания
Address       varchar(100),                // Адресс
Type          int)                         // Тип


// Projects

CREATE TABLE Projects (
Id            int primary key              // Ид проекта
Code          varchar(10)  NOT Null,       // Код   
Name          varchar(100) NOT NULL,       // Имя проекта 
Date_create   datetime ,                   // Дата создания 
Date_update   datetime,                    // Дата обновления
Created_at    int,                         // кто создал
Company       int NOT NULL,                // Ид компании
Manger        int ,                        // Ид менеджера проекта
Status        int ,                        // Ид статуса проектов
Note          varchar(400),                // Описание краткое проекта
Description   varchar(400),                // Описание краткое проекта
Flag          int)                         // Служебный признак 1-активный, 2-закрытый, 3-удаленный




// Stages
CREATE TABLE Stages (
Id            int primary key              // Ид 
Code          varchar(10)  NOT Null,       // Код   
Name          varchar(100) NOT NULL,       // Имя  
Company       int NOT NULL,                // Ид компании
Task          int NOT NULL)                // Ид задачи


 




// Tasks
CREATE TABLE Tasks (
Id            int primary key              // Ид
Code          varchar(10)  NOT Null,       // Код   
Name          varchar(100) NOT NULL,       // Имя проекта 
Date_create   datetime ,                   // Дата создания 
Date_update   datetime,                    // Дата обновления
Date_finish   datetime,                    // Дата окончания
Hours_plan    int,                         // Плановые часы на выполнение задачи
Hours_fact    int,                         // Фактические часы потраченные на выполнение задачи
Dificutly     int,                         // Сложность задачи (1...1000)
Priority      int,                         // 1-Низкая, 2-средний, 3-Высокий
Stage         int,                         // Ид этапа
Persent       int,                         // Процент выполнения 
Created_at    int,                         // кто создал
Company       int NOT NULL,                // Ид компании
Manger        int ,                        // Ид менеджера проекта
Executor      int,                         // Ид исполнителя (Users)
Status        int ,                        // Ид статуса проектов
Note          varchar(400),                // Описание краткое задачи
Description   varchar(400),                // Описание краткое задачи
Flag          int)                         // Служебный признак 1-активный, 2-закрытый, 3-удаленный



// Log
CREATE TABLE Logs (
Id            int primary key              // Ид
Name          varchar(100) NOT NULL,       // Имя проекта 
Date_create   datetime)                    // Дата создания 



// Settings
CREATE TABLE Settings (
Id            int primary key              // Ид
Code          varchar(10)  NOT Null,       // Код   
Name          varchar(100) NOT NULL,       // Имя проекта 
Val_str       varchar(100),                // Переменная строковая
Val_int       int)                         // Переменная числовая  









   
