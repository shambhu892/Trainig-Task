# Trainig-Task
Create the application "HackerNews" in which display the data available in the API. Try to convert it into MVVM model.

Solution:
FileName Work

/Utilities/Constants -------- Holds the baseURL

/View/CustomCell/NewsCell -------- Setting the title and points data to display

/ApiManager/ApiManager -------- Getting the API responsible for fetching data from server and converting data to model

/Model/NewsModel -------- Defining the structure of data required

/Controller/NewsVC -------- Calling of the API once fetched Returning the view of the table - no of rows and the calling the function to set the data

/Storyboard/Main ------- UI View of the page to display on the simulator which includes pointsLabel, titleLabel![Simulator Screen Shot - iphone 12 Pro Max - 2023-01-12 at 09 16 14](https://user-images.githubusercontent.com/22993256/211971509-d840e894-5792-4faa-991f-872d0e8839f1.png)
