*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  http://www.practiceselenium.com/practice-form.html


*** Test Cases ***
Dropdown And ListBoxes
    open browser    ${url}  ${browser}
    maximize browser window
    set selenium speed      2seconds
#select by label,index and order
    select from list by label   continents  Australia
    sleep   2
    select from list by index   continents  2
    sleep   2
#select list
    select from list by label   selenium_commands   Switch Commands

