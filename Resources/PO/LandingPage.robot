*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Keywords ***
Load
    go to    ${START_URL}
    wait until page contains    Amazon.com




