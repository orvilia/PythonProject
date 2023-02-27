*** Settings ***

Library    SeleniumLibrary

*** Variables ***

${browser}  chrome
${url}  https://demo.nopcommerce.com/

*** Test Cases ***
LoginTest
    open browser    ${url}  ${browser}
    loginToApplication
    close browser


*** Keywords ***
loginToApplication
        click link      class:ico-login
        input text      id:Email     saurabhdubeyaws@gmail.com
        input text      id:Password  test123
        click element   xpath:/html/body/div[6]/div[3]/div/div/div/div[2]/div[1]/div[2]/form/div[3]/button
