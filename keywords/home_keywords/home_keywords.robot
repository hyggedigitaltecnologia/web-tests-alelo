*** Comments ***

##################################################################################################################################
# Autor: Jhonattan Gomes
# Decrição: Keywords referring to the home component
##################################################################################################################################

*** Settings ***

Resource    ../../helpers/dependencies.robot

*** Keywords ***

Navigate the "${screen}" page

    Run Keyword If    "${screen}" == "My Account"
    ...    Access to the My Account Screen
    # ...  ELSE IF    "${tela}" == "checkout"
    # ...    Acesso a tela de checkout

Access to the My Account Screen
    
    Wait Until Element Is Visible And Capture Screenshot    ${home_a_my_account}    ${time_out_element}
    Perform Click Element    ${home_a_my_account}