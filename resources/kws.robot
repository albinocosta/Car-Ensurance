***Keywords***
GIVEN that I'm on the car insurance consult page
    Car insurance consult page is loaded

AND I have the following car registration
    [Arguments]     ${registry}

    Type Automobile Registry
    Verify Registry is Valid

WHEN I submit my registration to consult
    Submit my Registry     

THEN I must see the insurance value and vehicle model
    Ensure that the insurance proposal page is shown
    Collect vehicle model 
    Collect ensurance proposal value    