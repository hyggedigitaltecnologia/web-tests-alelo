*** Comments ***

##################################################################################################################################
# Autor: Jhonattan Gomes
# Decrição: Global keywords, used in any test
##################################################################################################################################

*** Settings ***

Resource    ../../helpers/dependencies.robot

*** Variables ***

${browser}       browser

*** Keywords ***

That access "${environment}"

    Open Browser Selecting Location    ${URL}[${environment}]    ${browser}    LOCAL
    Maximize Browser Window