*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  http://demowebshop.tricentis.com/register


*** Test Cases ***
RegTest
    open browser    ${url}  ${browser}
    maximize browser window
    set selenium speed      2seconds

    select radio button     Gender  M
    input text  id:FirstName        sheetal
    input text  id:LastName     bhonsle
    input text  name:Email      abs@gmail.com
    input text  id:Password     abcabc
    input text  id:ConfirmPassword      abcabc

