Feature: SUIVI-TRACKING ACCEPTANCE
    Scenario: Redirect when not logging in
        # Given the page url is not "{{BASE_TEST_URL}}"
        Given open the url "https://backoffice.suvitracking.ql6625.live"
        Then I expect that element "body > app-root > app-auth > app-login > div > div > div > div > div > div > div.card-header > img" becomes displayed
        Then I expect that the url is "https://backoffice.suvitracking.ql6625.live/auth/login"
    # Scenario: Seeing Mission when I has already logging in
    #     Given open the url "https://backoffice.suvitracking.ql6625.live/orders"
    #     Then I expect the element "#be-navbar-collapse > ul > li:nth-child(1) > a" is displayed
    Scenario: Login success
        Given open the url "htps://backoffice.suvitracking.ql6625.live/auth/login"
        When I add "superadmin@ql6625.com" to the inputfield "#email"
        When I add "12345678" to the inputfield "#password"
        When I click on the button "body > app-root > app-auth > app-login > div > div > div > div > div > div > div.card-body > form > div.form-group.row.login-submit > div > button"
        # Then I expect that element "login_success" becomes displayed
        Then I expect that element "#be-navbar-collapse > ul > li:nth-child(1) > a" becomes displayed
    Scenario: Login success
        Given open the url "htps://backoffice.suvitracking.ql6625.live/auth/login"
        When I add "superadmin@ql6625.com" to the inputfield "#email"
        When I add "12345678" to the inputfield "#password"
        When I click on the button "body > app-root > app-auth > app-login > div > div > div > div > div > div > div.card-body > form > div.form-group.row.login-submit > div > button"
        # Then I expect that element "login_success" becomes displayed
        Then I expect that element "#be-navbar-collapse > ul > li:nth-child(1) > a" becomes not displayed
    Scenario: Menu User and Create User for super admin
        Given open the url "https://backoffice.suvitracking.ql6625.live/orders"
        # When I add "account@gmail.com" to the inputfield "email"
        # When I add "password" to the inputfield "password"
        # When I click on the button "login"
        # Then I expect that element "login_success" becomes displayed
        Then I expect that element "#be-navbar-collapse > ul > li:nth-child(1) > a" is displayed
        Then I expect that element "StatisquesPages" exist
        Then I expect that element "Utitlisateurs" exist
        Then I epxect that element "Créer un utilisateur" exist
    # Scenario: Create user in pop up
    #     Given open the url "Login_page"
    #     When I add "account@gmail.com" to the inputfield "email"
    #     When I add "password" to the inputfield "password"
    #     When I click on the button "login"
    #     Then I expect that element "login_success" becomes displayed
    #     When I