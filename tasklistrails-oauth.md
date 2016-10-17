# Adding OAuth to TaskListRails

## Learning Goals
- Practice using OAuth in a web Application
- Practice using Session Variables to track a user across multiple HTTP requests

## Exercise Description
Our TaskList web app was a wonderful starter app, but it can only make one list.  In this assignment you will modify your TaskList so that it can function for multiple users, each with their own TaskList.

Build your project using _branches_, with _one branch_ per phase.  As you finish a phase merge the changes into the main branch. You shall submit one pull request at the end once you are complete.

## Phase 1: Setting up OAuth

Following the steps in the Textbook curriculum, add OAuth to your TaskListRails Application and enable a user to log in from the homepage.

**Requirements:**
-  Have a button on the home page for the user to log in
-  The log in button shall turn in to a log out button when the user is logged in
- All other requirements from in-class notes apply:
  - Managed via `session`
  - `SessionsController`
  - `User` model


## Phase 2: User Authorization

**Requirements:**
-  Ensure that users who are not authenticated see a welcome message and a link to authenticate. No other pages should be viewable by the guest user.  
-  Ensure that Users who are authenticated see the normal Tasklist page.  
-  Build Automated Tests on the User Model.  


## Phase 3: Modifying The Task Model & Controller

**Requirements:**
-  Modify the Task Model to create a relation to the User Model. A User should have many tasks and each Task should belong to a User.  
-  Modify the Task Controller index and show actions so that a user only sees tasks that belong to them.  
-  Modify the Task Controller's edit and update method to ensure that the user cannot edit a task that does not belong to them.
-  Modify the new and create actions for the task controller so that the new task created will belong to the current user.
- Ensure that unauthenticated users cannot create tasks and are redirected to login.  


## Phase 4: Optional
Do some research into how to use Google or another OAuth provider for authentication and use that provider.   

## Resources
-  [Ada Textbook Curriculum OAuth](https://github.com/Ada-Developers-Academy/textbook-curriculum/blob/master/09-intermediate-rails/01-session-and-oauth.md)
-  [OmniOAuth Gem](https://github.com/omniauth/omniauth)
