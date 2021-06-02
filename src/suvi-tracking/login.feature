Feature: As a user, i want to login

  Scenario: load the login page
    Given open the url "https://backoffice.suvitracking.ql6625.live/auth/login"
    Then I expect that element "#email" is displayed
    Then I expect that element "#password" is displayed

  Scenario: as a un-authenticated user, if i fill wrong username or password the error message will display
    Given open the url "https://backoffice.suvitracking.ql6625.live/auth/login"
    When I add "superadmin@ql6625.fr" to the inputfield "#email"
    When I add "test" to the inputfield "#password"
    When I click on the button "/html/body/app-root/app-auth/app-login/div/div/div/div/div/div/div[2]/form/div[4]/div/button"
    Then I expect that element "#gritter-notice-wrapper" becomes displayed

  Scenario: as a un-authenticated user, i can login if i fill correct  username and password
    Given open the url "https://backoffice.suvitracking.ql6625.live/auth/login"
    When I add "superadmin@ql6625.fr" to the inputfield "#email"
    When I add "12345678" to the inputfield "#password"
    When I click on the button "/html/body/app-root/app-auth/app-login/div/div/div/div/div/div/div[2]/form/div[4]/div/button"
    Then I expect that element "body > app-root > app-main > div > nav > div > div.be-navbar-header > a" becomes displayed
    Then I expect that the url is "https://backoffice.suvitracking.ql6625.live/orders"

  Scenario: as an authenticated user, i will redirect to mission page
    Given open the url "https://backoffice.suvitracking.ql6625.live"
    Then I expect that element "body > app-root > app-main > div > nav > div > div.be-navbar-header > a" becomes displayed
    Then I expect that the url is "https://backoffice.suvitracking.ql6625.live/orders"
