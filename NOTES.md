Check list for project:
(Take things slow Rob, double test everything after building something and save often.)
When you get reviewed understand what everything does, every line of code, every html, everything.


5/4/2020
- its ok to use bootstrap and jquery. Use these to set up the asthetic of the site ONCE YOU HAVE CODED EVERYTHING TO WORK.

1. Setting up files:
  x - install corneal, get basic folder structure set up.
  x - Create Migrations
  x - Create Models
  x - Create Controllers(files) (Go into config and add use "name of Controllers")
  x - Create Views(folders)

2. creating controllers and views
    - Signup:
      x - allows new user to signup (signup form will be located on homepage).
      x - has form that requires valid username, email, and password.
          else refreshes homepage with new error message inside signup box,
          "sorry the username or email you have entered is already in use". <= THIS STILL NEEDS TO BE ADDED
          OR "Invalid information"
      x - sends them to members homepage.
    - Login
      x - has form that requires valid username and password.
          else refreshes page with new error message below login,
          "Sorry, the information you have entered is invalid, please try again or if your a new user use this link to get started!"
    - Logout
      x - Confirms "#{user} are you sure you wish to log out?"
      x - Has button that clears users session, logging them out and redirecting them to homepage.
    - Profile
        - Has users info (name, bio and preferences)
        - can edit user info.
        - Has link to all users reviews.
        - can edit/delete any review.
        - Has links to logout, go to members homepage and create new review.
    - new review
        - Can create new review and verify to make sure info is valid.
    - edit reviews
        - can edit new or existing reviews.
    - delete reviews
        - can delete new or existing reviews.
    - Member Homepage
        - members Homepage displays all reviews in boxes with quick info
          (username, title of review, product being discussed(type and name), price of product)
        - reviews are clickable and direct you to a page that shows the full review.
    - individual reviews
        - shows full content of review.
        - is editable and deletable by user who created it.
        - IS NOT editable and deletable by user who DID NOT create it.

3. Making each html page look good
    - homepage
        - Background looks good.
        - signup form is center page.
        - description of page, is well thought out.
          includes my signature at the bottom with a photograph of me and friends enjoying glass of whiskey and cigars.
        - should include login button at the top right of screen.
    -
    -
    -
    - Flash Messages
        - Make it look professional, add good looking warnings and "success" tags.
