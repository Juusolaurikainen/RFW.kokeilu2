*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${ADD_CUSTOMER_HEADER_LABEL} =         Add Customer                # Otsikko, joka vahvistaa, että olemme asiakkaan lisäyssivulla
${ADD_CUSTOMER_SUBMIT_BUTTON} =        Submit                      # "Submit"-painikkeen tunniste
${ADD_CUSTOMER_EMAIL_TEXTBOX} =        id=EmailAddress             # Sähköpostikentän tunniste
${ADD_CUSTOMER_FIRST_NAME_TEXTBOX} =   id=FirstName                # Etunimikentän tunniste
${ADD_CUSTOMER_LAST_NAME_TEXTBOX} =    id=LastName                 # Sukunimikentän tunniste
${ADD_CUSTOMER_CITY_TEXTBOX} =         id=City                     # Kaupunkikentän tunniste
${ADD_CUSTOMER_STATE_DROPDOWN} =       id=StateOrRegion            # Valikkokentän tunniste osavaltiolle tai alueelle
${ADD_CUSTOMER_GENDER_RADIO} =         gender                      # Radiopainikkeen tunniste sukupuolelle
${ADD_CUSTOMER_PROMO_CHECKBOX} =       name=promos-name            # Valintaruudun tunniste


*** Keywords ***

Verify Page loaded
    Wait Until Page Contains   ${ADD_CUSTOMER_HEADER_LABEL}    # Odottaa, että "Add Customer" -otsikko näkyy sivulla


Add New Customer
    Fill Customer Fields                                     # Täyttää lomakkeen kentät uudelle asiakkaalle
    Click Submit Button                                      # Klikkaa "Submit"-painiketta


Fill Customer Fields
    Input Text                 ${ADD_CUSTOMER_EMAIL_TEXTBOX}            jane@gmail.com    # Syöttää sähköpostiosoitteen
    Input Text                 ${ADD_CUSTOMER_FIRST_NAME_TEXTBOX}       Jane              # Syöttää etunimen
    Input Text                 ${ADD_CUSTOMER_LAST_NAME_TEXTBOX}        Scott             # Syöttää sukunimen
    Input Text                 ${ADD_CUSTOMER_CITY_TEXTBOX}             Dallas            # Syöttää kaupungin
    Select From List By Value  ${ADD_CUSTOMER_STATE_DROPDOWN}           TX                # Valitsee osavaltion Texas
    Select Radio Button        ${ADD_CUSTOMER_GENDER_RADIO}             female            # Valitsee sukupuolen "female"
    Select Checkbox            ${ADD_CUSTOMER_PROMO_CHECKBOX}                             # Valitsee valintaruudun


Click Submit Button
     Click Button              ${ADD_CUSTOMER_SUBMIT_BUTTON}           # Klikkaa "Submit"-painiketta, joka lähettää lomakkeen

