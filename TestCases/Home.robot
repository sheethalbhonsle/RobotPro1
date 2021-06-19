*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/


*** Test Cases ***
LoginTest
    open browser    ${url}  ${browser}
    maximize browser window
    title should be     nopCommerce demo store
    click link  xpath://a[contains(text(),'Log in')]

  # input text  id:Email        sheetal@gmail.com
    ${"email_txt"}  set variable  id:Email
    element should be visible   ${"email_txt"}
    element should be enabled    ${"email_txt"}
    input text  ${"email_txt"}      sheetal@gmail.com
    sleep   3
    clear element text  ${"email_txt"}
    sleep   3



    input text  id:Password     Test@123
    sleep   3
    click element   xpath://button[contains(text(),'Log in')]
    close browser
*** Keywords ***