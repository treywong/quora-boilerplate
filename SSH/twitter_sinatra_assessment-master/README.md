
# Twitter Sinatra Assessment
This is a question repo for testing your web server understanding relate to Ruby. You'll be building a clone of Twitter, focusing on the backend server application. The goal of the assessment is to test your understanding about ActiveRecords, ActiveRecords Relationship and Associations, RESTFUL Routes and MVC through the use of Sinatra framework, and thus the usage of ActiveRecords, RESTFUL Routes and MVC is a **requirement**.

# Duration
5.5 hours. Cut off time is 4pm. *Of course you can order delivery/get someone to takeaway lunch to earn extra hour...

# What You Will Need to Do
1. First, fork this repository and `git clone` it to your local machine.
2. Wireframe and design your database structure.
3. Start coding!
4. Commit your code as often as possible into your own forked repository.
 - `git add .`
 - `git commit -m "login feature is added"`  (for example, commit message according to added feature)
 - `git push origin master.`
5. Once done, inform a mentor about your completion, slack us your github repo address.
6. Demo your app and walk the mentor through your code to show an understanding of the concepts.

## Usage
1. `bundle install`
2. Run server with `bundle exec shotgun config.ru` or `rake server`
3. Console access: `rake console`

# Requirements
Your app has to be a working app, with the capabilities as listed below:


### Users
1. User is able to create an account (sign up)
2. User is able to view their own profile
3. User is able to view other users' profiles
4. User is able to edit **only their own** profile


### Sessions
1. User is able to log into an account (sign in)
2. User is able to log out from an account (sign out)


### Tweets
1. User is able to (C) create Tweets **(140 char max)** (you are expected to have validation on this limitation)
2. User is able to (R) view a single tweet
3. User is able to (R) view all tweets by a user (every user)
4. User is able to (U) update **only their own** tweets
5. User is able to (D) delete **only their own** tweets


### Followers

1. User is able to follow other user
2. User can see how many followers other user has
3. User can see how many other users someone is following (imagine you can see how many facebook friends your friend has)


# Good Luck!
