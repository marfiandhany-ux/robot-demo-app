*** Variables ***
#setup
${APPIUM_SERVER}      http://localhost:4723
${PLATFORM_NAME}      Android
${DEVICE_NAME}        emulator-5554
${APP_LOCATION}       ${EXECDIR}/app/Android.SauceLabs.Mobile.Sample.app.2.6.0.apk
${AUTOMATION_NAME}    UiAutomator2

#login
${USERNAME_FIELD}     accessibility_id=test-Username
${PASSWORD_FIELD}     accessibility_id=test-Password
${LOGIN_BTN}          accessibility_id=test-LOGIN
${ERROR_MSG}          accessibility_id=test-Error message

#Homepage
${MENU_BTN}           accessibility_id=test-Menu
${LOGOUT_BTN}         accessibility_id=test-LOGOUT
${INVENTORY_PAGE}     accessibility_id=test-Cart drop zone
${ADD_TO_CART_BTN}    xpath=(//android.view.ViewGroup[@content-desc="test-ADD TO CART"])
${CART_ICON}          xpath=//android.view.ViewGroup[@content-desc="test-Cart"]/android.view.ViewGroup

#Checkout
${CHECKOUT_BTN}       accessibility_id=test-CHECKOUT
${FIRST_NAME}         accessibility_id=test-First Name
${LAST_NAME}          accessibility_id=test-Last Name
${POSTAL_CODE}        accessibility_id=test-Zip/Postal Code
${CONTINUE_BTN}       accessibility_id=test-CONTINUE
${FINISH_BTN}         xpath=//android.view.ViewGroup[@content-desc="test-FINISH"]
${SUCCESS_HEADER}     xpath=//android.widget.ScrollView[@content-desc="test-CHECKOUT: COMPLETE!"]/android.view.ViewGroup/android.widget.TextView[1]