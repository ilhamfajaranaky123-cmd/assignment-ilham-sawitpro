* Settings *
Library    AppiumLibrary
Resource   ../locators/locators.robot
Resource   ../resources/variables.robot
Resource   ../config/appium.conf

* Keywords *
Open Application
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM}    appActivity=${APP_ACTIVITY}    appPackage=${APP_PACKAGE}   deviceName=${DEVICE_NAME}

Close Application
    Close Application    ${REMOTE_URL}    platformName=${PLATFORM}    appActivity=${APP_ACTIVITY}    appPackage=${APP_PACKAGE}   deviceName=${DEVICE_NAME}

Login
    [Arguments]    ${email}    ${password}
    Input Text    ${USERNAME_FIELD}    ${email}
    Input Text    ${PASSWORD_FIELD}    ${password}
    Click Element    ${LOGIN_BUTTON}

Logout
    Click Element    ${LOGOUT_BUTTON}

Assert Positive Page Login
    Wait Until Element Is Visible    ${HOME_PAGE}    timeout=5

Assert Positive Page Logout
    Wait Until Element Is Visible    ${LOGIN_PAGE}    timeout=5

Assert Red Text Invalid Email Or Password
    Wait Until Element Is Visible    ${ERROR_TEXT}    timeout=3


