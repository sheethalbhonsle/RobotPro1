*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  http://demowebshop.tricentis.com/register


*** Test Cases ***
RegTest
    open browser    ${url}  ${browser}
    maximize browser window
    #to know the default time use below code
    ${time}=    get selenium timeout
    log to console  ${time}


    set selenium timeout    10 seconds
    wait until page contains        Register
#default time is 5sec

    select radio button     Gender  M
    input text  id:FirstName        sheetal
    input text  id:LastName     bhonsle
    input text  name:Email      abs@gmail.com
    input text  id:Password     abcabc
    input text  id:ConfirmPassword      abcabc