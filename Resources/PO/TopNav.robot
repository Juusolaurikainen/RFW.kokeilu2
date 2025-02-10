*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${TOPNAV_SIGNIN_LINK} =     id=SignIn      # Määrittää muuttujan, joka osoittaa "Sign In" -linkin tunnisteeseen
${TOPNAV_SIGNOUT_LINK} =    Sign Out       # Määrittää muuttujan, joka viittaa "Sign Out" -linkin tekstiin


*** Keywords ***

Click "Sign In" Link
    Click Link            ${TOPNAV_SIGNIN_LINK}     # Klikkaa "Sign In" -linkkiä käyttäen sen tunnistetta (id=SignIn)


Click "Sign Out" Link
    Click Link            ${TOPNAV_SIGNOUT_LINK}    # Klikkaa "Sign Out" -linkkiä käyttäen sen näkyvää tekstiä
