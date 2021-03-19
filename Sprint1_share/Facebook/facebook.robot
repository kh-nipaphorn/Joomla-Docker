*** Settings ***
Library    SeleniumLibrary

*** Variable ***
${HOMEPAGE}    http://boni-production.southeastasia.cloudapp.azure.com/index.php
${BROWSER}    chrome

*** Test Case ***
Open Website Page
    Open Browser    ${HOMEPAGE}    ${BROWSER}
    Title Should Be    Home
    Capture Page Screenshot    1_Open_Website_Page.jpg

Open Content Page
    Maximize Browser Window
    Click Element    xpath://a[@href="/index.php/8-2021-03-02-15-57-49/4-olympic-16"]
    Wait Until Page Contains    พิธีปิดการแข่งขันคอมพิวเตอร์โอลิมปิกระดับชาติ
    Capture Page Screenshot    2_Open_Content_Page.jpg

Click share to Facebook button On Content Page
    Click Element    class:a2a_button_facebook
    Select Window     NEW
    Wait Until Page Contains    เข้าสู่ระบบบัญชี Facebook
    Capture Page Screenshot    3_Login_Facebook_Page.jpg

Login Facebook Sucess
    Input Text    //input[@id='email']    .....
    Input Password    //input[@id='pass']    .....
    Click button    login
    Wait Until Page Contains    แชร์บน Facebook
    Capture Page Screenshot    4_Login_Facebook_Page_Success.jpg

Share Sucess  
    Click element    name:__CONFIRM__
    Close Browser
