Feature: 2. User Feature

  Test user feature working properly
  Scenario: 2.1 Logging in successful
    Given open the url "https://backoffice.suvitracking.ql6625.live"
    Then I expect that element "/html/body/app-root/app-auth/app-login/div/div/div/div/div/div/div[2]/form/div[4]/div/button" becomes displayed
    When I add "superadmin@ql6625.fr" to the inputfield "#email"
    When I add "12345678" to the inputfield "#password"
    When I click on the button "/html/body/app-root/app-auth/app-login/div/div/div/div/div/div/div[2]/form/div[4]/div/button"
    Then I expect that element "#gritter-notice-wrapper" becomes displayed
    Then I expect that element "#be-navbar-collapse > ul > li:nth-child(1) > a" does exist
    Then I expect that element "#be-navbar-collapse > ul > li:nth-child(2) > a" does exist
    Then I expect that element "#be-navbar-collapse > ul > li:nth-child(3) > a" does exist
    Then I expect that button "body > app-root > app-main > div > nav > div > div.be-right-navbar > ul > li:nth-child(1) > button" contains the text "Créer un utilisateur"
  Scenario: 2.3 Create User
    Given open the url "https://backoffice.suvitracking.ql6625.live"
    Then I expect that element "#be-navbar-collapse > ul > li:nth-child(1) > a" does exist
    When I click on the button "body > app-root > app-main > div > nav > div > div.be-right-navbar > ul > li:nth-child(1) > button"
    Then I expect that element "body > app-root > app-main > app-create-user > div > div > div > div.modal-body > div > form > div:nth-child(1) > select" does exist
    Then I expect that element "#inputEmail" does exist
    Then I expect that element "#inputPassword" does exist
    Then I expect that element "#inputConfirmPassword" does exist
    Then I expect that element "body > app-root > app-main > app-create-user > div > div > div > div.modal-body > div > form > div.form-group.col-12 > ng-multiselect-dropdown > div > div:nth-child(1) > span" does exist
  Scenario: 2.4 Checkbox
    Given open the url "https://backoffice.suvitracking.ql6625.live"
    Then I expect that element "#be-navbar-collapse > ul > li:nth-child(1) > a" does exist
    When I click on the button "body > app-root > app-main > div > nav > div > div.be-right-navbar > ul > li:nth-child(1) > button"
    Then I expect that element "body > app-root > app-main > app-create-user > div > div > div > div.modal-body > div > form > div:nth-child(1) > select" does exist
    When I click on the element "body > app-root > app-main > app-create-user > div > div > div > div.modal-body > div > form > div.form-group.col-12 > ng-multiselect-dropdown > div > div:nth-child(1) > span"
    Then I expect that element "body > app-root > app-main > app-create-user > div > div > div > div.modal-body > div > form > div.form-group.col-12 > ng-multiselect-dropdown > div > div.dropdown-list > ul.item1 > li > input[type=checkbox]" becomes displayed
    When I click on the element "body > app-root > app-main > app-create-user > div > div > div > div.modal-body > div > form > div.form-group.col-12 > ng-multiselect-dropdown > div > div.dropdown-list > ul.item1 > li > div"
    Then I expect that checkbox "body > app-root > app-main > app-create-user > div > div > div > div.modal-body > div > form > div.form-group.col-12 > ng-multiselect-dropdown > div > div.dropdown-list > ul.item2 > li:first-child > input[type=checkbox]" is checked
    Then I expect that checkbox "body > app-root > app-main > app-create-user > div > div > div > div.modal-body > div > form > div.form-group.col-12 > ng-multiselect-dropdown > div > div.dropdown-list > ul.item2 > li:last-child > input[type=checkbox]" is checked