*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${TOPNAV_SUBMIT_BUTTON} =   xpath=//*[@id="nav-search-submit-button"]

*** Keywords ***
Search for Products
    Enter Search Term
    Submit Search

Enter Search Term
    Input text  id=twotabsearchtextbox   ${SEARCH_TERM}

Submit Search
    Click Button    ${TOPNAV_SUBMIT_BUTTON}
