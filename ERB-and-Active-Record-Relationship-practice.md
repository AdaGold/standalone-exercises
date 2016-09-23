# Practice with ERB Diagrams & Entity Relationships in Rails
## Setup
We are setting up a gradebook for the Seattle Public Schools (not really, but bare with me).  
The gradebook will have students, classes, assignments, teachers and marks.  

For Students the database will need to keep track of:
-  Student First & Last Names
-  Student ID Numbers
-  Student Grade Level

Classes will have
-  A class name
-  The Teacher for the class
-  The students for the class

Assignments will have
-  An Assignment name
-  A due date
-  The class for which the assignment was given

Teachers will have
-  The teacher name
-  The teacher user-name
Marks will track
-  The Assignment
-  The Student for which the mark was given
-  The actual mark (grade)

## Exercise
1. Draw what you think the Entity Relationships should look like in this example.
2. Create the appropriate models in a sample Rails application make sure to have the appropriate belongs_to and has_many associations.

Be ready to talk about your choices.