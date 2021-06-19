*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}  chrome
${login url}  https:\\admin-demo.nopcommerce.com


*** Keywords ***
Open my Browser
    open browser    ${login url}    ${browser}
    maximize browser window
close my browser
    close all browsers
open login page
    go to   ${login url}
Input username
    [Arguments]     ${username}
    input text  id:Email    ${username}
Input password
    [arguments]     ${password}
    input text  id:Password     ${password}
Click login button

    click element   xpath://button[contains(text(),'Log in')]
Click logout link
    click link  Logout

Error message should be visible
    page should contain     Login was unsuccessful.

Dashboard page should be visible
    page should contain     Dashboard


