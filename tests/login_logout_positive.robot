*** Settings ***
Resource   ../keywords/app_keywords.robot
Suite Setup    Open Application
Suite Teardown    Close Application
Resource    ../resources/variables.robot

*** Test Cases ***
Login With Valid Credentials
    Login    ${VALID_EMAIL}    ${VALID_PASSWORD}
    Assert Positive Page Login
    Logout
    Assert Positive Page Logout