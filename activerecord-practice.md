# ActiveRecord Practice
## Setup
1. Go to your sandbox
1. Create a new rails app: `$ rails new ar-practice`.
1. Create a model called `Student` with a name and at least two other attributes of your choice (like favorite pie and personal motto): `$ rails g model student name:string other_field:type`
1. _Migrate_ your database: `$ rake db:migrate`

## Exercise
1. Enter the rails console: `$ rails console`
1. Create a record in the database for yourself using `new` or `create`.
1. Create a record in the database for all the students in your pod. Ask each of them for the information you've defined for your student class.
1. If you're asking someone a question who has not yet setup their `Student` model, offer to help.
1. After all 5 records are created. Read about and experiment with the following [ActiveRecord methods](http://guides.rubyonrails.org/active_record_querying.html):
  - `find`
  - `where`
  - `find_by`
  - `destroy`
  - `where.not`
