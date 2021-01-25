# Author
Mauricio Macias (mauricio.macias@csu.fullerton.edu) 890741622

## 1 Background
For this project I created a UI App where people can add claims to the the Claim Server that I created in my last IOS project. 

## 2 Installation
Firstly, Install my Claim Server in github. <br/>
`https://github.com/TheErrorMaster/Claim-IOS` <br/>

Inside <br/>
\Source\Claim-IOS\Database.swift <br/>
Modify <br/>
`let dbname = "/Users/mauriciomacias/desktop/ios/data/ClaimDB.sqlite"` <br/>
to your own file path <br/>
`let dbname = "/path/ClaimDB.sqlite"` <br/>
Turn on the server now <br/>

Then install this Github repository. <br/>
For this project I created two projects that I first programmed the GUI and another where I used storyboard to create the GUI <br/>
Both projects create the same app, just programmed differently. <br/>

## 3 ADD CLAIM
For this app user will be asked to add a Claim Title and Date inside UITextFields. <br/>
After the data in inputed, the user will have to press the Add UIButton to send the data to our server. <br/>
When data is sent the UITextField will be cleared.  <br/>
When the data is sent a status message will appear displaying if the project was successful or not. 
