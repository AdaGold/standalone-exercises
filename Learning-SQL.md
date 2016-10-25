# Practice Using SQL

## Using SQLite
### Learning Goals
You will Learn to:
-  Find information in a database table using SELECT Statements
-  Change information in a database table with an UPDATE statement
-  Insert a new row in a database table using INSERT
-  Delete a new row in a database using DELETE
-  Create a new table using CREATE TABLE
-  Combine information from two tables using a JOIN


## Installing SQLite
Let's use Brew! `$ brew install sqlite3`

In the resources folder you will find a file named: `pokedex.sqlite`. This is our database file.  You can access it in terminal with the command:

```bash
$  cd ~/path/to/resources
$  sqlite3 pokedex.sqlite
SQLite version 3.8.10.2 2015-05-20 18:17:19
Enter ".help" for usage hints.
sqlite>
```

## What is SQLite?
[SQLite](http://sqlite.org/) is a tiny relational database engine. It keeps all of the data and schema it knows about in a single file. We can then access and manipulate that data by communicating with SQLite using _SQL_.  That makes it a good practice-ground.  



This particular database contains **POKEMON** data!

### Helpful Starters
To make things formatted better it's helpful to start your SQLITE session with two commands.  In SQLITE non-sql commands start with a period.
```sql
sqlite> .headers on
sqlite> .mode column
sqlite>
```

This will make the queries we run include the column headers and be spaced out in a tabular format making it easier to read.  

### Our First Query
A _query_ is a question or statement we make to the database. We might be asking for a piece of data, or to create a new collection of data, or many other things.  We're going to select a batch of pokemon


```sql
sqlite> SELECT * FROM pokemon;
```

| id | species_id | english_name | height | weight | base_experience | is_default | pokemon_order |
|----|------------|--------------|--------|--------|-----------------|------------|---------------|
| 1  | 1          | Bulbasaur    | 7      | 69     | 64              | 1          | 1             |
| 2  | 2          | Ivysaur      | 10     | 130    | 142             | 1          | 2             |
| 3  | 3          | Venusaur     | 20     | 1000   | 236             | 1          | 3             |
...

So what does this do?  
- The SELECT command lets you pull information from a table.  After the SELECT command, you can pick which columns to display or * to select all of them.
- The FROM keyword lets you choose which table to pull information from.
- Notice that the SQL statement is terminated by a semicolon (;).  
-  SQL is not case sensitive, but I am capitalizing keywords in SQL to make it easier for you to identify the keywords.

#### Selecting Individual Columns
You can SELECT just the names and base experience from the table with:
```sql
sqlite> SELECT english_name, base_experience FROM pokemon;
```

| english_name | base_experience |
|--------------|-----------------|
| Bulbasaur    | 64              |
| Ivysaur      | 142             |
| Venusaur     | 236             |
...

#### Filtering the SELECT

What if we only want some of the pokemon?  We can limit it with the **WHERE** clause.  

```sql
sqlite> SELECT english_name, base_experience
...> FROM pokemon
...> WHERE english_name = 'Vulpix';
```
| english_name | base_experience |
|--------------|-----------------|
| Vulpix       | 60              |

#### Sorting the SELECT
You can sort a SELECT statement with the **Order By** command

```sql
sqlite> SELECT english_name, base_experience
...> FROM pokemon
...> WHERE height > 7
...> ORDER BY base_experience DESC;
```

So the above SELECT would sort the results by the base_experience in descending order (highest first).  If it was left off it would default to ascending order.  

## Creating a Table
To create a table you use the CREATE TABLE command.
```sql
CREATE TABLE <tablename> (
	<rowname>	<datatype> [options],
	<rowname>	<datatype> [options],
	<rowname>	<datatype> [options]
	);		
```
So for example:
```sql
CREATE TABLE pokemon_coach (
	id	 	INT PRIMARY KEY	NOT NULL,
	name  	CHAR(50)			NOT NULL,
	age	 	INT					NOT NULL,
	email 	CHAR(50)
	);
```

Some of the row options include:
-  PRIMARY KEY - the unique ID field for that row in the table.  
-  FOREIGN KEY - A field that refers to a primary key in another table.
	- It's used like this:  FOREIGN KEY(pokemon_id) REFERENCES pokemon (id),
	- So the new column is pokemon_id and it refers to the primary key field (id) in the pokemon table.
-  NOT NULL    - the field must have a value (not be null).
-  UNIQUE		- the field must be unique

## Inserting Data
You can insert rows into a table with the INSERT Query

```sql
INSERT INTO <tablename> [(<column1>, <column2>, <column3>,...columnN)]  
VALUES (<value1>, <value2>, <value3>,...<valueN>);
```
So the following would insert a new Pokemon
```sql
INSERT INTO pokemon (species_id, english_name, height, weight, base_experience, is_Default, pokemon_order)
VALUES (3, "Zoroasaur", 100, 300, 1, 400);
```
Or this to insert Kari into pokemon_coaches
```sql
INSERT INTO pokemon_coach
	(name, age, email, id)
	VALUES ("Kari", 31, "kari@ada.org", 37);
```

### Deleting Data
You can delete rows from a table with the DELETE query?
```sql
DELETE FROM <tablename>
WHERE [condition];
```

So for example you could delete all the Pokemon trainers who are too young.
```sql
DELETE
FROM pokemon_coach
WHERE age <= 12
```

### Updating
You can update rows (one or more) in a table with the UPDATE Query
```sql
UPDATE <tablename>
SET column = value1, column=value2,... columnN=valueN
WHERE [condition]
```

So this query would subtract one to the age of any pokemon_coach named "Kari".  Note you can refer to existing values in a query.  

```sql
UPDATE pokemon_coach
SET age = age - 1
WHERE name = "Kari";
```

### Joining Tables Together

An SQL Database has a collection of tables which are related by linked fields, for example the pokemon table has a structure of:

```sql
CREATE TABLE "pokemon"(
  id INT,
  species_id INT,
  english_name TEXT,
  height INT,
  weight INT,
  base_experience INT,
  is_default NUM,
  pokemon_order INT
);
```

And the pokemon_abilities table
```sql
CREATE TABLE pokemon_abilities (
	pokemon_id INTEGER NOT NULL,
	ability_id INTEGER NOT NULL,
	is_hidden BOOLEAN NOT NULL,
	slot INTEGER NOT NULL,
	PRIMARY KEY (pokemon_id, slot),
	FOREIGN KEY(pokemon_id) REFERENCES pokemon (id),
	FOREIGN KEY(ability_id) REFERENCES abilities (id),
	CHECK (is_hidden IN (0, 1))
);
```

Using the JOIN clause in a SELECT query you can connect the tables by the linked fields resulting in a larger table.  

```sql
SELECT pokemon.english_name, pokemon.height,
        pokemon.weight, pokemon_abilities.ability_id,
        pokemon_abilities.is_hidden
        FROM pokemon
        JOIN pokemon_abilities ON 	pokemon_abilities.pokemon_id = pokemon.id
		WHERE pokemon.english_name = 'Ivysaur';
```
| english_name | height | weight | ability_id | is_hidden |
|--------------|--------|--------|------------|-----------|
| Ivysaur      | 10     | 130    | 65         | 0         |
| Ivysaur      | 10     | 130    | 34         | 1         |

This created two rows.  Why?  Well there are two abilities that Ivysaurs have so it resulted in two rows one for each ability that matched the Ivysaur's ID.  This is an example of a one to many relationship.  

You could further chain off the join and get the ability names with:

```sql
SELECT pokemon.english_name, pokemon.height,
        pokemon.weight, pokemon_abilities.ability_id,
        pokemon_abilities.is_hidden,
        abilities.identifier
        FROM pokemon
        JOIN pokemon_abilities ON 	pokemon_abilities.pokemon_id = pokemon.id
        JOIN abilities on abilities.id = pokemon_abilities.ability_id
		WHERE pokemon.english_name = 'Ivysaur';
```

| english_name | height | weight | ability_id | is_hidden | identifier  |
|--------------|--------|--------|------------|-----------|-------------|
| Ivysaur      | 10     | 130    | 65         | 0         | overgrow    |
| Ivysaur      | 10     | 130    | 34         | 1         | chlorophyll |


This let you get to the ability name (identifier) through a joined table.  This is an example like you saw in Rails like has_many:, through

### Exercises:
For the exercises below use the attached SQLlite database.

This will give you an SQL Lite shell like IRB to work with.  Then enter `.headers on` and `.mode column`

1.  There is another table called types in the database which holds the types of pokemon.  Write a SELECT query to find all the types of Pokemon.  
2.  Write a SELECT Query to find Pokemon who weigh more than 1000.  You can use the '>' sign in your WHERE clause.
3.  Write a query to find out the ID of the ice type of pokemon in the types table.
4.  Your Ada instructor doesn't like 'shadow' type pokemon, rename the type to 'super sneaky' with the UPDATE SQL command on the types table.  
5.  The Bulbasaur pokemon had bad data entered in to the database.  Write an update query to set their weight to 1200.
6.  Write a statement to Create a new table to track your favorite Pokemon called favorite_pokemon
It should have the following columns
	- id (integer, primary key)
	- pokemon_id (integer - this will be a foreign key).
	- person_name (text - this will be the person's name who likes that pokemon).

7.  Write a statement to insert 2 rows into your favorite_pokemon
8.  We need more Pokemon (Gotta Catch'em All)!  Write a query to insert a new pokemon into the Pokemon table.  Name it after yourself.  
9.  Write a query to delete all Pokemon with a height of 1.
10.  Using the new favorite_pokemon table, Use a SELECT with a JOIN to produce a list of your favorite Pokemon Names.
11.  Optional/challenge:  You can see the list of tables in SQLite with `.tables` and see how the tables are made with `.schema <tablename>`.  See if you can find out the Japanese name of your favorite pokemon.  You will have to figure out how the tables are related.
