*** Settings ***
Library     SeleniumLibrary


*** Variables ***



*** Test Cases ***
Tabbed window test
    open browser        http://demo.automationtesting.in/Windows.html     chrome
    click element       //*[@id="Tabbed"]/a/button
    select window       title=SeleniumHQ Browser Automation
    click element      xpath://*[@id="navbar"]/a[2]
    sleep       3
    close all browsers