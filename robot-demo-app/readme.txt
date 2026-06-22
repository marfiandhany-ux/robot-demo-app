This project is a mobile test automation framework built using **Robot Framework** and **Appium**. It is designed to run automated end-to-end (E2E) UI tests on the Android version of the SauceLabs "Swag Labs" sample application.

## Project Structure

This framework utilizes a **Page Object Model (POM)** approach to cleanly separate UI locators, execution logic, and test scenarios.

```text
MobileAutomationQA/
├── app/
│   └── Android.SauceLabs.Mobile.Sample.app.2.7.1.apk   # The application under test
├── action/
│   └── step.resource           # Custom keywords and action logic
├── resources/
│   └── locators.resource       # UI element locators (Accessibility IDs, XPaths)
├── results/                    # Auto-generated HTML reports and execution logs
└── tests/
    └── demo_test.robot         # The main test suite containing execution steps

App:
https://github.com/saucelabs/sample-app-mobile/releases/tag/2.6.0



How to run:

robot -d results tests/demo_test.robot
