# Data Modeling
__Instructions__: With your chair pair, read the requirements for each of the headings below. Discuss the models, attributes, and relationships that would be necessary in order for all the interactions described to be possible.

Describe your _data model_ using an ERD diagram on paper. Be sure to indicate table names, column names & datatypes, primary and foreign keys, and relationships between tables in your diagram. Be prepared to discuss your diagrams and decisions at the end of the exercise.

### Twitter
We are gonna do this one together.

- A user can compose a tweet
- Other users can retweet a tweet
- Other users can reply to a tweet
- A user can follow other users

### Library
- Student & faculty can both check out books
- There are different limits for number of books a student or teacher can check out
- The number of days a book can be checked out is different for a student or teacher
- Each book will have a different ID. Also each book of same name and same author will have a different ID
- Stored book data will include who checked it out, when they checked it out and the due date
- Fine data will also be stored if a book is not returned by the due date

### Hotel
A hotel is a hive of numerous operations such as front office, booking and reservation, banquet, finance, HR, inventory, material management, quality management, security, energy management, housekeeping, and more.

- A Hotel has a number of rooms and each room is of a specific category
  - On the basis of room category, each room has different price
- A Hotel has a number of employees to manage the services provided to customers
- A Customer can book a room either online or by cash payment at the hotel
- A Customer record is stored in hotel database which contains:
  - customer identity
  - address
  - check in time
  - check out time
  - anything else you'd like to include
- The hotel provide food and beverages to their customers and generate the bill for this at the time of their check out

### Restaurant
- The restaurant maintains a menu for the list of food and beverage items that it provides
- Apart from providing food directly at the restaurant takes orders online.
- To deliver the orders we have delivery people
  - Each delivery person is assigned to a specific area code
  - The delivery person cannot deliver outside the area to which they are assigned
- Customer record is maintained so that premium customers can be awarded discounts
