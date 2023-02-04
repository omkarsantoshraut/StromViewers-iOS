# StromViewers-iOS

### Index
* [Introduction](#intro)
* [Project Idea](#projIdea)
* [Testing Screenshots & Video](#testing)


<a id=intro>

### Introduction:
StromViewers is a very simple iOS application made by me as a project work belongs to #100DaysOfSwift. Building this application helps me to revise few 
topics of swift that includes following few points:
  * **FileManager:** It's a property in swift which will help us to access the resources of the project. Further we can filter it out in order to access the required resource.
  * **Array:** Used an array in project to store the name of images accessed from the resource of the project. Further used **sorted()** onto the array to sort the array in an ascending order that means got to learn array sorting too.
  * **UITableView:** We can notice that the first screen of an app uses the table view (will add more later). Learnt about the UITableView to render the image names in an ascending order.
  * **UITableViewDelegate & UITableViewDataSource:** used three methods of these delegate in order to render the data in table view and mamage the login after tapping on the particular cell/row of the table view. I used following three delegate methods.
      - **tableView(_:numberOfRowsInSection:)** - This method returns an integer value which means how many cells/rows we want to show in the table view.
      - **tableView(_:cellForRowAt:)** - This method will actually create the particular cell. We have to return a cell from this method in order to show it in the table view.
      - **tableView(_:didSelectRowAt:)** - This method will keep a login of what we want to do after selection of the particular cell.
  * **UIImageView:** This uses to show an image on the screen.

Moving further, let's go to the project idea now.


<a id=projIdea>

### Project Idea:
As I already mentioned that this is very basic and easy iOS application. The idea of the project is as follows:
  - This app has only two screens.
  - The first screen:
      - Will render a table view with image names in each of the row.
      - The name of the images in the table view should be in ascending order
  - The second screen:
      - Will show an image view on the whole screen.
      - There should be an option at top left corner to go back to the first screen.
      - The title of the screen should mention index of number/ total number of images. For example 4/10.
      - After tapping on an image the back button and title of the screen should hide and viceversa.


<a id=testing>

### Testing screenshots & video:
Please refer the following screenshots and testing video to verify the behavior of an application.
![StromeViewers-Screen-1](https://user-images.githubusercontent.com/83705143/216782030-a048c171-9e22-444c-b5d0-6583e83973bd.png)
![StromeViewers-Screen-2](https://user-images.githubusercontent.com/83705143/216782039-ddc03409-c9d3-4df6-a6f1-ad1dc9932c00.png)

https://user-images.githubusercontent.com/83705143/216782069-0c65c580-240a-449d-8c61-0f735e1903ce.mov
