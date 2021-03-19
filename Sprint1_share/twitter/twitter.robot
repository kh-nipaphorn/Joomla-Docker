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

Click share to Twitter button On Content Page
    Click Element    class:a2a_button_twitter
    Select Window     NEW
    Wait Until Page Contains    Want to log in first
    Capture Page Screenshot    3_Login_Twitter_Page.jpg

Login Twitter Sucess
    Input Text    //input[@name="session[username_or_email]"]    ....
    Input Password    //input[@name="session[password]"]    ....
    Click element    xpath://*[@id="layers"]/div[2]/div/div/div/div/div/div[2]/div[2]/div/div[2]/div[2]
    Wait Until Page Contains    พิธีปิดการแข่งขันคอมพิวเตอร์โอลิมปิกระดับชาติ
    Capture Page Screenshot    4_Login_Twitter_Page_Success.jpg

Share Sucess  
    Click element    xpath://*[@id="react-root"]/div/div/div[2]/main/div/div/div[2]/div/div/div/div[3]/div
    Capture Page Screenshot    5_share_twitter_Success.jpg
    Close Browser
