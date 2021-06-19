*** Settings ***
Library     SeleniumLibrary


*** Variables ***



*** Test Cases ***
Open in multiple Browsers Test
    open browser        https://www.google.com     chrome
    maximize browser window
    sleep       3
    open browser        https://www.bing.com        chrome
    maximize browser window

    switch browser      1
    ${title}=        get title
    log to console  ${title}

    switch browser      2
    ${title2}=      get title
    log to console  ${title2}

    sleep       3
    close all browsers
