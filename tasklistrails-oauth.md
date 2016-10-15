# Adding oAuth to TaskListRails

## Learning Goals
- Practice using oAuth in a web Application
- Practice using Session Variables to track a user across multiple Http requests.  
- Create an interactive program
- Use methods to encapsulate functionality

## Exercise Description
Our TaskList web app was a wonderful starter app, but it can only make one list.  In this assignment you will modify your TaskList so that it can function for multiple users, each with their own TaskList.

Build your project by branches, with one branch per phase.  As you finish a phase merge the changes into the main branch.  


## Phase 1 Setting up oAuth

Following the steps in the Textbook curriculum, add oAuth to your TaskListRails Application and enable a user to log in from the homepage.


**You Must:**
-  Ensure that users who are not authenticated should see a welcome message and a link to authenticate.
-  Ensure that Users who are authenticated will see the normal Tasklist page.  
-  Build Automated Tests on the User Model.


## Phase 2 Modifying The Task Model & Controller

**In This Step You Will:**
-  Create a migration to the Task Model adding a reference to the User Model so that a user has many tasks and each task must belong to a user.  
-  Modify the Task controller index and show actions so that a user only sees tasks that belong to them.  
-  Modify the Task Controller's edit and update method to ensure that the user cannot edit a task that does not belong to them.
-  Modify the new and create actions for the task controller so that the new task created will belong to the current user and that unauthenticated users cannot create tasks and must instead be redirected to login.  


## Phase 3 - Optional
Do some research into how to use Google or another oAuth provider for authentication and use that provider.   

## Resources
-  [Ada Textbook Curriculum oAuth](https://github.com/Ada-Developers-Academy/textbook-curriculum/blob/master/08-rails/13-session-and-oauth.md)
-  [OmnioAuth Gem](https://github.com/omniauth/omniauth)