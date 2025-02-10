*** Settings ***
Library    SeleniumLibrary


*** Variables ***


*** Keywords ***
Begin Web test
    #Initialize Selenium
    #Set Selenium Speed        .2s
    Set Selenium Timeout       10s

    Log                        Starting the test case!
    Open Browser               about:blank           ${BROWSER}

    Set Window Position        x=341    y=169
    Set Window Size            width=1935    height=1090




End web test
    Close All Browsers