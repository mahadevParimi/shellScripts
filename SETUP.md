# shellScripts
powershell script , bash script

########### COMMAND FORMAT #################

s <text to be input into the searchbox> <y/a/g>
  y - To input the text into youtube search box
  a - To input the text into google search box
  g - To input the text into amazon search box
  
  example: 
    s how to run ubuntu on mac y
      The browser window will automatically open up youtube with the search results of the text i.e "how to run ubuntu on mac"
  
    s how to run ubuntu on mac g
      The browser window will automatically open up google with the search results of the text i.e "how to run ubuntu on mac"
  
    s iphone 14 pro max a
      The browser window will automatically open up amazon with the search results of the text i.e "iphone 14 pro max"

  
########### WINDOWS POWERSHELL SETUP ###########

  1.Open the powershell profile with notepad using the below powershell command
  
  notepad $PROFILE
  
  ___ Incase the file isn't there just create the file with the exact name at the exact location ___
  2.This will open up the powershell profile in notepad just copy paste the code in the powershell_search.ps1
  3.Save the changes made to the profile
  4.Close and reopen the powershell to reload the profile 
  5.Type the command to directly search without using your mouse/trackpad
  
  
########## BASH/ZSH LINUX/MAC SETUP #############
  1.To check the shell you're currently using type the following command in the terminal
  
  echo $SHELL
  
  2.Open the .zshrc file if you're using zsh shell or .bashrc file if you're using bash shell using terminal command below
  
  open ~/.zshrc. # for zsh shell
  open ~/.bashrc. # for bash shell
  
  3.This will open up the shell profile in textedit just copy paste the code in the terminal_search.sh
  4.Save the changes made to the profile
  5.Close and reopen the terminal to reload the profile
  
  Tip for mac users :
    Go to the shortcut app and bind a keyboard shortcut to open the terminal.This way you could access your terminal much faster
  
  ############# WORKING OF THE SCRIPT ###############
  
  A URL is made from the text argument passed by the user and the last argument decides to which website the query to be passed
  
  A youtube search query will be in the format https://www.youtube.com/results?search_query=<input text with "+" in between words>
  
  Example : 
    s how to run ubuntu on mac y
      url create will be https://www.youtube.com/results?search_query=how+to+run+ubuntu+on+mac
  
  Similary if it's on google, the url will be https://www.google.com/search?q=how+to+run+ubuntu+on+mac
  
  If you want to add your own query searcher for other website ,grab the search query url template
  like https://www.youtube.com/results?search_query= for youtube search
  
  Add it in the switch case statement with the correct syntax, refer the existing cases for syntax
  
  In Terminal, open command opens the url made from the arguments
  In Powershell, Start-Process command opens the url made from the arguments
  
  Usage :
  If you type "open https://www.youtube.com" in terminal this will open homepage of youtube
  If you type "Start-Process https://www.youtube.com" in powershell this will open homepage of youtube
  
