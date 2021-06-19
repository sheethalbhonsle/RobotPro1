*** Settings ***
Library     SeleniumLibrary


*** Variables ***



*** Test Cases ***
Navigation Test
#Keywords: GOTO, GO BACK,GET LOCATION
    open browser        https://www.google.com     chrome
    ${loc}=     get location
    log to console  ${loc}
    sleep       3

    go to       https://www.bing.com/
    ${loc}=     get location
    log to console  ${loc}
    sleep       3

    go back
    ${loc}=     get location
    log to console  ${loc}

    close browser

