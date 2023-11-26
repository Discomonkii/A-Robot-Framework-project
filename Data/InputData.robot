*** Variables ***
#Configuration
${ENVIRONMENT} =    dev
${START_URL} =      http://www.amazon.com
${BROWSER} =        chrome
${SEARCH_TERM} =    Ferrari 458
${LOGIN_URL} =    /login
#test

${CSV_FILE} =   ../Data/Users.csv

#Input Data
&{BASE_URL}  dev=   qua=    val=    stg=
&{CUSTOMER}  firstname=   lastname=    email=    password=
&{UNREGISTERED_CUSTOMER}  firstname=   lastname=    email=    password=
&{INVALID_CUSTOMER}  firstname=   lastname=    email=    password=
#${URL.${ENVIRONMENT}}


