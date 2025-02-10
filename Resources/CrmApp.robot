*** Settings ***
Resource    ../Resources/PO/AddCustomer.robot     # Lataa asiakkaan lisäyssivun avainsanat
Resource    ../Resources/PO/Customers.robot       # Lataa asiakaslistaukseen liittyvät avainsanat
Resource    ../Resources/PO/Home.robot            # Lataa kotisivuun liittyvät avainsanat
Resource    ../Resources/PO/LoggedOut.robot       # Lataa uloskirjautumissivun avainsanat
Resource    ../Resources/PO/SignIn.robot          # Lataa kirjautumissivun avainsanat
Resource    ../Resources/PO/TopNav.robot          # Lataa yläpalkin navigointiin liittyvät avainsanat
Library     SeleniumLibrary                       # Mahdollistaa selaimen automatisoinnin

*** Variables ***


*** Keywords ***

Go to "home" Page
    Home.Navigate To                             # Navigoi kotisivulle
    Home.Verify Page Loaded                      # Tarkistaa, että kotisivu latautui onnistuneesti


CrmApp.Login With Valid Credentials
    [Arguments]    ${Email}        ${Password}   # Hyväksyy sähköpostin ja salasanan parametreina
    TopNav.Click "Sign In" Link                 # Klikkaa yläpalkin "Sign In" -linkkiä
    SignIn.Verify Page loaded                   # Varmistaa, että kirjautumissivu latautui
    SignIn.Login With Valid Credentials    ${Email}    ${Password}    # Kirjautuu sisään annetuilla tunnuksilla
    Customers.Verify Page Loaded                # Varmistaa, että asiakaslistaus-sivu latautui


Add New Customer
    Customers.Click Add Customer link           # Klikkaa linkkiä uuden asiakkaan lisäämiseksi
    AddCustomer.Verify Page Loaded              # Varmistaa, että asiakastietojen lisäyssivu latautui
    AddCustomer.Add New Customer                # Lisää uuden asiakkaan (tiedot määritelty AddCustomer.robotissa)
    Customers.Verify Customer Added Successfully  # Tarkistaa, että asiakas lisättiin onnistuneesti


Sign out
    TopNav.Click "sign Out" link                # Klikkaa "Sign Out" -linkkiä yläpalkissa
    LoggedOut.Verify Page Loaded                # Varmistaa, että uloskirjautumissivu latautui
