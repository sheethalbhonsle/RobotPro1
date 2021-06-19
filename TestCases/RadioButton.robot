*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  http://www.practiceselenium.com/practice-form.html


*** Test Cases ***
RadiobuttonsAndCheckboxes
    open browser    ${url}  ${browser}
    maximize browser window
    set selenium speed      2seconds
#radio buttons
    select radio button     sex     Female
    select radio button     exp     5

#check box
    select checkbox     BlackTea
    select checkbox     RedTea
    unselect checkbox       BlackTea
