*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem

*** Variables ***
${url}      https://login.yahoo.com/?.intl=in
${Browser}  chrome


*** Test Cases ***
TC_01 yahoo mail Login
    Open Browser    ${url}    ${browser}  
    Maximize Browser Window
    Input Text  //input[@name="username"]    emailId
    Click Button    //input[@id="login-signin"] 
    Sleep   10s
    Input Password  //input[@type="password"]   password
    Click Button    //button[@type="submit"]
    Click Element   //a[@id="ybarMailLink"]
    Click Element   //a[text()="Compose"]
    Input Text       //input[@id="message-to-field"]    emailid
    Input Text       //input[@id="compose-subject-input"]   Resume
    Click Button     //button[@title="Attach files"]
    Choose File    //span[text()="Attach files from computer"]  location of file

          


*** Keywords ***
