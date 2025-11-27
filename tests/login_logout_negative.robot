*** Settings ***
Library    ../keywords/app_keywords.robot
Suite Setup    Open Application
Suite Teardown    Close Application
Variables    ../resources/variables.robot

*** Test Cases ***
Login With Invalid Email
    Login    ${INVALID_EMAIL}    ${VALID_PASSWORD}
    Assert Red Text Invalid Email Or Password

Login With Invalid Password
    Login    ${VALID_EMAIL}    ${INVALID_PASSWORD}
    Assert Red Text Invalid Email Or Password

