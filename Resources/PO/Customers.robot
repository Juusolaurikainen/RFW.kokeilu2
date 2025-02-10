*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${CUSTOMERS_HEADER_LABEL} =                   Our Happy Customers           # Asiakassivun otsikko, jota odotetaan sivulla
${CUSTOMERS_ADD_CUSTOMER_LINK} =              id=new-customer               # Uuden asiakkaan lisäyslinkin tunniste (id)
${CUSTOMERS_CUSTOMER_SUCCESS_LABEL} =         Success! New customer added.  # Vahvistusteksti, joka näkyy asiakkaan lisäämisen jälkeen


*** Keywords ***

Verify Page loaded
    Wait Until Page Contains        ${CUSTOMERS_HEADER_LABEL}    # Odottaa, että asiakassivun otsikko "Our Happy Customers" näkyy sivulla


Click Add Customer Link
    Click Link                     ${CUSTOMERS_ADD_CUSTOMER_LINK}    # Klikkaa "Add Customer" -linkkiä (tunnisteen avulla)


Verify Customer Added Successfully
    Wait Until Page Contains        ${CUSTOMERS_CUSTOMER_SUCCESS_LABEL}    # Odottaa, että "Success! New customer added." näkyy sivulla vahvistaen, että asiakas lisättiin onnistuneesti
