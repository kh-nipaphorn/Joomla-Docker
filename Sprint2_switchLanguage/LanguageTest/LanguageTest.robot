*** Settings ***
Library    SeleniumLibrary

*** Variable ***
${HOMEPAGE}     http://localhost:4444/index.php/th
${HOMEPAGE2}    http://localhost:4444/
${CONTENT}    http://localhost:4444/index.php/th/2021-03-14-09-09-29/3-16
${BROWSER}    chrome
${TH_BUTTON}    xpath://*[@id="aside"]/div[1]/div/ul/li[1]/a
${EN_BUTTON}    xpath://*[@id="aside"]/div[1]/div/ul/li[2]/a

*** Test Case ***

#UAT-001
Open Website Page
    Open Browser    ${HOMEPAGE}    ${BROWSER}
    Maximize Browser Window
    # Title Should Be    หน้าหลัก
    Wait Until Page Contains    หน้าหลัก
    Capture Page Screenshot    1_Open_Website_Page.jpg

Check Default Language (Thai)  
    Wait Until Page Contains    หน้าหลัก
    Capture Page Screenshot    2_Check_Default_Language_TH.jpg

Click Button Switch Language (Thai)
    Click Element    ${TH_BUTTON}
    Location Should Contain    ${HOMEPAGE2}
    Title Should Be    หน้าหลัก
    Wait Until Page Contains    หน้าหลัก
    Capture Page Screenshot    3_Click_Button_Switch_Language_TH.jpg

Click Button Switch Language (English)
    Click Element    ${EN_BUTTON}
    Location Should Contain    ${HOMEPAGE2}
    Title Should Be    Home
    Wait Until Page Contains    Home
    Capture Page Screenshot    4_Click_Button_Switch_Language_EN.jpg

# #UAT-002
Open Website Page
    Go To    ${HOMEPAGE}
    Title Should Be    หน้าหลัก
    Capture Page Screenshot    5_Open_Website_Page.jpg

Check Default Language (Thai)
    Wait Until Page Contains    หน้าหลัก
    Capture Page Screenshot    6_Check_Default_Language_TH.jpg

Click Button Switch Language (Thai)
    Click Element    ${TH_BUTTON}
    # Location Should Contain
    Wait Until Page Contains    หน้าหลัก
    Click Element    xpath://*[@id="content"]/div[2]/div[2]/div/h2/a
    Wait Until Page Contains    พิธีปิดการแข่งขันคอมพิวเตอร์โอลิมปิกระดับชาติ
    Location Should Contain    http://localhost:4444/index.php/th/2021-03-14-09-09-29/3-16
    Capture Page Screenshot    7_Click_Button_Switch_Language_TH.jpg

Click Button Switch Language (English)
    Go To    ${HOMEPAGE}
    Wait Until Page Contains    หน้าหลัก
    Click Element    ${EN_BUTTON}
    # Location Should Contain
    Wait Until Page Contains    Home
    Click Element    xpath://*[@id="content"]/div[2]/div[2]/div/h2/a
    Wait Until Page Contains    The closing ceremony of the 16th
    Location Should Contain    http://localhost:4444/index.php/en-us/new/2-the-closing-ceremony-of-the-16th-national-computer-olympics-and-the-results
    Capture Page Screenshot    8_Click_Button_Switch_Language_EN.jpg

# #UAT-003
Open Content Page
    Go To    ${CONTENT}
    Wait Until Page Contains    พิธีปิดการแข่งขันคอมพิวเตอร์โอลิมปิกระดับชาติ
    Capture Page Screenshot    9_Open_Website_Page.jpg

Check Default Language (Thai)
    Wait Until Page Contains    พิธีปิดการแข่งขันคอมพิวเตอร์โอลิมปิกระดับชาติ
    Capture Page Screenshot    10_Check_Default_Language_TH.jpg

Click Button Switch Language (Thai)
    Click Element    ${TH_BUTTON}
    # Location Should Contain
    Wait Until Page Contains    พิธีปิดการแข่งขันคอมพิวเตอร์โอลิมปิกระดับชาติ
    Capture Page Screenshot    11_Click_Button_Switch_Language_TH.jpg

Click Button Switch Language (English)
    Click Element    ${EN_BUTTON}
    # Location Should Contain
    Wait Until Page Contains    The closing ceremony of the 16th
    Capture Page Screenshot    12_Click_Button_Switch_Language_EN.jpg
    Close Browser