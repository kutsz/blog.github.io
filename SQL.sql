	

///////////////////////////////////////////////////////
Программа MySQL работает по протоколам TCP/IP, как и другие Internet
сервисы. Соединения различаются по имени узла и номеру порта. По умолчанию ис
пользуется порт 3306, но это конфигурируемый параметр.
В MySQL при меняется архитектура "клиент/сервер". Выделенный сервер способен
принимать запросы от множества клиентов. На сервер ложится достаточно большая на
грузка, тогда как клиенты представляют собой всего лишь программные оболочки.
Имя клиентского компьютера, с которого устанавливается соединение, преобра
зуется в IP адрес: четыре числа, разделенных точками. Например, специальному име
ни localhost соответствует адрес 127.0.0.1. Иногда такое преобразование выполня
ется на основании записей локальных таблиц ядра, но чаще всего — с помощью серве
ра DNS (Domain Name System — система доменных имен).
По умолчанию запрос на подключение поступает через порт 3306. Этот порт ПО
СТОЯННО прослушивается сервером MySQL. При ответе на запрос сервер создает сеанс
связи с клиентом. За сеансом закрепляются два порта: один будет использоваться для
отправки данных, а другой — для их приема.

//////////////////////////////////////////////////	
 		SQL(Structured Query Language) является стандартным языком 
		для доступа и управления базами данных.
		Программа базы данных СУБД (т.е. MS Access, SQL Server, MySQL)
		База данных — это набор связанных (не всегда) между собой таблиц.
		Отличительным признаком реляционной (от англ. relations — отношения) 	
		базы данных является как раз "набор взаимосвязанных таблиц".

		Таблица состоит из столбцов(поля) и строк(записи)

		- У каждого поля есть уникальное имя.
		- Каждое поле имеет один тип.
		- Поля располагаются в определенном порядке.
		- В ячейке хранится атомарное значение.
		- Первичный ключ.
____________________________
Атомарные операции — операции, выполняющиеся как единое целое, либо не выполняющиеся вовсе. Атомарность операций имеет особое значение в многопроцессорных компьютерах (и многозадачных операционных системах), так как доступ к разделяемым ресурсам должен быть обязательно атомарным.

Атомарное значение - это экземпляр одного из встроенных атомарных типов данных, которые определены в XML Schema. Эти типы данных включают в себя строки, целые числа, десятичные числа, даты и другие атомарные типы. Эти типы описаны как атомарные потому, что они не могут более разделяться.

Атомарность — (в программировании)  свойство непрерывности операции. Атомарная операция выполняется полностью (или происходит отказ в выполнении), без прерываний.
____________________________
		Первичный ключ (primary key)управляет порядком отображения записей в таблице. 
		Первичный ключ строится по одному полю, значение которого
		должно быть уникальным.

		Данные таблицы «Преподаватель»
		..............................
		....................................................................................
		Таб. №          ФИО            Уч. степень         Уч. звание           Код кафедры

		 101        Андреев А.П.     Д-р техн. наук         Профессор             01
		 102        Апухтин И.С.     Канд. техн. наук        Доцент               01
		....................................................................................
		В качестве первичного ключа в таблице «Преподаватель» может выступать только «Таб. №»,  
		значения других полей могут повторяться внутри данной таблицы.

		Вторичный индекс (secondary index) не обязательно должен быть уникальным,к тому же он может 
		строиться по нескольким полям сразу. Вторичные индексы, как
		правило, служат для связывания таблиц. Вторичный ключ еще иногда называют внешним ключом.

		Поле — это базовый элемент базы данных, из полей формируются записи. 
		Поле содержит информацию ранее заданного типа (тип поля задается при создании таблицы).
		Поля - столбцы. Записи - строки.
		Кроме полей, записей и таблиц в базе данных могут быть индексы (ключи), 
		они не менее важны, чем поля и таблицы. Индексы используются для быстрого поиска
		нужной записи и для управления порядком отображения записей. 
		Существуют первичный и вторичный индексы.



		SELECT - извлекает данные из базы данных
		UPDATE - обновляет данные в базе данных
		DELETE - удаляет данные из базы данных
		INSERT INTO - вставляет новые данные в базу данных

		CREATE DATABASE - создает новую базу данных
		ALTER DATABASE - изменяет базу данных
		CREATE TABLE - создает новую таблицу
		ALTER TABLE - модифицирует таблицу
		DROP TABLE - удаляет таблицу

		CREATE INDEX - создает индекс (ключ поиска)
		DROP INDEX - удаляет индекс
...........................
		SELECT - extracts data from a database
		UPDATE - updates data in a database
		DELETE - deletes data from a database
		INSERT INTO - inserts new data into a database
		CREATE DATABASE - creates a new database
		ALTER DATABASE - modifies a database
		CREATE TABLE - creates a new table
		ALTER TABLE - modifies a table
		DROP TABLE - deletes a table
		CREATE INDEX - creates an index (search key)
		DROP INDEX - deletes an index
		....................................
SQL SELECT Синтаксис:( используется для выбора данных из базы данных.)

	SELECT  column_name,column_name  FROM  table_name;
а также

	SELECT * FROM table_name;  // выбирает все столбцы из таблицы
..............................
DISTINCT ключевое слово можно использовать для возврата только отдельные (различные) значения.
The DISTINCT keyword can be used to return only distinct (different) values.

	SELECT DISTINCT column_name,column_name
	FROM table_name;
.........................................
The WHERE clause is used to extract only those records that fulfill a specified criterion
( используется для извлечения только те записи, которые удовлетворяют заданному критерию)

	SELECT column_name,column_name
	FROM table_name
	WHERE column_name operator value;

Example:
SELECT * FROM Customers
WHERE Country='Mexico';

SELECT * FROM Customers
WHERE CustomerID=1;

The following operators can be used in the WHERE clause:
------------------------------------------------------
     Operator               Description
	=			Equal
	<> (!=)			Not equal. Note: In some versions of SQL this operator may be written as !=
	>			Greater than
	<			Less than
	>=			Greater than or equal
	<=			Less than or equal
	BETWEEN			Between an inclusive range
	LIKE			Search for a pattern
	IN			o specify multiple possible 
------------------------------------------------------------
.............................................................
 AND   &   OR

Example:

SELECT * FROM Customers
WHERE Country='Germany'
AND City='Berlin';

SELECT * FROM Customers
WHERE City='Berlin'
OR City='München';

....................................................
 ORDER BY
ORDER BY ключевое слово используется для сортировки множества результатов по одному или нескольким столбцам.
(сортирует записи в порядке возрастания по умолчанию. Для сортировки записей в порядке убывания, вы можете использовать ключевое слово DESC.)
The ORDER BY keyword sorts the records in ascending order by default. To sort the records in a descending order, you can use the DESC keyword.

	SELECT column_name, column_name
	FROM table_name
	ORDER BY column_name ASC|DESC, column_name ASC|DESC;        //TO DO

Example:

SELECT * FROM Customers
ORDER BY Country;

SELECT * FROM Customers
ORDER BY Country DESC;

SELECT * FROM Customers
ORDER BY Country, CustomerName;

SELECT * FROM Customers
ORDER BY Country ASC, CustomerName DESC;

.........................................................................
INSERT INTO  используется для вставки новых записей в таблице.
The INSERT INTO statement is used to insert new records in a table.

Первая форма не определяет имена столбцов, где будут вставлены данные, только их значения

	INSERT INTO table_name
	VALUES (value1,value2,value3,...);  //TO DO

Вторая форма задает как имена столбцов и значения для вставки:

	INSERT INTO table_name (column1,column2,column3,...)
	VALUES (value1,value2,value3,...);                        //TO DO

Example:
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('Cardinal','Tom B. Erichsen','Skagen 21','Stavanger','4006','Norway');

...................................................

UPDATE    statement is used to update existing records in a table.
( используется для обновления записей в таблице.)

	UPDATE table_name
	SET column1=value1,column2=value2,...
	WHERE some_column=some_value;                       //TO DO

Example:
UPDATE Customers
SET ContactName='Alfred Schmidt', City='Hamburg'
WHERE CustomerName='Alfreds Futterkiste';

Be careful when updating records. If we had omitted the WHERE clause, in the example above, like this:
(Будьте осторожны при обновлении записей. Если бы мы опустили условие,таблица выглядела бы иначе)
UPDATE Customers
SET ContactName='Alfred Schmidt', City='Hamburg';

............................................................

 DELETE            statement is used to delete rows in a table(используется для удаления записей(строк) в таблице.)

	DELETE FROM table_name
	WHERE some_column=some_value;               //TO DO

	!!!!!!   Notice the WHERE clause in the SQL DELETE statement!
The WHERE clause specifies which record or records that should be deleted. If you omit the WHERE clause, all records will be deleted!

Example:
DELETE FROM Customers
WHERE CustomerName='Alfreds Futterkiste' AND ContactName='Maria Anders';

Удалить все данные
Можно удалить все строки в таблице, не удаляя таблицу. Это означает, что структура таблицы, атрибуты и индексы будут неповрежденными:

DELETE FROM table_name;      //TO DO

or

DELETE * FROM table_name;
Примечание: Будьте очень внимательны при удалении записей. Вы не можете отменить это заявление! //TO DO

.................................................................................
SELECT id_catalog , nаmе FROМ catalogs ORDER ВУ RAND ();   // ВЫВОД записей в случайном порядке          //TO DO

.........................
SQL Injection   ???????????
........................
SQL SELECT TOP Equivalent in MySQL

	SELECT column_name(s) FROM table_name LIMIT number;            //TO DO
Example:
SELECT * FROM Persons LIMIT 5;
В следующем SQL оператор выбирает два первых записей из таблицы "Клиенты":
The following SQL statement selects the two first records from the "Customers" table: 
   
SELECT TOP 2 * FROM Customers;

В следующем SQL оператор выбирает первые 50% записей из таблицы "Клиенты":
The following SQL statement selects the first 50% of the records from the "Customers" table: 
   
SELECT TOP 50 PERCENT * FROM Customers;           //TO DO

Что делать, если мы хотим, чтобы выбрать записи 16 - 25 (включительно)?                       //TO DO

	SELECT * FROM <таблица> [WHERE <условие>] LIMIT <start>, <offset>

Здесь start — это номер начальной записи, а offset — это смещение, данный параметр задает, сколько записей нужно вывести, начиная от начальной, заданной параметром start .                 //TO DO

Mysql также обеспечивает способ справиться с этим: с помощью OFFSET.

SQL запросов ниже говорит "возвращать только 10 записей, начать запись 16 (смещение 15)": //TO DO

$sql = "SELECT * FROM Orders LIMIT 10 OFFSET 15";                       //TO DO
Кроме того, можно использовать более короткую синтаксис для достижения того же результата:

$sql = "SELECT * FROM Orders LIMIT 15, 10";
Обратите внимание, что число меняются местами, когда вы использовать запятую.
...........................................
SQL LIKE Syntax

	SELECT column_name(s)
	FROM table_name
	WHERE column_name LIKE pattern;                   //TO DO

The following SQL statement selects all customers with a City starting with the letter "s":
В следующем SQL оператор выбирает всех клиентов с городом, начинающиеся с буквы "S":
Example:

SELECT * FROM Customers
WHERE City LIKE 's%';           //TO DO

Совет: Знак "%" используется для определения маски (недостающие буквы) до и после рисунка. Вы узнаете больше о знаках подстановки в следующей главе. //TO DO

В следующем SQL оператор выбирает всех клиентов с городом заканчивая буквой "S":
пример
SELECT * FROM Customers
WHERE City LIKE '%s';               //TO DO

В следующем SQL оператор выбирает всех клиентов со страной, содержащего шаблон "землю":
пример
SELECT * FROM Customers
WHERE Country LIKE '%land%';              //TO DO

В следующем SQL оператор выбирает всех клиентов с страна не содержащий шаблон "землю":
пример
SELECT * FROM Customers
WHERE Country NOT LIKE '%land%';      //TO DO

......................................

SQL Wildcard Characters(SQL метасимволы)
В SQL подстановочные символы используются с оператором SQL LIKE.
SQL символы используются для поиска данных в таблице.                           //TO DO
------------------------------------
Wildcard	              Description
   %			A substitute for zero or more characters

   _			A substitute for a single character

 [charlist]		Sets and ranges of characters to match

 [^charlist]            Matches only a character NOT specified within the brackets
  or
 [!charlist]	
--------------------------------------
Использование SQL% Wildcard

В следующем SQL оператор выбирает всех клиентов с городом начинается с "BER":
пример
SELECT * FROM Customers
WHERE City LIKE 'ber%';

В следующем SQL оператор выбирает всех клиентов с городом, содержащий образец "ES": 
пример
SELECT * FROM Customers
WHERE City LIKE '%es%';

Использование SQL _ Wildcard
В следующем SQL оператор выбирает всех клиентов с городом начинается с любого характера, а затем "Erlin":
пример
SELECT * FROM Customers
WHERE City LIKE '_erlin';

В следующем SQL оператор выбирает всех клиентов с городом начинается с "L", за которым следует один, а затем "N", за которым следует один, а затем "на":
пример
SELECT * FROM Customers
WHERE City LIKE 'L_n_on';

Использование SQL [charlist] Wildcard
В следующем SQL оператор выбирает всех клиентов с городом начинается с "B", "S", или "р":
пример
SELECT * FROM Customers
WHERE City LIKE '[bsp]%';

В следующем SQL оператор выбирает всех клиентов с городом начинается с "A", "B", или "С":
пример
SELECT * FROM Customers
WHERE City LIKE '[a-c]%';

В следующем SQL оператор выбирает всех клиентов с городом, начиная с "B", "S", или "р":
пример
SELECT * FROM Customers
WHERE City LIKE '[!bsp]%';

or

SELECT * FROM Customers
WHERE City NOT LIKE '[bsp]%';

.................................................................................
SQL IN Syntax                              //TO DO

	SELECT column_name(s)
	FROM table_name
	WHERE column_name IN (value1,value2,...);

В следующем SQL оператор выбирает всех клиентов с городом "Париж" или "Лондон":            //TO DO
пример
SELECT * FROM Customers
WHERE City IN ('Paris','London');

.................................................................................
SQL BETWEEN Syntax

	SELECT column_name(s)
	FROM table_name
	WHERE column_name BETWEEN value1 AND value2;           //TO DO

В следующем SQL оператор выбирает все продукты с ценой от 10 до 20:
пример
SELECT * FROM Products
WHERE Price BETWEEN 10 AND 20;

NOT BETWEEN
Для отображения продукции за пределы диапазона предыдущего примера, использовать NOT BETWEEN:
пример
SELECT * FROM Products
WHERE Price NOT BETWEEN 10 AND 20;


BETWEEN Operator with IN Example
В следующем SQL оператор выбирает все продукты с ценой от 10 до 20, но продукты с CategoryID 1,2 или 3 не должно отображаться:
пример
SELECT * FROM Products
WHERE (Price BETWEEN 10 AND 20)
AND NOT CategoryID IN (1,2,3);                             //TO DO   //TO DO     /////////////////


В следующем SQL оператор выбирает все продукты с ProductName начиная с любой буквы между "C" и "M":
пример
SELECT * FROM Products
WHERE ProductName BETWEEN 'C' AND 'M';

В следующем SQL оператор выбирает все продукты с ProductName начиная с любой из письма не между 'C' и 'M':
пример
SELECT * FROM Products
WHERE ProductName NOT BETWEEN 'C' AND 'M';

В следующем SQL оператор выбирает все заказы со OrderDate МЕЖДУ '04-июле 1996 года »и '09-июле 1996 года":
пример
SELECT * FROM Orders
WHERE OrderDate BETWEEN #07/04/1996# AND #07/09/1996#;              //TO DO


Notice that the BETWEEN operator can produce different result in different databases!
In some databases, BETWEEN selects fields that are between and excluding the test values.
In other databases, BETWEEN selects fields that are between and including the test values.
And in other databases, BETWEEN selects fields between the test values, including the first test value and excluding the last test value.

Therefore: Check how your database treats the BETWEEN operator!

.................................................

SQL Aliases
SQL псевдонимы используются, чтобы дать таблицы базы данных или столбец в таблице, временное имя.  //TO DO
В основном создаются псевдонимы, чтобы сделать имена столбцов более читаемым.
Псевдонимы могут быть полезны при:

Есть более чем одна таблица в запросе
Функции используются в запросе
Имена столбцов большие или не очень читаемый
Два или более столбцов объединены вместе

SQL Alias Syntax for Columns
	SELECT column_name AS alias_name
	FROM table_name;

SQL Alias Syntax for Tables
	SELECT column_name(s)
	FROM table_name AS alias_name;

Псевдоним Пример столбцов таблицы
В следующем SQL оператор определяет два псевдонима: один для столбца CustomerName и один для ContactName колонке. Подсказка: Это требует двойные кавычки или квадратные скобки, если имя столбца содержит пробелы:  //TO DO
пример
SELECT CustomerName AS Customer, ContactName AS [Contact Person] FROM Customers;        //TO DO      

В следующем заявлении SQL мы объединяем четыре колонки (адрес, город, почтовый индекс, и страна) и создать псевдоним с именем "Адрес":
пример
SELECT CustomerName, Address+', '+City+', '+PostalCode+', '+Country AS Address                //TO DO
FROM Customers;

Примечание: Чтобы получить заявление SQL выше работать в MySQL использовать следующее:

SELECT CustomerName, CONCAT(Address,', ',City,', ',PostalCode,', ',Country) AS Address        //TO DO
FROM Customers;

Псевдоним Пример таблицах
В следующем SQL оператор выбирает все заказы от клиента с CustomerID = 4 (вокруг рога). Мы используем «Клиенты» и «Заказы» таблицы, и дать им псевдонимы таблиц "С" и "O" соответственно (Здесь мы использовали псевдонимы, чтобы сделать SQL короче):
пример
SELECT o.OrderID, o.OrderDate, c.CustomerName
FROM Customers AS c, Orders AS o
WHERE c.CustomerName="Around the Horn" AND c.CustomerID=o.CustomerID;

Же утверждение SQL без псевдонимов:
пример
SELECT Orders.OrderID, Orders.OrderDate, Customers.CustomerName
FROM Customers, Orders
WHERE Customers.CustomerName="Around the Horn" AND Customers.CustomerID=Orders.CustomerID;
...................................................................................................

SQL JOIN (используется для объединения строк из двух или более таблиц, на основе общего поля между ними)

	INNER JOIN :         Возвращает все строки, когда есть хотя бы одно совпадение в обеих таблицах
	LEFT JOIN  :         Возврат всех строк из левой таблицы, и совпавшие строки из таблицы справа
	RIGHT JOIN :         Возврат всех строк из таблицы справа, и совпавшие строки из левой таблицы
	FULL JOIN  :         Возврат всех строк, когда есть совпадение в одной из таблиц
        FULL OUTER JOIN      returns all rows from the left table (table1) and from the right table (table2),
                             combines the result of both LEFT and RIGHT joins.
....................
 "Orders" table:

OrderID	                CustomerID	                OrderDate
 10308	                    2	                        1996-09-18
 10309	                    37	                        1996-09-19
 10310	                    77	                        1996-09-20
..............................
 "Customers" table:

CustomerID	              CustomerName	                        ContactName	                         Country
 1	                  Alfreds Futterkiste	                        Maria Anders	                         Germany
 2	                  Ana Trujillo Emparedados	                Ana Trujillo	                          Mexico
 3	                  Antonio Moreno Taquería	                Antonio Moreno	                          Mexico

..................................................
Example:
SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
FROM Orders
INNER JOIN Customers
ON Orders.CustomerID=Customers.CustomerID;

it will produce something like this:

OrderID	                                        CustomerName	                         OrderDate
10308	                                    Ana Trujillo Emparedados	                  9/18/1996
10365	                                    Antonio Moreno Taquería	                  11/27/1996
10383	                                    Around the Horn	                          12/16/1996
10355	                                    Around the Horn	                          11/15/1996
10278	                                    Berglunds snabbköp	                           8/12/1996
...............................
SQL INNER JOIN Syntax

	SELECT column_name(s)
	FROM table1
	INNER JOIN table2
	ON table1.column_name=table2.column_name;

     or:

	SELECT column_name(s)
	FROM table1
	JOIN table2
	ON table1.column_name=table2.column_name;


пример
SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
INNER JOIN Orders
ON Customers.CustomerID=Orders.CustomerID
ORDER BY Customers.CustomerName;

..................................................

SQL LEFT JOIN Syntax
The LEFT JOIN keyword returns all rows from the left table (table1), with the matching rows in the right table (table2). The result is NULL in the right side when there is no match(по ключевым словам отображает все строки из левой таблицы (table1), с соответствующими строками таблицы справа (table2). В результате в правой части NULL, когда нет совпадения.)

	SELECT column_name(s)
	FROM table1
	LEFT JOIN table2
	ON table1.column_name=table2.column_name;
or:

	SELECT column_name(s)
	FROM table1
	LEFT OUTER JOIN table2
	ON table1.column_name=table2.column_name;


Example
SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID=Orders.CustomerID
ORDER BY Customers.CustomerName;

....................................................................

SQL RIGHT JOIN Syntax
The RIGHT JOIN keyword returns all rows from the right table (table2), with the matching rows in the left table (table1). The result is NULL in the left side when there is no match(по ключевым словам отображает все строки из правой таблицы (table2), с соответствующими строками в таблице слева (table1). Результатом является в левой стороне NULL, когда нет совпадения.)

	SELECT column_name(s)
	FROM table1
	RIGHT JOIN table2
	ON table1.column_name=table2.column_name;
or:

	SELECT column_name(s)
	FROM table1
	RIGHT OUTER JOIN table2
	ON table1.column_name=table2.column_name;


...........................................................

SQL FULL OUTER JOIN Syntax( полное внешнее объединение)
The FULL OUTER JOIN keyword returns all rows from the left table (table1) and from the right table (table2).
The FULL OUTER JOIN keyword combines the result of both LEFT and RIGHT joins.
Полное внешнее объединение по ключевым словам отображает все строки из левой таблицы (Table1) и от правой таблицы (TABLE2).
Полное внешнее объединение ключевое слово объединяет результат слева и справа присоединяется.


	SELECT column_name(s)
	FROM table1
	FULL OUTER JOIN table2
	ON table1.column_name=table2.column_name;

..................................

SQL UNION Syntax
The SQL UNION operator combines the result of two or more SELECT statements.
Example: 
SELECT column_name(s) FROM table1
UNION
SELECT column_name(s) FROM table2;

SQL UNION ALL Example




>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>/////////http://www.w3schools.com/sql/sql_quickref.asp
/////////////////////////////////////////////////////////////////////////////////////
	SQL Statement			  Syntax
.........................................................................................
	AND / OR			SELECT column_name(s) FROM table_name WHERE condition AND|OR condition
.........................................................................................
	ALTER TABLE			ALTER TABLE table_name ADD column_name datatype
								or
					ALTER TABLE table_name DROP COLUMN column_name
.............................................................................................................................

	AS (alias)	                SELECT column_name AS column_alias FROM table_name
                                               or
                                        SELECT column_name FROM table_name  AS table_alias
..........................................................................................................................
	BETWEEN	 			SELECT column_name(s) FROM table_name WHERE column_name
                                        BETWEEN value1 AND value2
......................................................................................................................
	CREATE DATABASE			CREATE DATABASE database_name
..........................................................................................................................
	CREATE TABLE			CREATE TABLE table_name
					(
					column_name1 data_type,
					column_name2 data_type,
					column_name3 data_type,
					...
					)
.................................................................................................................
	CREATE INDEX			CREATE INDEX index_name ON table_name (column_name)
						or

					CREATE UNIQUE INDEX index_name ON table_name (column_name)
.............................................................................................................	

	CREATE VIEW			CREATE VIEW view_name AS SELECT column_name(s) FROM table_name
					WHERE condition
.................................................................................................................
	DELETE				DELETE FROM table_name WHERE some_column=some_value
							or
					DELETE FROM table_name  (Note: Deletes the entire table!!)

					DELETE * FROM table_name (Note: Deletes the entire table!!)
...................................................................................................................

	DROP DATABASE	 		DROP DATABASE database_name
....................................................................................................................
	DROP INDEX			DROP INDEX table_name.index_name (SQL Server)
					DROP INDEX index_name ON table_name (MS Access)
					DROP INDEX index_name (DB2/Oracle)
					ALTER TABLE table_name
					DROP INDEX index_name (MySQL)
....................................................................................................................
	DROP TABLE			DROP TABLE table_name
......................................................................................................................
	EXISTS				IF EXISTS (SELECT * FROM table_name WHERE id = ?)
					BEGIN
					--do what needs to be done if exists
					END
					ELSE
					BEGIN
					--do what needs to be done if not
					END
..........................................................................................................
	GROUP BY			SELECT column_name, aggregate_function(column_name) FROM table_name
					WHERE column_name operator value GROUP BY column_name
............................................................................................................
	HAVING				SELECT column_name, aggregate_function(column_name) FROM table_name
					WHERE column_name operator value
					GROUP BY column_name
					HAVING aggregate_function(column_name) operator value
...............................................................................................................
	IN				SELECT column_name(s) FROM table_name WHERE column_name IN (value1,value2,..)
.........................................................................................................................
	INSERT INTO			INSERT INTO table_name VALUES (value1, value2, value3,....)
							or

					INSERT INTO table_name(column1, column2, column3,...)
					VALUES (value1, value2, value3,....)
.......................................................................................................................
	INNER JOIN			SELECT column_name(s) FROM table_name1 INNER JOIN table_name2 
					ON table_name1.column_name=table_name2.column_name
........................................................................................................................
	LEFT JOIN			SELECT column_name(s) FROM table_name1 LEFT JOIN table_name2 
					ON table_name1.column_name=table_name2.column_name
......................................................................................................................
	RIGHT JOIN			SELECT column_name(s) FROM table_name1 RIGHT JOIN table_name2 
					ON table_name1.column_name=table_name2.column_name
....................................................................................................................
	FULL JOIN			SELECT column_name(s) FROM table_name1 FULL JOIN table_name2 
					ON table_name1.column_name=table_name2.column_name
....................................................................................................................
	LIKE				SELECT column_name(s) FROM table_name WHERE column_name LIKE pattern
...................................................................................................................
	ORDER BY			SELECT column_name(s) FROM table_name ORDER BY column_name [ASC|DESC]
......................................................................................................................
	SELECT				SELECT column_name(s) FROM table_name
.........................................................................................................................
	SELECT *			SELECT * FROM table_name
....................................................................................................................
	SELECT DISTINCT			SELECT DISTINCT column_name(s) FROM table_name
.....................................................................................................................
	SELECT INTO			SELECT * INTO new_table_name [IN externaldatabase] FROM old_table_name
								or

					SELECT column_name(s) INTO new_table_name [IN externaldatabase] FROM old_table_name
.............................................................................................................................

	SELECT TOP			SELECT TOP number|percent column_name(s) FROM table_name
............................................................................................................................
	TRUNCATE TABLE	 		TRUNCATE TABLE table_name
................................................................................................................
	UNION				SELECT column_name(s) FROM table_name1
					UNION
					SELECT column_name(s) FROM table_name2
.......................................................................................................................
	UNION ALL			SELECT column_name(s) FROM table_name1
					UNION ALL
					SELECT column_name(s) FROM table_name2
..........................................................................................................................
	UPDATE				UPDATE table_name SET column1=value, column2=value,...
					WHERE some_column=some_value
.............................................................................................................
	WHERE				SELECT column_name(s) FROM table_name WHERE column_name operator value
.....................................................................................................................
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
VARCHAR (variable charасter ) хранится текстовая  инормация
VARCHAR(5) длина текста не превышает 5 символов (до 255)
CHAR
INT
DECIMAL (хранение чисел с заданной точностью)
BLOB (большие блоки текстовой инфо.)
DATE (дата)
TIMESTAMP (дата и время)
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
SQL — язык, используемый реляцион­ными базами данных. 
Как вы думаете,что означает термин «реляционный» в контексте баз данных SQL ?
Для нас оно означает, прежде всего, одно: чтобы правильно спроектировать таблицу, необходимо
продумать, как столбцы связываются друг с другом для описания не­ которого объекта.
Ваша задача — описать объект при помощи столбцов так, чтобы по
возможности упростить получение необходимой информации.
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
Что такое «атом»? Маленький блок информации, который невозможно (или нежелательно)
разделить на составные части меньшего размера. Это определение относится и к данным:
АТОМАРНЫЕ данные были разделены на наименьшие компоненты, дальнейшее деление
которых невозможно или нежелательно.

Для примера возьмем курьера, доставляющего
пиццу юшептам. Чтобы выполнить свою работу,
ему достаточно знать улицу и номер дома в одном
столбце. Для пего эти данные являются атомарны­
ми: курьеру никогда не приходится искать номер
дома отдельно от названия улицы.

А теперь возьмем агента по торговле не­
движимостью. Вполне возможно, что ему
понадобится отдельный столбец с номером
дома — допустим, чтобы он мог получить
список всех предложений по заданной ули­
це. Для него название улицы и номер дома
являются атомарными данными.

Атомарность данных подразумевает разбиение данных на наименьшие части, необходимые для создания эффективной
таблицы, а не просто на самые мелкие части из всех возможных.
Не дробите данные сверх необходимости. Если лишние столбцы вам не нужны, не добавляйте их.
Атомарность упрощает контроль за правильностью данных в таблице. Например, если в столбце хранятся номера домов,
можно проследить за тем, чтобы в этом столбце хранились только числовые данные.
Кроме того, атомарность повышает эффективность запросов:запросы к атомарным данным быстрее пишутся и выполняют­
ся, что дает ощутимый эффект при хранении очень больших объемов данных.

ПРАВИЛО 1. Столбец, содержащий атомарные данные,
не может состоять из нескольких однотипных элементов.
ПРАВИЛО 2. Таблица с атомарными данными
не может содержать несколько однотипных столбцов.

Каждая запись должна содержать атомарные значения.
Каждая запись должна обладать уникальным идентификатором,который называется первичным ключом.
>>>>>>>>>>>>>>>>>>>>>
Первичный ключ — столбец таблицы,имеющий уникальное значение для каждой записи.
Первичный ключ используется для однозначной идентификации записей.
Это значит, что данные в столбце первично­го ключа не могут повторяться.

Первичный ключ не может содержать NULL
Значение NULL не может быть уникальным, потому что в других записях этот столбец тоже может со­держать NULL .

Значение первичного ключа должно задаваться при вставке записи
При вставке в таблицу записи без указания
значения первичного ключа возникает
риск создания записи с первичным ключом
NULL и появления дубликатов, а это нарушает
требования первой нормальной формы.

Первичный ключ должен быть компактным
Первичный ключ должен содержать
только ту информацию, которая обеспе­чивает его уникальность, и ничего более.

Значения первичного ключа должны оставаться неизменными
Если бы первичный ключ можно было
изменять, то ему можно было бы случай­
но присвоить уже используемое значение.
Помните, что первичный ключ должен быть уникальным.
////////////
CREATE TABLE table1(location VARCHAR(2)) AS SELECT*FROM toys;
INSERT INTO table1(location) VALUES('UI');
UPDATE table1 SET location='UI';


CREATE TABLE Table2(location VARCHAR(2)) AS SELECT*FROM toys;
...............
CREATE TABLE t1_T2 AS SELECT*FROM table1
UNION ALL
SELECT*FROM Table2;

CREATE TABLE t1_T2_1(id VARCHAR(2)) AS 
SELECT*FROM table1
UNION ALL
SELECT*FROM Table2;
..........????????????
////SELECT*INTO table2(location VARCHAR(2)) AS SELECT*FROM toys;

CREATE TABLE table2(location VARCHAR(2)) AS SELECT*FROM toys UPDATE table2 SET location='T2';

CREATE TABLE table3(location VARCHAR(2)) INSERT INTO table3(location) VALUES('UI') SELECT*FROM toys;
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

 mysql -u debian-sys-maint -p
Enter password: zezwSEVTHdx2Xifk




mysql> CREATE DATABASE dbname;
mysql> USE dbname;      (USE команда откр. базу данных для создания таблиц)
mysql> CREATE TABLE table1
    -> (id INT(4),name VARCHAR(100));

mysql> DESC table1
    -> ;
+-------+--------------+------+-----+---------+-------+
| Field | Type         | Null | Key | Default | Extra |
+-------+--------------+------+-----+---------+-------+
| id    | int(4)       | YES  |     | NULL    |       |
| name  | varchar(100) | YES  |     | NULL    |       |
+-------+--------------+------+-----+---------+-------+
DESC - сокр. от DESCRIBE(вывести описание)
______________________________________________

DROP TABLE удалит таблицу

mysql> INSERT INTO table1(id,name) VALUES(1,'John');
Query OK, 1 row affected (0.03 sec)

Команда DESC уже не подойдет — она выводит только структуру таблицы,но не хранящуюся в ней информацию. 
А для вывода дан­ных, хранящихся в таблице, используется команда выборки SELECT.

mysql> SELECT*FROM table1;
+------+------+
| id   | name |
+------+------+
|    1 | John |
+------+------+

NULL: Значение из двух апострофов, между которыми нет ни одного символа. Оно все
равно рассматривается как текстовая строка,но имеющая нулевую длину. 
Скажем, как если бы столбцу   f i r s t name   в таблице  my c o n ta c ts 
было присвоено значение ".

Выходит, вы не просто хитроум­ный синоним для «ничто»?
NULL: Говорю же, я не «ничто»! Я есть! Про­сто мое состояние немного... неопределен­ное.
#Выходит, если сравнить вас с нулем или пустой строкой, вы не будете им равны?
NULL: Нет! Я никогда не равен нулю. Более того, я даже не равен какому-нибудь другому
NULL. Сравнивать два NULL между собой нельзя. Столбец может содержать NULL, но его значение никогда 
не равно NULL, по­тому что NULL — неопределенное значение!

	NULL: Знаю, это нелегко понять. Считайте,
	что я не определен. Я — как содержимое за­
	крытой коробки, в которой может лежать
	все что угодно. Сравнивать одну закрытую
	коробку с другой нельзя, потому что вы не
	знаете, что лежит в этих коробках. Они во­
	обще могут быть пустыми. Что внутри — неиз­
	вестно.

	Некоторые столбцы всегда должны
	иметь определенное значение — например,
	столбец фамилии. Бессмысленно создавать
	в таблице описание человека с неопределен­
	ной фамилией.При создании
	таблицы и определении столбцов укажи­
	те: в этом столбце NULL быть не должно.
	И я там не появлюсь.

	NULL — неопределенное значение, которое
	не равно нулю или пустой строке. Для
	столбца, содержащего null, выполняется
	условие IS NULL, но при этом он не равен
	NULL.

	Столбцы, значение которых не указано
	в команде insert , по умолчанию инициа­
	лизируются NULL.

	Чтобы запретить хранение null в столбце,
	используйте ключевые слова NOT NULL
	при создании таблицы.

	Условие DEFAULT определяет значение по
	умолчанию — если при заполнении табли­
	цы значение столбца не указано, он авто­
	матически заполняется этим значением.


)
mysql> UPDATE T1 SET text='By default, a table column can hold NULL values.'
    -> WHERE id=1;

Команда update может использоваться для изменения
значения одного столбца или группы столбцов. Включи­
те дополнительные пары столбец = значение в усло­
вие SET и поставьте запятую после каждой пары:

UPDATE your_table 
SET первый_столбец= 'новое_значение ',второй_столбец = 'старое_значение';

Команда update может изменять одну запись или
несколько записей в зависимости от условия where.

Что произойдет, если условие WHERE не задано?
Каждый столбец, указанный в условии SET, будет обновлен
новым значением.
В запросе SQL на предыдущей странице два операто­ра =, которые используются для разных целей. Это нор­мально?
Абсолютно. Оператор = в условии SET означает «присвоить
столбцу указанное значение», а оператор = в условии WHERE
проверяет, равно ли текущее значение столбца значению, ука­занному после знака.

Команда UPDATE
заменяет комбинацию
INSERT/DELETE.

mysql> UPDATE T2 SET Sum_pay=Sum_pay*2 WHERE T_num=3;

mysql> UPDATE T2 SET Sum_pay=Sum_pay*2 WHERE Sum_pay=2.12;

Команда UPDATE мо­
жет работать с груп­
пами записей таблицы.
Используйте ее с основ­
ными математическими
операторами для обнов­
ления числовых данных.

mysql> UPDATE T1 SET text=UCASE(text) WHERE id=1;
+------+------+---------------+----------------------------------------------------------------------+--------+
| id   | name | e_mail        | text                                                                 | sec_id |
+------+------+---------------+----------------------------------------------------------------------+--------+
|    1 | John | john@qqqq.www | BY DEFAULT, A TABLE COLUMN CAN HOLD NULL VALUES.                     |   NULL |
|    2 | Kate | kate@qqqq.www | SELECT column_name(s)
                              |  FROM table_name
                              | WHERE column_name LIKE pattern                                       |   NULL |
+------+------+---------------+----------------------------------------------------------------------+--------+

..................  AND & OR Operators ...............
The AND operator displays a record if both the first condition AND the second condition are true.
The OR operator displays a record if either the first condition OR the second condition is true.

Ex:
SELECT * FROM Customers WHERE Country='Germany' AND (City='Berlin' OR City='München');
_________________________________________________________

.......... LIKE Operator...............
The LIKE operator is used to search for a specified pattern in a column.

SELECT column_name(s) FROM table_name WHERE column_name LIKE pattern;
................................................................


mysql> DELETE FROM T1 WHERE id IS NULL;

Условие WHERE в командах DELETE
работает точно так же,
как в командах SELECT.

mysql> INSERT INTO T2 VALUES (2,21234,'4.09.2016',4452.23),(3,32254,'4.09.2016',7452.23);

Команда delete не позволяет удалить значение одного столбца или группы столбцов.
Команда delete удаляет из таблицы одну или несколько запи­сей (в зависимости от условия where ).
Условия WHERE одинаковые, но сами команды SELECT и DELETE существенно отличаются.
Команда SELECT возвращает копию столбцов из записей, удовлетворяющих условию WHERE, не изменяя таблицу
Команда DELETE удаляет все записи, удовлетворяющие условию WHERE.
B нем могут использоваться все конструкции из главы 2, в том числе
 like , in , between и операторы сравнения.
Будьте осторожны — следующая команда удаляет из таблицы все записи:
DELETE FROM your_table


CREATE TABLE Persons
(
ID int NOT NULL AUTO_INCREMENT,
LastName varchar(255) NOT NULL,
FirstName varchar(255),
Address varchar(255) default NULL,
City varchar(255),
OrderDate date DEFAULT GETDATE()
PRIMARY KEY (ID)
)
.......................
Команда SHOW может использоваться для вывода
информации о столбцах таблицы:

SHOW COLUMNS FROM table_name ;

Команда выводит описания всех столбцов таблицы
с типами данных, а также другими сведениями, относя­щимся к конкретным столбцам.

SHOW CREATE DATABASE databasename;

По аналогии с командой SHOW CREATE <таблица>,
эта команда выводит код команды создания базы данных.

SHOW INDEX FROM table_name ;

Команда выводит информацию об индексируемых
столбцах и типах индексов. До настоящего момента
из индексов нам встречались только первичные ключи,
но скоро вы лучше поймете смысл этой команды.
и еще одна ОЧЕНЬ полезная команда:

SHOW WARNINGS;

Если на консоли выводится сообщение о том, что
выполнение команды SQL привело к выдаче предупре­
ждений, то для просмотра предупреждений используется
команда SHOW WARNINGS.

Команда SHOW CREATE_TABLE возвращает команду CREATE TABLE,
которая была использована для создания таблицы (до занесения
в таблицу первых данных).
...................
The ALTER TABLE statement is used to add, delete, or modify columns in an existing table.

ALTER TABLE table_name ADD column_name datatype                 // To add a column in a table    // TO DO


Ex:
ALTER TABLE my_contacts
ADD COLUMN contact_id INT NOT NULL AUTO_INCREMENT FIRST,
ADD PRIMARY KEY(contact_id) ;

Ex:
ALTER TABLE my_contacts
ADD COLUMN phone, VARCHAR(10) AFTER first_name;

Наряду с ключевыми словами FIRST и AFTER при
вставке столбцов могут использоваться ключевыеслова BEFORE и LAST.А также SECOND, THIRD И так далее.


mysql> ALTER TABLE T1 ADD sec_id int(4);

ALTER TABLE table_name DROP COLUMN column_name              //To delete a column in a table    // TO DO



ALTER TABLE table_name MODIFY COLUMN column_name datatype     //To change the data type of a column in a table // TO DO


ALTER TABLE T1 CHANGE COLUMN  num proj_id INT NOT NULL AUTO_INCREMENT, ADD PRIMARY KEY('proj_id'); //??


Команда ALTER
позволяет изме­
нить практически
любые атрибу­
ты таблицы без
необходимости
повторной встав­
ки данных. Будьте
осторожны: изме­
нение типа данных
столбца может
привести к потере
данных.

CHANGE - изменение имени и типа данных столбцов *                               // TO DO
MODIFY - изменение типа данных или позиции столбцов
ADD- добавление столбцов в таблицу (тип данных по выбору заказчика )
DROP- удаление столбцов из таблицы

Давайте воспользуемся командой DESCRIBE и посмо­трим, какую структуру имеет таблица. // TO DO
mysql> DESCRIBE T1;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| id     | int(4)      | YES  |     | NULL    |       |
| name   | varchar(20) | YES  |     | NULL    |       |
| e_mail | varchar(30) | YES  |     | NULL    |       |
| text   | text        | YES  |     | NULL    |       |
| sec_id | int(4)      | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+

ALTER TABLE T1 RENAME TO T11; // переименование таблицы        // TO DO


Две таблицы должны связываться через уникальный стол­бец.

ВНЕШНИЙ КЛЮЧ - столбец таблицы, в котором хранятся значения ПЕРВИЧ­НОГО КЛЮЧА другой таблицы.    // TO DO

Имя внешнего ключа может отличаться от имени первичного ключа, с которым он связывается.
Первичный ключ, используемый внешним ключом, также называется родительским ключом. 
Таблица, которой принадлежит первичный ключ, называется родительской таблицей.
Внешний ключ может использоваться для установления соответствия между записями двух таблиц.
Внешний ключ может содержать значения NULL, хотя в первичном ключе они запрещены.
Значения внешнего ключа не обязаны быть уникальными — более того, чаще они уникальными не являются.

Значение NULL во внешнем ключе означает, что в родительской таблице
не существует соответствующего значения первичного ключа.

Внешний ключ должен быть связан с уникальным значением из родительской таблицы.
Это значение может и не быть значением первичного ключа, но оно обязательно должно
быть уникальным.

ALTER TABLE T1 CHANGE id ID INT; // перименовали название колонки с id на ID

CREATE TABLE T3 (Code_pay INT(4) NOT NULL,Item_pay VARCHAR(255),Item_sum DECIMAL(4,2),Code_Items INT(4), PRIMARY KEY(Code_pay));


mysql> DESC T1;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| ID     | int(11)     | NO   | PRI | NULL    |       |
| name   | varchar(20) | YES  |     | NULL    |       |
| e_mail | varchar(30) | YES  |     | NULL    |       |
| text   | text        | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+


mysql> DESC T2;
+----------+--------------+------+-----+---------+-------+
| Field    | Type         | Null | Key | Default | Extra |
+----------+--------------+------+-----+---------+-------+
| ID       | int(11)      | NO   | MUL | NULL    |       |
| T_num    | int(4)       | YES  |     | NULL    |       |
| Code_pay | int(8)       | YES  |     | NULL    |       |
| Pay_day  | date         | YES  |     | NULL    |       |
| Sum_pay  | decimal(4,2) | YES  |     | NULL    |       |
+----------+--------------+------+-----+---------+-------+


mysql> DESC T3;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| Code_pay   | int(4)       | NO   | PRI | NULL    |       |
| Item_pay   | varchar(255) | YES  |     | NULL    |       |
| Item_sum   | decimal(4,2) | YES  |     | NULL    |       |
| Code_Items | int(4)       | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+

ID - первичный ключ T1
ID - внешний ключ T2,T4

T_num - первичный ключ T4 //??

mysql> CREATE TABLE T4 (T_num INT(4) NOT NULL AUTO_INCREMENT PRIMARY KEY,ID INT NOT NULL,Item_pay VARCHAR(255),Item_sum DECIMAL(4,2),Code_Items INT(4), FOREIGN KEY(ID) REFERENCES T1(ID));

mysql> DESC T4;
+------------+--------------+------+-----+---------+----------------+
| Field      | Type         | Null | Key | Default | Extra          |
+------------+--------------+------+-----+---------+----------------+
| T_num      | int(4)       | NO   | PRI | NULL    | auto_increment |
| ID         | int(11)      | NO   | MUL | NULL    |                |
| Item_pay   | varchar(255) | YES  |     | NULL    |                |
| Item_sum   | decimal(4,2) | YES  |     | NULL    |                |
| Code_Items | int(4)       | YES  |     | NULL    |                |
+------------+--------------+------+-----+---------+----------------+
 MUL - означает , что одно значение м о ж е т х р а н и т ь с я в ст о л б ц е
в нескольких экземплярах. Э т о т ф а к т позволяет н ам х р а н и т ь несколь­
к о у в л е ч е н и й для к а ж д о г о зн а ч е н и я c o n t a c t j d из т а б л и ц ы m y _ c o n ta c ts .


Ограничение внешнего ключа обе­
спечивает целостность данных (иначе
говоря, оно следит за тем, чтобы запись
с внешним ключом в одной таблице
всегда имела соответствующую запись
в другой таблице). Если вы попытаетесь
удалить запись в таблице с первичным
ключом или изменить значение первич­
ного ключа, задействованного в ограни­
чении внешнего ключа другой таблицы,
будет выдано сообщение об ошибке.

 сначала придется удалить запись внешнего ключа,потом удалить  запись с первичным ключом

Вы уже видели ограничение первич­
ного ключа. Ключевое слово UNIQUE
(при создании столбца) тоже считается
ограничением. Таюке существует огра­
ничение CHECK, не поддерживаемое
в MySQL.

....................

The PRIMARY KEY constraint uniquely identifies each record in a database table.
Primary keys must contain UNIQUE values.
A primary key column cannot contain NULL values.
Most tables should have a primary key, and each table can have only ONE primary key.

A FOREIGN KEY in one table points to a PRIMARY KEY in another table.
..............................

SQL aliases are used to give a database table, or a column in a table, a temporary name.

SQL Alias Syntax for Columns
SELECT column_name AS alias_name FROM table_name; // перед FROM         // TO DO

SQL Alias Syntax for Tables
SELECT column_name(s) FROM table_name AS alias_name; // после FROM        // TO DO

..................................
The SELECT DISTINCT statement is used to return only distinct (different) values.
,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,
SELECT INTO 
The SELECT INTO statement selects data from one table and inserts it into a new table.
We can copy all columns into the new table:
SELECT *
INTO newtable [IN externaldb]
FROM table1;

Or we can copy only the columns we want into the new table:
SELECT column_name(s)
INTO newtable [IN externaldb]
FROM table1;
The new table will be created with the column-names and types as defined in the SELECT statement. You can apply new names using the AS clause.
...............................................................

The INSERT INTO SELECT statement selects data from one table and inserts it into an existing table. Any existing rows in the target table are unaffected.

SQL INSERT INTO SELECT Syntax
We can copy all columns from one table to another, existing table:
INSERT INTO table2
SELECT * FROM table1;

Or we can copy only the columns we want to into another, existing table:
INSERT INTO table2
(column_name(s))
SELECT column_name(s)
FROM table1;

????????????????????????????????
Хотя во многих базах данных(в том числе в MySQL)
предусмотрена возможность сохранять бинарные данные (например,изображения) в полях типа BLOB 
('Binary Large Object', то есть "большие бинарные объекты"), операции с данными типа INT, CHAR, VARCHAR и другими значительно эффективнее. 
Поэтому в базах данных часто гораздо удобнее и эффективнее сохранять не сами изображения , а ссылки на содержащие их файлы. Такими ссылками являются имена их файлов.

Еще одной причиной, почему в веб-приложениях изображения не сохраняются в базе данных, является то, что в этом случае было бы труднее кодировать в HTML вывод их на экран . Вспомните, что HTML ссылается на изображения через имя внешнего файла, в котором это изображение сохранено. Поэтому в НТМL-теге, выводяшем на экран изображение, используется имя файла изображения, а не сами изображения.
??????????????????????????????????????????????
'Безопасность'
Выражение с ключевым словом DEFAULT позволяет вам указать для колонки значение по умолчанию. Если для колонки установлено
значение по умолчанию, вы можете не указывать его в запросе INSERT,
будучи уверенным, что при добавлении новой записи колонка получит это значение автоматически.
_________________________________________________________
« о д и н - к - о д н о м у »  (1:1)
В связях этого  типа  запись  из  таблицы  'А'  может  быть связана
Н Е  Б О Л Е Е  Ч Е М  С  О Д Н О Й  записью в таблице 'В'

Допустим , в таблице 'А' хранится ваше имя , а в таблице 'В' — информация о доходах и номера социального
страхования ( такая изоляция повышает безопасность данных ).
В обеих таблицах присутствует поле еmрlоуее_id
Поле еmрlоуее_id родительской таблицы является первичным ключом , а поле еmрlоуее_id дочерней
таблицы — внешним ключом .
В схеме такая связь обозначается простой соединительной линией .

у каждого человека в таблице employees может быть только
Один номер социального страхования, а каждый номер может
принадлежать только одному человеку. Следовательно дан­
ная связь от носится к типу « о д и н -к -о д н о м у »
с.332(339) Бейли SQL
Когда используются связи типа «один-к-одному»

О б ы ч н о д а н н ы е , с в я з а н н ы е п о т и п у « о д и н -к -о д н о м у » , р а з у м н е е
х р а н и ть в о с н о в н о й табл ице, о д н а ко вы д еление и х в отдельную
та б л и ц у и н о гд а п р и н о с и т н е к о т о р ы е пр е и м ущ е ств а .

1. В ы д е л е н и е д а н н ы х м о ж е т у с к о р и т ь о б р а б о т к у з а п р о с о в .
Н а п р и м е р , если подавляю щ ее б о л ьш и н ство за п р о со в и з­
вл е ка е т то л ь ко н о м е р с о ц и а л ь н о го с тр а х о в а н и я и н и ч е го
более, лучш е о б ращ аться с за п р о со м к м е н ьш е й таблице.

2. Е с л и с т о л б е ц м о ж е т с о д е р ж а т ь н е и з в е с т н ы е н а д а н н ы й
м о м е н т з н а ч е н и я , в ы д е л е н и е е го в о тд е л ь н у ю т а б л и ц у п о ­
зв ол и т изб еж ать хр а н е н и я
NULL в о с н о в н о й т а б л и ц е .

3. И з о л я ц и я ч а с т и д а н н ы х п о м о г а е т о г р а н и ч и т ь д о с т у п к н и м .
Н а п р и м е р , е с л и у вас и м е е т с я т а б л и ц а с з а п и с я м и р а б о т ­
н и ко в , и н ф о р м а ц и ю о д о ход а х лучш е х р а н и ть отд ельно о т
о сн о вн о й таблицы .

4. Б о л ь ш и е б л о к и д а н н ы х (н а п р и м е р , т и п
BLOB) т о ж е л у ч ш е
х р а н и ть в о тд е л ьной таблице.

<<Один-к-одному>>: ровно одна запись
родительской таблицы связывается
с одной записью дочерней таблицы.

В идеально спроектированной реляционной базе данных отношение "один к одно
му" (1:1) не нужно. Если каждой строке одной таблицы соответствует одна строка дру
гой таблицы, то это обычно свидетельствует о том, что обе таблицы нужно объеди
нить в единое целое. Исключение из правила— необычный случай, когда число
столбцов таблицы превышает предел, установленный в СУБД. В MySQL этот предел
равен 3000, так что маловероятно, чтобы кому то пришло в голову его превысить.
Есть СУБД, где предельное число столбцов гораздо меньше, например 250, но даже
этого числа вполне достаточно для большинства приложений. В будущих версиях
MySQL жесткий предел будет вообще снят, и создавать столбцы можно будет до тех
пор, пока не закончится место на диске.
Еще одна причина существования отношения "один к одному" — это случай, когда
определенный набор атрибутов применим лишь к небольшому подмножеству запи
сей. Например, в таблице может храниться статистика по каждому из игроков, но для
питчеров (подающих) статистические показатели будут несколько отличаться, по
этому для них лучше создать отдельную таблицу.
_________________________________________________________
« о д и н - ко - м н о г и м » (1:N)

В с в я з я х т и п а « о д и н -к о -м н о ги м » з а п и с ь в т а б л и ц е м о ­
ж е т б ы ть связана со м н о ги м и за п и ся м и в та б л иц е В,
н о ка ж д а я за п и с ь в та б л и ц е В м о ж е т б ы т ь связана
т о л ь ко с о д н о й за п и сью в табл ице А .

Отношение "один ко многим" (1:N) является естественным типом отношений в ре
ляционной базе данных. Оно реализуется с помощью внешних ключей, рассмотрен
ных выше. При отношении 1:N любой строке первой таблицы может соответствовать
несколько записей второй таблицы. Если проанализировать связь в противополож
ном отношении, то окажется, что строке второй таблицы соответствует всего одна
запись первой таблицы.

+----------+-------------+            +---------+-----------+
| id_игрок | имя         |            |id_игрок | позиция   |
+----------+-------------+            +---------+-----------+
| 1        | Кэрри       |            | 1       |  7        |
| 2        | Саманта     |            | 2       |  8        |
| 3        | Шарлота     |            | 4       |  7        |
| 4        | Миранда     |            | 4       |  9        |
+----------+-------------+            | 4       |  1        |
                                      | 4       |  8        | 
                                      | 3       |  2        |                            
                                      +---------+-----------+

_________________________________________________________
« м н о г и е - ко - м н о г и м » (M:N)

В реляционной базе данных нельзя напрямую создать отношение "многие ко многим"
(M:N). Его необходимо преобразовать в два отношения 1:N(один-ко многим), устанавливаемых с проме-
жуточной таблицей. 
Например, бейсболист, особенно игрок внешнего поля
("аутфилд"), может занимать на поле более одной позиции. Если информацию обо всех
занимаемых позициях хранить в общей таблице, то получится, что есть группа игроков
с несколькими позициями и есть позиции, занимаемые несколькими игроками.
Выход из положения заключается в декомпозиции, т.е. разбивке отношения M:N
на два отношения 1:N. Это означает, что ссылки между двумя таблицами будут выне
сены в третью таблицу, содержащую всего два столбца. В них будут сопоставляться
первичные ключи основных таблиц.

Нам понадобится дополнительная таблица, которая свяжет между со­бой эти две таблицы и упростит связи « многие-ко-многм » до 
« один-ко многим » . В этой таблице будут храниться все значения woman_id вместе со значеними shoe_id . Нам понадобтся соединительная таблица со значениями первиных ключей двух связы ваемых таблиц.

+----------+-------------+            +---------+-----------+
|woman_id  | woman       |            | shoe_id | shoe_name |
+----------+-------------+            +---------+-----------+
| 1        | Кэрри       |            | 1       | Сандали   |
| 2        | Саманта     |            | 2       | Сабо      |
| 3        | Шарлота     |            | 3       | Шлепанцы  |
| 4        | Миранда     |            | 4       | Туфли'SW' |
+----------+-------------+            +---------+-----------+


			+----------+----------+            
			| woman_id | shoe_id  |            
			+----------+----------+            
			|   1      |    3     |            
			|   1      |    4     |            
			|   2      |    1     |          
			|   3      |    1     |       
			|   3      |    2     |
                        |   3      |    3     | 
                        |   3      |    4     |
                        |   4      |    1     | 
                        |   4      |    4     |
                        +----------+----------+            


///////////////////////////////////////////////////////////////////////////////

Алгеброй называется система определения множеств и операций над ними. 
Под множеством понимается совокупность уникальных элементов, объединенных по какому то признаку.
Оператор— это символическая запись правила преобразования, выполняемого над одним или несколькими элементами множества.

Таблица состоит из строк (записей) и столбцов (полей). В столбце хранятся соот
ветствующие значения каждой строки; каких либо "пропусков" или коротких столб
цов быть не может. Запись является отдельной сущностью, а поля представляют со
бой атрибуты записей.

Связи между записями реализуются в виде ключей. Ключ — это определенным обра
зом помеченный столбец таблицы.

Реляционные операции (Леон Аткинсон Библия MySQL c.63[64])
Как уже упоминалось, реляционная модель основана на реляционной алгебре док
тора Кодда. В свою очередь, за реляционной алгеброй стоит теория множеств, в ко
торой определен целый ряд операций над множествами. Как писал сам доктор Кодд,
для реляционной модели представляют интерес только те операции, результатом ко
торых являются множества. Отсюда имеем восемь простейших операций: выборка,
проекция, пересечение, сложение, вычитание, умножение, деление и переименова
ние. На их основе строятся более сложные операции, называемые объединениями. В
языке SQL большинство перечисленных операций реализуется с помощью инструк
ции SELECT.
Результатом операции над таблицей будет временная таблица. Она не сохраняется
в базе данных, но в течение некоторого времени к ней можно обращаться.

Операция 'выборки' выполняется над одной таблицей. Результирующая таблица бу
дет содержать все исходные столбцы, но, возможно, не все строки. С ло гической точ
ки зрения это фильтрация строк.

Операция 'проекции' возвращает все записи исходной таблицы, но, возможно, не
все столбцы. Это, по сути, фильтрация столбцов.Предположим, требуется получить
список фамилий бейсболистов.

Операция 'пересечения' выполняется над двумя таблицами идентичной структуры.
В результате возвращаются только те записи, которые встречаются в обеих исходных
таблицах. Предположим, нам необходимо узнать, какие игроки принимали участие в
матче "Всех звезд" как в 1999, так и в 2000 году.

Операция 'сложения' также выполняется над двумя таблицами идентичной структу
ры. При этом в результирующую таблицу попадают все записи исходных таблиц. На
пример, с помощью данной операции можно получить объединенный список участ
ников матчей "Всех звезд" в 1999 и 2000 году (рис. 5.4). Результирующая таблица будет
содержать 16 строк, а не 18, поскольку два игрока принимали участие в обоих матчах
и их имена повторяются.

Операция 'вычитания' возвращает строки первой таблицы, отсутствующие во вто
рой таблице. Эта операция не является обратной по отношению к операции пересе
чения. С ее помощью можно определить, к примеру, кто из участников матча "Всех
звезд" в 1999 г. не попал на аналогичный матч в 2000 г.

Операция 'умножения' объединяет каждую строку первой таблицы с каждой строкой
второй таблицы. Эта операцию еще называют декартовым произведением. Количество
строк результирующей таблицы равно произведению числа строк исходных таблиц.
Столбцами результирующей таблицы являются все столбцы первой таблицы, за кото
рыми следуют все столбцы второй таблицы.

Операция 'деления' выполняется над двумя таблицами, первая из которых состоит
из двух столбцов, а вторая — из одного. Значения второй таблицы сравниваются со
значениями первого столбца первой таблицы, и если обнаруживаются совпадения, то
соответствующие значения второго столбца первой таблицы включаются в результа
ты запроса (по сути, происходит фильтрация этого столбца). Таким образом, резуль
тирующая таблица состоит из одного столбца.

Операция 'переименования' назначает столбцу другое имя. Это тривиальная опера
ция, поэтому зачастую о ней не упоминают при обсуждении реляционной алгебры.
Но именно с ее помощью решается упомянутая выше проблема с именами столбцов в
таблице произведения. Обычно для ясности двум одноименным столбцам назначают
ся разные имена, выбираемые произвольно. Такие имена называются 'псевдонимами'.

Сами по себе все вышеперечисленные реляционные операции не слишком полез
ны. Настоящая сила заключена в их комбинациях. Например, выполняя одновремен
но операции выборки и проекции, можно добиться того, что в результате запроса бу
дет получена одна ячейка таблицы.
Одним из классов более сложных операций являются 'объединения'. Объединение —
это частный случай произведения, при котором к таблице произведения применяют
ся дополнительные критерии фильтрации ('условия отбора').

В операции 'внутреннего объединения' сравниваются связанные столбцы двух таблиц
(столбцы, упомянутые в условии отбора). Строки, которые не удовлетворяют условию
сравнения связанных столбцов, удаляются из результирующей таблицы. Обычно сравни
ваемые столбцы называются одинаково. Такое объединение называется 'естественным'.

'Внешнее объединение' является расширением внутреннего. Существуют три типа
внешних объединений: левое, правое и полное. В 'левое внешнее объединение' включаются
все строки первой таблицы, в 'правое внешнее объединение'— все строки второй таблицы,
а в 'полное внешнее объединение'— все строки обеих исходных таблиц. Но внешнее объе
динение — это не то же самое, что и операция произведения. Строки, которым не на
ходится соответствия в левой или правой таблице, дополняются значениями NULL.
c.67[68]

Запросы

SELECT    имя_столбца,...
FROM      имя_таблицы, ...
WHERE     условие_отбора
GROUP BY  имя_столбца,...
ORDER BY  имя_столбца, ...
LIMIT     лимит


Объединения

Объединение создается путем указания нескольких таблиц в предложении FROM.
Существуют два варианта записи объединений. В первом из них в предложении FROM
указывается выражение объединения. Этим способом чаще всего создают внешние
объединения. Второй вариант — применение условия отбора, заданного в предложе
нии WHERE, к произведению таблиц, перечисленных в предложении FROM. Так полу
чаются внутренние объединения.

Чтобы создать внутреннее объединение таблиц, достаточно указать их имена в
предложении FROM инструкции SELECT. При отсутствии предложения WHERE полу
чится самый общий вариант такого объединения — декартово произведение, в кото
ром каждая строка первой таблицы объединена с каждой строкой второй таблицы.
Если же задано условие отбора, то в результаты запроса попадут лишь те строки таб
лицы произведения, в которых значения связанных столбцов удовлетворяют требуе
мому критерию {связанным называется столбец, присутствующий в условии отбора).



'Нормализация' — это метод организации реляционной базы данных с целью со
кращения избыточности. В ходе этого процесса неоптимальная таблица раз
бивается на две или более таблиц, между которыми создаются отношения.
Нормализация является частью этапа проектирования и выполняется над сущест
вующими таблицами.
Нормализация определяется в виде набора правил, известных как 'нормальные формы'.

Устранение избыточности не обязательно означает повышение производитель
ности. Накладные расходы на выполнение операций объединения весьма значитель
ны, поэтому разработчики иногда сознательно идут на нарушение правил нормализа
ции. Это называется 'денормализацией'.

Транзакция — это совокупность одной или нескольких SQL инструкций, имеющая
начало и конец. В конце транзакции происходит либо ее отмена, либо завершение.
Отмена транзакции называется откатом (rollback), так как происходит последова
тельная отмена всех сделанных изменений. Завершение транзакции называется фик
сацией (commit).
Считается, что правильная транзакция обладает следующими свойствами: атомарностью,
согласованностью,изолированностью и устойчивостью.


///////////////////
Первая нормальная форма, или 1НФ:
Правило 1. Столбцы содержат только атомарные значения.
Правило 2. В таблице нет повторяющихся групп данных.

Ключ, состоящий из двух
и более столбцов, называется
составным ключом.

СОСТАВНЫМ КЛЮЧОМ называется
ПЕРВИЧНЫЙ КЛЮЧ, состоящий из
нескольких столбцов, комбинация ко­
торых образует уникальные значения.


///////////////////////////////////////////////////////
В этой книге мы будем называть
ее перекрестным соединением,
хотя также встречается термин
«перекрестное произведение» и
«декартово соединение».

mysql> SELECT*FROM toys;
+--------+-----------------------------------------+
| toy_id | toy                                     |
+--------+-----------------------------------------+
|      1 | обруч                                   |
|      2 | самолет                                 |
|      3 | солдатики                               |
|      4 | губная гармошка                         |
|      5 | бейсбольные карточки                    |
+--------+-----------------------------------------+

mysql> SELECT*FROM boys;
+--------+------------+
| boy_id | boy        |
+--------+------------+
|      1 | Дейви      |
|      2 | Бобби      |
|      3 | Бивер      |
|      4 | Ричи       |
+--------+------------+

mysql> SELECT t.toy, b.boy FROM toys AS t CROSS JOIN boys AS b;
+-----------------------------------------+------------+
| toy                                     | boy        |
+-----------------------------------------+------------+
| обруч                                   | Дейви      |
| обруч                                   | Бобби      |
| обруч                                   | Бивер      |
| обруч                                   | Ричи       |
| самолет                                 | Дейви      |
| самолет                                 | Бобби      |
| самолет                                 | Бивер      |
| самолет                                 | Ричи       |
| солдатики                               | Дейви      |
| солдатики                               | Бобби      |
| солдатики                               | Бивер      |
| солдатики                               | Ричи       |
| губная гармошка                         | Дейви      |
| губная гармошка                         | Бобби      |
| губная гармошка                         | Бивер      |
| губная гармошка                         | Ричи       |
| бейсбольные карточки                    | Дейви      |
| бейсбольные карточки                    | Бобби      |
| бейсбольные карточки                    | Бивер      |
| бейсбольные карточки                    | Ричи       |
+-----------------------------------------+------------+


....................................................................................
mysql> SELECT*FROM toys;
+--------+-----------------------------------------+
| toy_id | toy                                     |
+--------+-----------------------------------------+
|      1 | обруч                                   |
|      2 | самолет                                 |
|      3 | солдатики                               |
|      4 | губная гармошка                         |
|      5 | бейсбольные карточки                    |
+--------+-----------------------------------------+


mysql>  SELECT*FROM boys;
+--------+------------+--------+
| boy_id | boy        | toy_id |
+--------+------------+--------+
|      1 | Дейви      |      3 |
|      2 | Бобби      |      5 |
|      3 | Бивер      |      2 |
|      4 | Ричи       |      1 |
+--------+------------+--------+


mysql> SELECT boys.boy, toys.toy FROM boys INNER JOIN toys ON boys.toy_id = toys.toy_id;
+------------+-----------------------------------------+
| boy        | toy                                     |
+------------+-----------------------------------------+
| Ричи       | обруч                                   |
| Бивер      | самолет                                 |
| Дейви      | солдатики                               |
| Бобби      | бейсбольные карточки                    |
+------------+-----------------------------------------+

mysql> SELECT boys.boy, toys.toy FROM boys INNER JOIN toys ON boys.toy_id <> toys.toy_id ORDER BY boys.boy;
+------------+-----------------------------------------+
| boy        | toy                                     |
+------------+-----------------------------------------+
| Бивер      | обруч                                   |
| Бивер      | солдатики                               |
| Бивер      | губная гармошка                         |
| Бивер      | бейсбольные карточки                    |
| Бобби      | обруч                                   |
| Бобби      | самолет                                 |
| Бобби      | солдатики                               |
| Бобби      | губная гармошка                         |
| Дейви      | обруч                                   |
| Дейви      | самолет                                 |
| Дейви      | губная гармошка                         |
| Дейви      | бейсбольные карточки                    |
| Ричи       | самолет                                 |
| Ричи       | солдатики                               |
| Ричи       | губная гармошка                         |
| Ричи       | бейсбольные карточки                    |
+------------+-----------------------------------------+

mysql> SELECT boys.boy, toys.toy FROM boys NATURAL JOIN toys;
+------------+-----------------------------------------+
| boy        | toy                                     |
+------------+-----------------------------------------+
| Ричи       | обруч                                   |
| Бивер      | самолет                                 |
| Дейви      | солдатики                               |
| Бобби      | бейсбольные карточки                    |
+------------+-----------------------------------------+



,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,
c.394(401)
Я возвращаю все записи, у кото­
рых значение столбца таблицы
не совпадает со значением столб­
ца другой таблицы. (неэквивалентное соединение,Внутреннее соединение)

Для меня важен порядок соеди­нения таблиц.(Внешнее соединение)

Я возвращаю все записи, у которых
значение столбца таблицы совпа­
дает со значением столбца другой
таблицы, и при этом использую
ключевое слово ON.(эквивалентное соединение,Внутреннее соединение)

Я соединяю две таблицы, содер­
жащие одноименные столбцы.(естестВенное соединение)

 Количество возвращаемых мною
записей может быть равно произ­
ведению количества записей двух
таблиц.(перекрестное соединение,перекрестное произведение,
декартово соединение)

 Я возвращаю все возможные ком­
бинации без проверки условия.(декартово соединение)

 Я соединяю две таблицы с про­
веркой условия.(Внутреннее соединение,неэквивалентное соединение,эквивалентное соединение)

перекрестное произведение
декартово соединение
Внутреннее соединение
естестВенное соединение
эквивалентное соединение
перекрестное соединение
Внешнее соединение
неэквивалентное соединение
.................
Внутреннее соединение - любое соединение, комбинирующее записи двух таблиц по некоторому условию.
Перекрестное соединение - набор всех комбинаций записей одной таблицы с записями другой таблицы.
                         (декартово соединение, декартово произведение)
Естественное соединение - внутреннее соединение без ON. Работает только при соединении двух таблиц,
                          содержащие одноименные столбцы.
Эквивалентное и Неэкви­валентное соединение - две разновидности вну­тренних соединений. Эквивалентное соединение
                                             возвраищает комбинации с равными значениями, а неэквивалентные — с
                                             неравными значениями столбцов.
Соединение через запятую - то же,что и перекрестное соединение - за исключением того, что ключевое слово
		           CROSS JOIN заменяются запятой.
...................
GROUP BY
IN просматривает набор значений.
NOT IN
Псевдоним Таблицы и Псевдоним Столбца
WHERE NOT EXISTS - Истинно, если записи не найдены
EXISTS и NOT EXISTS.
....................
'Запрос внутри другого запроса'
Чтобы сделать то , что делается двумя запросам и, всего в одном запросе,
нам понадобится включить в него подзапрос.
Второй запрос, в котором извлекаются совпадения из таблицы
p r o f e s s i o n s , мы назовем ВНЕШНИМ запросом , потому что в него «упако­ван» другой, ВНУТРЕННИЙ запрос.
Фактически мы всего лишь объединяем два запроса в один. Пер­
вы й запрос называется внешним, а второй — внутренним.(Запрос с подзапросом)
                 ВНЕШНИЙ                                           ВНУТРЕННИЙ
SELECT column,another_column FROM tablee WHERE column = (SELECT column FROM tablee WHERE гqw = 'fd' AND sdd = 'hg');

SELECT column,another_column FROM tablee AS sth NATURAL JOIN my_sth AS mc WHERE column IN (SELECT column FROM tablee);

Так как подзапрос использует оператор =, он возвращает одно значение, одну запись из одного
столбца (иногда называется «ячейкой», но в SQL и спользуется термин скалярное значение). Это
значение сравнивается со столбцам и в условии WHERE.

В большинстве случаев внутренний запрос может воз­
вращать только одно значение, то есть один столбец с одной
записью. Внешний запрос берет это значение и использует его
для сравнения со всеми значениями столбца.

В общем случае подзапрос должен возвращать одно значение.IN (просматривает набор значений) — исключение из правила (возвращается целый столбец значений). Обычно подзапросы возвращают одно значение.

Что произойдет, если подзапрос возвращает несколь­ко значений, но не использует условие WHERE с набором значений?
c.422  - (Хаос и разрушение!..На самом деле вы просто получите сообщение об ошибке.)

Подзапрос всегда представляет собой одну команду SELECT
Подзапросы всегда заключа­ются в КРУГЛЫЕ СКОБКИ
Подзапросы не имеют собствен­ного символа ТОЧКА С ЗАПЯТОЙ . Как обычно, один такой символ обозначает КОНЕЦ всего запроса.
Подзапросы могут использоваться в четырех местах запросов:SELECT,SELECT список столбцов как один из столбцов, условие FROM и условие WHERE.
Подзапросы могут использоваться в командах­ INSERT,DELETE,UPDATE,SELECT.


SELECT MAX(salary) FROM job_current;  // MAX() - ф-ция          как подзапрос

'Подзапрос, исполь­зуемый в качестве выражения столбца в команде SELECT, может возвращать
только одно значение из одного столбца.'

Некоррелированный под­
запрос при помощи IN или
NOT IN проверяет факт
наличия (или отсутствия)
значений, возвращенных
подзапросом, в наборе.





////////////////////////////////////////////

c.438  join  соединения
с другой стор он ы ,
внеш ние соединения в больш ей степ е­
ни зави ся т о т отногиений м еж ду двумя таблицами, чем все
рассм отр ен н ы е ранее типы соединений.

Л е в о е внеш нее соединение (LEFT OUTER JOIN) п ереби ра­
ет все записи левой таблицы и ищет для каждой соответ­
ствие среди запи сей правой таблицы. В ч астн о сти это
удобно, когда между левой и правой таблицей сущ ествует
св я зь типа «один-ко-многим».
'....................................................................................................'
Чтобы понять логику внеш него соедин ения, необ­ходимо понять, какая таблица находится «слева»,
а какая — «справа». В левом внешнем соединении таблица, следую­щая после FROM,
но ДО JOIN, считается «левой»,а таблица, следующая ПОСЛЕ JOIN, считается «правой».
'.....................................................................................................'
mysql> SELECT boys.boy, toys.toy FROM boys boys LEFT OUTER JOIN toys toys ON boys.toy_id = toys.toy_id;
+------------+-----------------------------------------+
| boy        | toy                                     |
+------------+-----------------------------------------+
| Дейви      | солдатики                               |
| Бобби      | бейсбольные карточки                    |
| Бивер      | самолет                                 |
| Ричи       | обруч                                   |
+------------+-----------------------------------------+

..........  FROM boys 'boys' LEFT OUTER JOIN toys 'toys'................
                        ^                           ^
                      левая                       правая
........................................................................
Отличается: внешнее соединение возвращает запись
независимо от того, есть у нее совпадение в другой
таблице или нет.
Отсутствие совпадений обозначается значением NULL.

Правое внешнее соединение почти полно­стью аналогично левому внешнему соединению , кроме того , что оно сравнивает
правую таблицу с левой .
Правое внешнее соединение ищет в левой таблице соответ­ствия для правой таблицы.

mysql> SELECT boys.boy, toys.toy FROM boys boys RIGHT OUTER JOIN toys toys ON boys.toy_id = toys.toy_id;
+------------+-----------------------------------------+
| boy        | toy                                     |
+------------+-----------------------------------------+
| Ричи       | обруч                                   |
| Бивер      | самолет                                 |
| Дейви      | солдатики                               |
| NULL       | губная гармошка                         |
| Бобби      | бейсбольные карточки                    |
+------------+-----------------------------------------+

..........  FROM boys 'boys' LEFT OUTER JOIN toys 'toys'................
                        ^                           ^
                     правая                       левая
........................................................................

SELECT
  field_name [,... n]
FROM
  Table1
  {INNER | {LEFT | RIGHT | FULL} OUTER | CROSS } JOIN
  Table2
    {ON <condition> | USING (field_name [,... n])}


SELECT *
FROM
  Person
  INNER JOIN
  City
    ON Person.CityId = City.Id


SELECT *
FROM
  Person -- Левая таблица
  LEFT OUTER JOIN
  City   -- Правая таблица
    ON Person.CityId = City.Id

SELECT *
FROM
  Person -- Левая таблица
  RIGHT OUTER JOIN
  City   -- Правая таблица
    ON Person.CityId = City.Id


SELECT *
FROM
  Person
  FULL OUTER JOIN
  City
    ON Person.CityId = City.Id


SELECT *
FROM
  Person
  CROSS JOIN
  City

/////////////////////////////

Существует еще один способ получения
объединенных результатов таблиц — так на­зываемые союзы (ключевое слово UNION) .

Союз объединяет в одну таблицу резуль­таты двух и более запросов на основании
того , что указано в запросе SELECT. Союзы можо трактовать как «пересекающиеся» значения всех запросов.

SELECT t i t l e FROM job_current ORDER BY t i t l e
UNION
SELECT t i t l e FROM job_desired ORDER BY t i t l e
UNION
SELECT t i t l e FROM job_listings ORDER BY t i t l e ;

При и спользовании UNION допускается только одно услоние
ORDER BY в конце к о м а н д ы .

Количество столбцов
в командах SELECT д о л ж н о
быть одинаковым. Нельзя
выбрать два столбца одной
командой и еще один столбец
другой.

Команды SELECT должны со­
держать одинаковые выраже­
ния и агрегатные функции.

Команды SELECT могут сле­
довать в любом порядке; на
результаты это не влияет.

По умолчанию SQL исключа­
ет дубликаты из результатов
союзов

Типы данных в столбцах долж­
ны либо совпадать, либо быть
совместимыми.

Если вы по какой-то причине
ХОТИТЕ получить список со
всеми дубликатами, исполь­
зуйте оператор UNION ALL.
Он возвращает все совпадения,
не только уникальные

UNION ALL работает точно так же, как UNION, если не считать то­
го, что он возвращает все значения из столбцов — вместо одного
экземпляра из каждой группы дубликатов.
SELECT title FROM job_current ORDER BY title
UNION ALL
SELECT title FROM job_desired ORDER BY title
UNION ALL
SELECT title FROM job_listings ORDER BY title ;

Создание таблицы на оснобе cоюза
СREATE TABLE t_name AS
SELECT title FROM job_current UNION
SELECT title FROM job_desired UNION
SELECT title FROM job_listings;


SELECT City, Country FROM Customers
WHERE Country='Germany'
UNION ALL
SELECT City, Country FROM Suppliers
WHERE Country='Germany'
ORDER BY City;
.........................???????????????  НЕ ПОДДЕРЖИВАЮТСЯ в MySQL.    
Конструкции INTERSECT и EXCEPT, в отличие
от UNION, используются для поиска перекры­
вающихся результатов запросов.
.........................................

C.473
СНЕСК(ПРОВЕРКА)
Проверочное ограничение используется для ограничения диапазона значений, которые могут быть помещены в колонке.

При определении СНЕСК на одной колонке позволяет только определенные значения для этого столбца.

Если определить СНЕСК в таблице он может ограничить значения в определенных столбцах на основе значений в других столбцах в строке.

SQL СНЕСК на CREATE TABLE
Следующий SQL создает СНЕСК на колонке "p_id" при создании таблицы "Лица". СНЕСК указывает, что столбец "p_id" должен включать в себя только целые числа больше 0.
CREATE TABLE Persons
(
P_Id int NOT NULL,
LastName varchar(255) NOT NULL,
FirstName varchar(255),
Address varchar(255),
City varchar(255),
CHECK (P_Id>0)
)

Чтобы разрешить именование проверочного ограничения, а также для определения СНЕСК на несколько столбцов, используйте следующий синтаксис SQL:

MySQL / SQL Server / Oracle / MS Access:

CREATE TABLE Persons
(
P_Id int NOT NULL,
LastName varchar(255) NOT NULL,
FirstName varchar(255),
Address varchar(255),
City varchar(255),
CONSTRAINT chk_Person CHECK (P_Id>0 AND City='Sandnes')
)


To create a CHECK constraint on the "P_Id" column when the table is already created, use the following SQL:

ALTER TABLE Persons
ADD CHECK (P_Id>0)

To allow naming of a CHECK constraint, and for defining a CHECK constraint on multiple columns, use the following SQL syntax:

ALTER TABLE Persons
ADD CONSTRAINT chk_Person CHECK (P_Id>0 AND City='Sandnes')

To DROP a CHECK Constraint
ALTER TABLE Persons
DROP CHECK chk_Person
.................................................




Ограничение (CHECK) определяет значения,которые могот встав­ляться в столбец базы данных. 
В нем используются те же условные операто­ры, что и в условии WHERE.

CREATE TABLE piggy_bank
(
id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
coin CHAR(1) CHECK ( coin IN ('P','N','D','Q'))
)
Значением столбца « соin » может быть только одна из этих букв.

Если значение, которое вставляется
в столбец, нарушает условие CHECK,
вы получите сообщение об ошибке.

MySQL позволяет создавать таблицы //?????
с ограничениями CHECK, но эти ограниче­
ния не работают. MySQL их игнорирует.

Вы можете использовать все условные конструкции: AND, OR, IN, NOT, BETWEEN и т.д., И даже объеди­
объединять их. Впрочем, подзапросы запрещены.
................................................
Создать представление  совсем  не  сложно — достаточно добавить в запрос ключевые слова    CREATE VIEW .

Представление — это таблица,существующая только во время использоаия представления в запросе. Представление на­зывается
виртуальной таблицей, потому что ведет себя как настоящая таблица и с ним можно выполнять те же операции ,
что и с обычными таблицами .
Виртуальная таблица не хранится в базе данных.  c.487

CREATE TABLE piggy_bank (.....)

CREATE VIEW AS pb_quarters SELECT * FROM piggy_bank WHERE coin = 'Q';

 SELECT * FROM pb_quarters

Представления довольно редко используются для выполнения команд INSERT,UPDATE и DELETE.

DROP VIEW tb  - удаление представления.
.................................................................

Транзакция  представляет собой  набор  команд выполняемых  как  единое  целое.

Атомарность(Atomicity)
Целостность(Consistency)
Изолированность(Isolation)
Устойчивость(Durability)

START TRANSACTION; (отслеживает выполнение всех последующих команд вплоть до выполнения COMMIT или ROLLBACK)
COMMIT; (закрепляет изменения(результаты) всего выполненного кода)
ROLLBACK;(отменяет все изменения из база данных возвращается к состоянию до ввода команды START TRANSACTION)

Изменения вносятся в базу данных только при выполнении команды COMMIT

Ядро хранения данных - механизм, обеспечивающий хранение всей информации и структур базы данных.
Одни типы ядер поддер­живают транзакции , другие их не поддерживают.

Проследите за тем, чтобы было выбрано ядро ВDВ или InnоDВ — только эти
два ядра поддерживают транзакции

CREATE TABLE table_name (.....) ENGINE = MyISAM DEFAULT CHARSET = cp1251


Для смены ядра используется команда следующего вида:
ALTER TABLE  имя_таблицы TYPE = InnoDB

????????????????????????????
id       name             hash                      //зашифрованный пароль или хэш пароля
1        cesar            $4yW$hk87.8.dfd()ffg
2        fill             $eyW$E3kYjkh.fPdf234

............................

# Let’s set username as a CHAR column of length 16, so users can pick usernames
up to 16 characters in length (shorter usernames will be padded with spaces or nul
bytes for storage).

# What about name ? We don’t know how long people’s names are, so we have to
make a judgement call about how long a field to store them in. A common choice is
255, because that used to be the actual maximum that MySQL could provide (and
even though nobody’s name is probably going to be 255 characters long, making
the column that long sort of saves us having to even think about how long people’s
names really are).

# This reserves 255 bytes for everyone’s name! Since most names are much
shorter than that, we’d be wasting a lot of memory this way.
# Fortunately, MySQL provides another type, VARCHAR , that can vary in length.
We specify a maximum length for the field, but the database will intelligently use
fewer bytes than that if the user enters a shorter name.

# So why don’t we use VARCHAR for everything? Dynamically allocating memory
can slow things down a bit, but more importantly, if we don’t know exactly how
long each field is, we lose random access (meaning that we can’t index directly
to the location in memory where a particular value is, because we have to scan
through the memory to figure out where each field ends).

# We also have to specify whether or not columns are allowed to be NULL , i.e.,
whether that value is required in every row or whether it’s optional. We want every
user to have a username (obviously) and provide their name, so neither of our
columns can be NULL .

# Another option we have in MySQL, unlike in a spreadsheet in Excel or the like, is to
apply an index to one or more columns. An index is a way of telling the database
in advance how you’re going to query your data - so if you know you’re going to be
looking users up by their usernames often, you can tell the database to index the
username column, meaning that it will store the information in a way that makes
lookups much more efficient (often a tree of some kind, like the binary search trees
we discussed earlier in the course).

# There are some other conditions we can ask the database to enforce, like
UNIQUE , which in addition to indexing the data for lookups, also requires that
all entries in that column be distinct. We want username to be UNIQUE , and
we don’t really care about whether name is indexed in any way.

..........................
<?php
query("INSERT INTO users (username, name) VALUES(?, ?)",
$_GET["username"], $_GET["name"]);
?>

# Recall that in PHP, variables beginning with $_ are superglobal variables, and
$_GET contains the parameters passed with the GET request (i.e., in the URL).
# We’ve replaced the hardcoded values for username and name with question
marks, which let us insert variable values into our query string. We then pass
our query function additional arguments telling it what variables to fill in for the
question marks (just as we did with format strings in printf ).
# Note that we don’t have to worry about what kind of quotation marks we’re using
here, since PHP will handle that for us in filling in the values.
• Suppose a user now wants to log in, and we want to check that they’re giving us a real
username for an existing user in our database. We can do this like so:
<?php
query("SELECT * FROM users WHERE username = ?", $_POST["username"]);
?>

# If one row is returned, we know the user exists; if zero rows are returned, that user
has never been to our site before. We can’t have more than one row returned,
because we specified UNIQUE for the username column!

# We’re given various attributes we can apply to our new id column, including
BINARY and UNSIGNED - UNSIGNED makes sense for an identifier, so we’ll use
that for our id column.
4Week 8, continued
# Now, under Index, we’ll choose PRIMARY , which makes id our primary key. A
primary key must be unique and not null, and it will be used to find rows from the
database.
# Because an INT is only 32 bits, or 4 bytes, while our usernames are 16 bytes, it’s
much faster to select rows by id than by username , even though username is
also guaranteed to uniquely identify a single user.
• What if we add three more columns to indicate a user’s city, state, and ZIP code? We
can make city a VARCHAR of length 255 and state a CHAR of length 2, but how
should we store zip ?
# We could save zip as an INT , since it’s a number, but we need to be able to
handle leading zeroes like in Cambridge’s ZIP code, 02138, so instead we’ll use a
CHAR of length 5.

# But now we have to combine data from two different tables. Fortunately, SQL
provides a way of joining different tables based on shared values, as below:

SELECT * FROM users JOIN zips ON users.zip = zips.zip

# This means "give me back the combination of the users table and the zips table
by putting together their rows where the zip field is the same."
???????????????????????????

SQL Injection

• Another thing to be careful of (although we’ll help you out with this one too) is a SQL
injection attack.
# Imagine a login system implemented in PHP like the following:

$username = $_POST["username"];
$password = $_POST["password"];
query("SELECT * FROM users WHERE username='{$username}' AND
password='{$password}'");

# Now if someone types in the password field 12345' or '1' = '1 , that query
becomes:

query("SELECT * FROM users WHERE username='username' AND
password='12345' OR '1' = '1'");

# Because '1' = '1' is always true, this will always log the person in.

# This is why you should always use the question mark syntax, rather than
interpolating variables directly, because when PHP fills in the variable values into
the query for you, it escapes any potentially dangerous characters - so that query
instead looks like this:

query("SELECT * FROM users WHERE username='username' AND
password='12345\' OR \'1\' = \'1'");




.................................
SELECT products.id,products.name,products.isbn,products.company_id,
products.price,companies.name AS company_name FROM products 
INNER JOIN companies ON products.company_id = companies.id;


SELECT products.*, companies.name AS company_name
FROM products JOIN companies ON company_id = companies.id


SELECT p.*,
       c.name AS company_name
  FROM products p,
       companies c
 WHERE c.id = p.company_id
......................................

Теперь получим количество только разных записей столбца User_ID.

SELECT COUNT(DISTINCT User_ID) FROM users;
............................








