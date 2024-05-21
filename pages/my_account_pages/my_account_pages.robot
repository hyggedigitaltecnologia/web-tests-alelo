*** Comments ***

##################################################################################################################################
# Author: Jhonattan Gomes
# Description: Pages referring to the my account component
##################################################################################################################################

*** Settings ***

Resource    ../../helpers/dependencies.robot

*** Variables ***

${my_account_ipt_reg_email}               id=reg_email
${my_account_ipt_reg_password}            id=reg_password
${my_account_ipt_register}                name=register

${my_account_ipt_username}                id=username
${my_account_ipt_password}                id=password
${my_account_ipt_login}                   name=login

${my_account_stg_user}                    xpath=//strong[contains(.,'')]