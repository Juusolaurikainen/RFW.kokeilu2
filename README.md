# Customer Management Automation - Robot Framework

Tämä projekti automatisoi asiakkaan lisäämisen testauksen CRM-sovelluksessa käyttäen **Robot Frameworkia** ja **SeleniumLibrarya**. Testit kattavat kotisivun navigoinnin, kirjautumisen sekä uuden asiakkaan lisäyksen ja vahvistuksen.

## 📁 **Projektirakenne**
- **PO** (Page Object) -tiedostot jakavat toiminnot selkeästi eri sivuille.
- **Avainsanojen uudelleenkäyttö:** Jokainen avainsana on uudelleenkäytettävä ja modulaarinen.

---

## 🚀 **Testikuvaukset**

### **Päätoiminnot:**
- **Navigointi kotisivulle**: Tarkistaa, että kotisivu latautuu odotetusti.
- **Kirjautuminen**: Syöttää kelvolliset tunnukset ja varmistaa onnistuneen kirjautumisen.
- **Uuden asiakkaan lisäys**: Syöttää lomaketiedot, lähettää lomakkeen ja vahvistaa asiakkaan lisäyksen onnistumisen.

---

## 🔑 **Tärkeimmät avainsanat**
- **Go to "home" Page**: Navigoi kotisivulle ja tarkistaa sivun latautumisen.
- **CrmApp.Login With Valid Credentials**: Kirjautuu sisään oikeilla tunnuksilla.
- **Add New Customer**: Täyttää uuden asiakkaan tiedot ja lähettää lomakkeen.
- **Verify Customer Added Successfully**: Vahvistaa, että uusi asiakas lisättiin onnistuneesti.

---

## 🛠 **Käytetyt teknologiat**
- **Robot Framework**
- **SeleniumLibrary**
- **Page Object -malli**

---

## 📋 **Asennusohjeet**
1. Asenna **Robot Framework**:
   ```bash
   pip install robotframework
2. Asenna **SeleniumLibrary**:
pip install robotframework-seleniumlibrary

3. Suorita testit komennolla
robot -d results tests/crm.robot
