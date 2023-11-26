*** Settings ***
Library     SeleniumLibrary

*** Variables ***

*** Keywords ***
Begin Web Test
    open browser  about:blank   ${BROWSER}


End Web Test
    close browser

Insert Testing Data
    log    Setting up testing suite

Cleanup Testing Data
    log    Cleaning up testing suite


Navigate to
    ${SignInURL} =  Catenate     SEPARATOR=/ ${BASE_URL.${ENVIRONMENT}} ${LOGIN_URL}
    go to   ${SignInURL}

