*** Settings ***
Library     SeleniumLibrary
Resource       ../Resources/Login_resouces.robot
Suite Setup  Open my Browser
Suite Teardown  close my browser
Test Template   invalid login

*** Test Cases ***      username        password
correct user empty password      admin@yourstore.com     ${EMPTY}
Worng user correct password      asdasd@sdf.com      admin
correct user wrong password      admin@yourstore.com     admin324


*** Keywords ***
invalid login
    [Arguments]     ${username}     ${password}
    Input username  ${username}
    Input password  ${password}
    Click login button
    Error message should be visible

