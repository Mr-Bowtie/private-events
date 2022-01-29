# Private Events 

## What this is

This is a project built as part of [The Odin Project's Curriculum](https://www.theodinproject.com/paths/full-stack-ruby-on-rails/courses/ruby-on-rails/lessons/private-events)

## Goal

The assignment was to create an event management website that would allow users to create events, make them public or invite only, send invitations to other users, and accept invitations and attend other events.

## Functionality

This project was mainly focused on building a functional backend relying heavily on Active Record Associations. User authentication is done through the [Devise](https://github.com/heartcombo/devise) gem. Since security is not the main concern, validation was not put in place for emails or special character input for usernames. Styling was done with the [Bulma](https://bulma.io/) CSS framework.

### Additional features 

* Home page: displaying all upcoming public events 
* User dashboard: a place for users to view all the events they've created and agreed to attend, as well as any invitations they need to respond to 
* Creator dashboard:  The creator of an event can send invites from the event details page and view all invitations and their statuses. Also adds the ability to edit or delete the event.
* User search: a page that an event creator can use a basic search function to filter users by email, Given name, or username in order to send invitations. 

## How to view

You can view the live site [Here](https://event-palace.herokuapp.com)

sign in with: 

Email - test@test.com

Password - 123456

or create a new user (emails are not validated so use a fake one if you like)
 
