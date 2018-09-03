# Windows AutoTimestamp 

I ceate a lot of files for classes, video projects, and personal ventures. I always date documents and project files in their name such as "2018.09.03 MyNotes" (year.month.day filename). 

This program listens for newly created folders or files in a specified directory on your computer and renames folders and files to include the date in the file name. 

NOTE: THIS DOES NOT WORK CURRENTLY THIS IS STILL IN DEVELOPMENT
  
## Why Do I do this? 
This prevents me from losing the date created information when the file is copied. When a file is copied the newly created file will show the current date in which the file was created rather than the date the original file was created. 

## How to Use: 
1) Download and extract the two .cmd (command prompt script) and .ps1 (powershell script) and save it to your desktop. 
2) Make edits to the .ps1 (powershell script). Edits include what date format you wish to use and what directory location to listen for changes. 
3) Run the scripts by double clicking on the .cmd (command prompt script) 

## How to stop: 
To stop the program, 
1) Open the windows task manager using control-shift-esc or control-alt-delete
2) Find the running powershell applicaiton
3) End the powershell applicaiton

## Future Direction: 
- Will will be fixing the infinit loop which creates multiple files
- Will create a userinterface for the program and make it an executable application 

