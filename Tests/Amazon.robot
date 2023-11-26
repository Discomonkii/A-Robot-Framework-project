*** Settings ***
Documentation    This is a demo testcase
Library    SeleniumLibrary
Resource    ../Resources/Common.robot
Resource    ../Resources/AmazonApp.robot
Suite Setup     Insert Testing Data
Test Setup      Begin Web Test
Test Teardown   End Web Test
Suite Teardown  Cleanup Testing Data
Documentation    This is a demo
Resource    ../Data/InputData.robot
Resource    ../Resources/Common.robot
Resource    ../Resources/DataManager.robot
Test Setup  Common.Begin Web Test
Test Teardown    Common.End Web Test

*** Variables ***

*** Test Cases ***
#robot -N "Nom du rapport" -d results -t "User can search" tests
#robot -N "Nom du rapport" -d results -i smoke
#robot -N "Nom du rapport" -d results -i smoke -v BROWSER:chrome

User can search
    [Documentation]    This is my first Testcase
    [Tags]    smoke demo

    Call function with arguments    test1   test2   test3
    AmazonApp.Search for Products
    sleep           3s


Invalid login scenarios
    [Documentation]    This is my first Testcase
    [Template]  Test multiple login scenarios
    [Tags]    smoke demo
    ${CUSTOMER}
    ${UNREGISTERED_CUSTOMER}
    ${INVALID_CUSTOMER}

Invalid login scenarios with DataManager
    ${INVALID_LOGIN_SCENARIOS} =   DataManager.Get CSV Data



*** Keywords ***
Test multiple login scenarios
    [Arguments]    ${Credentials}
    Common.Navigate to
    Attempt Login   ${Credentials}
    Verify Login Page Error Message ${Credentials.ExpectedErrorMessage}

