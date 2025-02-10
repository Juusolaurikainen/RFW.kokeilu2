*** Settings ***
Documentation    This is some basic info about the whole suite
Library          SeleniumLibrary     # Lataa SeleniumLibrary, joka mahdollistaa selaintestit
Resource         ../Resources/Common.robot    # Yleiset avainsanat, kuten selaimen avaus ja sulku
Resource         ../Resources/CrmApp.robot    # CRM-sovelluksen avainsanat, kuten kirjautuminen ja navigointi

Test Setup       Begin Web test      # Ajetaan ennen jokaista testiä (avaa selaimen)
Test Teardown    End Web Test        # Ajetaan testin lopuksi (sulkee selaimen)

#Run the script:
#robot -d results tests/crm.robot

*** Variables ***
${BROWSER} =                   firefox      # Määrittää käytettävän selaimen (Firefox)
${URL} =                       https://automationplayground.com/crm/    # CRM-sovelluksen URL
${VALID_LOGIN_EMAIL} =         admin@robotframeworktutorial.com    # Joku sähköpostiosoite kirjautumiseen
${VALID_LOGIN_PASSWORD} =      MyPassword!    # Joku salasana kirjautumiseen


*** Test Cases ***

Home page should load
    [Documentation]            Test the home page
        [Tags]                 1001   Smoke    Home    # Testitunnisteet (Smoke = pikatesti, Home = kotisivu)
    CrmApp.Go to "home" Page   # Navigoi kotisivulle ja tarkistaa, että se latautuu

Should be able to Login With Valid Credentials
    [Documentation]            Test the login
        [Tags]                 1002    Smoke    Login    # Testitunnisteet (Login = kirjautumistesti)
    CrmApp.Go to "home" Page   # Navigoi ensin kotisivulle
    CrmApp.Login With Valid Credentials    ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}   # Kirjautuu sisään joillain tunnuksilla

Should be able to add new customer
    [Documentation]            This is some basic info about the TEST
        [Tags]                 1006    Smoke    Contacts    # Testitunnisteet (Contacts = yhteystiedotesti)
    CrmApp.Go to "home" Page   # Navigoi kotisivulle
    CrmApp.Login With Valid Credentials    ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}   # Kirjautuu sisään
    CrmApp.Add New Customer    # Lisää uuden asiakkaan (avainsana määritelty CrmApp.robotissa)
    CrmApp.Sign out            # Kirjautuu ulos sovelluksesta


