*** Settings ***
Resource    ./PO/LandingPage.robot
Resource    ./PO/TopNav.robot
Resource    ./PO/SearchResults.robot

*** Variables ***

*** Keywords ***

Search for Products

    LandingPage.Load
    TopNav.Search for Products
    ${new_variable} =   set variable  1111111111111
    @{new_variable} =   create list   111 222 333 444
    Log     ${new_variable}
    Log     @{new_variable}[3]
    SearchResults.Verify Search Completed

Call function with arguments
    [Arguments]     ${value1}   ${value2}   ${value3}
    log     This is value1  ${value1}
    log     This is value2  ${value2}
    log     This is value3  ${value3}
