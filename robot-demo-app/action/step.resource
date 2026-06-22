*** Settings ***
Library     AppiumLibrary
Resource    ../resources/locators.resource    # Links the locators to the steps

*** Keywords ***

Base Setup
    Open Application    ${APPIUM_SERVER}
        ...    platformName=${PLATFORM_NAME}
        ...    deviceName=${DEVICE_NAME}
        ...    app=${APP_LOCATION}
        ...    automationName=${AUTOMATION_NAME}
        ...    appPackage=com.swaglabsmobileapp
        ...    appWaitActivity=com.swaglabsmobileapp.*

Login
    [Arguments]    ${username}    ${password}
    Wait Until Element Is Visible    ${USERNAME_FIELD}    timeout=10s
    Input Text    ${USERNAME_FIELD}    ${username}
    Input Text    ${PASSWORD_FIELD}    ${password}
    Click Element    ${LOGIN_BTN}

Verify Error Message
    [Arguments]    ${expected_message}
    Wait Until Element Is Visible    ${ERROR_MSG}    timeout=5s
    Page Should Contain Text         Sorry, this user has been locked out.

Logout
    Wait Until Element Is Visible    ${MENU_BTN}    timeout=5s
    Click Element    ${MENU_BTN}
    Wait Until Element Is Visible    ${LOGOUT_BTN}    timeout=5s
    Click Element    ${LOGOUT_BTN}


Add to Cart - Checkout
        Wait Until Element Is Visible    ${ADD_TO_CART_BTN}    timeout=5s
        Click Element    ${ADD_TO_CART_BTN}
        Click Element    ${CART_ICON}
        Sleep    1s
        Swipe By Percent    50    80    50    30
        Wait Until Element Is Visible    ${CHECKOUT_BTN}    timeout=5s
        Click Element    ${CHECKOUT_BTN}

Shipping
    [Arguments]    ${input_first_name}    ${input_last_name}    ${input_zip}

        Wait Until Element Is Visible    ${FIRST_NAME}    timeout=5s
        Input Text       ${FIRST_NAME}    ${input_first_name}
        Input Text       ${LAST_NAME}     ${input_last_name}
        Input Text       ${POSTAL_CODE}   ${input_zip}
        Click Element    ${CONTINUE_BTN}

Checkout
        Sleep    1s
        Swipe By Percent    50    80    50    20
        Wait Until Element Is Visible    ${FINISH_BTN}    timeout=5s
        Click Element    ${FINISH_BTN}
        Wait Until Element Is Visible    ${SUCCESS_HEADER}    timeout=5s