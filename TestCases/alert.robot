*** Settings ***
Library     SeleniumLibrary


*** Variables ***



*** Test Cases ***
Handling Alerts
    open browser        https://testautomationpractice.blogspot.com/     chrome
    maximize browser window
    click element   xpath://*[@id="HTML9"]/div[1]/button
    #"ok" button , alert handle accept
    #"cancel" button :handle alert dismiss
    #just leave the page as it is: handle alert leave
    sleep   3
    #handle alert   accept
    #handle alert    dismiss
    alert should be present     Press a button!