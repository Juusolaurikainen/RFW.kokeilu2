*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${SIGNIN_HEADER_LABEL} =         Login                   # Sivun otsikko tai elementti, joka vahvistaa, että olemme kirjautumissivulla
${SIGNIN_EMAIL_TEXTBOX} =        id=email-id             # Sähköpostikentän tunniste (id)
${SIGNIN_PASSWORD_TEXTBOX} =     id=password             # Salasanakentän tunniste (id)
${SIGNIN_SUBMIT_BUTTON} =        id=submit-id            # Lähetä-painikkeen tunniste (id)


*** Keywords ***

Verify Page loaded
    Wait Until Page Contains    ${SIGNIN_HEADER_LABEL}   # Odottaa, että "Login"-otsikko löytyy sivulta, mikä vahvistaa, että sivu latautui oikein


Login With Valid Credentials
    [Arguments]    ${Email}       ${Password}            # Hyväksyy sähköpostin ja salasanan parametreina
    Fill "Email" Field            ${Email}               # Täyttää sähköpostikentän
    Fill "Password" Field         ${Password}            # Täyttää salasanakentän
    Click "submit" Button                                 # Klikkaa lähetä-painiketta


Fill "Email" Field
    [Arguments]    ${Email}                              # Hyväksyy sähköpostiosoitteen parametrina
    Input Text                 ${SIGNIN_EMAIL_TEXTBOX}    ${Email}   # Syöttää sähköpostin oikeaan tekstikenttään


Fill "Password" Field
    [Arguments]    ${Password}                           # Hyväksyy salasanan parametrina
    Input Text                 ${SIGNIN_PASSWORD_TEXTBOX}    ${Password}   # Syöttää salasanan oikeaan tekstikenttään


Click "submit" Button
     Click Button              ${SIGNIN_SUBMIT_BUTTON}   # Klikkaa "Submit" (lähetä) -painiketta
