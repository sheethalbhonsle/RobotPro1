*** Settings ***
Library     SeleniumLibrary


*** Variables ***



*** Test Cases ***
Testing Frames
    open browser        https://www.selenium.dev/selenium/docs/api/java/index     chrome
    click link      Frames
    select frame     packageListFrame
    click link      org.openqa.selenium
    unselect frame
    sleep       3

    select frame        packageFrame
    click link      OutputType
    unselect frame
    sleep       3
    select frame        classFrame
    click link      Help
    unselect frame

    close browser

