*** Settings ***
Library     AppiumLibrary
Resource    ../action/step.resource

Test Setup       Base Setup
Test Teardown    Close Application

*** Test Cases ***
TC-001: Negative Login - Locked Out User
    [Documentation]    Validates the system rejects a locked-out account.
    Login     locked_out_user    secret_sauce
    Verify Error Message    Sorry, this user has been locked out.

TC-002: Positive Login - Standard User
    [Documentation]    Validates a standard user can successfully log in and log out.
    Login            standard_user    secret_sauce
    Wait Until Element Is Visible    ${INVENTORY_PAGE}    timeout=5s
    Logout
    Wait Until Element Is Visible    ${LOGIN_BTN}    timeout=5s

TC-003: E2E Checkout - Add Item to Cart and Complete Purchase
    [Documentation]    End-to-End flow: Login, add an item, and successfully check out.
    Login       standard_user    secret_sauce
    Add To Cart - Checkout
    Shipping        Dhany    QA    12345
    Checkout