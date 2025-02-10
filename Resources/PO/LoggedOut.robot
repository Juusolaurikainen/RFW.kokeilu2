*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${LOGGEDOUT_HEADER_LABEL} =        Signed Out    # Muuttuja, joka tallentaa odotetun uloskirjautumisviestin ("Signed Out")


*** Keywords ***

Verify Page loaded
    Wait Until Page Contains    ${LOGGEDOUT_HEADER_LABEL}   # Odottaa, että sivu sisältää "Signed Out" -viestin varmistaakseen, että uloskirjautumissivu latautui oikein
