***Settings***
Documentation       Representation of the vehicle insurance consultation page with its elements and actions

***Variables***
${REGINSERTION_FIELD}       css:input[class='OSFillParent']
${SUBMIT_DISABLED}          css:input[disabled='disabled']
${SUBMIT_ENABLED}           css:input[value='Seguinte']

***Keywords***
Car insurance consult page is loaded
    Wait Until Element is Visible       ${REGINSERTION_FIELD}   5

Type Automobile Registry 
    [Arguments]         ${registry}

    Input Text          ${REGINSERTION_FIELD}   ${registry}

Verify Registry is Valid
    Wait Until Page Does Not Contain Element    ${SUBMIT_DISABLED}     5

Submit my Registry
    Click Element       ${SUBMIT_ENABLED}