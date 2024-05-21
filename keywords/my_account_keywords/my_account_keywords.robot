*** Comments ***

##################################################################################################################################
# Author: Jhonattan Gomes
# Description: Keywords referring to the my account component
##################################################################################################################################

*** Settings ***

Resource    ../../helpers/dependencies.robot    # Importação do arquivo dependencies.robot que contém todas as Keywords necessárias para o nosso teste.

*** Variables ***

*** Keywords ***

Fill in the registration data "${status}"

    Run Keyword If    "${status}" == "correctly"
    ...    Fill in registration data correctly
    # ...  ELSE IF    "${tela}" == "checkout"
    # ...    Acesso a tela de checkout

Validate registration "${status}"

    Run Keyword If    "${status}" == "successfully"
    ...    Validate registration successfully
    # ...  ELSE IF    "${tela}" == "checkout"
    # ...    Acesso a tela de checkout

Fill in registration data correctly

    ${registration_data}    New Data

    Wait Until Element Is Visible And Capture Screenshot    ${my_account_ipt_reg_email}    ${time_out_element}
    Fill Field    ${my_account_ipt_reg_email}    ${registration_data}[new_email]

    Wait Until Element Is Visible And Capture Screenshot    ${my_account_ipt_reg_password}    ${time_out_element}
    Fill Field    ${my_account_ipt_reg_password}    ${registration_data}[new_password]

    Wait Until Element Is Visible And Capture Screenshot    ${my_account_ipt_register}    ${time_out_element}
    Perform Click Element    ${my_account_ipt_register}

Validate registration successfully

    Wait Until Element Is Visible And Capture Screenshot    ${my_account_stg_user}    ${time_out_element}