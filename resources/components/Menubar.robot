***Settings***
Documentation       Top menu representation

***Variables***
${NAV_AUTOMOBILE}   xpath://div[text()='Automóvel']
${AUTO}             xpath://a[@class='header' and text()='Auto']

***Keywords***
Go To Automobile
    Mouse Over                      ${AUTO}    
    Wait Until Element Is Visible   ${NAV_AUTOMOBILE}       10
    Click Element                   ${NAV_AUTOMOBILE}