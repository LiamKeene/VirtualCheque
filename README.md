# Virtual Bank Cheques Demo App

> demo app to print virtual bank cheques

The application takes the recipient's name, date and a nominal value, and 
generates a virtual cheque (on screen) with the proper string representation 
of the value.

For example, when 1,303.48 is entered it is represented by 'One Thousand 
Three Hundred and Three dollars and Forty-Eight cents'.

Here is one such [_Virtual Cheque_](http://nameless-gorge-7801.herokuapp.com/cheques/11).

## User Stories
1.1 Creating a new cheque requires the operator to enter a value, a payment 
date and a recipient name. Entering valid details will trigger the application
to (a) save the cheque generated and (b) display the generated cheque, as per 
1.4.

1.2 List of all cheques saved is available and shows a the date, recipient 
name and value as well as a link to view.

1.3 Filtering the list is possible by clicking on a recipient name, which 
results in showing the list of cheque as 1.2, but for a selected recipient 
only.

1.4 Viewing a cheque allows for the operator to view the cheque as saved and 
generated out the system, including (but not limited to!) the numeric to 
string representation conversion.

## Usage
You can have this app up and running on your box with just a few commands; 
first clone this repo
```
git clone https://github.com/LiamKeene/VirtualCheque.git
```
Then navigate to the folder and use
```
bundle
```
to fetch and install the required dependencies.  Finally running
```
rails server
```
will start the server on your [localhost](localhost:3000).

## Demo
Better than cloning and installing on your local box, to see the app in action,
check it out on [Heroku](http://nameless-gorge-7801.herokuapp.com).

## Credits
This app was created by me, [Liam Keene](http://liamkeene.com).

Aside from the usual suspects, several gems were crucial in fulfilling the user stories.

- [Linguistics](http://www.deveiate.org/projects/Linguistics/) - easiest way to change numbers to proper words
- [Faker](http://faker.rubyforge.org/) - great gem for creating random sample data