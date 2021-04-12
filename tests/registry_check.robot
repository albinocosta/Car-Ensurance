***Settings***
Documentation       Registry data check

Resource            ../resources/base.robot

Suite Setup         Ensurance Session

Suite Teardown      Finish Session

Test Template       Car insurance simulation with data gathering

***Keywords***
Car insurance simulation with data gathering
    [Arguments]     ${registry}

    
    GIVEN that I'm on the car insurance consult page
    AND I have the following car registration       ${registry}
    WHEN I submit my registration to consult
    THEN I must see the insurance value and vehicle model

***Test Cases***
AUTOMOVEL1      05DE82
AUTOMOVEL2      2454XI
AUTOMOVEL3      22HT53
AUTOMOVEL4      ZZAA00