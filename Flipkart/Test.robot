*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}      https://www.flipkart.com/
${BROWSER}        Chrome
${Number}         9486642293
${Password}       /subash@123
${Searchbox}      Mi Mobiles

*** Test Cases ***
Valid Login
    Add a product to the cart
    Verify wheather cart has the added product


*** Keywords ***
Add a product to the cart
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Set Selenium Implicit Wait  5 second
    Maximize Browser Window
    Set Selenium Implicit Wait  5 second
    Click Button  xpath: /html/body/div[2]/div/div/button
    #Input Text  xpath : /html/body/div[2]/div/div/div/div/div[2]/div/form/div[1]/input  ${Number}
    #Input Password  xpath : /html/body/div[2]/div/div/div/div/div[2]/div/form/div[2]/input  ${Password}
    #Click Button  xpath: /html/body/div[2]/div/div/div/div/div[2]/div/form/div[4]/button
    Set Selenium Implicit Wait  2 second
    Input Text  xpath: //*[@id="container"]/div/div[1]/div[1]/div[2]/div[2]/form/div/div/input  ${Searchbox}
    Set Selenium Implicit Wait  2 second
    Click Button  xpath: //*[@id="container"]/div/div[1]/div[1]/div[2]/div[2]/form/div/button
    Set Selenium Implicit Wait  2 second
    #Scroll Element Into View  xpath: //*[@id="container"]/div/div[3]/div[1]/div[2]/div[10]/div/div/div/a/div[2]/div[1]/div[1]
    Set Selenium Implicit Wait  5 second
    Click Element  xpath: //*[@id="container"]/div/div[3]/div[1]/div[2]/div[2]/div/div/div/a
    Set Selenium Implicit Wait  10 second
    Switch Window  new
    Set Selenium Implicit Wait  10 second
    Click Element  xpath: //*[@id="container"]/div/div[3]/div[1]/div[1]/div[2]/div/ul/li[1]/button
    Set Selenium Implicit Wait  3 second


Verify wheather cart has the added product
    Switch Window  main
    Set Selenium Implicit Wait  3 second
    Click Element  xpath: //*[@id="container"]/div/div[1]/div[1]/div[2]/div[6]/div/div/a
    Set Selenium Implicit Wait  10 second
    Log To Console  Same Product
    Close Browser
