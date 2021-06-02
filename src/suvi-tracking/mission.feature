Feature: 3. Mission Feature

    Test mission feature working properly
    Scenario: Logging in successful
        Given open the url "https://backoffice.suvitracking.ql6625.live"
        Then I expect that element "/html/body/app-root/app-auth/app-login/div/div/div/div/div/div/div[2]/form/div[4]/div/button" becomes displayed
        When I add "superadmin@ql6625.fr" to the inputfield "#email"
        When I add "12345678" to the inputfield "#password"
        When I click on the button "/html/body/app-root/app-auth/app-login/div/div/div/div/div/div/div[2]/form/div[4]/div/button"
        Then I expect that element "#gritter-notice-wrapper" becomes displayed
    Scenario: 3.1 Misson page columns showing up
        Given open the url "https://backoffice.suvitracking.ql6625.live/orders"
        Then I expect that element "/html/body/app-root/app-main/div/nav/div/div[3]/ul/li[1]/button" becomes displayed
        Then I expect that element "#table1 > thead > tr > th:nth-child(1) > div > span" contains the text "Détails"
        Then I expect that element "#table1 > thead > tr > th:nth-child(2) > div > span" contains the text "Référence"
        Then I expect that element "#table1 > thead > tr > th:nth-child(3) > div > span" contains the text "Donneur d'ordres"
        Then I expect that element "#table1 > thead > tr > th:nth-child(4) > div > span" contains the text "Statut"
        Then I expect that element "#table1 > thead > tr > th:nth-child(5) > div > span" contains the text "Statut de traçabilité"
        Then I expect that element "#table1 > thead > tr > th:nth-child(6) > div > span" contains the text "Chargement"
        Then I expect that element "#table1 > thead > tr > th:nth-child(7) > div > span" contains the text "Livraison"
        Then I expect that element "#table1 > thead > tr > th:nth-child(8) > div > span" contains the text "Transporteur"
        Then I expect that element "#table1 > thead > tr > th:nth-child(9) > div > span" contains the text "Ressource"
        Then I expect that element "#table1 > thead > tr > th:nth-child(10) > div > span" contains the text "Agence"
    Scenario: 3.2 General Search
        Given open the url "https://backoffice.suvitracking.ql6625.live/orders"
        Then I expect that element "/html/body/app-root/app-main/div/nav/div/div[3]/ul/li[1]/button" becomes displayed
        When I add "Hein" to the inputfield "#search-view"
        When I click on the button "body > app-root > app-main > div > div > app-orders > app-left-slide-filter > div > div > div.search-container > div > span > button"
        Then I expect that element "/html/body/app-root/app-main/div/nav/div/div[3]/ul/li[1]/button" becomes displayed
        Then I expect that element "#table1 > tbody > tr:nth-child(1) > td:nth-child(2)" does exist
    Scenario: 3.3 Search by Site de chargement
        Given open the url "https://backoffice.suvitracking.ql6625.live/orders"
        Then I expect that element "/html/body/app-root/app-main/div/nav/div/div[3]/ul/li[1]/button" becomes displayed
        When I add "MONS" to the inputfield "#search-view"
        When I click on the button "body > app-root > app-main > div > div > app-orders > app-left-slide-filter > div > div > div.search-container > div > span > button"
        Then I expect that element "/html/body/app-root/app-main/div/nav/div/div[3]/ul/li[1]/button" becomes displayed
        Then I expect that container "#table1 > tbody > tr:nth-child(1) > td:nth-child(6) > div > div" contains the text "MONS - ALI ET SAS"