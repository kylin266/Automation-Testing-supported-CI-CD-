Feature: As a user, i want to login to HokaONE BO

    Checking login to the dashboard works properly
    Scenario: load the page and loging in 
        Given open the url "https://backoffice.hokaoneone.ql6625.fr"
        Then I expect that element "#kt_login_signin_submit" is displayed
        Then I expect that element "#kt_login > div > div.kt-grid__item.kt-grid__item--fluid.kt-grid__item--order-tablet-and-mobile-1.kt-login__wrapper > kt-login > div > div > form > div.kt-login__actions > a" is displayed

    Scenario: login successful with notifications
        Given open the url "https://backoffice.hokaoneone.ql6625.fr"
        When I add "admin@ql6625.fr" to the inputfield "#mat-input-0"
        When I add "test" to the inputfield "#mat-input-1"
        When I click on the button "#kt_login_signin_submit"
        Then I expect that element "body > notifier-container > ul > li > notifier-notification" becomes displayed
    Scenario: 