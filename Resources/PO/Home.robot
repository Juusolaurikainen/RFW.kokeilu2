*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${HOME_HEADER_LABEL} =            Customers Are Priority One    # Kotisivulla odotettava otsikko


*** Keywords ***

Navigate to
    Go To                        ${URL}                         # Navigoi annettuun URL-osoitteeseen
    Verify Page Loaded                                          # Varmistaa, että kotisivu latautui oikein


Verify Page loaded
    Wait Until Page Contains     ${HOME_HEADER_LABEL}           # Odottaa, että sivulla näkyy "Customers Are Priority One" -teksti
