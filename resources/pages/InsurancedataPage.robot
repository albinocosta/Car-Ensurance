***Settings***

Documentation       Representation of the insurance data page with its actions and elements

***Variables***
${SIMULATION_BUTTON}        css:input[value='FAÇA UMA SIMULAÇÃO MAIS PERSONALIZADA']
${TEXT_VEHICLE}             xpath://*[contains(text(),'Este é um exemplo de pré-simulação')]
${PRICE}                    xpath://span[@class='Price']
${CENTS}                    xpath://span[@class='Price_Decimals']

***Keywords***
Ensure that the insurance proposal page is shown
    Wait Until Element is Visible       ${SIMULATION_BUTTON}    5

Collect vehicle model
    ${text_vehicle} = Get Text      ${TEXT_VEHICLE}
    ${vehicle} = Get Substring      ${text_vehicle} 50
    print(${vehicle})

Collect ensurance proposal value
    ${price} = Get Text         ${PRICE}
    ${cents} = Get Text         ${CENTS}
    ${full_price} = Catenate    SEPARATOR=,     ${PRICE}    ${CENTS}
    print(${full_price})