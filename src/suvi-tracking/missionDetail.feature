Feature: 4. Mission Detail Feature
  Scenario: Logging in successful
    Given open the url "https://backoffice.suvitracking.ql6625.live"
    Then I expect that element "/html/body/app-root/app-auth/app-login/div/div/div/div/div/div/div[2]/form/div[4]/div/button" becomes displayed
    When I add "superadmin@ql6625.fr" to the inputfield "#email"
    When I add "12345678" to the inputfield "#password"
    When I click on the button "/html/body/app-root/app-auth/app-login/div/div/div/div/div/div/div[2]/form/div[4]/div/button"
    Then I expect that element "#gritter-notice-wrapper" becomes displayed
  Scenario: 4.1 Getting to mission detail
    Given open the url "https://backoffice.suvitracking.ql6625.live/orders"
    Then I expect that element "/html/body/app-root/app-main/div/nav/div/div[3]/ul/li[1]/button" becomes displayed
    Then I expect that element "#table1 > tbody > tr:nth-child(1) > td:nth-child(2) > div > span" contains any text
    When I click on the element "#table1 > tbody > tr:nth-child(1) > td:nth-child(1) > a"
    Then I expect that element "body > app-root > app-main > div > div > app-detail > div > div > div.container-fluid.nomarg.nopad > div:nth-child(1) > app-detail-action > div > div:nth-child(1) > a > button" becomes displayed
  Scenario: 4.2 Singal Anomlie feature
    Given open the url "https://backoffice.suvitracking.ql6625.live/orders"
    Then I expect that element "/html/body/app-root/app-main/div/nav/div/div[3]/ul/li[1]/button" becomes displayed
    When I click on the element "#table1 > tbody > tr:nth-child(1) > td:nth-child(1) > a"
    Then I expect that element "body > app-root > app-main > div > div > app-detail > div > div > div.container-fluid.nomarg.nopad > div:nth-child(1) > app-detail-action > div > div:nth-child(1) > a > button" becomes displayed
    Then I expect that element "/html/body/app-root/app-main/div/div/app-detail/div/div/div[2]/app-detail-mission/div/div/div/div/div/table/tbody/tr/td[1]/div[2]/button" does exist
    Then I expect that element "body > app-root > app-main > div > div > app-detail > div > div > div:nth-child(2) > app-detail-mission > div > div > div > div > div > table > tbody > tr > td:nth-child(1) > div:nth-child(5) > button > i" does exist
    When I click on the button "body > app-root > app-main > div > div > app-detail > div > div > div:nth-child(2) > app-detail-mission > div > div > div > div > div > table > tbody > tr > td:nth-child(1) > div:nth-child(5) > button"
    Then I expect that element "#md-custom > div > div > div.modal-header > div > h4 > div" becomes displayed
    Then I expect that element "#datepicker" becomes displayed
  Scenario: 4.3 Create Anomalie
    Given open the url "https://backoffice.suvitracking.ql6625.live/orders"
    Then I expect that element "/html/body/app-root/app-main/div/nav/div/div[3]/ul/li[1]/button" becomes displayed
    When I click on the element "#table1 > tbody > tr:nth-child(1) > td:nth-child(1) > a"
    Then I expect that element "body > app-root > app-main > div > div > app-detail > div > div > div.container-fluid.nomarg.nopad > div:nth-child(1) > app-detail-action > div > div:nth-child(1) > a > button" becomes displayed
    Then I expect that element "/html/body/app-root/app-main/div/div/app-detail/div/div/div[2]/app-detail-mission/div/div/div/div/div/table/tbody/tr/td[1]/div[2]/button" does exist
    Then I expect that element "body > app-root > app-main > div > div > app-detail > div > div > div:nth-child(2) > app-detail-mission > div > div > div > div > div > table > tbody > tr > td:nth-child(1) > div:nth-child(5) > button > i" does exist
    When I click on the button "body > app-root > app-main > div > div > app-detail > div > div > div:nth-child(2) > app-detail-mission > div > div > div > div > div > table > tbody > tr > td:nth-child(1) > div:nth-child(5) > button"
    Then I expect that element "#md-custom > div > div > div.modal-header > div > h4 > div" becomes displayed
    Then I expect that element "#datepicker" becomes displayed
    When I add "2021-04-29T15:59" to the inputfield "#datepicker"
    When I add "OK" to the inputfield "#propertyType"
    When I add "Test" to the inputfield "#inputTextarea3"
    When I click on the button "#md-custom"
#    Then I expect that element "<string>" becomes displayed
#  CAN GET/SET DATE PICKER PROPERTY
