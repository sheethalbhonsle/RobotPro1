*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  http://demowebshop.tricentis.com/register


*** Test Cases ***
RegTest
    open browser    ${url}  ${browser}
    maximize browser window
    #if any give 10sec time befor throughing "no such element exception".
    #how to find defalut time for selenium implicit wait
    ${implicittime}=    get selenium implicit wait
    log to console  ${implicittime}

    set selenium implicit wait      10seconds

    select radio button     Gender  M
    input text  id:FirstName        sheetal
    input text  id:LastName     bhonsle
    input text  name:Email      abs@gmail.com
    input text  id:Password     abcabc
    input text  id:ConfirmPassword      abcabc